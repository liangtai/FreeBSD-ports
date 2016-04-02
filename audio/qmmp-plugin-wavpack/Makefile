# $FreeBSD$

PORTNAME=	qmmp-plugin-wavpack
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Wavpack file format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libwavpack.so:audio/wavpack

QMMPPLUGIN_TARGET=	Input/wavpack
QMMPPLUGIN_TAG=	WAVPACK

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
