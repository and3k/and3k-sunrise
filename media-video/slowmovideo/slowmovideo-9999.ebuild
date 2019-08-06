# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

MY_PN="slowmoVideo"

DESCRIPTION="slowmoVideo is an OpenSource program that creates slow-motion videos from your footage."
HOMEPAGE="https://github.com/slowmoVideo/slowmoVideo/wiki"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/slowmoVideo/${MY_PN}.git"
	KEYWORDS=""
else
	MY_P="${MY_PN}-${PV}"
	SRC_URI="https://github.com/encharm/${MY_PN}/archive/${PV}.tar.gz -> ${MY_P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

CMAKE_USE_DIR="${S}/src"
