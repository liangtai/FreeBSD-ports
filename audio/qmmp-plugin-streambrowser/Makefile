# $FreeBSD$

PORTNAME=	qmmp-plugin-streambrowser
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	IceCast stream directory browser plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT4+=	uic_build

QMMPPLUGIN_TARGET=	General/streambrowser
QMMPPLUGIN_TAG=	SB

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
