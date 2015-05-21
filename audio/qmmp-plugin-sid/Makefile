# $FreeBSD$

PORTNAME=	qmmp-plugin-sid
CATEGORIES=	audio multimedia

COMMENT=	sid plug-in of QMMP

LIB_DEPENDS+=	libsidplayfp.so:${PORTSDIR}/audio/libsidplayfp

QMMPPLUGIN_TARGET=	Input/sid
QMMPPLUGIN_TAG=	SID

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
