# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A wrapper for gi-gtk, adding a few more idiomatic API parts on top"
HOMEPAGE="https://github.com/haskell-gi/gi-gtk-hs"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-compat-0.9.0:=[profile?] <dev-haskell/base-compat-0.11:=[profile?]
	>=dev-haskell/gi-gdk-3.0.6:=[profile?] <dev-haskell/gi-gdk-3.1:=[profile?]
	>=dev-haskell/gi-gdkpixbuf-2.0.6:=[profile?] <dev-haskell/gi-gdkpixbuf-2.1:=[profile?]
	>=dev-haskell/gi-glib-2.0.6:=[profile?] <dev-haskell/gi-glib-2.1:=[profile?]
	>=dev-haskell/gi-gobject-2.0.6:=[profile?] <dev-haskell/gi-gobject-2.1:=[profile?]
	>=dev-haskell/gi-gtk-3.0.25:=[profile?] <dev-haskell/gi-gtk-3.1:=[profile?]
	>=dev-haskell/haskell-gi-base-0.21.2:=[profile?] <dev-haskell/haskell-gi-base-0.22:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
