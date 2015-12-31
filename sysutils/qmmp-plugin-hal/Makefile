# $FreeBSD$

PORTNAME=	qmmp-plugin-hal
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	sysutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	HAL (hardware abstraction layer) supporting plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT4+=	dbus uic_build

QMMPPLUGIN_TARGET=	General/hal
QMMPPLUGIN_TAG=	HAL

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
