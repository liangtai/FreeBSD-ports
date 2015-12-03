# $FreeBSD$

PORTNAME=	qmmp-plugin-mpris
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Media Player Remote plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT5+=	dbus xml

QMMPPLUGIN_TARGET=	General/mpris
QMMPPLUGIN_TAG=	MPRIS

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
