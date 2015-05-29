# $FreeBSD$

PORTNAME=	qmmp-plugin-ffap
CATEGORIES=	audio multimedia

COMMENT=	APE file format plug-in of QMMP

OPTIONS_DEFINE_i386=	FFAPASM
OPTIONS_DEFAULT_i386=	FFAPASM
OPTIONS_DEFINE_amd64=	FFAPASM
OPTIONS_DEFAULT_amd64=	FFAPASM
FFAPASM_DESC=	Optimize FFap decoder using devel/yasm
FFAPASM_BUILD_DEPENDS=	yasm:${PORTSDIR}/devel/yasm
FFAPASM_QMAKE_CONFIG=	FFAP_YASM

LIB_DEPENDS+=	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/ffap
QMMPPLUGIN_OPTIONS=	FFAP_PLUGIN

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp-plugin-pack/distinfo
.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack/Makefile.plugin"
