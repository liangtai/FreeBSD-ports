# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-hotkey
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	accessibility multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Global shortcut keys plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui${QTVER}.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USES+=	dos2unix
USE_QT4+=	network

DOS2UNIX_FILES=	${WRKSRC}/src/plugins/General/hotkey/hotkey.pro

QMMPPLUGIN_TARGET=	General/hotkey
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
