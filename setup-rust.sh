# #Install rust
if hash cargo 2>/dev/null; then
    echo "We have cargo!"
else
    curl https://sh.rustup.rs -sSf | sh
    rustup default nightly
fi

if hash bpb 2>/dev/null; then
    echo "Already have bpb, skipping."
else
    # # Unlink these libraries as they mess with a particular rust (curve25519-dalek) dependency
    # brew unlink libpng &&  brew unlink libtiff && brew unlink libjpeg
    # cargo install bpb
    # # Relink though because they're necessary for a bunch of other depedencies!
    # brew link libpng &&  brew link libtiff && brew link libjpeg
    #

    # Instead of the above use André Arko's binary version of bpb (which is
    # installed via the Brewfile )for code signing, which depends on the
    # nightly version of rust!  https://github.com/withoutboats/bpb/issues/5

    bpb init  "AndrésCuervo <acwervo@gmail.com>"
    git config --global gpg.program bpb
    echo "---------- Hi, go add this PGP key to your Github & Gitlab accounts :))  -------"
    bpb print
fi
