

let repeat tab =
    let ind = ref 0 in
    while (tab.(!ind) > 0) do
        tab.(!ind) <- (-(tab.(!ind)));
        ind := ~-(tab.(!ind))
    done;
  !ind;;
