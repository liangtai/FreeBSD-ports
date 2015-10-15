# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-notifier
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	deskutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Popup notifier plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui${QTVER}.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	General/notifier
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
