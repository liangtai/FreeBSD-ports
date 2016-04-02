# $FreeBSD$

PORTNAME=	qmmp-plugin-twopanelfiledialog
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	x11-fm multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Two-panel file dialog plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib

USE_QT4+=	uic_build

QMMPPLUGIN_TARGET=	FileDialogs/TwoPanelFileDialog
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
