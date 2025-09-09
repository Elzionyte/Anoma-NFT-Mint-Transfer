"use client";
import { useState } from "react";
import Image from "next/image";

export default function Home() {
  const [intent, setIntent] = useState("");
  const [result, setResult] = useState("");

  const handleRun = () => {
    if (!intent) {
      setResult("⚠️ Please enter an intent first.");
      return;
    }
    // Mock Anoma-style execution
    setResult(`✅ Intent received: "${intent}".\nSystem resolved and executed successfully.`);
  };

  return (
    <main className="flex flex-col items-center justify-center min-h-screen bg-gradient-to-r from-purple-600 via-indigo-600 to-blue-600 text-white px-6">
      {/* Logo */}
      <div className="mb-6">
        <Image
          src="/anoma-logo.png"
          alt="Anoma Logo"
          width={120}
          height={120}
        />
      </div>

      {/* Title */}
      <h1 className="text-4xl font-bold mb-4">Anoma NFT Mint Transfer</h1>
      <p className="mb-6 text-center max-w-lg">
        Type your intent below and let the system handle the execution — just like Anoma’s intent-centric model.
      </p>

      {/* Input */}
      <div className="flex flex-col items-center gap-4 w-full max-w-lg">
        <input
          type="text"
          value={intent}
          onChange={(e) => setIntent(e.target.value)}
          placeholder='e.g. "Mint NFT Zion #1 and send to Alice"'
          className="w-full px-4 py-3 rounded-lg text-black"
        />
        <button
          onClick={handleRun}
          className="px-6 py-3 bg-white text-indigo-700 font-semibold rounded-xl shadow-md hover:bg-gray-200 transition"
        >
          Run Intent
        </button>
      </div>

      {/* Result */}
      {result && (
        <div className="mt-6 bg-black/30 p-4 rounded-lg max-w-lg w-full text-left whitespace-pre-line">
          {result}
        </div>
      )}

      {/* Footer */}
      <footer className="mt-12 text-sm opacity-80">
        Built with ❤️ by ZionX · Powered by Vercel + Next.js
      </footer>
    </main>
  );
}
