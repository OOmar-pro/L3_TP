module ListZipper2:LIST_ZIPPER = 
struct type 'a t = ('a list * 'a list) 
exception First 
exception Last
exception Empty

let create () = ([],[])

let previous z = match z with
|([],_) -> raise First
|(h::t,l) -> (t,h::l) 

let next z = match z with
|(_,[]) -> raise Last
|(l,h::t) -> (h::l,t)
let insert_weird (l,r) a = (l,a::r)(* what happens?*)
let insert (l,r) a = (a::l,r)
let remove z = match z with
|(_,[]) -> raise Empty
|(l,h::t)->(l,t) 

end