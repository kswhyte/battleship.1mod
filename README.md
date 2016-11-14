# Battleship

![Classic fun for the whole patriarchy!](http://vignette4.wikia.nocookie.net/battleship/images/f/fd/Battleship-1.jpg/revision/latest?cb=20120303020432)

In this project you'll use Ruby to build an implementation of the classic game Battleship.

## Introduction

### Learning Goals / Areas of Focus

* Proficiently use TDD to drive development
* Practice breaking a program into logical components
* Practice implementing a useable REPL interface
* Apply previously learned Enumerable techniques in a real context

## Base Expectations

You are to build a playable game of Battleship that runs in a REPL interface.
The game will allow a single human player to play against a (simplistic)
computer player.

The game will include several distinct phases:

1. [Start Game Sequence](#start-game-sequence)
2. [Computer Ship Placement](#computer-ship-placement)
3. [Player Ship Placement](#player-ship-placement)
4. [Player Shot Sequence](#player-shot-sequence)
5. [Computer Shot Sequence](#computer-shot-sequence)
6. [Ship Hit Sequence](#ship-hit-sequence)
7. [End Game Sequence](#end-game-sequence)
8. Setup [SimpleCov](https://github.com/colszowka/simplecov) to monitor test coverage along the way
