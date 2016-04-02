# $FreeBSD$

PORTNAME=	qmmp-plugin-copypaste
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	misc multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Playlist operation plug-in of QMMP (Qt4) to copy/paste track infos

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/copypaste
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
