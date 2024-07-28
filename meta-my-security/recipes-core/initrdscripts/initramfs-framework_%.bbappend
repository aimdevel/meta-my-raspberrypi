FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = "\
    file://cryptedoverlay \
"


do_install:append() {
    # dm-verity
    install ${WORKDIR}/cryptedoverlay ${D}/init.d/81-cryptedoverlay
}

PACKAGES:append = " initramfs-module-cryptedoverlay"

SUMMARY:initramfs-module-cryptedoverlay = "initramfs support for mounting a crypted RW overlay on top of a RO root filesystem"
RDEPENDS:initramfs-module-cryptedoverlay = "${PN}-base"
FILES:initramfs-module-cryptedoverlay = "/init.d/81-cryptedoverlay"
