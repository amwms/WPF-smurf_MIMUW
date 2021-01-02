(*
Dana jest tablica par dodatnich liczb rzeczywistych.
Liczby te, to długości boków pewnych prostokątów o takich samych polach.
Tablica ta jest posortowana rosnąco po pierwszych elementach par,
oraz malejąco po drugich elementach par.
Napisz procedurę diagonal: (float * float) array → float,
która wyznaczy najkrótszą z przekątnych prostokątów.
 *)

let diagonal tab =
  let mini = ref max_float in

  for i = 0 to (Array.length tab) - 1 do
    let (a, b) = tab.(i) in
    mini := min (a *. a +. b *. b) !mini;
  done;

  sqrt !mini;;
