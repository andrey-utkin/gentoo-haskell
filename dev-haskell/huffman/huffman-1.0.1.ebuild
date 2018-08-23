# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Pure Haskell implementation of the Huffman encoding algorithm"
HOMEPAGE="http://hackage.haskell.org/package/huffman"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/fingertree:=[profile?]
		>=dev-lang/ghc-6.8.2:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

PATCHES=(
	"${FILESDIR}"/${P}-ghc84.patch
)
