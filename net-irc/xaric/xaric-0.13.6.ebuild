# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit autotools eutils

DESCRIPTION="An IRC client similar to ircII, BitchX, or ircII EPIC"
HOMEPAGE="https://xaric.org/"
SRC_URI="https://xaric.org/software/${PN}/releases/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="sys-libs/ncurses
	dev-libs/openssl"
RDEPEND="${DEPEND}"

DOCS=( AUTHORS ChangeLog README )

src_prepare() {
	epatch "${FILESDIR}"/${P}-tinfo.patch
	eautoreconf
}

src_install() {
	default
	doicon xaric.xpm
}
