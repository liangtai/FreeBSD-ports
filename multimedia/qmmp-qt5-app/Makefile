# $FreeBSD$

PORTNAME=	qmmp-qt5-app
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Main application of the QMMP Qt5-based multimedia player

LICENSE=	GPLv2

OPTIONS_SUB=	yes
OPTIONS_DEFINE=	DIR_ASSOC
OPTIONS_DEFAULT=	DIR_ASSOC
DIR_ASSOC_DESC=	inode/directory mime type association
DIR_ASSOC_CMAKE_ON=	-DUSE_DIR_ASSOC:BOOL=TRUE
DIR_ASSOC_CMAKE_OFF=	-DUSE_DIR_ASSOC:BOOL=FALSE
DIR_ASSOC_USES=	desktop-file-utils

LIB_DEPENDS+=	libqmmp.so:multimedia/qmmp-qt5-lib \
	libqmmpui.so:multimedia/qmmp-qt5-uilib
BUILD_DEPENDS+=	qmmp-qt5-lib>=1.1.0:multimedia/qmmp-qt5-lib

USE_QT5+=	network linguisttools_build

.for p in Effect Engines FileDialogs General Input Output Transports Ui Visual
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins/${p}'
.endfor

INSTALLS_ICONS=	yes

post-patch:
	@${GREP} -El 'add_subd.*src/qmmp|find_package.* REQUIRED' \
		${WRKSRC}/CMakeLists.txt | ${XARGS} ${REINPLACE_CMD} \
		-Ee '/add_subdirectory[(]src\/(qmmp|qmmpui)[)]/d' \
		-e '/find_package[(]Qt5/s/ REQUIRED//' \
		-e '/pkg_search_module/{; h; s/X11 x11/QMMP qmmp>=1.1/; G;}'
	@${GREP} -El 'target_link_libraries.*::Widgets libqmmp|add_dependencies' \
		${WRKSRC}/src/app/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/^add_dependencies/d' \
		-e '/^target_link_lib/s/\(::Widgets\) libqmmp/\1 Qt5::Network -lqmmp/'
	@${GREP} -El 'Effect|Engines|FileDialogs|General|Input|Output|Transports|Ui|Visual' \
		${WRKSRC}/src/plugins/CMakeLists.txt | ${XARGS} ${REINPLACE_CMD} \
		-Ee '/add_subd/{/(PlayListFormats|CommandLineOptions)/!d;}'
	@${FIND} ${WRKSRC}/src/plugins/ -type f -name CMakeLists.txt | ${XARGS} \
		${GREP} -l '/\.\./\.\./\.\./' | ${XARGS} ${REINPLACE_CMD} \
		-e '/CMAKE_CURRENT_.*\/\.\.\/\.\.\/\.\.\//{;/include_dir/d; \
			s/\(link_dir.*\)[(].*$$/\1($${QMMP_LIBRARY_DIRS})/; }'

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.coresys"
.include <bsd.port.mk>
