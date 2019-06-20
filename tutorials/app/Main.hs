module Main where
import Lib
import EvenSum
import AddSquares
import Society 
import PatternMatching
main :: IO ()

main = do {
  print(addSquares 2.2 3.3);
  print(addSquares 2 1);
  print(head [1, 2, 3]);
  print(tail [1, 2, 3]);
  print(evenSum [1, 2, 3, 4, 5, 6]);
  let a = Person "Kevin" "Chen" 19 in print(firstName a);
  print(lucky 5 ++ lucky 7); 
}
