# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="test-suite"
inherit haskell-cabal

DESCRIPTION="A small program that will read csv files and create qif files"
HOMEPAGE="http://mrvandalo.github.io/csv-to-qif/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="threaded"

RDEPEND=">=dev-haskell/explicit-exception-0.1.7:=
	>=dev-haskell/parsec-3.1.7:=
	>=dev-haskell/regex-tdfa-1.2.0:=
	>=dev-haskell/split-0.2.2:=
	>=dev-haskell/spreadsheet-0.1.3.3:=
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/hspec-1.8
		>=dev-haskell/quickcheck-2.8.1 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag threaded threaded)
}
