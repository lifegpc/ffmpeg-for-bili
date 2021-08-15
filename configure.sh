now=`pwd`
cd ffmpeg
./configure \
    --enable-gpl \
    --enable-version3 \
    --enable-small \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-doc \
    --disable-everything \
    --enable-decoder=ass,bmp,jpeg2000,jpegls,mjpeg,mjpegb,png,srt,ssa,webp,webvtt \
    --enable-encoder=mjpeg,movtext \
    --enable-demuxer=ass,flac,hls,image_bmp_pipe,image_jpeg_pipe,image_jpegls_pipe,image_png_pipe,image_webp_pipe,matroska,mjpeg,mjepg_2000,mov,srt,webvtt \
    --enable-muxer=matroska,mov \
    --enable-parser=bmp,flac,h264,hevc,jpeg2000,mjpeg,png,webp \
    --enable-protocol=concat,concatf,file,ftp,hls,http,https,pipe,tls \
    --enable-gmp \
    --enable-gnutls \
    --pkg-config-flags=--static \
    --extra-ldflags=-static \
    "--prefix=$now"
