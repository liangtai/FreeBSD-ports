# $FreeBSD$

PORTNAME=	qmmp-plugin-cue
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	CUE plug-in of QMMP

LICENSE=	GPLv2

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	DIR_ASSOC ENCA
OPTIONS_DEFAULT=	DIR_ASSOC ENCA

DIR_ASSOC_DESC=	inode/directory mime type association
DIR_ASSOC_CMAKE_ON=	-DUSE_DIR_ASSOC:BOOL=TRUE
DIR_ASSOC_CMAKE_OFF=	-DUSE_DIR_ASSOC:BOOL=FALSE
DIR_ASSOC_USES=	desktop-file-utils
PLIST_FILES+=	%%DIR_ASSOC%%share/applications/qmmp_cue.desktop

ENCA_DESC=		Support automatic character set detection
ENCA_LIB_DEPENDS=	libenca.so:${PORTSDIR}/converters/enca
ENCA_CMAKE_ON=	-DUSE_ENCA:BOOL=TRUE
ENCA_CMAKE_OFF=	-DUSE_ENCA:BOOL=FALSE

QMMPPLUGIN_TARGET=	Input/cue
QMMPPLUGIN_TAG=	CUE

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
