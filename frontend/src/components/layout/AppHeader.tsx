"use client";

import { useAuth } from "@/lib/auth";

export function AppHeader() {
  const { user } = useAuth();

  return (
    <header className="sticky top-0 z-40 bg-white border-b border-gray-200">
      <div className="max-w-lg mx-auto flex items-center justify-between px-4 h-14">
        <h1 className="text-lg font-bold text-indigo-600">코드런</h1>
        {user && (
          <div className="flex items-center gap-2">
            <span className="text-sm text-gray-600">{user.displayName}</span>
          </div>
        )}
      </div>
    </header>
  );
}
