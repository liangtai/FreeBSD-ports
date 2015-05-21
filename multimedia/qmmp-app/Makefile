# $FreeBSD$

PORTNAME=	qmmp-app
CATEGORIES=	multimedia

COMMENT=	main application of the QMMP Qt4-based multimedia player

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	DIR_ASSOC
DIR_ASSOC_DESC=	inode/directory mime type association
DIR_ASSOC_CMAKE_ON=	-DUSE_DIR_ASSOC:BOOL=TRUE
DIR_ASSOC_CMAKE_OFF=	-DUSE_DIR_ASSOC:BOOL=FALSE

.include <bsd.port.options.mk>

.for p in Effect Engines FileDialogs General Input Output Transports Ui Visual
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins/${p}'
.endfor

CMAKE_ARGS+=	-DUSE_RPATH:BOOL=TRUE

post-patch:
	@${REINPLACE_CMD} -Ee '/add_subdirectory[(]src\/(qmmp|qmmpui)[)]/d' \
		${WRKSRC}/CMakeLists.txt
	@${REINPLACE_CMD} -e '/target_link_libraries/s/libqmmp/-lqmmp/' \
		${WRKSRC}/src/app/CMakeLists.txt
	@${REINPLACE_CMD} -ne '/PlayListFormats/,/CommandLineOptions/p' \
		${WRKSRC}/src/plugins/CMakeLists.txt

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.core"
