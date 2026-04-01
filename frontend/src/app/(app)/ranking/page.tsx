"use client";

import { useEffect, useState } from "react";
import { api, type RankingEntry, type Category } from "@/lib/api";
import { cn } from "@/lib/utils";

export default function RankingPage() {
  const [tab, setTab] = useState<"category" | "streaks">("streaks");
  const [categories, setCategories] = useState<Category[]>([]);
  const [selectedCategory, setSelectedCategory] = useState<string>("");
  const [rankings, setRankings] = useState<RankingEntry[]>([]);

  useEffect(() => {
    api.categories.list().then((cats) => {
      setCategories(cats);
      if (cats.length > 0) setSelectedCategory(cats[0].slug);
    });
  }, []);

  useEffect(() => {
    if (tab === "streaks") {
      api.ranking.streaks().then(setRankings).catch(() => setRankings([]));
    } else if (selectedCategory) {
      api.ranking
        .category(selectedCategory)
        .then(setRankings)
        .catch(() => setRankings([]));
    }
  }, [tab, selectedCategory]);

  const medalIcon = (rank: number) => {
    if (rank === 1) return "🥇";
    if (rank === 2) return "🥈";
    if (rank === 3) return "🥉";
    return `${rank}`;
  };

  return (
    <div className="space-y-4">
      <h1 className="text-xl font-bold text-gray-800">랭킹</h1>

      {/* Tabs */}
      <div className="flex gap-2">
        <button
          onClick={() => setTab("streaks")}
          className={cn(
            "px-4 py-2 rounded-full text-sm font-medium transition",
            tab === "streaks"
              ? "bg-indigo-600 text-white"
              : "bg-gray-100 text-gray-600"
          )}
        >
          🔥 스트릭 명예의 전당
        </button>
        <button
          onClick={() => setTab("category")}
          className={cn(
            "px-4 py-2 rounded-full text-sm font-medium transition",
            tab === "category"
              ? "bg-indigo-600 text-white"
              : "bg-gray-100 text-gray-600"
          )}
        >
          📚 분야별 랭킹
        </button>
      </div>

      {/* Category selector */}
      {tab === "category" && (
        <div className="flex gap-2 overflow-x-auto pb-1">
          {categories.map((cat) => (
            <button
              key={cat.slug}
              onClick={() => setSelectedCategory(cat.slug)}
              className={cn(
                "px-3 py-1.5 rounded-full text-xs font-medium whitespace-nowrap transition",
                selectedCategory === cat.slug
                  ? "bg-indigo-100 text-indigo-700"
                  : "bg-gray-100 text-gray-500"
              )}
            >
              {cat.icon} {cat.nameKo}
            </button>
          ))}
        </div>
      )}

      {/* Ranking list */}
      <div className="space-y-2">
        {rankings.length === 0 && (
          <p className="text-gray-400 text-center py-12">아직 랭킹 데이터가 없습니다</p>
        )}
        {rankings.map((entry) => (
          <div
            key={entry.userId}
            className="flex items-center gap-3 bg-white rounded-xl p-3 shadow-sm"
          >
            <span className="w-8 text-center text-lg font-bold">
              {medalIcon(entry.rank)}
            </span>
            <div className="w-9 h-9 rounded-full bg-indigo-100 flex items-center justify-center text-sm font-bold text-indigo-600">
              {entry.displayName.charAt(0)}
            </div>
            <div className="flex-1">
              <p className="font-medium text-gray-800 text-sm">
                {entry.displayName}
              </p>
              <p className="text-xs text-gray-400">{entry.detail}</p>
            </div>
            <span className="text-sm font-bold text-indigo-600">
              {tab === "streaks" ? `${entry.score}일` : `${entry.score}점`}
            </span>
          </div>
        ))}
      </div>
    </div>
  );
}
