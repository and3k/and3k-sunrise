# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_DEPEND="2:2.7"

inherit distutils

DESCRIPTION="QIIME (Quantitative Insights Into Microbial Ecology) is an open source software package for comparison and analysis of microbial communities, primarily based on high-throughput amplicon sequencing data (such as SSU rRNA), but also supporting analysis of other types of data (such as shotgun metagenomic data)"
HOMEPAGE="http://qiime.org/"
SRC_URI="https://pypi.python.org/packages/source/q/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="blast +uclust +pynast +matplotlib chimeraslayer +emperor +fasttree"

DEPEND="
  >=dev-lang/python-2.7.3
  >=dev-python/numpy-1.5.1
  >=dev-python/pycogent-1.5.3
  >=dev-python/biom-format-1.3.1
  >=dev-python/qcli-0.1.0
"

RDEPEND="${DEPEND}
  blast? ( >=sci-biology/ncbi-tools-2.2.22 )
  uclust? ( >=sci-biology/uclust-bin-1.2.22q )
  pynast? ( >=sci-biology/pynast-1.2.2 )
  matplotlib? ( >=dev-python/matplotlib-1.1.0 )
  chimeraslayer? ( >=sci-biology/microbiomeutil-20100429 )
  emperor? ( >=sci-biology/emperor-0.9.3 )
  fasttree? ( >=sci-biology/fasttree-2.1.3 )
"

pkg_setup()
{
  python_set_active_version 2
  python_pkg_setup
}

src_prepare() {
	sed -i -e "s|qiime_scripts_dir|qiime_scripts_dir\t/usr/bin|" qiime/support_files/qiime_config || die "sed failed on qiime_config (setting qiime_scripts_dir)"
	sed -i -e "s|python_exe_fp\tpython|python_exe_fp\tpython2|" qiime/support_files/qiime_config || die "sed failed on qiime_config (setting python_exe_fp)"
}

src_install() {
	distutils_src_install

	# Ugly hack to remove bundled software from QIIME
	rm ${D}/usr/bin/uclust
	rm ${D}/usr/bin/FastTree
	rm ${D}/usr/bin/FlowgramAli_4frame
}
