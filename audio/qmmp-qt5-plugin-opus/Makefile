# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-opus
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Opus file format plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libopusfile.so:audio/opusfile \
	libtag.so:audio/taglib

QMMPPLUGIN_TARGET=	Input/opus
QMMPPLUGIN_OPTIONS=	OPUS_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
