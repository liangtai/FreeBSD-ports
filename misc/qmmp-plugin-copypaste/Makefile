# $FreeBSD$

PORTNAME=	qmmp-plugin-copypaste
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	misc multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Playlist operation plug-in of QMMP (Qt4) to copy/paste track infos

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	General/copypaste
QMMPPLUGIN_TAG=	COPYPASTE

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
