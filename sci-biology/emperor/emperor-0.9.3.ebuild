# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_DEPEND="2:2.7"

inherit distutils

DESCRIPTION="Interactive next generation tool for the analysis, visualization and understanding of high throughput microbial ecology datasets"
HOMEPAGE="http://qiime.org/emperor/"
SRC_URI="https://pypi.python.org/packages/source/e/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
  >=sci-biology/qiime-1.7.0
"

pkg_setup()
{
  python_set_active_version 2
  python_pkg_setup
}
