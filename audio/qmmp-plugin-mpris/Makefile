# $FreeBSD$

PORTNAME=	qmmp-plugin-mpris
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Media Player Remote plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib

USE_QT4+=	dbus

QMMPPLUGIN_TARGET=	General/mpris
QMMPPLUGIN_TAG=	MPRIS

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
