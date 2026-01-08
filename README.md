# glippo: Vampire Survivors–Style Game (C Learning Project)

This is a **two-person learning project** designed to teach **programming fundamentals in C** by building a simple game inspired by *Vampire Survivors*.

The goal is **not** to use a heavy game engine, but to:

- Learn real C
- Understand how games actually work
- Practice Git & GitHub workflows
- Get fast visual feedback using hand-drawn assets (MS Paint!)

---

## Tech Stack

- **Language:** C (C99)
- **Graphics Library:** Raylib
- **Version Control:** Git + GitHub
- **Build Tool:** Makefile
- **Assets:** Microsoft Paint (`.png` files)

### Why Raylib?

- Simple, beginner-friendly API
- Written in C
- Minimal setup
- Makes game loops and rendering explicit
- Great for teaching fundamentals

---

## Project Structure

    vampire_c/
    ├── src/
    │   ├── main.c        // Game loop
    │   ├── game.c        // Game state & core logic
    │   ├── player.c
    │   ├── enemy.c
    │   ├── bullet.c
    │   └── utils.c
    ├── include/
    │   ├── game.h
    │   ├── player.h
    │   ├── enemy.h
    │   ├── bullet.h
    │   └── utils.h
    ├── assets/
    │   ├── player.png
    │   ├── enemy.png
    │   └── bullet.png
    ├── Makefile
    └── README.md

This structure is intentional:

- Teaches header/source separation
- Encourages clean interfaces
- Mirrors real C projects

---

## Core Game Loop

The entire game revolves around a simple loop:

    while (!WindowShouldClose()) {
        UpdateGame();
        DrawGame();
    }

Everything in the game fits into:

- **Update:** input, movement, collisions, logic
- **Draw:** rendering textures, UI, effects

Understanding this loop is a major learning milestone.

---

## Learning Roadmap

### Phase 1: Window + Player Movement

**Concepts**

- Compiling C
- Structs
- Keyboard input
- Game loop

**Goals**

- Open a window
- Draw a shape or sprite
- Move it with WASD

Example data structure:

    typedef struct {
        Vector2 position;
        float speed;
    } Player;

---

### Phase 2: Using Assets

**Concepts**

- Loading files
- Textures
- Coordinate systems

**Goals**

- Load `.png` assets from `/assets`
- Draw player sprite instead of shapes

---

### Phase 3: Enemy Spawning

**Concepts**

- Arrays
- Randomness
- Simple AI

**Goals**

- Enemies spawn from screen edges
- Enemies move toward the player
- Use fixed-size arrays (no malloc yet)

Example:

    #define MAX_ENEMIES 100
    Enemy enemies[MAX_ENEMIES];

---

### Phase 4: Shooting & Collisions

**Concepts**

- Vectors
- Collision detection
- Reusable logic

**Goals**

- Auto-firing bullets
- Bullets hit enemies
- Enemies are removed on hit

---

### Phase 5: Health, XP, and Game States

**Concepts**

- Enums
- State machines
- Progression systems

Example:

    typedef enum {
        GAME_PLAYING,
        GAME_PAUSED,
        GAME_OVER
    } GameState;

---

### Phase 6: Weapons & Upgrades

**Concepts**

- Data-driven design
- Scaling systems

Example:

    typedef struct {
        float fireRate;
        int damage;
        int projectileCount;
    } Weapon;

This phase introduces more advanced design ideas without adding engine complexity.

---

## Git & GitHub Workflow

Git is used intentionally as part of the learning process.

### Guidelines

- One feature per branch
- Small, focused commits
- Clear commit messages

Example commit messages:

    Add basic enemy movement
    Fix bullet collision bug
    Implement player XP system

### Learning Goals

- Reading diffs
- Undoing mistakes
- Resolving merge conflicts
- Understanding project history

---

## Design Philosophy

- **Simple first, expand later**
- Prefer clarity over cleverness
- Avoid premature abstraction
- Keep everything visible and understandable

This project is about **learning how games work**, not hiding logic behind tools.

---

## Non-Goals (for now)

- No Unity or Unreal
- No ECS frameworks
- No advanced physics engines
- No premature optimization

Complexity is added **only when it teaches something valuable**.

---

## Final Notes

This project is meant to be:

- Fun
- Visual
- Educational
- Collaborative

If you understand how this game works, you understand the foundations of **real game development in C**.

Happy hacking 🧛‍♂️🎮
