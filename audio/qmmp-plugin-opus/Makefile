# $FreeBSD$

PORTNAME=	qmmp-plugin-opus
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Opus file format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libopusfile.so:audio/opusfile \
	libtag.so:audio/taglib

QMMPPLUGIN_TARGET=	Input/opus
QMMPPLUGIN_TAG=	OPUS

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
