"use client";

import { useEffect, useState } from "react";
import { useParams, useRouter } from "next/navigation";
import { api, type Lesson } from "@/lib/api";
import { cn } from "@/lib/utils";

// --- Content type definitions matching DB JSONB ---

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

interface QuizContent {
  questions: QuizQuestion[];
}

interface FlashCardContent {
  cards: FlashCard[];
}

// --- Main page component ---

export default function LessonPage() {
  const params = useParams();
  const router = useRouter();
  const lessonId = params.id as string;

  const [lesson, setLesson] = useState<Lesson | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  // Quiz/Reading/FillBlank state
  const [currentIdx, setCurrentIdx] = useState(0);
  const [selectedAnswer, setSelectedAnswer] = useState<number | null>(null);
  const [showResult, setShowResult] = useState(false);
  const [correctCount, setCorrectCount] = useState(0);

  // Flashcard state
  const [flipped, setFlipped] = useState(false);
  const [knewCount, setKnewCount] = useState(0);

  // Common state
  const [startTime] = useState(Date.now());
  const [completed, setCompleted] = useState(false);
  const [finalScore, setFinalScore] = useState(0);

  useEffect(() => {
    api.lessons
      .get(lessonId)
      .then(setLesson)
      .catch(() => setError("레슨을 불러올 수 없습니다"))
      .finally(() => setLoading(false));
  }, [lessonId]);

  if (loading) {
    return (
      <div className="flex items-center justify-center min-h-[60vh]">
        <div className="text-gray-400">로딩 중...</div>
      </div>
    );
  }

  if (error || !lesson) {
    return (
      <div className="flex flex-col items-center justify-center min-h-[60vh] text-center space-y-4">
        <div className="text-4xl">😢</div>
        <p className="text-gray-500">{error ?? "레슨을 찾을 수 없습니다"}</p>
        <button
          onClick={() => router.back()}
          className="text-indigo-600 font-medium"
        >
          돌아가기
        </button>
      </div>
    );
  }

  // Parse content
  const content = JSON.parse(lesson.content);
  const isFlashcard = lesson.lessonType === "FLASHCARD";
  const isReading = lesson.lessonType === "READING";
  const isFillBlank = lesson.lessonType === "FILL_BLANK";

  // --- Completion handler ---
  const handleComplete = async (score: number) => {
    setFinalScore(score);
    const timeSpent = Math.round((Date.now() - startTime) / 1000);
    try {
      await api.lessons.complete(lessonId, {
        score,
        timeSpentSeconds: timeSpent,
      });
    } catch {
      // silently fail — progress will be missing but lesson can still show completion
    }
    setCompleted(true);
  };

  // --- Completion screen ---
  if (completed) {
    return (
      <div className="flex flex-col items-center justify-center min-h-[60vh] text-center space-y-6">
        <div className="text-6xl">
          {finalScore >= 80 ? "🎉" : finalScore >= 50 ? "👍" : "💪"}
        </div>
        <h2 className="text-2xl font-bold text-gray-800">레슨 완료!</h2>
        <div className="bg-white rounded-2xl p-6 shadow-sm w-full max-w-xs">
          <p className="text-4xl font-black text-indigo-600">{finalScore}점</p>
          <p className="text-sm text-gray-500 mt-1">
            {isFlashcard
              ? `${knewCount}/${(content as FlashCardContent).cards.length} 알고 있었어요`
              : `${correctCount}/${(content as QuizContent).questions.length} 정답`}
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

  // --- Flashcard renderer ---
  if (isFlashcard) {
    const cards = (content as FlashCardContent).cards;
    const card = cards[currentIdx];
    if (!card) return null;

    const handleKnew = (knew: boolean) => {
      if (knew) setKnewCount((c) => c + 1);

      if (currentIdx < cards.length - 1) {
        setCurrentIdx((i) => i + 1);
        setFlipped(false);
      } else {
        const total = cards.length;
        const knewTotal = knew ? knewCount + 1 : knewCount;
        const score = Math.round((knewTotal / total) * 100);
        handleComplete(score);
      }
    };

    return (
      <div className="space-y-6">
        {/* Progress */}
        <div className="flex items-center gap-3">
          <div className="flex-1 bg-gray-200 rounded-full h-2">
            <div
              className="bg-indigo-500 h-2 rounded-full transition-all"
              style={{
                width: `${((currentIdx + 1) / cards.length) * 100}%`,
              }}
            />
          </div>
          <span className="text-xs text-gray-500">
            {currentIdx + 1}/{cards.length}
          </span>
        </div>

        {/* Card */}
        <button
          onClick={() => setFlipped(!flipped)}
          className="w-full bg-white rounded-2xl p-6 shadow-sm min-h-[200px] flex flex-col items-center justify-center text-center transition-all active:scale-[0.98]"
        >
          {!flipped ? (
            <>
              <p className="text-lg font-semibold text-gray-800 whitespace-pre-wrap">
                {card.front}
              </p>
              {card.hint && (
                <p className="text-sm text-gray-400 mt-3">
                  💡 힌트: {card.hint}
                </p>
              )}
              <p className="text-xs text-gray-300 mt-4">탭하여 뒤집기</p>
            </>
          ) : (
            <p className="text-base text-gray-700 whitespace-pre-wrap">
              {card.back}
            </p>
          )}
        </button>

        {/* Know/Don't know buttons */}
        {flipped && (
          <div className="flex gap-3">
            <button
              onClick={() => handleKnew(false)}
              className="flex-1 py-3.5 rounded-xl font-semibold border-2 border-red-200 text-red-600 bg-red-50 hover:bg-red-100 transition"
            >
              몰랐어요
            </button>
            <button
              onClick={() => handleKnew(true)}
              className="flex-1 py-3.5 rounded-xl font-semibold border-2 border-green-200 text-green-600 bg-green-50 hover:bg-green-100 transition"
            >
              알고 있었어요
            </button>
          </div>
        )}
      </div>
    );
  }

  // --- Quiz / Reading / FillBlank renderer (all share same JSON structure) ---
  const questions = (content as QuizContent).questions;
  const current = questions[currentIdx];
  if (!current) return null;

  const handleAnswer = (idx: number) => {
    if (showResult) return;
    setSelectedAnswer(idx);
    setShowResult(true);
    if (idx === current.correct_index) {
      setCorrectCount((c) => c + 1);
    }
  };

  const handleNext = () => {
    if (currentIdx < questions.length - 1) {
      setCurrentIdx((i) => i + 1);
      setSelectedAnswer(null);
      setShowResult(false);
    } else {
      const total = questions.length;
      const correct =
        correctCount +
        (selectedAnswer === current.correct_index ? 1 : 0);
      // Recalculate because last answer's correctCount update hasn't been applied yet
      const score = Math.round((correct / total) * 100);
      handleComplete(score);
    }
  };

  // Type-specific label
  const typeLabel = isReading
    ? "다음 코드의 출력을 예측하세요"
    : isFillBlank
      ? "빈칸에 들어갈 알맞은 답을 고르세요"
      : null;

  return (
    <div className="space-y-6">
      {/* Progress bar */}
      <div className="flex items-center gap-3">
        <div className="flex-1 bg-gray-200 rounded-full h-2">
          <div
            className="bg-indigo-500 h-2 rounded-full transition-all"
            style={{
              width: `${((currentIdx + 1) / questions.length) * 100}%`,
            }}
          />
        </div>
        <span className="text-xs text-gray-500">
          {currentIdx + 1}/{questions.length}
        </span>
      </div>

      {/* Type hint */}
      {typeLabel && (
        <p className="text-xs font-medium text-indigo-500 bg-indigo-50 px-3 py-1.5 rounded-lg inline-block">
          {typeLabel}
        </p>
      )}

      {/* Question */}
      <div className="bg-white rounded-2xl p-5 shadow-sm">
        <h2 className="text-lg font-semibold text-gray-800 mb-4 whitespace-pre-wrap">
          {current.question}
        </h2>
        {current.code && (
          <pre className="bg-gray-900 text-green-400 rounded-xl p-4 text-sm overflow-x-auto">
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
              !showResult &&
                "border-gray-200 bg-white hover:border-indigo-300",
              showResult &&
                idx === current.correct_index &&
                "border-green-500 bg-green-50",
              showResult &&
                idx === selectedAnswer &&
                idx !== current.correct_index &&
                "border-red-500 bg-red-50",
              showResult &&
                idx !== current.correct_index &&
                idx !== selectedAnswer &&
                "border-gray-100 bg-gray-50 opacity-50"
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
