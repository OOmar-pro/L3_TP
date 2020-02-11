
let rec imax e ls = 
  match ls with
    |[] -> e
    |h::q -> imax (if(h > e) then h else e) q;;

(* imax (-1) ([1;2;3;4;5;6]) ;; *)

let rec append l1 l2 = 
  match l1 with
    |[] -> l2
    |h::q -> h :: (append q l2);;

(* append (["a"; "b"]) (["c"; "d"]);; *)

let rec revappend l1 l2 =
  match l1 with
    |[] -> l2
    |h::q -> revappend q (h::l2);;

(* revappend (["a"; "b"]) (["c"; "d"]);; *)

(*
let rec dotprod xs ys =
  let t = (xs, ys) in 
    match t with
      |(v1, []) -> v1
      |([], v2) -> v2
      |([],[]) -> 0
      |(a::b, c::d) -> (a*c) + (dotprod b d);; 
*)

let rec split_aux n ls l1 l2 =
  match ls with
    |[] -> (l1, l2)
    |h::q -> if(h > n) then split_aux n q l1 (h::l2) else split_aux n q (h::l1) l2;;

let split n ls = split_aux n ls [] [];;

(* split 3 [1; 2; 3; 5; 6; 4];; *)

let rec quicksort l =
  match l with
  |[] -> []
  |h :: q -> match (split h  q) with
                       |([],[]) -> [h]
                       |(l1,l2) ->  (quicksort  l1) @ h :: [] @ (quicksort l2)
               ;;

let a = [1;3;2;5;6;0;4;5;0;48;0;21;2;1;3;1;3;13;1;1];;
let a = [1;2;3;5;4];;
let b = quicksort a;;

List.length a;;
List.length b;;
