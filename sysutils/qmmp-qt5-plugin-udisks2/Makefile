# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-udisks2
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	sysutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Removable disc detecting plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-qt5-uilib

USE_QT5+=	dbus

QMMPPLUGIN_TARGET=	General/udisks2
QMMPPLUGIN_OPTIONS=	UDISKS2_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
