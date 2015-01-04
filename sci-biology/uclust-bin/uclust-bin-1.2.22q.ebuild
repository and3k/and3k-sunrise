# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MY_PN="uclust"
MY_PV="q1.2.22"
MY_INSTALL_PATH="/opt/uclust"

DESCRIPTION="A high-performance clustering, alignment and search algorithm that is capable of handling millions of sequences"
HOMEPAGE="http://www.drive5.com/"

SRC_URI="
  x86?   ( http://www.drive5.com/${MY_PN}/${MY_PN}${MY_PV}_i86linux32 )
  amd64? ( http://www.drive5.com/${MY_PN}/${MY_PN}${MY_PV}_i86linux64 )
"

LICENSE="Licensed ONLY for use in PyNAST and QIIME"
SLOT="0"
KEYWORDS="~amd64 ~x86"


src_unpack() {
	mkdir ${WORKDIR}/${P}/
	cp ${DISTDIR}/${A} ${WORKDIR}/${P}/
}


src_install () {
		exeinto ${MY_INSTALL_PATH}/
		doexe ${A}
		dosym ${MY_INSTALL_PATH}/${A} /usr/bin/uclust
}
