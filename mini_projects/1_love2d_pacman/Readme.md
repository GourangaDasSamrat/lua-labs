# 🎾 Pacman: Aryna vs Rybakina

> A simple yet modular 2D Pacman-style game built with Lua and the LÖVE (Love2D) framework. This game features basic AI, tile-based collision, and a modular code structure.

## 📸 Gameplay Screenshot

<img src="https://i.postimg.cc/HLmTHcRj/Screenshot-2026-04-13-10-41-58.png">

## 🎮 Game Logic

- Player (Aryna): Use the arrow keys to move and collect dots.
- Enemy (Rybakina): A ghost AI that constantly chases the player.
- Score: Each dot collected increases your score by 10.
- Game Over: If Rybakina touches Aryna, the game ends.
- Restart: Press 'R' to reset the game and start over.

## 📂 Project Structure

```bash
├── main.lua       # Main game loop, states, and restart logic
├── map.lua        # Tilemap data and collision detection
├── player.lua     # Player movement and Enemy AI logic
└── README.md      # Documentation
```

## 🚀 How to Run

### Prerequisites

- Install Love2D: Download and install it from love2d.org.
- Lua: (Optional) You can have Lua installed, but Love2D comes with its own JIT compiler.

### Steps to Start

- Clone or Download this project folder.

- Run with Love2D:

- Drag & Drop: Drag the entire folder onto the love.exe (Windows) or the Love2D icon (Mac).

- Terminal/CLI: Navigate to the folder in your terminal and type:
```bash
love .
```

## 🛠️ Built With

- Language: Lua

- Framework: LÖVE 11.5

- Concepts: Modular Programming, Table Management, Delta Time, and AI Pathing.

## 📝 License

This project is under [MIT License.](../../LICENSE) Feel free to modify and build your own worlds!