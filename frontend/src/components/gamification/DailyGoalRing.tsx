"use client";

interface DailyGoalRingProps {
  timeSpentSeconds: number;
  goalMinutes: number;
  lessonsCompleted: number;
}

export function DailyGoalRing({
  timeSpentSeconds,
  goalMinutes,
  lessonsCompleted,
}: DailyGoalRingProps) {
  const goalSeconds = goalMinutes * 60;
  const progress = Math.min((timeSpentSeconds / goalSeconds) * 100, 100);
  const circumference = 2 * Math.PI * 40;
  const offset = circumference - (progress / 100) * circumference;
  const isComplete = timeSpentSeconds >= goalSeconds;

  return (
    <div className="flex items-center gap-4">
      <div className="relative w-24 h-24">
        <svg className="w-24 h-24 -rotate-90" viewBox="0 0 100 100">
          <circle
            cx="50" cy="50" r="40"
            fill="none" stroke="#e5e7eb" strokeWidth="8"
          />
          <circle
            cx="50" cy="50" r="40"
            fill="none"
            stroke={isComplete ? "#22c55e" : "#6366f1"}
            strokeWidth="8"
            strokeLinecap="round"
            strokeDasharray={circumference}
            strokeDashoffset={offset}
            className="transition-all duration-700"
          />
        </svg>
        <div className="absolute inset-0 flex items-center justify-center">
          <span className="text-2xl">{isComplete ? "✅" : "📖"}</span>
        </div>
      </div>
      <div>
        <p className="text-sm text-gray-500">오늘의 목표</p>
        <p className="text-lg font-bold">
          {Math.floor(timeSpentSeconds / 60)}분 / {goalMinutes}분
        </p>
        <p className="text-xs text-gray-400">{lessonsCompleted}개 레슨 완료</p>
      </div>
    </div>
  );
}
