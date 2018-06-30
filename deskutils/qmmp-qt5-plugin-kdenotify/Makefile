# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-kdenotify
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	deskutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Popup notifier plug-in of QMMP (Qt5) for KDE

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-qt5-uilib

USE_QT+=	dbus

QMMPPLUGIN_TARGET=	General/kdenotify
QMMPPLUGIN_OPTIONS=
PLIST_FILES+=	share/qmmp/images/empty_cover.png \
	share/qmmp/images/app_icon.png

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
