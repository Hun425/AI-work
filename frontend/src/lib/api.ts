const API_URL = process.env.NEXT_PUBLIC_API_URL || "http://localhost:8080";

async function fetchApi<T>(
  path: string,
  options?: RequestInit
): Promise<T> {
  const token =
    typeof window !== "undefined" ? localStorage.getItem("token") : null;

  const res = await fetch(`${API_URL}${path}`, {
    ...options,
    headers: {
      "Content-Type": "application/json",
      ...(token ? { Authorization: `Bearer ${token}` } : {}),
      ...options?.headers,
    },
  });

  if (!res.ok) {
    const error = await res.json().catch(() => ({ message: res.statusText }));
    throw new Error(error.message || `API Error: ${res.status}`);
  }

  return res.json();
}

// Auth
export const api = {
  auth: {
    googleLogin: (idToken: string) =>
      fetchApi<AuthResponse>("/api/auth/google", {
        method: "POST",
        body: JSON.stringify({ idToken }),
      }),
  },
  users: {
    me: () => fetchApi<UserProfile>("/api/users/me"),
  },
  categories: {
    list: () => fetchApi<Category[]>("/api/categories"),
    courses: (slug: string) =>
      fetchApi<Course[]>(`/api/categories/${slug}/courses`),
  },
  courses: {
    lessons: (courseId: string) =>
      fetchApi<Lesson[]>(`/api/courses/${courseId}/lessons`),
  },
  lessons: {
    complete: (lessonId: string, data: CompleteLessonReq) =>
      fetchApi<LessonCompletionRes>(`/api/lessons/${lessonId}/complete`, {
        method: "POST",
        body: JSON.stringify(data),
      }),
  },
  progress: {
    daily: () => fetchApi<DailyProgress>("/api/progress/daily"),
  },
  gamification: {
    streak: () => fetchApi<StreakInfo>("/api/gamification/streak"),
    achievements: () => fetchApi<Achievement[]>("/api/gamification/achievements"),
  },
  ranking: {
    category: (slug: string) =>
      fetchApi<RankingEntry[]>(`/api/ranking/category/${slug}`),
    streaks: () => fetchApi<RankingEntry[]>("/api/ranking/streaks"),
  },
};

// Types
export interface AuthResponse {
  token: string;
  userId: string;
  email: string;
  displayName: string;
  isNewUser: boolean;
}

export interface UserProfile {
  id: string;
  email: string;
  displayName: string;
  avatarUrl: string | null;
  dailyGoalMinutes: number;
  subscriptionTier: string;
}

export interface Category {
  id: string;
  slug: string;
  nameKo: string;
  icon: string | null;
  color: string | null;
}

export interface Course {
  id: string;
  slug: string;
  titleKo: string;
  descriptionKo: string | null;
  difficulty: string;
  isPremium: boolean;
  lessonCount: number;
  completedCount: number;
  completionRate: number;
}

export interface Lesson {
  id: string;
  titleKo: string;
  lessonType: string;
  content: string;
  estimatedSeconds: number;
  isCompleted: boolean;
  score: number | null;
}

export interface CompleteLessonReq {
  score: number;
  answers?: string;
  timeSpentSeconds: number;
}

export interface LessonCompletionRes {
  lessonId: string;
  score: number;
  isPerfect: boolean;
}

export interface DailyProgress {
  lessonsCompleted: number;
  xpEarned: number;
  timeSpentSeconds: number;
  dailyGoalMinutes: number;
}

export interface StreakInfo {
  currentStreak: number;
  longestStreak: number;
  isActive: boolean;
  totalXp: number;
  level: number;
  xpToNextLevel: number;
  levelProgressPercent: number;
}

export interface Achievement {
  slug: string;
  nameKo: string;
  descriptionKo: string;
  icon: string | null;
  xpReward: number;
  isEarned: boolean;
  earnedAt: string | null;
}

export interface RankingEntry {
  rank: number;
  userId: string;
  displayName: string;
  avatarUrl: string | null;
  score: number;
  detail: string;
}
