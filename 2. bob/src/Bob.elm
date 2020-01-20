module Bob exposing (hey, isAllUppercase)


hey : String -> String
hey remark =
  let
      isNormalQuestion = isQuestion remark

      isYellQuestion = isQuestion remark && isAllUppercase remark

      isYellStatement = not (isQuestion remark) && isAllUppercase remark

      isSilence = isAllWhitespaces remark
  in
      if isYellQuestion then
        "Calm down, I know what I'm doing!"
      else if isNormalQuestion then
        "Sure."
      else if isYellStatement then
        "Whoa, chill out!"
      else if isSilence then
        "Fine. Be that way!"
      else
        "Whatever."


isQuestion : String -> Bool
isQuestion str =
  String.trim str
    |> String.endsWith "?"


isAllUppercase : String -> Bool
isAllUppercase str =
  let
     chars =
        String.toList str
          |> List.filter Char.isAlpha
  in
     not (List.isEmpty chars) && List.all Char.isUpper chars


isAllWhitespaces : String -> Bool
isAllWhitespaces str =
  String.trim str
    |> String.isEmpty