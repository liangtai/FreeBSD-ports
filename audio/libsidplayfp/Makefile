# $FreeBSD$

PORTNAME=	libsidplayfp
PORTVERSION=	1.5.3
CATEGORIES=	audio
MASTER_SITES=	SF/sidplay-residfp/libsidplayfp/${PORTVERSION:R}

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Library to play Commodore 64 music derived from libsidplay2

LICENSE=	GPLv2

USES=		gmake libtool pathfix pkgconfig
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
INSTALL_TARGET=	install-strip

SIDPLAYFP_SHLIB_VERSION=	3.0.15
STILVIEW_SHLIB_VERSION=	0.0.1
PLIST_SUB+=	\
		SIDPLAYFP_SHLIB_VER=${SIDPLAYFP_SHLIB_VERSION:C/\.[[:digit:].]+//} \
		SIDPLAYFP_SHLIB_VERSION=${SIDPLAYFP_SHLIB_VERSION} \
		STILVIEW_SHLIB_VER=${STILVIEW_SHLIB_VERSION:C/\.[[:digit:].]+//} \
		STILVIEW_SHLIB_VERSION=${STILVIEW_SHLIB_VERSION}

.include <bsd.port.mk>
