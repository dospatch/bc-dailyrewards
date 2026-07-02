# bc-dailyrewards

Server-validated daily login rewards for FiveM. Works with ESX, QBCore, or standalone (no framework).

## Features
- Streak-based reward cycle (default 7 days, fully configurable), resets if the player goes too long without claiming
- All timing and reward logic is validated server-side — the NUI is display-only
- Auto-creates its own database table on first start (`sql/install.sql` also provided if you prefer to run it by hand)
- Dark gold NUI popup matching your existing BCGAMING branding, with a duty-log style day strip and a live countdown to the next claim
- Optional Discord webhook logging for every claim
- Admin command to reset a player's streak

## Installation
1. Drop the `bc-dailyrewards` folder into your server's `resources` directory.
2. Make sure [`oxmysql`](https://github.com/overextended/oxmysql) is installed and started **before** this resource.
3. Add to your `server.cfg`:
   ```
   ensure oxmysql
   ensure bc-dailyrewards
   ```
4. The `bc_dailyrewards` table is created automatically on first start. If you'd rather run it manually, import `sql/install.sql`.
5. (Optional) Set `Config.Webhook` in `config.lua` to a Discord webhook URL to log claims.
6. (Optional) Grant admins the reset command via `server.cfg`:
   ```
   add_ace group.admin command.dailyrewards allow
   ```

## Configuration
Everything lives in `config.lua`:
- `Config.Framework` — leave as `'auto'` to detect ESX/QBCore, or force `'esx'`, `'qbcore'`, `'standalone'`
- `Config.Command` / `Config.OpenKey` — how players open the menu (`/daily` or F6 by default)
- `Config.ClaimCooldownHours` / `Config.StreakBreakHours` — claim pacing and how forgiving the streak is
- `Config.Rewards` — one entry per day of the cycle; supports `money`, `bank`, and `item` reward types
- `Config.Webhook` — Discord logging

### Standalone note
If you run without ESX/QBCore, there's no built-in economy to pay out from. Hook the `bc-dailyrewards:standaloneReward(src, reward)` server event in your own resource to grant the reward however your server tracks money/items.

## Commands
- `/daily` (player) — opens the rewards menu
- `dailyrewards:reset [server id]` (console/admin) — clears a player's streak and last-claim timestamp

## Files
```
bc-dailyrewards/
├── fxmanifest.lua
├── config.lua
├── server/server.lua
├── client/client.lua
├── html/index.html, style.css, script.js
└── sql/install.sql
```
