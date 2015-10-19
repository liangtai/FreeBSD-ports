# $FreeBSD$

PORTNAME=	qmmp-qt4-app
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

LIB_DEPENDS+=	libqmmp${QTFOUR}.so.0:${PORTSDIR}/multimedia/qmmp-qt4-lib \
	libqmmpui${QTFOUR}.so.0:${PORTSDIR}/multimedia/qmmp-qt4-uilib
PKG_DEPENDS+=	qmmp-qt4-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-qt4-lib
BUILD_DEPENDS+=	qmmp-qt4-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-qt4-lib

.for p in Effect Engines FileDialogs General Input Output Transports Ui Visual
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins/${p}'
.endfor

INSTALLS_ICONS=	yes

QTFOUR!=	pkg info -l qmmp-qt4-lib | \
	sed -n 's|^[ 	]*/usr/local/lib/libqmmp\(.*\)\.so$$|\1|p'

post-extract:
.if defined(QTFOUR)
.for I in 16x16 32x32 48x48 56x56
	@${MV} ${WRKSRC}/src/app/images/${I}/qmmp.png \
		${WRKSRC}/src/app/images/${I}/qmmp${QTFOUR}.png
.endfor
.for I in qmmp-simple qmmp
	@${MV} ${WRKSRC}/src/app/images/scalable/${I}.svgz \
		${WRKSRC}/src/app/images/scalable/${I}${QTFOUR}.svgz
.endfor
	@cd ${WRKSRC}/src && \
		${LN} -sf qmmp/ qmmp${QTFOUR} ; ${LN} -sf qmmpui/ qmmpui${QTFOUR}
.for D in qmmp qmmp_enqueue qmmp_dir
	@${SED} -E 's/^(Exec|Icon)=qmmp/&${QTFOUR}/' \
		${WRKSRC}/src/app/${D}.desktop > ${WRKSRC}/src/app/${D}${QTFOUR}.desktop
.endfor
.endif

post-patch:
	@${GREP} -H 'add_subdirectory' ${WRKSRC}/CMakeLists.txt | \
		${GREP} -v 'src/app' | cut -d: -f1 | uniq | ${XARGS} \
		${REINPLACE_CMD} -Ee '/add_subdirectory[(]src\/(qmmp|qmmpui)[)]/d'
	@${GREP} -El 'qmmp |target_link_libraries.*libqmmp|add_dependencies' \
		${WRKSRC}/src/app/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -Ee 's/qmmp(ui)?( |[)])/qmmp\1${QTFOUR}\2/g' \
		-Ee '/FILES/s/\.(desktop|png|svgz)/${QTFOUR}.\1/g' \
		-e '/^add_dependencies/d' \
		-e '/^target_link_libraries/s/libqmmp/-lqmmp/'
	@${GREP} -El 'Effect|Engines|FileDialogs|General|Input|Output|Transports|Ui|Visual' \
		${WRKSRC}/src/plugins/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -ne '/PlayListFormats/,/CommandLineOptions/p'
.if defined(QTFOUR)
	@${GREP} -l 'qmmp ' ${WRKSRC}/src/app/translations/qmmp_*.ts \
		${WRKSRC}/src/plugins/CommandLineOptions/StatusOption/translations/status_plugin_*.ts \
		| ${XARGS} ${REINPLACE_CMD} \
		-Ee '/(Usage|example):/,+1s/qmmp/&${QTFOUR}/'
	@${GREP} -lE 'qmmp(ui)?/' ${WRKSRC}/src/qmmpui/*.h | ${XARGS} \
		${REINPLACE_CMD} -E -e '/include/s/qmmp(ui)?\//qmmp\1${QTFOUR}\//'
	@${GREP} -l ': qmmp ' ${WRKSRC}/src/app/qmmpstarter.cpp \
		${WRKSRC}/src/app/builtincommandlineoption.cpp \
		${WRKSRC}/src/plugins/CommandLineOptions/StatusOption/statusoption.cpp \
		| ${XARGS} ${REINPLACE_CMD} -e 's/: qmmp /: qmmp${QTFOUR} /'
	@${GREP} -l 'qmmp$$' \
		${WRKSRC}/src/app/desktop-translations/qmmp_*.desktop.in | \
		${XARGS} ${REINPLACE_CMD} -E -e '/^(Exec|Icon)=/s/qmmp/&${QTFOUR}/'
	@${GREP} -L -e '${QTFOUR}' ${WRKSRC}/src/app/images/images.qrc | ${XARGS} \
		${REINPLACE_CMD} -e 's/qmmp\.png/qmmp${QTFOUR}.png/'
	@${FIND} ${WRKSRC}/src/plugins/ -type f -name CMakeLists.txt \
		-exec ${GREP} -l '/qmmp/' {} + | ${XARGS} \
		${REINPLACE_CMD} -e '/LIB_DIR/s/\/qmmp\//\/qmmp${QTFOUR}\//' \
		-E -e '/^(target_link_libraries|add_dependencies)/s/qmmp(ui)?( |[)])/qmmp\1${QTFOUR}\2/g'
.endif

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.coresys"
.include <bsd.port.mk>
