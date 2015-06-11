# $FreeBSD$

PORTNAME=	qmmp-plugin-oss4
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	OSS version 4 output plug-in of QMMP

LICENSE=	GPLv2

BUILD_DEPENDS+=	${LOCALBASE}/lib/oss/include/sys/soundcard.h:${PORTSDIR}/audio/oss

QMMPPLUGIN_TARGET=	Output/oss4
QMMPPLUGIN_TAG=	OSS4

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
