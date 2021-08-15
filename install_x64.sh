SETUPFLAGS="--overwrite '*' --noconfirm"
GNUTLS="gnutls.pkg.tar.zst"
curl -L "https://github.com/lifegpc/static-mingw-w64-gnutls/releases/download/3.7.2-2/mingw-w64-x86_64-gnutls-3.7.2-2-any.pkg.tar.zst" -o $GNUTLS
pacman -U $GNUTLS $SETUPFLAGS
