# $FreeBSD$

PORTNAME=	qmmp-app
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Main application of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp.so.0:multimedia/qmmp-lib \
	libqmmpui.so.0:multimedia/qmmp-uilib
BUILD_DEPENDS+=	qmmp-lib>=0.12.0:multimedia/qmmp-lib

USES+=	desktop-file-utils
USE_QT4+=	network

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

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.coresys"
.include <bsd.port.mk>

