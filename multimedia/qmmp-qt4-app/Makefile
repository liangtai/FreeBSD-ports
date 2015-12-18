# $FreeBSD$

PORTNAME=	qmmp-qt4-app
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Main application of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp.so:${PORTSDIR}/multimedia/qmmp-qt4-lib \
	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib
BUILD_DEPENDS+=	qmmp-qt4-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-qt4-lib

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
	@${GREP} -l '^SUBDIRS.*/qmmp' ${WRKSRC}/qmmp.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/^SUBDIRS/s/=.*$$/=	src\/plugins src\/app/'

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.coresys"
.include <bsd.port.mk>
