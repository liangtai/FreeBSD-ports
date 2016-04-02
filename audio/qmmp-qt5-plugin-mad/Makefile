# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-mad
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Mad file format plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libmad.so:audio/libmad \
	libtag.so:audio/taglib

QMMPPLUGIN_TARGET=	Input/mad
QMMPPLUGIN_TAG=	MAD

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
