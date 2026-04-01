"use client";

import { useEffect, useState } from "react";
import Link from "next/link";
import { api, type Category, type StreakInfo, type DailyProgress } from "@/lib/api";
import { StreakBadge } from "@/components/gamification/StreakBadge";
import { XPCounter } from "@/components/gamification/XPCounter";
import { DailyGoalRing } from "@/components/gamification/DailyGoalRing";

export default function HomePage() {
  const [categories, setCategories] = useState<Category[]>([]);
  const [streak, setStreak] = useState<StreakInfo | null>(null);
  const [daily, setDaily] = useState<DailyProgress | null>(null);

  useEffect(() => {
    api.categories.list().then(setCategories).catch(() => {});
    api.gamification.streak().then(setStreak).catch(() => {});
    api.progress.daily().then(setDaily).catch(() => {});
  }, []);

  return (
    <div className="space-y-6">
      {/* Streak + XP */}
      <div className="flex items-center justify-between">
        <StreakBadge
          currentStreak={streak?.currentStreak ?? 0}
          isActive={streak?.isActive ?? false}
        />
        <span className="text-sm font-medium text-indigo-600">
          Lv.{streak?.level ?? 1} · {streak?.totalXp ?? 0} XP
        </span>
      </div>

      {/* Daily Goal */}
      <div className="bg-white rounded-2xl p-5 shadow-sm">
        <h2 className="text-sm font-semibold text-gray-500 mb-3">오늘의 학습</h2>
        <DailyGoalRing
          timeSpentSeconds={daily?.timeSpentSeconds ?? 0}
          goalMinutes={daily?.dailyGoalMinutes ?? 10}
          lessonsCompleted={daily?.lessonsCompleted ?? 0}
        />
      </div>

      {/* XP Progress */}
      {streak && (
        <XPCounter
          level={streak.level}
          totalXp={streak.totalXp}
          progressPercent={streak.levelProgressPercent}
        />
      )}

      {/* Categories */}
      <div>
        <h2 className="text-sm font-semibold text-gray-500 mb-3">카테고리</h2>
        <div className="grid grid-cols-2 gap-3">
          {categories.map((cat) => (
            <Link
              key={cat.slug}
              href={`/categories/${cat.slug}`}
              className="bg-white rounded-2xl p-4 shadow-sm hover:shadow-md transition flex flex-col items-center gap-2"
            >
              <span className="text-3xl">{cat.icon}</span>
              <span className="text-sm font-semibold text-gray-700">
                {cat.nameKo}
              </span>
            </Link>
          ))}
        </div>
      </div>
    </div>
  );
}
