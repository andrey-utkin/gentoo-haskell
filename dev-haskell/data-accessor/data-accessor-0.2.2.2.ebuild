# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Utilities for accessing and manipulating fields of records"
HOMEPAGE="http://www.haskell.org/haskellwiki/Record_access"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/transformers-0.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@array >=0.1 && <0.4@array >=0.1 \&\& <0.5@' \
		-e 's@containers >=0.1 && <0.5@containers >=0.1 \&\& <0.6@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
