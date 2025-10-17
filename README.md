# 🕒 boti_timer — Global Countdown / Count-Up Timer (v1)

A lightweight, fully-vanilla Minecraft **timer datapack** that displays a running timer on the **actionbar**.  

Designed for operators who need a simple, server-side stopwatch or countdown for events, speedruns, or minigames.

---

## ✨ Features

- ⏱️ Count **up** or **down** (configurable)
- 🎨 Selectable display colors (gold, yellow, purple, green, aqua, red, gray)
- 🧠 Built entirely with **functions and scoreboards**
- ⚙️ Operator-controlled start/stop/toggle functions
- 🔔 Real-time **actionbar display** (`HH:MM:SS`)
- 🧩 Works in **vanilla**, **Paper**, **Fabric**, or **Forge** servers — no mods required

---

## 🧭 Installation

1. Place the `boti_timer` folder (zipped or unzipped) into your world’s  
   `datapacks/` directory.
2. Run `/reload` in-game.  
   


---

## ⚙️ Initialization

The timer is initialised with the command `/function boti_timer:init` (see below). This will:
- Create required scoreboard objectives,
- Set defaults:
	- mode is set to count up
	- display colour is set to yellow
	- the timer is made visible and will displays 00:00:00
- Start a repeating schedule every second.

---
## ⚙️ Usage
### All Modes
The timer is controlled by typing commands into the chat or the server console. Vanilla behaviour is, that only server operators are allowed to use the `/function` command so other players are not able to start/pause etc. the timer.

| Action | Command |
|-----------|--------------|
| initialise the timer | `/function boti_timer:init` |
| start the timer | `/function boti_timer:start` |
| pause the timer | `/function boti_timer:pause` |
| reset the timer | `/function boti_timer:reset` |
| resume the timer | `/function boti_timer:resume` |

### Countdown Mode
The countdown mode comes with 4 presets, for 5 minutes, 15 minutes, 30 minutes and 1 hour respectively. It can also be used with a custom period of time, which needs to be specified in seconds.

| Action | Command |
|-----------|--------------|
| initialise the timer | `/function boti_timer:settings/preset/5m` |
| start the timer | `/function boti_timer:settings/preset/15m` |
| pause the timer | `/function boti_timer:settings/preset/30m` |
| reset the timer | `/function boti_timer:settings/preset/1h` |
| resume the timer | `/function boti_timer:resume` |

When using the preset countdowns the timer has to be started manually by issuing the following command: `/function boti_timer:start`

When a different amount of time for the countdown timer is required, this can be done by issuing the comand `/function boti_timer:settings/mode/countdown {secs:nnnn}` where nnnn is the number of seconds required. If the countdown timer is used this way, **it will start immediately**. In the following example the countdown timer will run for 90 minutes:

- `/function boti_timer:settings/mode/countdown {secs:5400}`

> **Note: This will start the countdown immediately.**

## 🎮 Operator Controls

| Function | Description |
|-----------|--------------|
| `/function boti_timer:display/enable` | Show timer on actionbar |
| `/function boti_timer:display/disable` | Hide timer display |
| `/function boti_timer:display/toggle` | Toggle show/hide |
| `/function boti_timer:settings/mode/countup` | Switch to count-up mode |
| `/function boti_timer:settings/mode/countdown {secs:3600}` | Switch to countdown mode and set seconds (1 h = 3600) |

> **Note:** Only ops can run these functions.

---

## 🖌️ Customization

### Colours
The timer colour can be one of 7 colours and it defaults to yellow. To change the colour:

| Command | Effect |
|:--|:--|
| /function boti_timer:settings/color.gold | set the display colour to <span style="color: gold;">gold</span>  |
| /function boti_timer:settings/color.yellow | set the display colour to <span style="color: red;">yellow</span>  |
| /function boti_timer:settings/color.purple | set the display colour to <span style="color: mediumpurple	;">light purple</span>  |
| /function boti_timer:settings/color.green | set the display colour to <span style="color: green;">green</span>  |
| /function boti_timer:settings/color.aqua | set the display colour to <span style="color: aqua;">aqua</span> |
| /function boti_timer:settings/color.red | set the display colour to <span style="color: red;">text</span>  |
| /function boti_timer:settings/color.gray | set the display colour to <span style="color: gray;">gray</span> |

---

## &copy; Copyright

&copy; 2025 DocBoti — Licensed under the MIT License.

