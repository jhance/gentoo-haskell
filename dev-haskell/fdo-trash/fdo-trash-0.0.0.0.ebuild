# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.17

EAPI=4

# haddock and hscolour features removed due they need
# >=dev-haskell/cabal-1.12 whick is masked
CABAL_FEATURES="bin lib profile "
inherit haskell-cabal

DESCRIPTION="Utilities related to freedesktop Trash standard."
HOMEPAGE="http://hackage.haskell.org/package/fdo-trash"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/diff[profile?]
		dev-haskell/parsec[profile?]
		dev-haskell/time[profile?]
		dev-haskell/url[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		sys-apps/help2man"

src_compile() {
	haskell-cabal_src_compile
	man/genManPages
}

src_install()
{
	haskell-cabal_src_install
	dosym ./fdo-trash /usr/bin/fdo-rm
	dosym ./fdo-trash /usr/bin/fdo-unrm
	dosym ./fdo-trash /usr/bin/fdo-purge
	doman *.1
}
