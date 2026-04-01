"use client";

import { useEffect, useState } from "react";
import { useParams, useRouter } from "next/navigation";
import { api, type Lesson } from "@/lib/api";
import { cn } from "@/lib/utils";

interface QuizQuestion {
  question: string;
  code?: string | null;
  options: string[];
  correct_index: number;
  explanation: string;
}

interface FlashCard {
  front: string;
  back: string;
  hint?: string | null;
}

export default function LessonPage() {
  const params = useParams();
  const router = useRouter();
  const lessonId = params.id as string;

  const [lesson, setLesson] = useState<Lesson | null>(null);
  const [currentIdx, setCurrentIdx] = useState(0);
  const [selectedAnswer, setSelectedAnswer] = useState<number | null>(null);
  const [showResult, setShowResult] = useState(false);
  const [correctCount, setCorrectCount] = useState(0);
  const [flipped, setFlipped] = useState(false);
  const [startTime] = useState(Date.now());
  const [completed, setCompleted] = useState(false);

  useEffect(() => {
    // 현재 코스의 레슨 목록에서 해당 레슨을 찾아야 하지만,
    // 단독 레슨 API가 없으므로 간단히 처리
    // 실제로는 lesson 데이터가 이전 페이지에서 전달되거나 별도 API 필요
  }, [lessonId]);

  // 데모용 데이터
  const demoQuiz: QuizQuestion[] = [
    {
      question: "Python에서 리스트의 길이를 구하는 함수는?",
      options: ["len()", "size()", "length()", "count()"],
      correct_index: 0,
      explanation: "len() 함수는 리스트, 문자열 등의 길이를 반환합니다.",
    },
    {
      question: "다음 중 Python의 기본 데이터 타입이 아닌 것은?",
      options: ["int", "str", "array", "float"],
      correct_index: 2,
      explanation: "array는 기본 타입이 아닙니다. list를 사용합니다.",
    },
  ];

  const questions = demoQuiz;
  const current = questions[currentIdx];

  const handleAnswer = (idx: number) => {
    if (showResult) return;
    setSelectedAnswer(idx);
    setShowResult(true);
    if (idx === current.correct_index) {
      setCorrectCount((c) => c + 1);
    }
  };

  const handleNext = async () => {
    if (currentIdx < questions.length - 1) {
      setCurrentIdx((i) => i + 1);
      setSelectedAnswer(null);
      setShowResult(false);
    } else {
      // 완료
      const score = Math.round((correctCount / questions.length) * 100);
      const timeSpent = Math.round((Date.now() - startTime) / 1000);
      try {
        await api.lessons.complete(lessonId, {
          score,
          timeSpentSeconds: timeSpent,
        });
      } catch {}
      setCompleted(true);
    }
  };

  if (completed) {
    const score = Math.round((correctCount / questions.length) * 100);
    return (
      <div className="flex flex-col items-center justify-center min-h-[60vh] text-center space-y-6">
        <div className="text-6xl">{score >= 80 ? "🎉" : score >= 50 ? "👍" : "💪"}</div>
        <h2 className="text-2xl font-bold text-gray-800">레슨 완료!</h2>
        <div className="bg-white rounded-2xl p-6 shadow-sm w-full max-w-xs">
          <p className="text-4xl font-black text-indigo-600">{score}점</p>
          <p className="text-sm text-gray-500 mt-1">
            {correctCount}/{questions.length} 정답
          </p>
        </div>
        <button
          onClick={() => router.back()}
          className="bg-indigo-600 text-white px-8 py-3 rounded-xl font-semibold hover:bg-indigo-700 transition"
        >
          돌아가기
        </button>
      </div>
    );
  }

  if (!current) return null;

  return (
    <div className="space-y-6">
      {/* Progress bar */}
      <div className="flex items-center gap-3">
        <div className="flex-1 bg-gray-200 rounded-full h-2">
          <div
            className="bg-indigo-500 h-2 rounded-full transition-all"
            style={{ width: `${((currentIdx + 1) / questions.length) * 100}%` }}
          />
        </div>
        <span className="text-xs text-gray-500">
          {currentIdx + 1}/{questions.length}
        </span>
      </div>

      {/* Question */}
      <div className="bg-white rounded-2xl p-5 shadow-sm">
        <h2 className="text-lg font-semibold text-gray-800 mb-4">
          {current.question}
        </h2>
        {current.code && (
          <pre className="bg-gray-900 text-green-400 rounded-xl p-4 text-sm mb-4 overflow-x-auto">
            <code>{current.code}</code>
          </pre>
        )}
      </div>

      {/* Options */}
      <div className="space-y-3">
        {current.options.map((option, idx) => (
          <button
            key={idx}
            onClick={() => handleAnswer(idx)}
            className={cn(
              "w-full text-left p-4 rounded-xl border-2 transition font-medium",
              !showResult && "border-gray-200 bg-white hover:border-indigo-300",
              showResult && idx === current.correct_index && "border-green-500 bg-green-50",
              showResult && idx === selectedAnswer && idx !== current.correct_index && "border-red-500 bg-red-50",
              showResult && idx !== current.correct_index && idx !== selectedAnswer && "border-gray-100 bg-gray-50 opacity-50"
            )}
          >
            {option}
          </button>
        ))}
      </div>

      {/* Explanation */}
      {showResult && (
        <div className="bg-blue-50 border border-blue-200 rounded-xl p-4">
          <p className="text-sm text-blue-800">
            <span className="font-semibold">해설: </span>
            {current.explanation}
          </p>
        </div>
      )}

      {/* Next button */}
      {showResult && (
        <button
          onClick={handleNext}
          className="w-full bg-indigo-600 text-white py-3.5 rounded-xl font-semibold hover:bg-indigo-700 transition"
        >
          {currentIdx < questions.length - 1 ? "다음 문제" : "결과 보기"}
        </button>
      )}
    </div>
  );
}
