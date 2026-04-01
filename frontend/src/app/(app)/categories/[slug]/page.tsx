"use client";

import { useEffect, useState } from "react";
import { useParams } from "next/navigation";
import Link from "next/link";
import { api, type Course } from "@/lib/api";

export default function CategoryCoursesPage() {
  const params = useParams();
  const slug = params.slug as string;
  const [courses, setCourses] = useState<Course[]>([]);

  useEffect(() => {
    api.categories.courses(slug).then(setCourses).catch(() => {});
  }, [slug]);

  const difficultyLabel: Record<string, string> = {
    BEGINNER: "입문",
    INTERMEDIATE: "중급",
    ADVANCED: "고급",
  };

  const difficultyColor: Record<string, string> = {
    BEGINNER: "bg-green-100 text-green-700",
    INTERMEDIATE: "bg-yellow-100 text-yellow-700",
    ADVANCED: "bg-red-100 text-red-700",
  };

  return (
    <div className="space-y-4">
      <h1 className="text-xl font-bold text-gray-800">코스 목록</h1>

      {courses.length === 0 && (
        <p className="text-gray-400 text-center py-12">아직 코스가 없습니다</p>
      )}

      {courses.map((course) => (
        <Link
          key={course.id}
          href={`/courses/${course.id}`}
          className="block bg-white rounded-2xl p-4 shadow-sm hover:shadow-md transition"
        >
          <div className="flex items-center justify-between mb-2">
            <h3 className="font-semibold text-gray-800">{course.titleKo}</h3>
            <span
              className={`text-xs font-medium px-2 py-0.5 rounded-full ${
                difficultyColor[course.difficulty] ?? "bg-gray-100 text-gray-600"
              }`}
            >
              {difficultyLabel[course.difficulty] ?? course.difficulty}
            </span>
          </div>
          {course.descriptionKo && (
            <p className="text-sm text-gray-500 mb-3">{course.descriptionKo}</p>
          )}
          <div className="flex items-center gap-3">
            <div className="flex-1 bg-gray-200 rounded-full h-2">
              <div
                className="bg-indigo-500 h-2 rounded-full transition-all"
                style={{ width: `${course.completionRate}%` }}
              />
            </div>
            <span className="text-xs text-gray-500">
              {course.completedCount}/{course.lessonCount}
            </span>
          </div>
        </Link>
      ))}
    </div>
  );
}
