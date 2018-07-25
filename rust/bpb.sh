brew unlink libpng &&  brew unlink libtiff && brew unlink libjpeg
bpb $1 $2 $3 $4 $5
brew link libpng &&  brew link libtiff && brew link libjpeg
