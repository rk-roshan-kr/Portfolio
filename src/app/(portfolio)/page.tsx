import React from 'react';

export default function PortfolioPage() {
  return (
    <main className="min-h-screen p-24">
      <h1 className="text-4xl font-bold mb-8">Roshan Kumar Gupta</h1>
      <p className="text-xl text-slate-400 mb-12">
        Mastery-level Portfolio Structure (Next.js + TypeScript + Tailwind).
      </p>
      
      <div className="grid gap-6">
        <a href="/assets/resumes/resume.pdf" className="text-blue-400 hover:underline">Universal Resume</a>
        <a href="/assets/resumes/resume-google.pdf" className="text-blue-400 hover:underline">Google Research Resume</a>
        <a href="/assets/resumes/resume-microsoft.pdf" className="text-blue-400 hover:underline">Microsoft UX Resume</a>
      </div>
    </main>
  );
}
