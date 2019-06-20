module Society 
(
  Person(..)
  ) where

data Person = Person {
  firstName :: String,
  lastName :: String,
  age :: Integer
}
