# $FreeBSD$

PORTNAME=	qmmp-plugin-cue
CATEGORIES=	audio multimedia

COMMENT=	CUE plug-in of QMMP

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	ENCA
OPTIONS_DEFAULT=	ENCA

ENCA_DESC=		Support automatic character set detection
ENCA_LIB_DEPENDS=	libenca.so:${PORTSDIR}/converters/enca
ENCA_CMAKE_ON=	-DUSE_ENCA:BOOL=TRUE
ENCA_CMAKE_OFF=	-DUSE_ENCA:BOOL=FALSE

QMMPPLUGIN_TARGET=	Input/cue
QMMPPLUGIN_TAG=	CUE

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
