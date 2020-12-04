FILESEXTRAPATHS_prepend_mender-uboot := "${THISDIR}/files:"

require recipes-bsp/u-boot/u-boot-mender.inc

SRC_URI_append_mender-uboot_verdin-imx8mm = " file://0001-configs-verdin-imx8mm-mender-integration.patch"
SRC_URI_remove_mender-uboot_colibri-imx6ull = " file://0003-Integration-of-Mender-boot-code-into-U-Boot.patch"
SRC_URI_append_mender-uboot_colibri-imx6ull = " file://0005-integration-of-mender-boot-code-into-uboot.patch"

MENDER_UBOOT_AUTO_CONFIGURE_mender-uboot_verdin-imx8mm = "0"
MENDER_UBOOT_AUTO_CONFIGURE_mender-uboot_colibri-imx6ull = "1"

BOOTENV_SIZE_mender-uboot_verdin-imx8mm  = "0x2000"
BOOTENV_SIZE_mender-uboot_colibri-imx6ull = "0x20000"
MENDER_RESERVED_SPACE_BOOTLOADER_DATA_mender-uboot_colibri-imx6ull="0x40000"

RPROVIDES_${PN} += "u-boot"
