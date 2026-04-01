"use client";

import { useEffect, useState } from "react";
import { useParams } from "next/navigation";
import Link from "next/link";
import { api, type Lesson } from "@/lib/api";
import { cn } from "@/lib/utils";

export default function CourseLessonsPage() {
  const params = useParams();
  const courseId = params.id as string;
  const [lessons, setLessons] = useState<Lesson[]>([]);

  useEffect(() => {
    api.courses.lessons(courseId).then(setLessons).catch(() => {});
  }, [courseId]);

  const typeIcon: Record<string, string> = {
    QUIZ: "❓",
    FLASHCARD: "🃏",
    READING: "📖",
    FILL_BLANK: "✏️",
  };

  return (
    <div className="space-y-3">
      <h1 className="text-xl font-bold text-gray-800">레슨 목록</h1>

      {lessons.map((lesson, idx) => (
        <Link
          key={lesson.id}
          href={`/lessons/${lesson.id}`}
          className={cn(
            "flex items-center gap-4 bg-white rounded-2xl p-4 shadow-sm transition",
            lesson.isCompleted
              ? "opacity-70 hover:opacity-100"
              : "hover:shadow-md"
          )}
        >
          <div
            className={cn(
              "w-10 h-10 rounded-full flex items-center justify-center text-lg font-bold",
              lesson.isCompleted
                ? "bg-green-100 text-green-600"
                : "bg-indigo-100 text-indigo-600"
            )}
          >
            {lesson.isCompleted ? "✓" : idx + 1}
          </div>
          <div className="flex-1">
            <div className="flex items-center gap-2">
              <span>{typeIcon[lesson.lessonType] ?? "📝"}</span>
              <span className="font-medium text-gray-800">{lesson.titleKo}</span>
            </div>
            <span className="text-xs text-gray-400">
              {Math.floor(lesson.estimatedSeconds / 60)}분 예상
              {lesson.score != null && ` · ${lesson.score}점`}
            </span>
          </div>
        </Link>
      ))}
    </div>
  );
}
