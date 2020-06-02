module Chapter2Section10 where
  mult1     = x * y + 3
    where x = 3
          y = 1000

  mult2 = x * 5
    where x = 10 * 5 + y
          y = 10

  mult3 = z / x + y
    where x = 7
          y = negate x
          z = y * 10
