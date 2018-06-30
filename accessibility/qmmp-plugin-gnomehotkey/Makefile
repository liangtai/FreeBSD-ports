# $FreeBSD$

PORTNAME=	qmmp-plugin-gnomehotkey
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	accessibility multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	GNOME/Cinnamon shortcut key plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib

USE_QT+=	dbus

QMMPPLUGIN_TARGET=	General/gnomehotkey
QMMPPLUGIN_TAG=	GNOMEHOTKEY

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
