KERNEL_FEATURES:append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"

