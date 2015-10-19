# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-streambrowser
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	IceCast stream directory browser plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui${QTFOUR}.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	General/streambrowser
QMMPPLUGIN_TAG=	SB

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
