open CallbagOf
open CallbagBasics

let _ =
  from 123
  |> map (fun e -> e * 2)
  |> for_each Js.log
