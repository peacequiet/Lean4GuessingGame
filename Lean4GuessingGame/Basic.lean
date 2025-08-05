inductive Guess where
  | high
  | low
  | equal

-- Checks if a guess is valid
def guess_check (target : Nat) (guess : Nat) : Guess :=
  match target, guess with
  |_, _ =>
    if guess > target then
      .high
    else if guess < target then
      .low
    else
      .equal
