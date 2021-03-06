# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Reliable, high-performance processing with left-fold enumerators"
HOMEPAGE="https://john-millikin.com/software/enumerator/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/text-0.12
		=dev-haskell/transformers-0.2*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	if has_version "<dev-haskell/haddock-2.9.2"; then
		# Workaround http://hackage.haskell.org/trac/hackage/ticket/626
		# The haddock --hoogle option does not like unicode characters, which causes
		# haddock 2.7.2 to fail like:
		# haddock: internal Haddock or GHC error: dist/doc/html/enumerator/enumerator.txt: commitAndReleaseBuffer: invalid argument (Invalid or incomplete multibyte or wide character)
		sed -e 's@&#x2013;@-@g' \
			-e "s@&#x2019;@'@g" \
			-e 's@&#x201C;@"@g' \
			-e 's@&#x201c;@"@g' \
			-e 's@&#x201D;@"@g' \
			-e 's@&#x201d;@"@g' \
			-i "${S}/${PN}.cabal" \
			-i "${S}/lib/Data/Enumerator.hs" \
			-i "${S}/lib/Data/Enumerator/Internal.hs"
	fi
}
