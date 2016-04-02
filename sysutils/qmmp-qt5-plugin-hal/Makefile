# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-hal
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	sysutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	HAL (hardware abstraction layer) supporting plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-qt5-uilib

USE_QT5+=	dbus

QMMPPLUGIN_TARGET=	General/hal
QMMPPLUGIN_OPTIONS=	HAL_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
