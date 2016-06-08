# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-mplayer
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	MPlayer plug-in of QMMP (Qt5)

LICENSE=	GPLv2

OPTIONS_SINGLE=	MPLAYER
OPTIONS_SINGLE_MPLAYER=	MPLAYER1 MPLAYER2
OPTIONS_DEFAULT=	MPLAYER1

MPLAYER1_DESC=	mplayer-1.x (multimedia/mplayer)
MPLAYER2_DESC=	mplayer-2.x (multimedia/mplayer2)
MPLAYER1_RUN_DEPENDS+=	mplayer:multimedia/mplayer
MPLAYER2_RUN_DEPENDS+=	mplayer:multimedia/mplayer2

QMMPPLUGIN_TARGET=	Engines/mplayer
QMMPPLUGIN_TAG=	MPLAYER

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
