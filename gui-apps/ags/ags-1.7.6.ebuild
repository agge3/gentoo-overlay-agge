# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A customizable and extensible shell"
HOMEPAGE="https://github.com/Aylur/ags"
SRC_URI="https://github.com/Aylur/ags/archive/refs/tags/v${PV}.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="gnome-bluetooth networkmanager upower"

DEPEND="
	dev-lang/typescript
	net-libs/nodejs
	dev-build/meson
	dev-libs/gjs
	x11-libs/gtk+
	gui-libs/gtk-layer-shell
	dev-libs/gobject-introspection
	dev-libs/libdbusmenu
	net-libs/libsoup
"
RDEPEND="
	$DEPEND
	gnome-bluetooth? (
	net-wireless/gnome-bluetooth
	)
	networkmanager? (
	net-misc/networkmanager
	)
	upower? (
	sys-power/upower
	)
"
BDEPEND="
	$DEPEND
	$RDEPEND
"

src_compile() {
	cd ${S} &&
	npm install &&
	meson setup build &&
	meson install -C build
}

src_install() {
	dodoc README.md CHANGELOG.md
	dobin ags
}
