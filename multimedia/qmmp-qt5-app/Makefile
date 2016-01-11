# $FreeBSD$

PORTNAME=	qmmp-qt5-app
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Main application of the QMMP Qt5-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp.so:${PORTSDIR}/multimedia/qmmp-qt5-lib \
	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-qt5-uilib
BUILD_DEPENDS+=	qmmp-qt5-lib>=1.0.0:${PORTSDIR}/multimedia/qmmp-qt5-lib

USES+=	desktop-file-utils

.for p in Effect Engines FileDialogs General Input Output Transports Ui Visual
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins/${p}'
.endfor

INSTALLS_ICONS=	yes

pre-configure:
	@${GREP} -l 'SUBDIRS.*\\$$' ${WRKSRC}/src/plugins/plugins.pro \
		| ${XARGS} ${REINPLACE_CMD} -e '/SUBDIRS/,/^$$/{' \
		-e 's/=.*$$/= CommandLineOptions PlayListFormats/; /^[^=]*$$/d;}' \
		-e '/unix:/d'
	@${GREP} -l '^SUBDIRS = src/qmmp' ${WRKSRC}/qmmp.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/^SUBDIRS/s|=.*$$|=	src/plugins src/app|'
	@${GREP} -L 'PKGCONFIG' ${WRKSRC}/src/app/app.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/warn_on/{; \
			s/warn_on/& link_pkgconfig/; h; \
			s/^.*$$/PKGCONFIG += qmmp/; x; G;}'

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.coresys"
.include <bsd.port.mk>
