# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Nix, the purely functional package manager"
HOMEPAGE="https://github.com/NixOS/nix"
SRC_URI="https://nixos.org/nix/install"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE="single-user multi-user"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
