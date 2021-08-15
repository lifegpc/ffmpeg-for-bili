now=`pwd`
cd ffmpeg
./configure \
    --enable-gpl \
    --enable-version3 \
    --enable-small \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-doc \
    --disable-decoders \
    --enable-decoder=aac,ass,bmp,flac,h264,hevc,jpeg2000,jpegls,mjpeg,mjpegb,png,srt,ssa,webp,webvtt \
    --disable-encoders \
    --enable-encoder=mjpeg,movtext \
    --disable-hwaccels \
    --disable-demuxers \
    --enable-demuxer=ass,ffmetadata,flac,hls,image_bmp_pipe,image_jpeg_pipe,image_jpegls_pipe,image_png_pipe,image_webp_pipe,matroska,mjpeg,mjepg_2000,mov,mpegts,srt,webvtt \
    --disable-muxers \
    --enable-muxer=matroska,mov \
    --disable-parsers \
    --enable-parser=bmp,flac,h264,hevc,jpeg2000,mjpeg,png,webp \
    --disable-filters \
    --enable-gmp \
    --enable-gnutls \
    --pkg-config-flags=--static \
    --extra-ldflags=-static \
    "--prefix=$now"
