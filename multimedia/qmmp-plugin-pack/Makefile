# $FreeBSD$

PORTNAME=	qmmp-plugin-pack
PORTVERSION=	0.9.0
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/plugins/ \
	SF/qmmp-dev/${PORTNAME}/

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Additional plug-ins for QMMP

LICENSE=	GPLv2

LIB_DEPENDS=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp
BUILD_DEPENDS=	qmmp>=0.9.0:${PORTSDIR}/multimedia/qmmp

USES=		gmake desktop-file-utils pkgconfig qmake tar:bzip2
USE_QT4=	corelib gui linguisttools_build moc_build qmake_build rcc_build
USE_LDCONFIG=	yes

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	FFAP MPG123 QSUI
OPTIONS_DEFAULT=	FFAP MPG123 QSUI

FFAP_DESC=		Support APE sound file
FFAP_LIB_DEPENDS=	libtag.so:${PORTSDIR}/audio/taglib
FFAP_QMAKE_CONFIG=	FFAP_PLUGIN
OPTIONS_DEFINE_i386=	FFAPASM
OPTIONS_DEFAULT_i386=	FFAPASM
OPTIONS_DEFINE_amd64=	FFAPASM
OPTIONS_DEFAULT_amd64=	FFAPASM
FFAPASM_DESC=	Optimize FFap decoder using devel/yasm
FFAPASM_BUILD_DEPENDS=	yasm:${PORTSDIR}/devel/yasm
FFAPASM_QMAKE_CONFIG=	FFAP_YASM

MPG123_LIB_DEPENDS=	libmpg123.so:${PORTSDIR}/audio/mpg123
MPG123_USE=	QT4=uic_build
MPG123_QMAKE_CONFIG=	MPG123_PLUGIN

QSUI_DESC=		Simple UI based on standard widgets set
QSUI_USE=	QT4=uic_build,network
QSUI_QMAKE_CONFIG=	SIMPLE_UI_PLUGIN

.include "../qmmp/options.qmake.mk"

MAKE_ENV+=	INSTALL_ROOT=${STAGEDIR}${PREFIX}
DESTDIRNAME=	_NO_USE_

post-patch:
	@${REINPLACE_CMD} -e 's|^CONFIG += |#CONFIG += |' \
		${WRKSRC}/qmmp-plugin-pack.pri

pre-install:
	@${FIND} ${WRKSRC}/lib/ -type f -exec ${STRIP_CMD} {} +

.include <bsd.port.mk>
