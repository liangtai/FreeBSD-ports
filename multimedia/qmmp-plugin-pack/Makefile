# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	0.7.3
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/plugins/ \
		http://qmmp.googlecode.com/files/

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Additional plug-ins for QMMP

LICENSE=	GPLv2

USES=		pkgconfig
LIB_DEPENDS=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp
BUILD_DEPENDS=	qmmp>=0.7.0:${PORTSDIR}/multimedia/qmmp

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_QT4=	corelib gui qmake_build rcc_build moc_build linguist_build
USE_LDCONFIG=	yes

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	FFAP MPG123 QSUI
OPTIONS_DEFAULT=	FFAP MPG123 QSUI

FFAP_DESC=		Support APE sound file
FFAP_LIB_DEPENDS=	libtag.so:${PORTSDIR}/audio/taglib
FFAP_QMAKE_CONFIG=	FFAP_PLUGIN
OPTIONS_DEFINE_i386=	FFAPASM32
OPTIONS_DEFAULT_i386=	FFAPASM32
OPTIONS_DEFINE_amd64=	FFAPASM64
OPTIONS_DEFAULT_amd64=	FFAPASM64
FFAPASM32_DESC=	Optimize FFap decoder using devel/yasm
FFAPASM64_DESC=	Optimize FFap decoder using devel/yasm
FFAPASM32_BUILD_DEPENDS=	yasm:${PORTSDIR}/devel/yasm
FFAPASM64_BUILD_DEPENDS=	yasm:${PORTSDIR}/devel/yasm
FFAPASM32_QMAKE_CXXFLAGS=	-m32
FFAPASM64_QMAKE_CXXFLAGS=	-m64

MPG123_LIB_DEPENDS=	libmpg123.so:${PORTSDIR}/audio/mpg123
MPG123_USE=	QT4=uic_build
MPG123_QMAKE_CONFIG=	MPG123_PLUGIN

QSUI_DESC=		Simple UI based on standard widgets set
QSUI_USE=	QT4=uic_build,network
QSUI_QMAKE_CONFIG=	SIMPLE_UI_PLUGIN

.include <bsd.port.pre.mk>
.include "../qmmp/options.qmake.mk"

MAKE_ENV+=      INSTALL_ROOT=${STAGEDIR}${PREFIX}

post-patch:
	${REINPLACE_CMD} -e 's|^CONFIG += |#CONFIG += |' \
		${WRKSRC}/qmmp-plugin-pack.pri

do-configure:
	${FIND} ${WRKSRC} -name Makefile -delete
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${QMAKE} ${QMAKE_ARGS}

.include <bsd.port.mk>
