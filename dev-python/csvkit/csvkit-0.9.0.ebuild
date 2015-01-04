# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4} )
inherit distutils-r1

DESCRIPTION="csvkit is a suite of utilities for converting to and working with CSV, the king of tabular file formats"
HOMEPAGE="http://csvkit.readthedocs.org/"
SRC_URI="https://pypi.python.org/packages/source/c/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  >=dev-python/xlrd-0.7.1
  >=dev-python/sqlalchemy-0.6.6
  >=dev-python/openpyxl-2.0.3
  >=dev-python/six-1.6.1
  =dev-python/python-dateutil-2.2*
"
