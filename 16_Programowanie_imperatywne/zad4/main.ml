

let nawiasy tab =
  let lewe = ref 0
  and prawe = ref 0
  and last = ref tab.(0)
  and wynik = ref 0
  and n = Array.length tab in

  if tab.(0) = '(' then lewe := !lewe + 1 else prawe := !prawe + 1;

  for i = 1 to n - 1 do
    if tab.(i) = '(' then
      if tab.(i) = !last then
        lewe := !lewe + 1
      else begin
        wynik := max !wynik (min !lewe !prawe);
        lewe := 1;
        prawe := 0
      end
    else
      prawe := !prawe + 1;

    last := tab.(i)
  done;
  (max !wynik (min !lewe !prawe)) * 2
;;
