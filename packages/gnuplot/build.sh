TERMUX_PKG_HOMEPAGE=http://gnuplot.info/
TERMUX_PKG_DESCRIPTION="Command-line driven graphing utility"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_VERSION=5.4.0
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://downloads.sourceforge.net/project/gnuplot/gnuplot/${TERMUX_PKG_VERSION}/gnuplot-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=eb4082f03a399fd1e9e2b380cf7a4f785e77023d8dcc7e17570c1b5570a49c47
TERMUX_PKG_DEPENDS="libandroid-support, libc++, libgd, libiconv, libx11, pango, readline, zlib"
TERMUX_PKG_BREAKS="gnuplot-x"
TERMUX_PKG_REPLACES="gnuplot-x"
TERMUX_PKG_HOSTBUILD=true

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-x
--without-lua
--with-bitmap-terminals
--without-latex
"

termux_step_host_build() {
	"$TERMUX_PKG_SRCDIR/configure"
	make -C docs/ gnuplot.gih
}

termux_step_post_make_install() {
	mkdir -p $TERMUX_PREFIX/share/gnuplot/${TERMUX_PKG_VERSION:0:3}/

	cp $TERMUX_PKG_HOSTBUILD_DIR/docs/gnuplot.gih \
	   $TERMUX_PREFIX/share/gnuplot/${TERMUX_PKG_VERSION:0:3}/gnuplot.gih
}
