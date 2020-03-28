type 'a tree =
    |Item of 'a
    |Section of 'a tree list
;;

let a = Section[Section[Item "a"; Item "*"; Item "b"];
                Item "+";
                Section[Item "c"; Item "*"; Item "d"]];;

let cherche x t =
  match t with
    |[] -> []
    |(h::a::q) -> a
;;

cherche "+" a;;
