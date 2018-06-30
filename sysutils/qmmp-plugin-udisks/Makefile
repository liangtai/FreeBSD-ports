# $FreeBSD$

PORTNAME=	qmmp-plugin-udisks
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	sysutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Removable disc detecting plug-in of QMMP (Qt4) (legacy)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib

USE_QT+=	dbus uic_build

QMMPPLUGIN_TARGET=	General/udisks
QMMPPLUGIN_TAG=	UDISKS

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
