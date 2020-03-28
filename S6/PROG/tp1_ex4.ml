module type QUEUE_TYPE =
sig
  type 'a t
  exception Empty
  val empty : 'a t
  val is_empty : 'a t -> bool
  val head : 'a t -> 'a option
  val head_exn : 'a t -> 'a (* can raise Empty *)
  val queue : 'a t -> 'a t option
  val queue_exn : 'a t -> 'a t (* can raise Empty *)
  val snoc : 'a t -> 'a -> 'a t
  val length : 'a t -> int
end

module FILE : QUEUE_TYPE =
struct
  let 'a t = 'a list * 'a list
  exception Empty

  let empty = ([], [])

  let is_empty f = 
    match f with
      |([], []) -> true
      |(_,_) -> false

  let head_exn f =
    if (is_empty f) 
    then
      raise Empty
    else
      match f with
        |(f,h::q) -> h

  let head f =
    if (is_empty f) 
    then
      None
    else
      match f with
        |(l,h::q) -> Some(h)

  let queue_exn f =
    if (is_empty f) 
    then
      raise Empty
    else
      match f with
        |(h::q,l) -> h

  let queue f =
    if (is_empty f) 
    then
      None
    else
      match f with
        |(h::q,l) -> Some(h)
end
