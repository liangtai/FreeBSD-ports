# $FreeBSD$

PORTNAME=	qmmp-app
CATEGORIES=	multimedia

COMMENT=	main application of the QMMP Qt4-based multimedia player

USES+=	desktop-file-utils
LIB_DEPENDS+=	libqmmp.so:${PORTSDIR}/multimedia/qmmp-lib \
	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib
BUILD_DEPENDS+=	qmmp-lib>=0.8.0:${PORTSDIR}/multimedia/qmmp-lib

.for p in Effect Engines FileDialogs General Input Output Transports Ui Visual
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins/${p}'
.endfor

pre-configure:
	@${GREP} -l 'SUBDIRS.*\\$$' ${WRKSRC}/src/plugins/plugins.pro \
		| ${XARGS} ${REINPLACE_CMD} -e '/SUBDIRS/,/^$$/{' \
		-e 's/=.*$$/= CommandLineOptions PlayListFormats/; /^[^=]*$$/d;}' \
		-e '/unix:/d'
	@${GREP} -l '^SUBDIRS.*/qmmp' ${WRKSRC}/qmmp.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/^SUBDIRS/s/=.*$$/=	src\/plugins src\/app/'

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.core"
