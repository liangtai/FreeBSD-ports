# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-streambrowser
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	IceCast stream directory browser plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-qt5-uilib

QMMPPLUGIN_TARGET=	General/streambrowser
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
