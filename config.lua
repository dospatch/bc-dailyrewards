const resource = typeof GetParentResourceName === 'function' ? GetParentResourceName() : 'bc-dailyrewards';

const wrap = document.getElementById('wrap');
const strip = document.getElementById('strip');
const claimBtn = document.getElementById('claimBtn');
const claimNote = document.getElementById('claimNote');
const detailDay = document.getElementById('detailDay');
const detailAmount = document.getElementById('detailAmount');
const streakValue = document.getElementById('streakValue');
const totalValue = document.getElementById('totalValue');
const serverName = document.getElementById('serverName');
const toast = document.getElementById('toast');
const toastBody = document.getElementById('toastBody');

let countdownInterval = null;
let currentStatus = null;

function nuiPost(endpoint, body) {
  return fetch(`https://${resource}/${endpoint}`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json; charset=UTF-8' },
    body: JSON.stringify(body || {})
  }).then((r) => r.json()).catch(() => ({}));
}

function rewardLabel(reward) {
  if (!reward) return '—';
  if (reward.type === 'item') return `${reward.amount}x ${reward.item}`;
  if (reward.type === 'bank') return `$${reward.amount.toLocaleString()} (bank)`;
  return `$${reward.amount.toLocaleString()}`;
}

function formatCountdown(seconds) {
  seconds = Math.max(0, Math.floor(seconds));
  const h = String(Math.floor(seconds / 3600)).padStart(2, '0');
  const m = String(Math.floor((seconds % 3600) / 60)).padStart(2, '0');
  const s = String(seconds % 60).padStart(2, '0');
  return `${h}:${m}:${s}`;
}

function renderStrip(status) {
  strip.innerHTML = '';
  for (let day = 1; day <= status.cycleLength; day++) {
    const el = document.createElement('div');
    el.className = 'day';

    let state = 'locked';
    if (day <= status.streak) state = 'claimed';
    if (day === status.nextDay) state = status.canClaim ? 'current' : 'claimed';
    el.classList.add(state);

    const mark = state === 'claimed' ? '✓' : (state === 'current' ? '★' : '');
    el.innerHTML = `<span class="num">${day}</span><span class="mark">${mark}</span>`;
    strip.appendChild(el);
  }
}

function renderDetail(status) {
  const reward = status.rewards[status.nextDay];
  detailDay.textContent = `DAY ${status.nextDay} / ${status.cycleLength}${reward && reward.bonus ? ' — ' + reward.bonusLabel : ''}`;
  detailAmount.textContent = rewardLabel(reward);
  streakValue.textContent = String(status.streak).padStart(2, '0');
  totalValue.textContent = String(status.totalClaims).padStart(2, '0');
  if (status.serverName) serverName.textContent = status.serverName;

  clearInterval(countdownInterval);

  if (status.canClaim) {
    claimBtn.disabled = false;
    claimBtn.textContent = 'Claim Reward';
    claimNote.textContent = '';
  } else {
    claimBtn.disabled = true;
    claimBtn.textContent = 'Already Claimed';
    let remaining = status.secondsRemaining;
    claimNote.textContent = `Next reward in ${formatCountdown(remaining)}`;
    countdownInterval = setInterval(() => {
      remaining -= 1;
      if (remaining <= 0) {
        clearInterval(countdownInterval);
        claimNote.textContent = 'Your next reward is ready.';
        claimBtn.disabled = false;
        claimBtn.textContent = 'Claim Reward';
        return;
      }
      claimNote.textContent = `Next reward in ${formatCountdown(remaining)}`;
    }, 1000);
  }
}

function render(status) {
  currentStatus = status;
  renderStrip(status);
  renderDetail(status);
}

function showToast(reward) {
  toastBody.textContent = rewardLabel(reward);
  toast.classList.remove('hidden');
  clearTimeout(showToast._t);
  showToast._t = setTimeout(() => toast.classList.add('hidden'), 3200);
}

function closeMenu() {
  wrap.classList.add('hidden');
  clearInterval(countdownInterval);
  nuiPost('close');
}

claimBtn.addEventListener('click', () => {
  if (claimBtn.disabled) return;
  claimBtn.disabled = true;
  claimBtn.textContent = 'Claiming…';

  nuiPost('claim').then((result) => {
    if (!result || !result.success) {
      claimNote.textContent = (result && result.message) || 'Unable to claim right now.';
      claimBtn.disabled = false;
      claimBtn.textContent = 'Claim Reward';
      return;
    }
    showToast(result.reward);
    render({
      ...currentStatus,
      streak: result.streak,
      totalClaims: result.totalClaims,
      canClaim: false,
      secondsRemaining: 0,
      nextDay: (result.streak % currentStatus.cycleLength) + 1
    });
  });
});

document.getElementById('closeBtn').addEventListener('click', closeMenu);

window.addEventListener('keydown', (e) => {
  if (e.key === 'Escape' && !wrap.classList.contains('hidden')) {
    closeMenu();
  }
});

window.addEventListener('message', (event) => {
  const data = event.data;
  if (data.action === 'open') {
    wrap.classList.remove('hidden');
    render(data.status);
  } else if (data.action === 'close') {
    wrap.classList.add('hidden');
    clearInterval(countdownInterval);
  }
});
