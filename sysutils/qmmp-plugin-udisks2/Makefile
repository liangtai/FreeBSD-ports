# $FreeBSD$

PORTNAME=	qmmp-plugin-udisks2
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	sysutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Removable disc detecting plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib
RUN_DEPENDS+=	bsdisks:sysutils/bsdisks

USE_QT4+=	dbus uic_build

QMMPPLUGIN_TARGET=	General/udisks2
QMMPPLUGIN_TAG=	UDISKS2

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
