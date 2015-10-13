# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-sndfile
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Sndfile media format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libsndfile.so:${PORTSDIR}/audio/libsndfile

QMMPPLUGIN_TARGET=	Input/sndfile
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
