# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

DESCRIPTION="Music Player Daemon integration into Sound Menu"
HOMEPAGE="https://launchpad.net/mpd-sound-menu"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
  media-libs/libmpd
  unity-indicators/indicator-sound
"

if [[ ${PV} == "9999" ]]
then
  inherit bzr

  EBZR_REPO_URI="lp:mpd-sound-menu"

  src_unpack() {
	bzr_src_unpack
  }
else
  MY_P="${PN}_${PV}"

  SRC_URI="https://launchpad.net/mpd-sound-menu/trunk/${PV}/+download/${MY_P}.tar.gz"

  S=${WORKDIR}/${PN}
fi
