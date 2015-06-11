# $FreeBSD$

PORTNAME=	qmmp-plugin-cue
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	CUE plug-in of QMMP

LICENSE=	GPLv2

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

.include "${.CURDIR}/../../multimedia/qmmp/options.qmake.mk"
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
