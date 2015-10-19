# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-hal
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	sysutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	HAL (hardware abstraction layer) supporting plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui${QTFOUR}.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USE_QT4+=	dbus network xml

QMMPPLUGIN_TARGET=	General/hal
QMMPPLUGIN_TAG=	HAL

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
