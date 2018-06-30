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
ENCA_LIB_DEPENDS=	libenca.so:converters/enca
ENCA_QMAKE_CONFIG=	WITH_ENCA

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	Input/cue
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/options.qmake.mk"
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
