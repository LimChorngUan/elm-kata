module TwoFer exposing (twoFer)


twoFer : Maybe String -> String
twoFer name =
  let
      youOrName = Maybe.withDefault "you" name
  in
      "One for " ++ youOrName ++ ", one for me."
