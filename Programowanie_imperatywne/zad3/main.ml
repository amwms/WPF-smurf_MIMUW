(*
Dana jest tablica rozmiaru n+1 zawierająca liczby od 1 do n.
Napisz procedurę, która zwraca (dowolną) wartość powtarzającą się w tablicy.
Twoja procedura powinna działać w stałej pamięci dodatkowej.
Natomiast może modyfikować daną tablicę.
*)

let repeat tab =
    let ind = ref 0 in
    while (tab.(!ind) > 0) do
        tab.(!ind) <- (-(tab.(!ind)));
        ind := ~-(tab.(!ind))
    done;
  !ind;;
