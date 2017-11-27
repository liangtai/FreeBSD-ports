# $FreeBSD$

PORTNAME=	qmmp-qt5-app
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Main application of the QMMP Qt5-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp.so:multimedia/qmmp-qt5-lib \
	libqmmpui.so:multimedia/qmmp-qt5-uilib
BUILD_DEPENDS+=	qmmp-qt5-lib>=1.3.0:multimedia/qmmp-qt5-lib

USES+=	desktop-file-utils
USE_QT5+=	network linguisttools_build

.for p in Effect Engines FileDialogs General Input Output Transports Ui Visual
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins/${p}'
.endfor

INSTALLS_ICONS=	yes

pre-configure:
	@${GREP} -l 'SUBDIRS.*\\$$' ${WRKSRC}/src/plugins/plugins.pro \
		| ${XARGS} ${REINPLACE_CMD} -e '/SUBDIRS/,/^$$/{' \
		-e 's/=.*$$/= CommandLineOptions PlayListFormats/; /^[^=]*$$/d;}' \
		-e '/unix:/d'
	@${GREP} -L 'CONFIG' ${WRKSRC}/src/plugins/plugins.pri \
		| ${XARGS} ${REINPLACE_CMD} -e '/^INCLUDEPATH/{; \
			s/^.*$$/PKGCONFIG += qmmp/; h; \
			s/PKG//; s/qmmp/link_pkgconfig/; G;}'
	@${GREP} -l '^SUBDIRS.*/qmmp' ${WRKSRC}/qmmp.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/^SUBDIRS/s|=.*$$|=	src/plugins src/app|'
	@${GREP} -L 'PKGCONFIG' ${WRKSRC}/src/app/app.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/warn_on/{; \
			s/warn_on/& link_pkgconfig/; h; \
			s/^.*$$/PKGCONFIG += qmmp/; x; G;}'

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.coresys"
.include <bsd.port.mk>
