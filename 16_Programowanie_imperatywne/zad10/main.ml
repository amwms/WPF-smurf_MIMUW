

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
