TA_CROSS_COMPILE=xx/gcc-arm-8.2-2019.01-x86_64-aarch64-elf/bin/aarch64-elf-
export TA_DEV_KIT_DIR=xx/export-ta_arm64
cd xx/hello_world/ta
make CROSS_COMPILE=$TA_CROSS_COMPILE $@
