# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999
#hackport: flags: -bytestring-builder,-developer

CABAL_FEATURES="lib profile haddock hoogle hscolour" # broken test-suite
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="An efficient packed Unicode text type"
HOMEPAGE="https://github.com/haskell/text"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
# keep in sync with ghc-8.6
#KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE=""
# break cyclic dependencies, test suite requires porting to >=QC-2.11
RESTRICT=test

RDEPEND=">=dev-lang/ghc-7.8.2:="

DEPEND="${RDEPEND}
"

CABAL_CORE_LIB_GHC_PV="PM:8.4.4 PM:8.6.1 PM:9999"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bytestring-builder \
		--flag=-developer \
		--flag=-integer-simple
}
