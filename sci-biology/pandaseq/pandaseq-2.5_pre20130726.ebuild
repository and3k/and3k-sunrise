# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit autotools-utils git-2

DESCRIPTION="PAired-eND Assembler for DNA sequences"
HOMEPAGE="https://github.com/neufeld/pandaseq/wiki/PANDAseq-Assembler"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

EGIT_REPO_URI="https://github.com/neufeld/pandaseq.git"
EGIT_COMMIT="7acd91e59432e18ec306fd41067943b6a0996f1d"

AUTOTOOLS_AUTORECONF="yes"
