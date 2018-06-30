# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-skinned
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Skinned UI plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-qt5-uilib

USE_QT+=	x11extras
USE_XORG=	x11

QMMPPLUGIN_TARGET=	Ui/skinned
QMMPPLUGIN_TAG=	SKINNED

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
