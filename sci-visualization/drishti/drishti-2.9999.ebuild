# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit qt4-r2 mercurial

DESCRIPTION="Volume Exploration and Presentation Tool"
HOMEPAGE="http://anusf.anu.edu.au/Vizlab/drishti/"
LICENSE="GPL-3"

SLOT="2"
KEYWORDS=""
IUSE=""

EHG_PROJECT="drishti"
EHG_REPO_URI="https://drishti-2.googlecode.com/hg/"

DEPEND="
	dev-qt/assistant:4
	dev-qt/qtopengl:4
	x11-libs/libqglviewer
	media-libs/glew
	media-libs/freeglut
	sci-libs/netcdf
"

function src_unpack {
	mercurial_src_unpack
	S="${WORKDIR}/${P}/${PN}"
}
