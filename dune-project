(lang dune 3.15)

(name vscodeocamlls)

(generate_opam_files true)

(source
 (github shpetimselaci/vscodeocamlls))

(authors "Shpetim Selaci")

(maintainers "Shpetim Selaci")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name vscodeocamlls)
 (synopsis "OCaml Language Server")
 (description "OCaml Language Server, DAP for OCaml")
 (depends ocaml dune)
 (tags
  (topics "DAP VSCode" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
