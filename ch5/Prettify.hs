import SimpleJSON
import Numeric (showHex)


data Doc = ToBeDefined
         deriving (Show)

(<>) :: Doc -> Doc -> Doc
a <> b = undefined

smallHex :: Int -> Doc
smallHex x  = text "\\u"
           Main.<> text (replicate (4 - length h) '0')
           Main.<> text h
    where h = showHex x ""

string :: String -> Doc
string = enclose '"' '"' . hcat . map oneChar

enclose :: Char -> Char -> Doc -> Doc
enclose left right x = undefined

hcat :: [Doc] -> Doc
hcat xs = undefined

text :: String -> Doc
text str = undefined


char :: Char -> Doc
char c = undefined

oneChar :: Char -> Doc
oneChar c = case lookup c simpleEscapes of
              Just r -> text r
              Nothing | mustEscape c -> hexEscape c
                      | otherwise    -> char c
    where mustEscape c = c < ' ' || c == '\x7f' || c > '\xff'

simpleEscapes :: [(Char, String)]
simpleEscapes = zipWith ch "\b\n\f\r\t\\\"/" "bnfrt\\\"/"
    where ch a b = (a, ['\\',b])

hexEscape :: Char -> Doc
hexEscape c = undefined