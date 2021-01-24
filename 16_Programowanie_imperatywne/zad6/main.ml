
let diagonal tab =
  let mini = ref max_float in

  for i = 0 to (Array.length tab) - 1 do
    let (a, b) = tab.(i) in
    mini := min (a *. a +. b *. b) !mini;
  done;

  sqrt !mini;;
