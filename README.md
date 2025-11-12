# Tic-Tac-Toe Ruby Challenge

This is a simple console-based Tic-Tac-Toe game built with Ruby. It was created as part of The Odin Project's Ruby course to practice Object-Oriented Programming (OOP) concepts.

## Features

- Two-player mode (Player vs Player).
- Interactive command-line interface.
- Dynamic game board updates after each move.
- Win detection (horizontal, vertical, diagonal).
- Draw detection when the board is full and no one wins.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/tic-tac-toe-ruby.git
   cd tic-tac-toe-ruby

2. Run the game:

`ruby main.rb`

## How to Play

1. The game will prompt each player to enter their move (a number between 1 and 9).
2. Players take turns marking the board with "X" and "O".
3. The game will announce a winner or a draw when the game ends.

## Code Structure

- Game: Controls the game loop, players' turns, and game logic.
- Player: Represents a player and their mark ("X" or "O").
- Board: Manages the 3x3 grid and validates moves.