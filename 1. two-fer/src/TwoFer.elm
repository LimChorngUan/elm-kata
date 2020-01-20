{-
Given a name, return a string with the message:

One for X, one for me.
Where X is the given name.

However, if the name is missing, return the string:

One for you, one for me.
-}


module TwoFer exposing (twoFer)


twoFer : Maybe String -> String
twoFer name =
  let
      youOrName = Maybe.withDefault "you" name
  in
      "One for " ++ youOrName ++ ", one for me."
