### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers
# chiclet kernel adapted from: blu_spark pxl7a by eng.stk

### AnyKernel setup
# global properties
properties() { '
kernel.string=ChicletKernel for Galaxy S21 Series
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=t2s
supported.versions=16
supported.patchlevels=
'; } # end properties


### AnyKernel install
# boot shell variables
BLOCK=/dev/block/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;
NO_MAGISK_CHECK=1;
NO_VBMETA_PARTITION_PATCH=1;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
flash_generic boot;
flash_generic vendor_boot;
flash_generic dtbo;
## end boot install