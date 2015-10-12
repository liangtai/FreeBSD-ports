# $FreeBSD$

PORTNAME=	qmmp-qt4-uilib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	UI library of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

QTVER=	-qt4
LIB_DEPENDS+=	libqmmp${QTVER}.so:${PORTSDIR}/multimedia/qmmp-qt4-lib
BUILD_DEPENDS+=	qmmp-qt4-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-qt4-lib
PLIST_SUB+=	SHLIB_VER=${PORTVERSION:C/-.*//} QTVER=${QTVER}

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/app'

post-extract:
	@cd ${WRKSRC}/src && \
		${LN} -sf qmmp/ qmmp${QTVER} ; ${LN} -sf qmmpui/ qmmpui${QTVER}

post-patch:
	@${GREP} -L 'libdata/pkgconfig' \
		${WRKSRC}/src/qmmpui/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/pkgconfig/s|\$${LIB_DIR}|libdata|' \
		-e '/^add_dependencies/d' \
		-e 's/qmmpui\.pc /qmmpui${QTVER}.pc /' \
		-Ee '/(^target_link_libraries|^ADD_LIBRARY|TARGET|FILES)/s/qmmp(ui)?( |[)])/qmmp\1${QTVER}\2/g'
	@${GREP} -H 'add_subdirectory' ${WRKSRC}/CMakeLists.txt | \
		${GREP} -v 'src/qmmpui' | cut -d: -f1 | ${XARGS} \
		${REINPLACE_CMD} -Ee '/add_subdirectory[(]src\/(app|qmmp|plugins)[)]/d'
	@${GREP} -L -e '${QTVER}' ${WRKSRC}/src/qmmpui/qmmpui.pc.in | ${XARGS} \
		${REINPLACE_CMD} -e '/Description/s/$$/ (Qt4)/' \
		-E -e '/(Name|Requires|Libs):/s/qmmp(ui)?$$/qmmp\1${QTVER}/'
	@${GREP} -lE 'qmmp(ui)?/' ${WRKSRC}/src/qmmpui/*.h | ${XARGS} \
		${REINPLACE_CMD} -Ee '/include/s/qmmp(ui)?\//qmmp\1${QTVER}\//'

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.coresys"
.include <bsd.port.mk>
