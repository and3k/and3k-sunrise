# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MY_PN="ncbi-blast"
MY_PV="${PV}+"
MY_SRC="${MY_PN}-${MY_PV}-src"

DESCRIPTION="NCBI BLAST+"
HOMEPAGE="http://blast.ncbi.nlm.nih.gov/"
SRC_URI="ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/${PV}/${MY_SRC}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/${MY_SRC}/c++"

src_configure() {
  ./configure
}

src_install() {
  emake install prefix="${ED}/usr"
}
