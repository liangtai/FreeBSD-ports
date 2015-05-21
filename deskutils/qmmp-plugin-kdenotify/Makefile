# $FreeBSD$

PORTNAME=	qmmp-plugin-kdenotify
CATEGORIES=	deskutils multimedia

COMMENT=	popup notifier plug-in of QMMP for KDE

USE_QT4+=	dbus network xml
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	General/kdenotify
QMMPPLUGIN_TAG=	KDENOTIFY
PLIST_FILES+=	%%DATADIR%%/images/empty_cover.png \
	%%DATADIR%%/images/app_icon.png

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
