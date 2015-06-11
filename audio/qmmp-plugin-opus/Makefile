# $FreeBSD$

PORTNAME=	qmmp-plugin-opus
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Opus file format plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libopusfile.so:${PORTSDIR}/audio/opusfile \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/opus
QMMPPLUGIN_OPTIONS=	OPUS_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
