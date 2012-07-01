# New ports collection Makefile for:	qmmp-plugin-pack
# Date created:		Fri Jul 01 16:08:27 JST 2012
# Whom:      SimaMoto,RyoTa <liangtai.s4@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	0.6.0
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/ \
		${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	liangtai.s4@gmail.com
COMMENT=	additional plug-ins for QMMP

LICENSE=	GPLv2

LIB_DEPENDS=	qmmpui:${PORTSDIR}/multimedia/qmmp
BUILD_DEPENDS=	qmmp>=0.6.0:${PORTSDIR}/multimedia/qmmp

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_QT4=	corelib gui qmake_build rcc_build moc_build linguist_build
USE_LDCONFIG=	yes

OPTIONS_DEFINE=	FFAP MPG123 QSUI
OPTIONS_DEFAULT=	FFAP MPG123 QSUI
FFAP_DESC=		Support APE sound file
MPG123_DESC=	Support libmpg123 (MPEG v1/2 layer1/2/3)
QSUI_DESC=		Simple UI based on standard widgets set

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MQSUI}
USE_QT4+=	network
PLIST_SUB+=	QSUI=""
PLUGIN_OPTIONS+=	SIMPLE_UI_PLUGIN
.else
PLIST_SUB+=	QSUI="@comment "
PLUGIN_OPTIONS+=	SIMPLE_UI_PLUGIN
.endif

.if ${PORT_OPTIONS:MMPG123}
PLIST_SUB+=	MPG123=""
LIB_DEPENDS+=	mpg123:${PORTSDIR}/audio/mpg123
PLUGIN_OPTIONS+=	MPG123_PLUGIN
.else
PLIST_SUB+=	MPG123="@comment "
PLUGIN_OPTIONS+=	MPG123_PLUGIN
.endif

.if ${PORT_OPTIONS:MFFAP}
PLIST_SUB+=	FFAP=""
. if ${ARCH} == i386 || ${ARCH} == x86_64
BUILD_DEPENDS+=	yasm:${PORTSDIR}/devel/yasm
. endif
LIB_DEPENDS+=	tag:${PORTSDIR}/audio/taglib
PLUGIN_OPTIONS+=	FFAP_PLUGIN
.else
PLIST_SUB+=	FFAP="@comment "
PLUGIN_OPTIONS+=	FFAP_PLUGIN
.endif

.if ${PORT_OPTIONS:MQSUI} || ${PORT_OPTIONS:MMPG123}
USE_QT4+=	uic_build
.endif

QMAKE_ARGS+=    CONFIG+="${PLUGIN_OPTIONS}" PREFIX=${PREFIX}
MAKE_ENV+=      INSTALL_ROOT=${PREFIX}

post-patch:
	${REINPLACE_CMD} -e 's|^CONFIG += |#CONFIG += |' \
		${WRKSRC}/qmmp-plugin-pack.pri

do-configure:
	${FIND} ${WRKSRC} -name Makefile -delete
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${QMAKE} ${QMAKE_ARGS}

.include <bsd.port.mk>
