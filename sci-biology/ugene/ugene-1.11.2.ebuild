# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# This ebuild is from here: http://ugene.unipro.ru/forum/YaBB.pl?num=1274630676

EAPI=3

inherit qt4-r2

DESCRIPTION="A free open-source cross-platform bioinformatics software"
HOMEPAGE="http://ugene.unipro.ru/"
SRC_URI="http://${PN}.unipro.ru/downloads/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="cuda sse2"

DEPEND="dev-qt/qtgui:4
  cuda? ( dev-util/nvidia-cuda-sdk )"
RDEPEND="${DEPEND}"

src_configure() {
	eqmake4 INSTALL_LIBDIR="/usr/$(get_libdir)" CONFIG+="x64" -r
}

src_install() {
	make INSTALL_ROOT="${D}" install || die "emake install failed"
}
