# $FreeBSD$

PORTNAME=	qmmp-lib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Core library of the QMMP Qt5-based multimedia player

LICENSE=	GPLv2

OPTIONS_DEFINE=	DOCS
PORTDOCS=	README README.RUS AUTHORS
DOCSDIR=	${LOCALBASE}/share/doc/${PORTNAME:C/-lib//}

.include <bsd.port.options.mk>

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/qmmpui' --exclude '${DISTNAME}/src/app'

post-patch:
	@${GREP} -lE 'find_package[(]Qt5(LinguistTools|X11Extras|Network)' \
		${WRKSRC}/src/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -E '/Qt5(LinguistTools|X11Extras|Network)/d'
	@${GREP} -L 'libdata/pkgconfig' \
		${WRKSRC}/src/qmmp/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/pkgconfig/s|$${LIB_DIR}|libdata|'
	@${GREP} -El 'add_subd.*src/(qmmpui|app|plugins)|find_package.* REQUIRED|^[^#].*(LRELEASE|lrelease)' \
		${WRKSRC}/CMakeLists.txt | ${XARGS} ${REINPLACE_CMD} \
		-Ee '/add_subdirectory[(]src\/(qmmpui|app|plugins)[)]/d' \
		-e '/find_package[(]Qt5/s/ REQUIRED//' \
		-Ee '/(LRELEASE|lrelease|translations)/s/^/#/'

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.coresys"
.include <bsd.port.mk>
