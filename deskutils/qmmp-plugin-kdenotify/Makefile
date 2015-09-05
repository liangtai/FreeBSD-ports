# $FreeBSD$

PORTNAME=	qmmp-plugin-kdenotify
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	deskutils multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Popup notifier plug-in of QMMP for KDE

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT5+=	dbus network xml

QMMPPLUGIN_TARGET=	General/kdenotify
QMMPPLUGIN_TAG=	KDENOTIFY
PLIST_FILES+=	share/qmmp/images/empty_cover.png \
	share/qmmp/images/app_icon.png

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
