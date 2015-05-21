# $FreeBSD$

PORTNAME=	qmmp-plugin-bs2b
CATEGORIES=	audio multimedia

COMMENT=	bs2b dsp-effect plug-in of QMMP

LIB_DEPENDS+=	libbs2b.so:${PORTSDIR}/audio/libbs2b

QMMPPLUGIN_TARGET=	Effect/bs2b
QMMPPLUGIN_TAG=	BS2B

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
