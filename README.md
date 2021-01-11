# GodoCon
A simple launcher for Godot games in the pck format. Portmanteau of Godot and Console

## Why?
Many Godot games are tiny, compared to the size of the full engine. Godot's executables have a CLI flag that lets you specify the pck file to be loaded (`--main-pack`), so with one copy of the engine (assuming no significant breakages across engine versions and the game doesn't require custom engine code) you can launch most Godot games in their PCK form with one single executable

## Current Status
The launcher is functional but you can only add games, no removal yet. Also they're displayed as their full file path with no icon