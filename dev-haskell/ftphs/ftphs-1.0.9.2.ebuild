# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="FTP Client and Server Library"
HOMEPAGE="http://software.complete.org/ftphs"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="buildtests"

RDEPEND="dev-haskell/hslogger:=[profile?]
	>=dev-haskell/missingh-1.0.0:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/regex-compat:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	buildtests? ( dev-haskell/hunit:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildtests buildtests)
}