TERMUX_PKG_HOMEPAGE=https://fmt.dev/latest/index.html
TERMUX_PKG_DESCRIPTION="Open-source formatting library for C++"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_LICENSE_FILE="LICENSE.rst"
TERMUX_PKG_VERSION=7.0.3
TERMUX_PKG_SRCURL=https://github.com/fmtlib/fmt/archive/$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=b4b51bc16288e2281cddc59c28f0b4f84fed58d016fb038273a09f05f8473297
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DFMT_TEST=OFF"
TERMUX_PKG_NO_STATICSPLIT=true
