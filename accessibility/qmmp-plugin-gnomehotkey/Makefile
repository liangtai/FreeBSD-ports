# $FreeBSD$

PORTNAME=	qmmp-plugin-gnomehotkey
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	accessibility multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	GNOME/Cinnamon shortcut key plug-in of QMMP

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

USE_QT5+=	dbus network xml

QMMPPLUGIN_TARGET=	General/gnomehotkey
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
