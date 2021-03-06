# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

CABAL_FEATURES="bin"
EGIT_REPO_URI="git://github.com/gentoo-haskell/hackport.git"
inherit git-2 haskell-cabal

DESCRIPTION="Hackage and Portage integration tool"
HOMEPAGE="http://code.haskell.org/gentoo/hackport/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-lang/ghc-6.12
		>=dev-haskell/cabal-1.10
		>=dev-haskell/http-4000.0.3
		dev-haskell/mtl
		dev-haskell/network
		dev-haskell/parsec
		dev-haskell/regex-compat
		>dev-haskell/xml-1.3.5
		dev-haskell/tar
		dev-haskell/zlib
		test? ( dev-haskell/hunit )
	"

src_prepare() {
	sed -e 's/^Version:.*/&.9999/' -i ${PN}.cabal || die # just to distinct from release install
}

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
