"use client";

import { useEffect, useState } from "react";
import { api, type Achievement } from "@/lib/api";
import { cn } from "@/lib/utils";

export default function AchievementsPage() {
  const [achievements, setAchievements] = useState<Achievement[]>([]);

  useEffect(() => {
    api.gamification.achievements().then(setAchievements).catch(() => {});
  }, []);

  return (
    <div className="space-y-4">
      <h1 className="text-xl font-bold text-gray-800">업적 갤러리</h1>

      <div className="grid grid-cols-2 gap-3">
        {achievements.map((a) => (
          <div
            key={a.slug}
            className={cn(
              "bg-white rounded-2xl p-4 shadow-sm text-center transition",
              a.isEarned ? "opacity-100" : "opacity-40 grayscale"
            )}
          >
            <span className="text-4xl block mb-2">{a.icon}</span>
            <h3 className="font-semibold text-gray-800 text-sm">{a.nameKo}</h3>
            <p className="text-xs text-gray-400 mt-1">{a.descriptionKo}</p>
            <div className="mt-2">
              <span className="text-xs bg-indigo-50 text-indigo-600 px-2 py-0.5 rounded-full">
                +{a.xpReward} XP
              </span>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
