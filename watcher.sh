## /bin/sh
opam exec -- dune build -w &
DUNE_CONFIG__GLOBAL_LOCK=disabled opam exec -- dune exec vscodeocamlls -w # &
# dune fmt -w
p1=$!

wait $p1