# $FreeBSD$

PORTNAME=	qmmp-plugin-cue
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	CUE plug-in of QMMP (Qt4)

LICENSE=	GPLv2

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	ENCA
OPTIONS_DEFAULT=	ENCA

ENCA_DESC=		Support automatic character set detection
ENCA_LIB_DEPENDS=	libenca.so:${PORTSDIR}/converters/enca
ENCA_CMAKE_ON=	-DUSE_ENCA:BOOL=TRUE
ENCA_CMAKE_OFF=	-DUSE_ENCA:BOOL=FALSE

USE_QT4+=	uic_build

QMMPPLUGIN_TARGET=	Input/cue
QMMPPLUGIN_TAG=	CUE

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
