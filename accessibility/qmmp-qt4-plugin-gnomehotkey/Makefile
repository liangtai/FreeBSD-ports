# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-gnomehotkey
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	accessibility multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	GNOME/Cinnamon shortcut key plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui${QTVER}.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USE_QT4+=	dbus network xml

QMMPPLUGIN_TARGET=	General/gnomehotkey
QMMPPLUGIN_TAG=	GNOMEHOTKEY

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
