# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	1.0.2
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/plugins/ \
	SF/qmmp-dev/${PORTNAME}/
PKGNAMESUFFIX=	-qt5

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Additional plug-ins for QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS=	libqmmpui.so:multimedia/qmmp-qt5
BUILD_DEPENDS=	qmmp-qt5>=1.0.0:multimedia/qmmp-qt5

USES=		gmake pkgconfig qmake tar:bzip2
USE_QT5=	core gui buildtools_build linguisttools_build qmake_build
USE_LDCONFIG=	yes

OPTIONS_SUB=	yes
OPTIONS_MULTI=	PLUGINS
OPTIONS_MULTI_PLUGINS=	FFAP MPG123 XMP
OPTIONS_DEFAULT=	FFAP MPG123 XMP

FFAP_DESC=		Support APE sound file
FFAP_LIB_DEPENDS=	libtag.so:audio/taglib
FFAP_QMAKE_CONFIG=	FFAP_PLUGIN
OPTIONS_DEFINE_i386=	FFAPASM
OPTIONS_DEFAULT_i386=	FFAPASM
OPTIONS_DEFINE_amd64=	FFAPASM
OPTIONS_DEFAULT_amd64=	FFAPASM
FFAPASM_DESC=	Optimize FFap decoder using devel/yasm
FFAPASM_BUILD_DEPENDS=	yasm:devel/yasm
FFAPASM_QMAKE_CONFIG=	FFAP_YASM

MPG123_LIB_DEPENDS=	libmpg123.so:audio/mpg123
MPG123_QMAKE_CONFIG=	MPG123_PLUGIN

XMP_DESC=	Support various module formats using libxmp
XMP_LIB_DEPENDS=	libxmp.so:audio/libxmp
XMP_QMAKE_CONFIG=	XMP_PLUGIN

.include "../qmmp-qt5/options.qmake.mk"

_DESTDIR_VIA_ENV=	no
MAKE_ARGS+=	INSTALL_ROOT=${STAGEDIR}${PREFIX}

CONFLICTS=	${PORTNAME:C/${PKGNAMESUFFIX}//}-0.*

pre-install:
	@${FIND} ${WRKSRC}/lib/ -type f -exec ${STRIP_CMD} {} +

.include <bsd.port.mk>
