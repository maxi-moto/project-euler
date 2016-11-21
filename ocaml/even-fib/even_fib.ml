let rec slow_fib number =
    match number with
    | 0 -> 1
    | 1 -> 1
    | number -> fib (number - 1) + fib (number - 2);;

let rec fib_tail index current prev =
    match index with
    | 0 -> prev
    | 1 -> current
    | index -> fib_tail (index - 1) (current + prev) (current);;

let rec fib_tail_limit current prev sum =
    if current <= 4000000 then 
        if (current mod 2 == 0) then 
            fib_limit (current + prev) (current) (sum + current)
        else fib_limit (current + prev) (current) (sum)
    else sum;;

let rec fib_tail_match current prev sum = 
    if current <= 4000000 then 
        match (current mod 2 == 0) with
        | true -> match_fib (current + prev) (current) (sum + current)
        | false -> match_fib (current + prev) (current) (sum)
    else sum;;
