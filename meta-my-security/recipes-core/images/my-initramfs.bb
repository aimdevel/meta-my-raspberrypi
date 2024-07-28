include recipes-core/images/dm-verity-image-initramfs.bb

export IMAGE_BASENAME = "${MLPREFIX}my-initramfs"

PACKAGE_INSTALL:append = " \
    initramfs-module-cryptedoverlay \
    e2fsprogs \
    kernel-module-dm-crypt \
    kernel-module-overlay \
"
