# $FreeBSD$

PORTNAME=	qmmp-plugin-mplayer
CATEGORIES=	multimedia

COMMENT=	mplayer plug-in of QMMP

OPTIONS_SINGLE=	MPLAYER
OPTIONS_SINGLE_MPLAYER=	MPLAYER1 MPLAYER2
OPTIONS_DEFAULT=	MPLAYER1

MPLAYER1_DESC=	mplayer-1.1.x (multimedia/mplayer)
MPLAYER2_DESC=	mplayer-2.0.x (multimedia/mplayer2)
MPLAYER1_RUN_DEPENDS+=	mplayer:${PORTSDIR}/multimedia/mplayer
MPLAYER2_RUN_DEPENDS+=	mplayer:${PORTSDIR}/multimedia/mplayer2

QMMPPLUGIN_TARGET=	Engines/mplayer
QMMPPLUGIN_TAG=	MPLAYER

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
