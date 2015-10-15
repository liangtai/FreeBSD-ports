# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-kdenotify
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	deskutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Popup notifier plug-in of QMMP (Qt4) for KDE

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui${QTVER}.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USE_QT4+=	dbus network xml

QMMPPLUGIN_TARGET=	General/kdenotify
QMMPPLUGIN_OPTIONS=
PLIST_FILES+=	share/qmmp/images/empty_cover${QTVER}.png \
	share/qmmp/images/app_icon${QTVER}.png

post-extract:
.for I in app_icon empty_cover
	@${MV} ${WRKSRC}/src/plugins/General/kdenotify/images/${I}.png \
		${WRKSRC}/src/plugins/General/kdenotify/images/${I}${QTVER}.png
.endfor

post-patch:
	@${GREP} -El 'lqmmp([^-0]|$$)|/qmmp/|app_icon\.png' \
		${WRKSRC}/src/plugins/${QMMPPLUGIN_TARGET}/kdenotify.pro | ${XARGS} \
		${REINPLACE_CMD} -e '/target\.path/s|/qmmp/|/qmmp${QTVER}/|' \
		-Ee 's/-lqmmp(ui)?($$| )/-lqmmp\1${QTVER}\2/g' \
		-e '/ images\//s/\.png/${QTVER}&/'

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
