import Lake
open Lake DSL

package "Lean4GuessingGame" where
  version := v!"0.1.0"

lean_lib «Lean4GuessingGame» where
  -- add library configuration options here

@[default_target]
lean_exe "lean4guessinggame" where
  root := `Main
