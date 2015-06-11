# $FreeBSD$

PORTNAME=	qmmp-plugin-faad
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	FAAD file format plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libfaad.so:${PORTSDIR}/audio/faad \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/aac
QMMPPLUGIN_OPTIONS=	AAC_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
