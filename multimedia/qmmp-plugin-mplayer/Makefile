# $FreeBSD$

PORTNAME=	qmmp-plugin-mplayer
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	MPlayer plug-in of QMMP (Qt4)

LICENSE=	GPLv2

MPLAYER_DESC=	Enable showing videos by mplayer
MPLAYER_RUN_DEPENDS+=	mplayer:multimedia/mplayer

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	Engines/mplayer
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
