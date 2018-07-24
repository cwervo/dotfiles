#Install rust
curl -s https://static.rust-lang.org/rustup.sh | sh -s -- --channel=nightly
rustup default nightly
cargo install bpb
echo "---------- Hi, go add this PGP key to your Github & Gitlab accounts :))  -------"
bpb init  "AndresCuervo <andrescuervor@gmail.com>"
git config --global gpg.program bpb
