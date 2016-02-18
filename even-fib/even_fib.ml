let rec fib number =
    match number with
    | 0 -> 1
    | 1 -> 1
    | number -> fib (number - 1) + fib (number - 2)
