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
	@${GREP} -L 'libdata/pkgconfig' \
		${WRKSRC}/src/qmmp/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/pkgconfig/s|$${LIB_DIR}|libdata|'
	@${REINPLACE_CMD} -Ee '/add_subdirectory[(]src\/(app|qmmpui|plugins)[)]/d' \
		${WRKSRC}/CMakeLists.txt

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.coresys"
.include <bsd.port.mk>
