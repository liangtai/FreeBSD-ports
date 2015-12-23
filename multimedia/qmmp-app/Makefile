# $FreeBSD$

PORTNAME=	qmmp-app
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Main application of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	DIR_ASSOC
DIR_ASSOC_DESC=	inode/directory mime type association
DIR_ASSOC_CMAKE_ON=	-DUSE_DIR_ASSOC:BOOL=TRUE
DIR_ASSOC_CMAKE_OFF=	-DUSE_DIR_ASSOC:BOOL=FALSE
DIR_ASSOC_USES=	desktop-file-utils

LIB_DEPENDS+=	libqmmp.so.0:${PORTSDIR}/multimedia/qmmp-lib \
	libqmmpui.so.0:${PORTSDIR}/multimedia/qmmp-uilib
BUILD_DEPENDS+=	qmmp-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-lib

.for p in Effect Engines FileDialogs General Input Output Transports Ui Visual
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins/${p}'
.endfor

INSTALLS_ICONS=	yes

post-patch:
	@${GREP} -H 'add_subdirectory' ${WRKSRC}/CMakeLists.txt | \
		${GREP} -v 'src/app' | cut -d: -f1 | uniq | ${XARGS} \
		${REINPLACE_CMD} -Ee '/add_subdirectory[(]src\/(qmmp|qmmpui)[)]/d'
	@${GREP} -El 'target_link_libraries.*libqmmp|add_dependencies' \
		${WRKSRC}/src/app/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/^add_dependencies/d' \
		-e '/^target_link_libraries/s/libqmmp/-lqmmp/'
	@${GREP} -El 'Effect|Engines|FileDialogs|General|Input|Output|Transports|Ui|Visual' \
		${WRKSRC}/src/plugins/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -ne '/PlayListFormats/,/CommandLineOptions/p'

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.coresys"
.include <bsd.port.mk>
