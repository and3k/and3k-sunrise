# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MY_PV="r${PV}"
MY_P="${PN}-${MY_PV}"

DESCRIPTION="Microbiome Analysis Utilities (NAST-iEr, ChimeraSlayer, WigeoN, TreeChopper, AmosCmp16Spipeline)"
HOMEPAGE="http://microbiomeutil.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${MY_P}.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
"

RDEPEND="${DEPEND}
  sci-biology/ncbi-tools
  sci-biology/cdbfasta
"

# Disable -j, others we will get this warning: jobserver unavailable: using -j1. Add `+' to parent make rule
MAKEOPTS+=" -j1"

S=${WORKDIR}/${MY_P}

src_install() {
  install_dir="/opt/microbiomeutil"

  # install executables
  exefiles="NAST-iEr/NAST-iEr TreeChopper/util/slclust $(find -name '*.pl*') $(find -name '*.py*')"
  for exefile in ${exefiles}
  do
	  exeinto ${install_dir}/$(dirname ${exefile})
	  doexe ${exefile}
  done

  # remove everything that should not be installed/is already instlled
  rm ${exefiles}
  rm -r docs
  rm RESOURCES/formatdb.log RESOURCES/results RESOURCES/accs
  find -name Makefile -delete
  find -name LICENSE -delete
  find -name README -delete
  find -name README.txt -delete
  find -name sample_data -exec rm -r {} \+

  # install whats left
  insinto ${install_dir}
  doins -r *

#  for d in PerlLib __BroadBellerophon/masks __ChimeraConstructorToolkit/SeqSubstrates
#  do
#	insinto /opt/microbiomeutil/ChimeraSlayer/${d}
#	doins ChimeraSlayer/${d}/*
#  done

#  exeinto /opt/microbiomeutil/ChimeraSlayer
#  doexe ChimeraSlayer/ChimeraSlayer.pl

#  for d in util ChimeraParentSelector ChimeraPhyloChecker __BroadBellerophon __ChimeraConstructorToolkit __KmerChimerDetector
#  do
#	exeinto /opt/microbiomeutil/ChimeraSlayer/${d}
#	doexe ChimeraSlayer/${d}/*.pl
#  done

  cat << EOF > 90microbiomeutil
PATH="/opt/microbiomeutil/NAST-iEr:/opt/microbiomeutil/ChimeraSlayer:/opt/microbiomeutil/WigeoN:/opt/microbiomeutil/TreeChopper:/opt/microbiomeutil/AmosCmp16Spipeline"
EOF
  doenvd 90microbiomeutil
}
