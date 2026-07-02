<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BC Daily Rewards</title>
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@500;600;700&family=Share+Tech+Mono&family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
</head>
<body>

<div id="wrap" class="hidden">
  <div id="card">

    <button id="closeBtn" aria-label="Close">✕</button>

    <header id="head">
      <span class="eyebrow" id="serverName">BCGAMING</span>
      <h1>Daily Rewards</h1>
      <p id="subtitle">Log in and claim to keep your streak alive.</p>
    </header>

    <div id="strip"></div>

    <section id="detail">
      <div id="detailReward">
        <span id="detailDay">DAY —</span>
        <span id="detailAmount">—</span>
      </div>
      <button id="claimBtn" disabled>Claim Reward</button>
      <p id="claimNote"></p>
    </section>

    <footer id="stats">
      <div class="stat">
        <span class="statLabel">Streak</span>
        <span class="statValue" id="streakValue">00</span>
      </div>
      <div class="statDivider"></div>
      <div class="stat">
        <span class="statLabel">Total Claims</span>
        <span class="statValue" id="totalValue">00</span>
      </div>
    </footer>

  </div>

  <div id="toast" class="hidden">
    <span id="toastTitle">Reward Claimed</span>
    <span id="toastBody"></span>
  </div>
</div>

<script src="script.js"></script>
</body>
</html>
