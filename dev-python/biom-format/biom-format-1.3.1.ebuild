# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_DEPEND="2:2.7"

inherit distutils

DESCRIPTION="Python implementation of the biological observation matrix (BIOM) format"
HOMEPAGE="http://biom-format.org/"
SRC_URI="https://pypi.python.org/packages/source/b/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="+dateutil scipy"

DEPEND="
  >=dev-python/numpy-1.3.0
  >=dev-python/pyqi-0.3.1
"

RDEPEND="${DEPEND}
  dateutil? ( dev-python/python-dateutil )
  scipy? ( sci-libs/scipy )
"

pkg_setup()
{
  python_set_active_version 2
  python_pkg_setup
}
