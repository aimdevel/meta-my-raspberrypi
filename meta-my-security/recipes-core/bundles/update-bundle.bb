DESCRIPTION = "RAUC bundle generator"

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

DEPENDS = "linux-raspberrypi"

inherit bundle

RAUC_BUNDLE_COMPATIBLE = "${MACHINE}"
RAUC_BUNDLE_VERSION = "v20241104"
RAUC_BUNDLE_DESCRIPTION = "RAUC Demo Bundle"

RAUC_BUNDLE_FORMAT = "verity"

RAUC_BUNDLE_SLOTS = "rootfs kerneldir"

RAUC_SLOT_kerneldir = "kernel-dir"
RAUC_SLOT_kerneldir[file] = "kernel-dir.vfat"
RAUC_SLOT_kerneldir[type] = "file"
RAUC_SLOT_kerneldir[fstype] = "vfat"

RAUC_SLOT_rootfs = "core-image-base"
#RAUC_SLOT_rootfs[type] = "file"
RAUC_SLOT_rootfs[file] = "core-image-base-raspberrypi4-64.ext4.verity"
RAUC_SLOT_rootfs[rename] = "rootfs.img"

RAUC_KEY_FILE ?= "${THISDIR}/files/development-1.key.pem"
RAUC_CERT_FILE ?= "${THISDIR}/files/development-1.cert.pem"

