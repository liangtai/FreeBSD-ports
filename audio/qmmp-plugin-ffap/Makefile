# $FreeBSD$

PORTNAME=	qmmp-plugin-ffap
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	APE file format plug-in of QMMP

LICENSE=	GPLv2

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

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack/Makefile.plugin"
.include <bsd.port.mk>
