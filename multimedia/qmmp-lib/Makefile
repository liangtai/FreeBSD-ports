# $FreeBSD$

PORTNAME=	qmmp-lib
CATEGORIES=	multimedia

COMMENT=	core library of the QMMP Qt4-based multimedia player

OPTIONS_DEFINE=	DOCS
PORTDOCS=	README README.RUS AUTHORS
DOCSDIR=	${LOCALBASE}/share/doc/${PORTNAME:C/-lib//}

.include <bsd.port.options.mk>

CMAKE_ARGS+=	-DUSE_RPATH:BOOL=TRUE -DUSE_FFMPEG_LEGACY:BOOL=FALSE
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/qmmpui' --exclude '${DISTNAME}/src/app'

post-patch:
	@${GREP} -L 'libdata/pkgconfig' \
		${WRKSRC}/src/qmmp/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/pkgconfig/s|$${LIB_DIR}|libdata|'
	@${REINPLACE_CMD} -Ee '/add_subdirectory[(]src\/(app|qmmpui|plugins)[)]/d' \
		${WRKSRC}/CMakeLists.txt

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}
.endif

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.core"
