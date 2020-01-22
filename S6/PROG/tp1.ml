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
  |([],[]) -> []
  |(a::b, c::d) -> (dotprod b d) + (a * c);; *)


let rec split_aux n ls l1 l2 =
    match ls with
    |[] -> (l1, l2)
    |h::q -> if(h > n) then split_aux n q l1 (h::l2) else split_aux n q (h::l1) l2;;

split_aux 3 ([1;4;6;2;3]) [] [];