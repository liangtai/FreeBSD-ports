# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-goom
PORTVERSION=	${QMMP_PP_VERSION}
CATEGORIES=	graphics multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Goom music visualiser plug-in of QMMP (Qt5)

LICENSE=	GPLv2

OPTIONS_DEFINE_i386=	GOOMASM
OPTIONS_DEFAULT_i386=	GOOMASM
OPTIONS_DEFINE_amd64=	GOOMASM
OPTIONS_DEFAULT_amd64=	GOOMASM

GOOMASM_DESC=	Optimize Goom spectacle using devel/yasm
GOOMASM_BUILD_DEPENDS=	yasm:devel/yasm
GOOMASM_CMAKE_BOOL=	GOOM_ASM

QMMPPLUGIN_TARGET=	Visual/goom
QMMPPLUGIN_TAG=	GOOM

.include "${.CURDIR}/../../multimedia/qmmp-plugin-pack-qt5/Makefile.plugin"
.include <bsd.port.mk>
