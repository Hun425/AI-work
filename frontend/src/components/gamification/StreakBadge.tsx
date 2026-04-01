"use client";

import { cn } from "@/lib/utils";

interface StreakBadgeProps {
  currentStreak: number;
  isActive: boolean;
}

export function StreakBadge({ currentStreak, isActive }: StreakBadgeProps) {
  return (
    <div
      className={cn(
        "flex items-center gap-1.5 px-3 py-1.5 rounded-full text-sm font-bold",
        isActive
          ? "bg-orange-100 text-orange-600"
          : "bg-gray-100 text-gray-400"
      )}
    >
      <span className={cn("text-lg", isActive && "animate-pulse")}>🔥</span>
      <span>{currentStreak}일</span>
    </div>
  );
}
