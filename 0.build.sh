# git pull
make -j48
make install
cd ../../
source 0.build_src.sh
# mkfs.erofs -zlzma  arm64_lzma_4k.img ./aarch64_elf_bin/
# mkfs.erofs -zlzma  --bcj=arm64 arm64_bcj_lzma_4k.img ./aarch64_elf_bin/
mkfs.erofs -zlzma --bcj=arm64 arm64_bcj_lzma_4k_test.img ./arm64test/
fsck.erofs --extract=out arm64_bcj_lzma_4k_test.img
md5sum arm64test/*
md5sum out/*

rm -rf out

mkfs.erofs  arm64_lzma_4k_test.img ./arm64test/
fsck.erofs --extract=out arm64_lzma_4k_test.img
cd 0.src/erofs-utils-x
