# $FreeBSD$

PORTNAME=	qmmp-qt4-uilib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	UI library of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp${QTFOUR}.so.0:${PORTSDIR}/multimedia/qmmp-qt4-lib
PKG_DEPENDS+=	qmmp-qt4-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-qt4-lib
BUILD_EPENDS+=	qmmp-qt4-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-qt4-lib

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/app'

QTFOUR!=	pkg info -l qmmp-qt4-lib | \
	sed -n 's|^[ 	]*/usr/local/lib/libqmmp\(.*\)\.so$$|\1|p'

post-extract:
	@cd ${WRKSRC}/src && \
		${LN} -sf qmmp/ qmmp${QTFOUR} ; ${LN} -sf qmmpui/ qmmpui${QTFOUR}

post-patch:
	@${GREP} -L 'libdata/pkgconfig' \
		${WRKSRC}/src/qmmpui/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/pkgconfig/s|\$${LIB_DIR}|libdata|' \
		-e '/^add_dependencies/d' \
		-e 's/qmmpui\.pc /qmmpui${QTFOUR}.pc /' \
		-Ee '/(^target_link_libraries|^ADD_LIBRARY|TARGET|FILES)/s/qmmp(ui)?( |[)])/qmmp\1${QTFOUR}\2/g'
	@${GREP} -H 'add_subdirectory' ${WRKSRC}/CMakeLists.txt | \
		${GREP} -v 'src/qmmpui' | cut -d: -f1 | ${XARGS} \
		${REINPLACE_CMD} -Ee '/add_subdirectory[(]src\/(app|qmmp|plugins)[)]/d'
	@${GREP} -L -e '${QTFOUR}' ${WRKSRC}/src/qmmpui/qmmpui.pc.in | ${XARGS} \
		${REINPLACE_CMD} -e '/Description/s/$$/ (Qt4)/' \
		-E -e '/(Name|Requires|Libs):/s/qmmp(ui)?$$/qmmp\1${QTFOUR}/'
	@${GREP} -lE 'qmmp(ui)?/' ${WRKSRC}/src/qmmpui/*.h | ${XARGS} \
		${REINPLACE_CMD} -Ee '/include/s/qmmp(ui)?\//qmmp\1${QTFOUR}\//'

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.coresys"
.include <bsd.port.mk>
