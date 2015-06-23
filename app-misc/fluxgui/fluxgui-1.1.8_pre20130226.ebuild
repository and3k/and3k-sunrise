# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit distutils git-2 eutils

DESCRIPTION="f.lux indicator applet is an indicator applet to control xflux, an application that makes the color of your computer’s display adapt to the time of day, warm at nights and like sunlight during the day"
HOMEPAGE="http://justgetflux.com/ https://github.com/Kilian/f.lux-indicator-applet"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

EGIT_REPO_URI="https://github.com/Kilian/f.lux-indicator-applet.git"
EGIT_COMMIT="8b5d3e2bf13c25de9d6fc4e309206aada75d7431"

DEPEND=""
RDEPEND="${DEPEND}
  dev-python/pexpect
"

src_prepare() {
	python -m appindicator
	if [ $? -ne 0 ]; then
		# AppIndicator replacement for systems without Unity 
		epatch "${FILESDIR}/${PN}-1.1.8-appindicator.patch"
	fi
}