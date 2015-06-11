# $FreeBSD$

PORTNAME=	qmmp-plugin-sndfile
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Sndfile media format plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libsndfile.so:${PORTSDIR}/audio/libsndfile

QMMPPLUGIN_TARGET=	Input/sndfile
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
