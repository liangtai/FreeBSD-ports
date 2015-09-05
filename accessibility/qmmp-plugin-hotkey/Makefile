# $FreeBSD$

PORTNAME=	qmmp-plugin-hotkey
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	accessibility multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Global shortcut keys plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT5+=	network

QMMPPLUGIN_TARGET=	General/hotkey
QMMPPLUGIN_TAG=	HOTKEY

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
