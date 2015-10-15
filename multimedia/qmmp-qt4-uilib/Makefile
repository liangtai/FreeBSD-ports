# $FreeBSD$

PORTNAME=	qmmp-qt4-uilib
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	UI library of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

QTVER=	-qt4

LIB_DEPENDS+=	libqmmp${QTVER}.so:${PORTSDIR}/multimedia/qmmp-qt4-lib
BUILD_DEPENDS+=	qmmp-qt4-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-qt4-lib

EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins' \
	--exclude '${DISTNAME}/src/app'

post-extract:
	@cd ${WRKSRC}/src && ${LN} -sf qmmp/ qmmp${QTVER} ; \
		${LN} -sf qmmpui/ qmmpui${QTVER}

pre-configure:
	@${GREP} -H '^SUBDIRS' ${WRKSRC}/qmmp.pro \
		| ${SED} -e 's/= src\// src-/' | ${GREP} 'src/' \
		| ${CUT} -d: -f1 | uniq | ${XARGS} \
		${REINPLACE_CMD} -e '/^SUBDIRS/s/=.*$$/=	src\/qmmpui/'
	# Append ${QTVER} at every file or path to avoid conflict with Qt5 qmmp
	@${GREP} -lE 'lqmmp(ui)?[^-0]|qmmp(ui)?$$' \
		${WRKSRC}/src/qmmpui/qmmpui.pro | ${XARGS} ${REINPLACE_CMD} \
		-e '/QMAKE_PKGCONFIG_DESCRIPTION/s/$$/ (Qt4)/' \
		-Ee 's/QMAKE_PKGCONFIG_NAME = qmmp(ui)?$$/&${QTVER}/' \
		-Ee '/(TARGET|devel\.path) =/s/qmmp(ui)?$$/&${QTVER}/' \
		-e '/target\.path/s|/qmmp/|/qmmp${QTVER}/|' \
		-Ee 's/-lqmmp(ui)?($$| )/-lqmmp\1${QTVER}\2/g'
	@${GREP} -l 'qmmp/' ${WRKSRC}/src/qmmpui/*.h | ${XARGS} \
		${REINPLACE_CMD} -e '/#include/s|qmmp/|qmmp${QTVER}/|'

post-build:
	@${GREP} -L 'libdata/pkgconfig' ${WRKSRC}/src/qmmpui/Makefile \
		| ${XARGS} ${REINPLACE_CMD} \
		-e 's|\((INSTALL_ROOT)\)/lib/\(pkgconfig\)|\1/libdata/\2|g'

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.coresys"
.include <bsd.port.mk>
