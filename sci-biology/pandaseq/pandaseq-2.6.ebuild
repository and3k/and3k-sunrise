# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit autotools-utils git-2

DESCRIPTION="PAired-eND Assembler for DNA sequences"
HOMEPAGE="https://github.com/neufeld/pandaseq/"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

EGIT_REPO_URI="https://github.com/neufeld/pandaseq.git"
EGIT_COMMIT="v${PV}"

AUTOTOOLS_AUTORECONF="yes"
