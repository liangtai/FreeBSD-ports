# $FreeBSD$

PORTNAME=	qmmp-qt4-lib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Core library of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

OPTIONS_DEFINE=	DOCS
PORTDOCS=	README README.RUS AUTHORS
DOCSDIR=	${LOCALBASE}/share/doc/${PORTNAME:C/-lib//}

.include <bsd.port.options.mk>

QTVER=	-qt4
PLIST_SUB+=	SHLIB_VER=${PORTVERSION:C/-.*//} QTVER=${QTVER}
DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}${PKGNAMESUFFIX}${QTVER}

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/qmmpui' --exclude '${DISTNAME}/src/app'

post-extract:
	@cd ${WRKSRC}/src && ${LN} -sf qmmp/ qmmp${QTVER}

post-patch:
	@${GREP} -L 'libdata/pkgconfig' \
		${WRKSRC}/src/qmmp/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/pkgconfig/s|\$${LIB_DIR}|libdata|' \
		-e 's/qmmp\.pc /qmmp${QTVER}.pc /' \
		-Ee '/(^target_link_libraries|^ADD_LIBRARY|TARGET|FILES)/s/qmmp( |[)])/qmmp${QTVER}\1/g'
	@${GREP} -L -e '${QTVER}' ${WRKSRC}/src/qmmp/qmmp.pc.in | ${XARGS} \
		${REINPLACE_CMD} -e '/Description/s/$$/ (Qt4)/' \
		-Ee '/(Name|Libs):/s/qmmp$$/qmmp${QTVER}/'
	@${REINPLACE_CMD} -Ee '/add_subdirectory[(]src\/(app|qmmpui|plugins)[)]/d' \
		${WRKSRC}/CMakeLists.txt
	@${GREP} -l '\"/qmmp\"' ${WRKSRC}/src/qmmp/qmmp.cpp | ${XARGS} \
		${REINPLACE_CMD} -e '/LIB_DIR/s/\/qmmp/\/qmmp${QTVER}/'

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.coresys"
.include <bsd.port.mk>
