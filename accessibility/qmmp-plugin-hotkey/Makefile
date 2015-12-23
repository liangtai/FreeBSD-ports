# $FreeBSD$

PORTNAME=	qmmp-plugin-hotkey
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	accessibility multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Global shortcut keys plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	General/hotkey
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
