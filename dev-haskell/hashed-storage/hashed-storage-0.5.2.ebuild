# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI="2"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Hashed file storage support code."
HOMEPAGE="http://hackage.haskell.org/package/hashed-storage"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-haskell/binary
		dev-haskell/dataenc
		dev-haskell/extensible-exceptions
		=dev-haskell/mmap-0.5*
		dev-haskell/mtl
		dev-haskell/zlib
		>=dev-lang/ghc-6.8.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	CABAL_CONFIGURE_FLAGS="$(cabal_flag test)"
}

src_install() {
	haskell-cabal_src_install

	use test && rm "${D}/usr/bin/hashed-storage-test"
}
