let rec find p ls =
  match ls with
    |[] -> 0
    |(h::q) -> if (p h) then h else find p q
;;

let p x = x < 0;;
let a = [4; 3; -2; 7; -6; 8];;
let b = [4; 3; 2; 7; 6; 8];;

find p a;;
find p b;;
