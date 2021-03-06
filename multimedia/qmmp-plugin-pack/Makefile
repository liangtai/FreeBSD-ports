# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	0.11.2
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/plugins/ \
	SF/qmmp-dev/${PORTNAME}/

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Additional plug-ins for QMMP (Qt4)

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

CONFLICTS=	${PORTNAME}-qt5-1\..*
PORTSCOUT=	limit:^0\..*

LIB_DEPENDS=	libqmmpui.so:multimedia/qmmp
BUILD_DEPENDS=	qmmp>=0.11.0:multimedia/qmmp

USES=		gmake pkgconfig qmake qt:4 tar:bzip2
USE_QT=	corelib gui linguisttools_build moc_build qmake_build rcc_build
USE_LDCONFIG=	yes

OPTIONS_SUB=	yes

OPTIONS_MULTI=	PLUGINS
OPTIONS_MULTI_PLUGINS=	FFAP FFVIDEO GOOM HISTORY MPG123 SRCONV XMP
OPTIONS_DEFAULT=	FFAP FFVIDEO GOOM HISTORY MPG123 XMP
OPTIONS_DEFINE_i386=	FFAPASM GOOMASM
OPTIONS_DEFAULT_i386=	FFAPASM GOOMASM
OPTIONS_DEFINE_amd64=	FFAPASM GOOMASM
OPTIONS_DEFAULT_amd64=	FFAPASM GOOMASM

FFAP_DESC=		Support APE sound file
FFAP_LIB_DEPENDS=	libtag.so:audio/taglib
FFAP_QMAKE_CONFIG=	FFAP_PLUGIN
FFAPASM_DESC=	Optimize FFap decoder using devel/yasm
FFAPASM_BUILD_DEPENDS=	yasm:devel/yasm
FFAPASM_QMAKE_CONFIG=	FFAP_YASM

FFVIDEO_DESC=	FFmpeg video
FFVIDEO_LIB_DEPENDS=	libavcodec.so:multimedia/ffmpeg
FFVIDEO_QMAKE_CONFIG=	FFVIDEO_PLUGIN

GOOM_DESC=	Goom spectacle
GOOM_QMAKE_CONFIG=	GOOM_PLUGIN
GOOMASM_DESC=	Optimize Goom spectacle using devel/yasm
GOOMASM_BUILD_DEPENDS=	yasm:devel/yasm
GOOMASM_QMAKE_CONFIG=	GOOM_ASM

HISTORY_DESC=	Information about listened tracks
HISTORY_USE=	QT=sql,uic_build
HISTORY_QMAKE_CONFIG=	HISTORY_PLUGIN

MPG123_LIB_DEPENDS=	libmpg123.so:audio/mpg123 \
		libtag.so:audio/taglib
MPG123_USE=	QT=uic_build
MPG123_QMAKE_CONFIG=	MPG123_PLUGIN

SRCONV_DESC=	Support the sample rate converter
SRCONV_LIB_DEPENDS=	libsamplerate.so:audio/libsamplerate
SRCONV_QMAKE_CONFIG=	SRC_PLUGIN

XMP_DESC=	Support various module formats using libxmp
XMP_LIB_DEPENDS=	libxmp.so:audio/libxmp
XMP_QMAKE_CONFIG=	XMP_PLUGIN

.include <bsd.port.options.mk>
.include "${.CURDIR}/../qmmp/options.qmake.mk"

_DESTDIR_VIA_ENV=	no
MAKE_ARGS+=	INSTALL_ROOT=${STAGEDIR}${PREFIX}

post-patch:
	@${REINPLACE_CMD} -e 's|^CONFIG += |#CONFIG += |' \
		${WRKSRC}/qmmp-plugin-pack.pri

pre-install:
	@${FIND} ${WRKSRC}/lib/ -type f -exec ${STRIP_CMD} {} +

.include <bsd.port.mk>
