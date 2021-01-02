(*
Dana jest n-elementowa tablica znaków.
Napisz procedurę rotacja: char array -> int -> unit,
która rotuje daną tablicę o zadaną liczbę miejsc cyklicznie w prawo.

Na przykład, wywołanie:
rotacja [|'a'; 'l'; 'a'; 'm'; 'a'; 'k'; 'o'; 't';  'a'|] 4
zmienia zawartość tablicy na
[|'k'; 'o'; 't'; 'a'; 'a'; 'l'; 'a'; 'm'; 'a'|].
 *)

(* odwrócenie kolejności elementów w tablicy od miejsca p do miejsca k *)
let reverse tab p k =
  for i = 0 to (k - p) / 2 do
    let pom = tab.(k - i) in
    tab.(k - i) <- tab.(p + i);
    tab.(p + i) <- pom;
  done;
;;

let rotacja tab k =
  let n = Array.length tab in
  reverse tab 0 (n - 1 - k);
  reverse tab (n - k) (n - 1);
  reverse tab 0 (n - 1);
;;
