# $FreeBSD$

PORTNAME=	qmmp-plugin-mad
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Mad file format plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libmad.so:${PORTSDIR}/audio/libmad \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/mad
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
