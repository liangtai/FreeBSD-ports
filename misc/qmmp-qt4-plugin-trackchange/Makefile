# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-trackchange
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	misc multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	External command launcher plug-in of QMMP (Qt4) at each track switching

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui${QTVER}.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	General/trackchange
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
