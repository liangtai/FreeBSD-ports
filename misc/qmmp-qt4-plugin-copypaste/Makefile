# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-copypaste
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	misc multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Playlist operation plug-in of QMMP (Qt4) to copy/paste track infos

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui${QTFOUR}.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	General/copypaste
QMMPPLUGIN_TAG=	COPYPASTE

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
