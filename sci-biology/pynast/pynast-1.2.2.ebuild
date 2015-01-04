# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_DEPEND="2:2.7"

inherit distutils

DESCRIPTION="Python Nearest Alignment Space Termination tool"
HOMEPAGE="http://qiime.org/pynast/"
SRC_URI="https://pypi.python.org/packages/source/p/${PN}/${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
  >=dev-python/pycogent-1.5.3
  >=dev-python/numpy-1.3.0
  >=sci-biology/uclust-bin-1.2.22q
"

pkg_setup()
{
  python_set_active_version 2
  python_pkg_setup
}
