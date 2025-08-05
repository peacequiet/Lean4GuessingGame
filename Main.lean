import Lean4GuessingGame

#check IO.getStdin

def main : IO Unit :=
  do
    IO.println s!"What's your name?"
    let stdIn ← IO.getStdin
    let userInput ← stdIn.getLine
    IO.println s!"Hello, {userInput}!"
