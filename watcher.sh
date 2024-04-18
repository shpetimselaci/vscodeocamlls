## /bin/sh
DUNE_CONFIG__GLOBAL_LOCK=disabled opam exec -- dune build -w &
DUNE_CONFIG__GLOBAL_LOCK=disabled opam exec -- dune exec vscodeocamlls -w 
# DUNE_CONFIG__GLOBAL_LOCK=disabled opam exec -- dune fmt -w
p1=$!

wait $p1