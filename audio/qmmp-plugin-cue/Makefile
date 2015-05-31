# $FreeBSD$

PORTNAME=	qmmp-plugin-cue
CATEGORIES=	audio multimedia

COMMENT=	CUE plug-in of QMMP

USES+=	desktop-file-utils

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	ENCA
OPTIONS_DEFAULT=	ENCA
ENCA_DESC=		Support automatic character set detection
ENCA_LIB_DEPENDS=	libenca.so:${PORTSDIR}/converters/enca
ENCA_QMAKE_CONFIG=	WITH_ENCA

QMMPPLUGIN_TARGET=	Input/cue
QMMPPLUGIN_OPTIONS=

PLIST_FILES+=	share/applications/qmmp_cue.desktop

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/options.qmake.mk"
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
