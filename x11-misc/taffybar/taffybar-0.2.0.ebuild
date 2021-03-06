# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.16.9999

EAPI=4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="A desktop bar similar to xmobar, but with more GUI"
HOMEPAGE="http://github.com/travitch/taffybar"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/cairo
		>=dev-haskell/dbus-core-0.9.1[profile?]
		<dev-haskell/dbus-core-1.0[profile?]
		>=dev-haskell/dyre-0.8.6[profile?]
		>=dev-haskell/gtk-0.12.1[profile?]
		>=dev-haskell/gtk-traymanager-0.1.2[profile?]
		<dev-haskell/gtk-traymanager-0.2[profile?]
		dev-haskell/hstringtemplate[profile?]
		dev-haskell/http[profile?]
		>=dev-haskell/mtl-2[profile?]
		dev-haskell/network[profile?]
		>=dev-haskell/parsec-3.1[profile?]
		dev-haskell/text[profile?]
		dev-haskell/time[profile?]
		dev-haskell/utf8-string[profile?]
		dev-haskell/web-encodings[profile?]
		dev-haskell/xdg-basedir[profile?]
		>=dev-lang/ghc-6.8.2
		x11-libs/gtk+
		x11-wm/xmonad[profile?]
		x11-wm/xmonad-contrib[profile?]"
DEPEND=">=dev-haskell/cabal-1.10"
RDEPEND+=" sys-apps/dbus
		sys-power/upower"

PATCHES=("${FILESDIR}"/${P}-haddock-2.10.0.patch)
