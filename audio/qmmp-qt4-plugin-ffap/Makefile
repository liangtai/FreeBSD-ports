# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-ffap
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	APE file format plug-in of QMMP (Qt4)

LICENSE=	GPLv2

OPTIONS_DEFINE_i386=	FFAPASM
OPTIONS_DEFAULT_i386=	FFAPASM
OPTIONS_DEFINE_amd64=	FFAPASM
OPTIONS_DEFAULT_amd64=	FFAPASM
FFAPASM_DESC=	Optimize FFap decoder using devel/yasm
FFAPASM_BUILD_DEPENDS=	yasm:${PORTSDIR}/devel/yasm
FFAPASM_CMAKE_ON=	-DUSE_ASM:BOOL=TRUE
FFAPASM_CMAKE_OFF=	-DUSE_ASM:BOOL=FALSE

LIB_DEPENDS+=	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/ffap
QMMPPLUGIN_TAG=	FFAP

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack-qt4/Makefile.plugin"
.include <bsd.port.mk>
