# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Tools for using markdown in a yesod application"
HOMEPAGE="https://github.com/pbrisbin/yesod-markdown"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=app-text/pandoc-2.0:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/blaze-markup-0.5:=[profile?] <dev-haskell/blaze-markup-0.9:=[profile?]
	>=dev-haskell/persistent-0.9:=[profile?]
	>=dev-haskell/shakespeare-2.0:=[profile?] <dev-haskell/shakespeare-2.1:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-2.0:=[profile?]
	>=dev-haskell/xss-sanitize-0.3.1:=[profile?] <dev-haskell/xss-sanitize-0.4:=[profile?]
	>=dev-haskell/yesod-core-1.2:=[profile?] <dev-haskell/yesod-core-1.7:=[profile?]
	>=dev-haskell/yesod-form-1.3:=[profile?] <dev-haskell/yesod-form-1.7:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/hspec )
"

PATCHES=( ${FILESDIR}/${P}-ghc-8.4.patch )

src_prepare() {
	default

	cabal_chdeps \
		'pandoc >=2.0 && <2.2' 'pandoc >=2.0'
}
