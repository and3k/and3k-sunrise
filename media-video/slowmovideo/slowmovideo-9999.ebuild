# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

MY_PN="slowmoVideo"

DESCRIPTION="slowmoVideo creates smooth slow-motion videos from your footage"
HOMEPAGE="https://github.com/slowmoVideo/slowmoVideo/wiki"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/${MY_PN}/${MY_PN}.git"
  # KEYWORDS="" # none of the released versions build
  KEYWORDS="~amd64 ~x86"
else
  MY_P="${MY_PN}-${PV}"
	SRC_URI="https://github.com/${MY_PN}/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
  S="${WORKDIR}/${MY_P}"
  KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-3+"
SLOT="0"

CMAKE_USE_DIR="${S}/src"
