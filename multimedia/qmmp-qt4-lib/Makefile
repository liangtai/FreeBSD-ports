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

QTFOUR?=	-qt4
.if !defined(QTFOUR) || "x" == "x${QTFOUR}"
buildanyway-message:
	@${ECHO_MSG} "> Consider setting filename suffix using QTFOUR string <"
	@${ECHO_MSG} "> value to avoid conflict with qmmp-1.* when you run   <"
	@${ECHO_MSG} "> 'make' or defining it on the /etc/make.conf.         <"
CONFLICTS=	${PORTNAME:C/-qt4//}-1.*
.endif

DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}${PKGNAMESUFFIX}${QTFOUR}

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/qmmpui' --exclude '${DISTNAME}/src/app'

post-extract:
.if defined(QTFOUR)
	@cd ${WRKSRC}/src && ${LN} -sf qmmp/ qmmp${QTFOUR}
.endif

post-patch:
	@${GREP} -L 'libdata/pkgconfig' \
		${WRKSRC}/src/qmmp/CMakeLists.txt | ${XARGS} \
		${REINPLACE_CMD} -e '/pkgconfig/s|\$${LIB_DIR}|libdata|' \
		-e 's/qmmp\.pc /qmmp${QTFOUR}.pc /' \
		-Ee '/(^target_link_libraries|^ADD_LIBRARY|TARGET|FILES)/s/qmmp( |[)])/qmmp${QTFOUR}\1/g'
.if defined(QTFOUR)
	@${GREP} -L -e '${QTFOUR}' ${WRKSRC}/src/qmmp/qmmp.pc.in | ${XARGS} \
		${REINPLACE_CMD} -e '/Description/s/$$/ (Qt4)/' \
		-Ee '/(Name|Libs):/s/qmmp$$/qmmp${QTFOUR}/'
	@${REINPLACE_CMD} -Ee '/add_subdirectory[(]src\/(app|qmmpui|plugins)[)]/d' \
		${WRKSRC}/CMakeLists.txt
	@${GREP} -l '\"/qmmp\"' ${WRKSRC}/src/qmmp/qmmp.cpp | ${XARGS} \
		${REINPLACE_CMD} -e '/LIB_DIR/s/\/qmmp/\/qmmp${QTFOUR}/'
.endif

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}; \
	cd ${WRKSRC} && ${INSTALL_MAN} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.coresys"
.include <bsd.port.mk>
