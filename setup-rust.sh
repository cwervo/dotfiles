# #Install rust
if hash cargo 2>/dev/null; then
    echo "We have cargo!"
else
    curl -s https://static.rust-lang.org/rustup.sh | sh -s -- --channel=nightly
    rustup default nightly
fi

if hash rg 2>/dev/null; then
    echo "Already have ripgrep, skipping."
else
    cargo install ripgrep
fi

if hash bpb 2>/dev/null; then
    echo "Already have bpb, skipping."
else
    # Unlink these libraries as they mess with a particular rust (curve25519-dalek) dependency
    brew unlink libpng &&  brew unlink libtiff && brew unlink libjpeg
    cargo install bpb
    # Relink though because they're necessary for a bunch of other depedencies!
    brew link libpng &&  brew link libtiff && brew link libjpeg

    bpb init  "AndrésCuervo <andrescuervor@gmail.com>"
    git config --global gpg.program bpb
    echo "---------- Hi, go add this PGP key to your Github & Gitlab accounts :))  -------"
    bpb print
fi
