# $FreeBSD$

PORTNAME=	qmmp-plugin-shout
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Shout streaming plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libogg.so:audio/libogg \
		libshout.so:audio/libshout \
		libsoxr.so:audio/libsoxr \
		libvorbis.so:audio/libvorbis

QMMPPLUGIN_TARGET=	Output/shout
QMMPPLUGIN_OPTIONS=	SHOUT_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
