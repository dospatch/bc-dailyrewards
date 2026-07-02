:root {
  --void: #0a0908;
  --panel: #15120d;
  --panel-raised: #1e1810;
  --line: #33291a;
  --gold: #d4af37;
  --gold-bright: #f2cf5b;
  --gold-dim: #5c4e26;
  --text: #f2ede1;
  --text-muted: #9a9080;
  --display: 'Rajdhani', 'Segoe UI', sans-serif;
  --body: 'Inter', 'Segoe UI', sans-serif;
  --mono: 'Share Tech Mono', 'Consolas', monospace;
}

* { box-sizing: border-box; margin: 0; padding: 0; }

html, body {
  width: 100%;
  height: 100%;
  background: transparent;
  font-family: var(--body);
  color: var(--text);
  overflow: hidden;
  user-select: none;
}

.hidden { display: none !important; }

#wrap {
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}

#card {
  position: relative;
  width: 480px;
  background: linear-gradient(180deg, var(--panel) 0%, var(--void) 100%);
  border: 1px solid var(--line);
  border-radius: 6px;
  box-shadow: 0 30px 80px rgba(0,0,0,0.6), 0 0 0 1px rgba(212,175,55,0.05);
  padding: 28px 30px 24px;
  animation: cardIn 220ms ease-out;
}

@keyframes cardIn {
  from { opacity: 0; transform: translateY(10px) scale(0.98); }
  to   { opacity: 1; transform: translateY(0) scale(1); }
}

#card::before {
  content: '';
  position: absolute;
  top: 0; left: 0; right: 0;
  height: 3px;
  background: linear-gradient(90deg, transparent, var(--gold) 20%, var(--gold-bright) 50%, var(--gold) 80%, transparent);
}

#closeBtn {
  position: absolute;
  top: 14px; right: 14px;
  width: 28px; height: 28px;
  border-radius: 4px;
  border: 1px solid var(--line);
  background: rgba(255,255,255,0.02);
  color: var(--text-muted);
  font-size: 13px;
  cursor: pointer;
  transition: border-color 120ms, color 120ms;
}
#closeBtn:hover { border-color: var(--gold-dim); color: var(--gold); }

#head { margin-bottom: 22px; }

.eyebrow {
  display: block;
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 3px;
  color: var(--gold);
  margin-bottom: 6px;
}

#head h1 {
  font-family: var(--display);
  font-weight: 700;
  font-size: 30px;
  letter-spacing: 0.5px;
  color: var(--text);
}

#subtitle {
  margin-top: 4px;
  font-size: 13px;
  color: var(--text-muted);
}

/* ---------- Day strip (duty-log badges) ---------- */
#strip {
  display: flex;
  gap: 8px;
  margin-bottom: 20px;
}

.day {
  flex: 1;
  position: relative;
  height: 68px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 4px;
  clip-path: polygon(50% 0%, 100% 22%, 100% 80%, 50% 100%, 0% 80%, 0% 22%);
  background: var(--panel-raised);
  border: 1px solid var(--line);
  color: var(--text-muted);
  font-family: var(--mono);
}

.day .num {
  font-size: 15px;
  font-weight: 600;
}

.day .mark {
  font-size: 10px;
}

.day.claimed {
  background: linear-gradient(180deg, rgba(212,175,55,0.22), rgba(212,175,55,0.06));
  border-color: var(--gold-dim);
  color: var(--gold-bright);
}

.day.current {
  border-color: var(--gold);
  color: var(--gold-bright);
  animation: pulse 1.8s ease-in-out infinite;
}

.day.locked {
  opacity: 0.45;
}

@media (prefers-reduced-motion: reduce) {
  .day.current { animation: none; }
}

@keyframes pulse {
  0%, 100% { box-shadow: 0 0 0 0 rgba(212,175,55,0.35); }
  50%      { box-shadow: 0 0 14px 2px rgba(212,175,55,0.35); }
}

/* ---------- Detail / claim ---------- */
#detail {
  background: var(--panel-raised);
  border: 1px solid var(--line);
  border-radius: 4px;
  padding: 16px 18px;
  margin-bottom: 18px;
}

#detailReward {
  display: flex;
  align-items: baseline;
  justify-content: space-between;
  margin-bottom: 12px;
}

#detailDay {
  font-family: var(--mono);
  font-size: 12px;
  letter-spacing: 2px;
  color: var(--text-muted);
}

#detailAmount {
  font-family: var(--display);
  font-size: 20px;
  font-weight: 600;
  color: var(--gold-bright);
}

#claimBtn {
  width: 100%;
  padding: 12px;
  border-radius: 3px;
  border: 1px solid var(--gold);
  background: linear-gradient(180deg, var(--gold-bright), var(--gold));
  color: #1a1408;
  font-family: var(--display);
  font-weight: 700;
  font-size: 15px;
  letter-spacing: 1px;
  text-transform: uppercase;
  cursor: pointer;
  transition: transform 100ms, box-shadow 150ms;
}

#claimBtn:hover:not(:disabled) {
  box-shadow: 0 4px 18px rgba(212,175,55,0.35);
  transform: translateY(-1px);
}

#claimBtn:active:not(:disabled) { transform: translateY(0); }

#claimBtn:disabled {
  background: var(--panel-raised);
  border-color: var(--line);
  color: var(--text-muted);
  cursor: default;
}

#claimNote {
  margin-top: 10px;
  text-align: center;
  font-family: var(--mono);
  font-size: 12px;
  color: var(--text-muted);
  letter-spacing: 0.5px;
}

/* ---------- Stats footer ---------- */
#stats {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 24px;
}

.stat {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 2px;
}

.statLabel {
  font-size: 10px;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: var(--text-muted);
}

.statValue {
  font-family: var(--mono);
  font-size: 20px;
  color: var(--gold);
}

.statDivider {
  width: 1px;
  height: 26px;
  background: var(--line);
}

/* ---------- Toast ---------- */
#toast {
  position: absolute;
  bottom: 32px;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 2px;
  padding: 12px 22px;
  background: var(--panel);
  border: 1px solid var(--gold-dim);
  border-radius: 4px;
  box-shadow: 0 12px 30px rgba(0,0,0,0.5);
  animation: toastIn 200ms ease-out;
}

#toastTitle {
  font-family: var(--display);
  font-weight: 700;
  font-size: 13px;
  letter-spacing: 1.5px;
  color: var(--gold-bright);
  text-transform: uppercase;
}

#toastBody {
  font-family: var(--mono);
  font-size: 12px;
  color: var(--text-muted);
}

@keyframes toastIn {
  from { opacity: 0; transform: translate(-50%, 8px); }
  to   { opacity: 1; transform: translate(-50%, 0); }
}
