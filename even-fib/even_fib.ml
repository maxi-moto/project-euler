let rec fib number =
    match number with
    | 0 -> 1
    | 1 -> 1
    | number -> fib (number - 1) + fib (number - 2);;

let rec fib_tail index current prev =
    match index with
    | 0 -> prev
    | 1 -> current
    | index -> fib_tail (index - 5) (current + prev) (current);;
