# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_DEPEND="2:2.7"

inherit distutils

DESCRIPTION="Python framework designed to support wrapping general commands in multiple types of interfaces"
HOMEPAGE="http://bipy.github.io/pyqi/"
SRC_URI="https://pypi.python.org/packages/source/p/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

pkg_setup()
{
  python_set_active_version 2
  python_pkg_setup
}
