# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-sid
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	SID plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libsidplayfp.so:audio/libsidplayfp

QMMPPLUGIN_TARGET=	Input/sid
QMMPPLUGIN_TAG=	SID

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
