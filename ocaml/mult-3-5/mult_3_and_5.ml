(*
 * NOTE: This is written inclusive, so to get the multiples up to 1000, pass in
 * 999.
 *)
let rec multiples number =
    if number == 3 then 3
    else if number mod 3 == 0 then number + (multiples (number - 1))
    else if number mod 5 == 0 then number + (multiples (number - 1))
    else multiples (number - 1);;
