import Lean4GuessingGame
import Std

open Std

#check IO.getStdin

def min := 0
def max := 100

def gameLoop (solution : Nat) (guesses : Nat) : IO Unit := do
  let stdIn ← IO.getStdin
  let input ← stdIn.getLine

  match input.toNat? with
  | some guess =>
    if guess > solution then
      IO.println s!"Lower!"
      gameLoop solution (guesses + 1)
    else if guess < solution then
      IO.println s!"Higher!"
      gameLoop solution (guesses + 1)
    else
      IO.println s!"Congrats! You Win! Guesses: {guesses}"
  | none =>
    IO.println s!"Please enter a valid number"
    gameLoop solution guesses


def main : IO Unit :=
  do
    IO.println s!"Welcome to our guessing game"
    IO.println s!"Guess the number between a range of values"

    let stdIn ← IO.getStdin
    let userInput ← stdIn.getLine
    IO.println s!"Hello, {userInput}!"
    IO.println s!"What's the next name?"
    let userInput ← stdIn.getLine
    IO.println s!"Hello, {userInput}!"
