# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Process libraries"
HOMEPAGE="http://hackage.haskell.org/package/process-leksah"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.8.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_unpack() {
	unpack $A
	sed -e 's@directory >= 1.0 && < 1.1@directory >= 1.0 \&\& < 1.2@' \
		-e 's@filepath  >= 1.1 && < 1.2@filepath  >= 1.1 \&\& < 1.3@' \
		-i "${S}/${PN}.cabal"
}

