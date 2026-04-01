"use client";

interface XPCounterProps {
  level: number;
  totalXp: number;
  progressPercent: number;
}

export function XPCounter({ level, totalXp, progressPercent }: XPCounterProps) {
  return (
    <div className="bg-white rounded-2xl p-4 shadow-sm">
      <div className="flex items-center justify-between mb-2">
        <div className="flex items-center gap-2">
          <span className="bg-indigo-100 text-indigo-700 text-xs font-bold px-2.5 py-1 rounded-full">
            Lv.{level}
          </span>
          <span className="text-sm text-gray-500">{totalXp} XP</span>
        </div>
      </div>
      <div className="w-full bg-gray-200 rounded-full h-2.5">
        <div
          className="bg-indigo-500 h-2.5 rounded-full transition-all duration-500"
          style={{ width: `${Math.min(progressPercent, 100)}%` }}
        />
      </div>
    </div>
  );
}
