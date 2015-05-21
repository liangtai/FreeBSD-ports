# $FreeBSD$

PORTNAME=	qmmp-plugin-oss4
CATEGORIES=	audio multimedia

COMMENT=	oss4 output plug-in of QMMP

BUILD_DEPENDS+=	${LOCALBASE}/lib/oss/include/sys/soundcard.h:${PORTSDIR}/audio/oss

QMMPPLUGIN_TARGET=	Output/oss4
QMMPPLUGIN_TAG=	OSS4

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
