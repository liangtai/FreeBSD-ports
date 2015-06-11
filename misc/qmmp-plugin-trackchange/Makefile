# $FreeBSD$

PORTNAME=	qmmp-plugin-trackchange
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	misc multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	External command launcher plug-in of QMMP at each track switching

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	General/trackchange
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
