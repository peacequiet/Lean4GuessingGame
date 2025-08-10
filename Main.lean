import Lean4GuessingGame
import Std

open Std

#check IO.getStdin

def min := 0
def max := 100

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
