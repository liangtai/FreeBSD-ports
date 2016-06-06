# $FreeBSD$

PORTNAME=	qmmp-plugin-kdenotify
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	deskutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Popup notifier plug-in of QMMP (Qt4) for KDE

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib

USE_QT4+=	dbus xml uic_build

QMMPPLUGIN_TARGET=	General/kdenotify
QMMPPLUGIN_OPTIONS=
PLIST_FILES+=	share/qmmp/images/empty_cover.png \
	share/qmmp/images/app_icon.png

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
