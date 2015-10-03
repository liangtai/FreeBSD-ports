# $FreeBSD$

PORTNAME=	qmmp-reference
PORTVERSION=	0.9.2
CATEGORIES=	multimedia
MASTER_SITES=	http://qmmp.ylsoftware.com/files/plugins/ \
	SF/qmmp-dev/qmmp/
DISTNAME=	qmmp-${PORTVERSION}

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	API document of QMMP libraries

LICENSE=	GPLv2

BUILD_DEPENDS=	doxygen:${PORTSDIR}/devel/doxygen

USES=		tar:bzip2

DISTINFO_FILE=	${.CURDIR}/../qmmp/distinfo

DOCSDIR=	${LOCALBASE}/share/doc/${PORTNAME:C/-reference//}

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
		>> ${WRKDIR}/PLIST.doc
	${CP} ${WRKDIR}/PLIST.doc ${TMPPLIST}

.include <bsd.port.mk>
