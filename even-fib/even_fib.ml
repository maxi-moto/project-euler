let rec fib number =
    match number with
    | 0 -> 1
    | 1 -> 1
    | number -> fib (number - 1) + fib (number - 2);;

let rec fib_tail index current prev =
    match index with
    | 0 -> prev
    | 1 -> current
    | index -> fib_tail (index - 1) (current + prev) (current);;

let rec fib_limit current prev =
    if current <= 4000000 then fib_limit (current + prev) (current)
    else prev;;
