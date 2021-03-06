(*
Dana jest tablica liczb całkowitych zawierająca permutację liczb całkowitych od 0 do n (dla n≥0).
Napisz procedurę cykl:int array→int, która wyznacza długość najdłuższego cyklu danej permutacji.
Twoja procedura nie może zmieniać danej tablicy.
*)

let cykl tab =
  let n = Array.length tab
  and maxi = ref 0
  and i = ref 0 in

  while !i < n do
    let pom_max = ref 0 in

    while tab.(!i) > (-1) do
      let pom = tab.(!i) in
      tab.(!i) <- (-1);
      i := pom;
      pom_max := !pom_max + 1;
    done;

    i := !i + 1;
    maxi := max !pom_max !maxi;
  done;

  !maxi;;
