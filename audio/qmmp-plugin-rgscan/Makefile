# $FreeBSD$

PORTNAME=	qmmp-plugin-rgscan
CATEGORIES=	audio multimedia

COMMENT=	ReplayGain scanner plug-in of QMMP

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimdia/qmmp-uilib \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	General/rgscan
QMMPPLUGIN_TAG=	RGSCAN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
