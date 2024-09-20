# git pull
make -j48
make install
cd ../../
source 0.build_src.sh
# mkfs.erofs -zlzma  arm64_lzma_4k.img ./aarch64_elf_bin/
# mkfs.erofs -zlzma  --bcj=arm64 arm64_bcj_lzma_4k.img ./aarch64_elf_bin/
mkfs.erofs -zlzma --bcj=arm64 arm64_bcj_lzma_4k.img ./aarch64_elf_bin/
fsck.erofs --extract=out arm64_bcj_lzma_4k.img
ls -l aarch64_elf_bin/
md5sum aarch64_elf_bin/*
ls -l out/
md5sum out/*
rm -rf out

cd 0.src/erofs-utils-x
