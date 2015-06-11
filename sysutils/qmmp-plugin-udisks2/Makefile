# $FreeBSD$

PORTNAME=	qmmp-plugin-udisks2
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	sysutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Removable disc detecting plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT4+=	dbus network xml

QMMPPLUGIN_TARGET=	General/udisks2
QMMPPLUGIN_OPTIONS=	UDISKS2_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
