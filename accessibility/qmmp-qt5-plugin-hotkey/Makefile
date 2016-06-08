# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-hotkey
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	accessibility multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Global shortcut keys plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-qt5-uilib

USE_QT5+=	x11extras
USE_XORG=	x11

QMMPPLUGIN_TARGET=	General/hotkey
QMMPPLUGIN_TAG=	HOTKEY

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
