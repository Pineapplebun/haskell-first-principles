module Chapter6Section5 (TisAnInteger, TwoIntegers) where

  data TwoIntegers =
    Two Integer Integer
  instance Eq TwoIntegers where
    (==) (Two integer1 integer2) (Two integer1' integer2') =
      integer1 == integer1' && integer2 == integer2'

  data TisAnInteger =
    TisAn Integer
  instance Eq TisAnInteger where
    (==) (TisAn integer) (TisAn integer') = integer == integer'

  data StringOrInt =
      TisAnInt Int
    | TisAString String
  instance Eq StringOrInt where
    (==) (TisAnInt int) (TisAnInt int') = int == int'
    (==) (TisAString str) (TisAString str') = str == str'
    (==) _ _ = False

  data Pair a =
    Pair a a
  instance Eq a => Eq (Pair a) where
    (==) (Pair x y) (Pair x' y') = x == x' && y == y'

  data Tuple a b =
    Tuple a b
  instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple x y) (Tuple x' y') = x == x' && y == y'

  data Which a =
      ThisOne a
    | ThatOne a
  instance Eq a => Eq (Which a) where
    (==) (ThisOne a) (ThisOne a') = a == a'
    (==) (ThatOne a) (ThatOne a') = a == a'
    (==) _ _ = False

  data EitherOr a b =
      Hello a
    | Goodbye b
  instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello x) (Hello x') = x == x'
    (==) (Hello x) (Goodbye y) = True
    (==) (Goodbye y) (Hello x) = True
    (==) (Goodbye y) (Goodbye y') = y == y'
  