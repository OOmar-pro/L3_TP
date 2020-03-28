(* VARIABLES *)

let a = [7;3;4;0;5;1];;
let b = [7.;3.;4.;0.;5.;1.];;

(* FONCTIONS *)

let rec split_aux n ls l1 l2 = 
  match ls with
    |[] -> (l1,l2)
    |(h::q) -> if h < n then split_aux n q (h::l1) l2 else split_aux n q l1 (h::l2)
;;

let split n ls = split_aux n ls [] [];;


let rec qsort ls = match ls with
  |[] -> []
  |(h::q) -> 
      match (split h q) with
        |(l1,l2) -> (qsort l1)@ h::[] @(qsort l2);;

(* FONCTIONS GENERIQUES *)

let rec split_aux_gen cmp n ls l1 l2 = 
  match ls with
    |[] -> (l1,l2)
    |(h::q) -> if (cmp h n) == -1 then split_aux n q (h::l1) l2 else split_aux n q l1 (h::l2)
;;

let split_gen cmp n ls = split_aux_gen cmp n ls [] [];;


let rec qsort_gen cmp ls = match ls with
  |[] -> []
  |(h::q) -> 
      match (split_gen cmp h q) with
        |(l1,l2) -> (qsort_gen cmp l1)@ h::[] @(qsort_gen cmp l2);;

let cmp_int x y = 
  if x > y 
  then 1
  else if x < y
  then -1
  else 0
;;

let cmp_r x y =
  if x > y 
  then 1
  else if x < y
  then -1
  else 0
;;

(* TEST FONCTIONS *)

(*split 5 a;;*)
(*qsort a;;*)
(*qsort ['a';'d';'k';'c';'e'];;*)
(*qsort_gen cmp_int a;;*)
(*qsort_gen cmp_r b;;*)
