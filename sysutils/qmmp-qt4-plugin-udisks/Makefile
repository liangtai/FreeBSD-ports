# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-udisks
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	sysutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Removable disc detecting plug-in of QMMP (Qt4) (legacy)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USE_QT4+=	dbus network xml

QMMPPLUGIN_TARGET=	General/udisks
QMMPPLUGIN_OPTIONS=	UDISKS_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
