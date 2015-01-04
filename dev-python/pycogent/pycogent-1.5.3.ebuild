# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_DEPEND="2:2.7"

inherit distutils

MY_PN="PyCogent"
MY_P=${MY_PN}-${PV}

DESCRIPTION="A software library for genomic biology, including sequence alignments, phylogeny, clustering, etc."
HOMEPAGE="http://pycogent.org/"
SRC_URI="mirror://sourceforge/project/${PN}/${MY_PN}/${PV}/${MY_P}.tgz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="mpi"

RDEPEND="
  >=dev-python/numpy-1.3
  dev-python/matplotlib
  mpi? ( >=dev-python/mpi4py-1.0 )
  >=dev-python/sqlalchemy-0.5
  >=dev-python/mysql-python-1.2.2
  dev-python/sphinx
"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${MY_P}

pkg_setup()
{
  python_set_active_version 2
  python_pkg_setup
}
