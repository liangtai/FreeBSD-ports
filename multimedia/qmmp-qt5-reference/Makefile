# $FreeBSD$

PORTNAME=	qmmp-qt5-reference
PORTVERSION=	1.1.4
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/plugins/ \
	SF/qmmp-dev/qmmp/
DISTNAME=	qmmp-${PORTVERSION}

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	API document of QMMP (Qt5) libraries

LICENSE=	GPLv2

CONFLICTS=	qmmp-reference-0.*

BUILD_DEPENDS=	doxygen:devel/doxygen

USES=		tar:bzip2

DISTINFO_FILE=	${.CURDIR}/../qmmp-qt5/distinfo

DOCSDIR=	${LOCALBASE}/share/doc/${PORTNAME:C/-qt5-reference//}

do-build:
	cd ${WRKSRC}/doc && doxygen Doxyfile

do-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}/html/search ; \
	cd ${WRKSRC}/doc/html && \
		${INSTALL_MAN} *.html *.png *.css ${STAGEDIR}${DOCSDIR}/html ; \
	cd ${WRKSRC}/doc/html/search && \
		${INSTALL_MAN} *.html *.png *.css *.js ${STAGEDIR}${DOCSDIR}/html/search ; \
	${RM} -f ${WRKDIR}/PLIST.doc ; \
	${FIND} ${STAGEDIR}${DOCSDIR}/html -type f | \
		${SED} 's|${STAGEDIR}${PREFIX}/||' \
		>> ${WRKDIR}/PLIST.doc ; \
	${CP} ${WRKDIR}/PLIST.doc ${TMPPLIST}

.include <bsd.port.mk>
