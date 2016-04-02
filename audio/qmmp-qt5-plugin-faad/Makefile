# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-faad
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	FAAD file format plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libfaad.so:audio/faad \
	libtag.so:audio/taglib

QMMPPLUGIN_TARGET=	Input/aac
QMMPPLUGIN_TAG=	AAC

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
