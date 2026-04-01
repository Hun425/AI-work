"use client";

import { useEffect, useState } from "react";
import { useAuth } from "@/lib/auth";
import { api, type StreakInfo, type Achievement } from "@/lib/api";
import { StreakBadge } from "@/components/gamification/StreakBadge";
import { XPCounter } from "@/components/gamification/XPCounter";
import Link from "next/link";

export default function ProfilePage() {
  const { user, logout } = useAuth();
  const [streak, setStreak] = useState<StreakInfo | null>(null);
  const [achievements, setAchievements] = useState<Achievement[]>([]);

  useEffect(() => {
    api.gamification.streak().then(setStreak).catch(() => {});
    api.gamification.achievements().then(setAchievements).catch(() => {});
  }, []);

  const earned = achievements.filter((a) => a.isEarned);

  return (
    <div className="space-y-6">
      {/* Profile Header */}
      <div className="bg-white rounded-2xl p-5 shadow-sm text-center">
        <div className="w-16 h-16 rounded-full bg-indigo-100 flex items-center justify-center text-2xl font-bold text-indigo-600 mx-auto mb-3">
          {user?.displayName?.charAt(0) ?? "?"}
        </div>
        <h2 className="text-lg font-bold text-gray-800">{user?.displayName}</h2>
        <p className="text-sm text-gray-400">{user?.email}</p>
      </div>

      {/* Stats */}
      {streak && (
        <>
          <div className="flex justify-center">
            <StreakBadge
              currentStreak={streak.currentStreak}
              isActive={streak.isActive}
            />
          </div>
          <XPCounter
            level={streak.level}
            totalXp={streak.totalXp}
            progressPercent={streak.levelProgressPercent}
          />
          <div className="grid grid-cols-2 gap-3">
            <div className="bg-white rounded-xl p-4 shadow-sm text-center">
              <p className="text-2xl font-bold text-gray-800">{streak.currentStreak}</p>
              <p className="text-xs text-gray-400">현재 스트릭</p>
            </div>
            <div className="bg-white rounded-xl p-4 shadow-sm text-center">
              <p className="text-2xl font-bold text-gray-800">{streak.longestStreak}</p>
              <p className="text-xs text-gray-400">최장 스트릭</p>
            </div>
          </div>
        </>
      )}

      {/* Achievements */}
      <div>
        <div className="flex items-center justify-between mb-3">
          <h3 className="text-sm font-semibold text-gray-500">
            업적 ({earned.length}/{achievements.length})
          </h3>
          <Link href="/achievements" className="text-xs text-indigo-600">
            전체 보기
          </Link>
        </div>
        <div className="flex gap-3 overflow-x-auto pb-1">
          {earned.map((a) => (
            <div
              key={a.slug}
              className="flex-shrink-0 bg-white rounded-xl p-3 shadow-sm text-center w-20"
            >
              <span className="text-2xl">{a.icon}</span>
              <p className="text-xs text-gray-600 mt-1 truncate">{a.nameKo}</p>
            </div>
          ))}
          {earned.length === 0 && (
            <p className="text-gray-400 text-sm">아직 달성한 업적이 없습니다</p>
          )}
        </div>
      </div>

      {/* Logout */}
      <button
        onClick={logout}
        className="w-full py-3 text-sm text-red-500 bg-white rounded-xl shadow-sm hover:bg-red-50 transition"
      >
        로그아웃
      </button>
    </div>
  );
}
