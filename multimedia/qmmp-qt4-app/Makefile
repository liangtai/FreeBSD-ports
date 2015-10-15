# $FreeBSD$

PORTNAME=	qmmp-qt4-app
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Main application of the QMMP Qt4-based multimedia player

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmp${QTVER}.so:${PORTSDIR}/multimedia/qmmp-qt4-lib \
	libqmmpui${QTVER}.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib
BUILD_DEPENDS+=	qmmp-qt4-lib>=0.9.0:${PORTSDIR}/multimedia/qmmp-qt4-lib

USES+=	desktop-file-utils

.for p in Effect Engines FileDialogs General Input Output Transports Ui Visual
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/src/plugins/${p}'
.endfor

INSTALLS_ICONS=	yes

post-extract:
.for I in 16x16 32x32 48x48 56x56
	@${MV} ${WRKSRC}/src/app/images/${I}/qmmp.png \
		${WRKSRC}/src/app/images/${I}/qmmp${QTVER}.png
.endfor
.for I in qmmp-simple qmmp
	@${MV} ${WRKSRC}/src/app/images/scalable/${I}.svgz \
		${WRKSRC}/src/app/images/scalable/${I}${QTVER}.svgz
.endfor
	@cd ${WRKSRC}/src && \
		${LN} -sf qmmp/ qmmp${QTVER} ; ${LN} -sf qmmpui/ qmmpui${QTVER}
.for D in qmmp qmmp_enqueue qmmp_dir
	@${SED} -E 's/^(Exec|Icon)=qmmp/&${QTVER}/' \
		${WRKSRC}/src/app/${D}.desktop > ${WRKSRC}/src/app/${D}${QTVER}.desktop
.endfor

pre-configure:
	@${GREP} -l 'SUBDIRS.*\\$$' ${WRKSRC}/src/plugins/plugins.pro \
		| ${XARGS} ${REINPLACE_CMD} -e '/SUBDIRS/,/^$$/{' \
		-e 's/=.*$$/= CommandLineOptions PlayListFormats/; /^[^=]*$$/d;}' \
		-e '/unix:/d'
	@${GREP} -l '^SUBDIRS.*/qmmp' ${WRKSRC}/qmmp.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/^SUBDIRS/s/=.*$$/=	src\/plugins src\/app/'
	# Append ${QTVER} at every file or path to avoid conflict with Qt5 qmmp
	@${GREP} -l ': qmmp ' ${WRKSRC}/src/app/translations/qmmp_*.ts \
		${WRKSRC}/src/app/qmmpstarter.cpp | ${XARGS} \
		${REINPLACE_CMD} -Ee '/(Usage|example):/,+1s/qmmp/&${QTVER}/'
	@${GREP} -l 'qmmp$$' \
		${WRKSRC}/src/app/desktop-translations/qmmp_*.desktop.in | \
		${XARGS} ${REINPLACE_CMD} -Ee '/^(Exec|Icon)=/s/qmmp/&${QTVER}/'
	@${GREP} -L -e '${QTVER}' ${WRKSRC}/src/app/images/images.qrc \
		| ${XARGS} ${REINPLACE_CMD} -e 's/qmmp\.png/qmmp${QTVER}.png/'
	@${GREP} -l '/lib/qmmp$$' ${WRKSRC}/src/plugins/plugins.pri | ${XARGS} \
		${REINPLACE_CMD} -e '/^unix:/s/qmmp$$/&${QTVER}/'
	@${FIND} ${WRKSRC}/src/ -type f -name '*.pro' \
		-exec ${GREP} -lE 'lqmmp[^-0]|lqmmp$$' {} + | ${XARGS} \
		${REINPLACE_CMD} -e '/target\.path/s|/qmmp/|/qmmp${QTVER}/|' \
		-Ee 's/-lqmmp(ui)?($$| )/-lqmmp\1${QTVER}\2/g' \
		-e '/^unix:TARGET/s/qmmp$$/&${QTVER}/' \
		-Ee 's/\.(desktop|png|svg)/${QTVER}.\1/'

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.coresys"
.include <bsd.port.mk>
