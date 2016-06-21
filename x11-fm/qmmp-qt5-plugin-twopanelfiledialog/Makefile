# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-twopanelfiledialog
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	x11-fm multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Two-panel file dialog plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-qt5-uilib

QMMPPLUGIN_TARGET=	FileDialogs/TwoPanelFileDialog
QMMPPLUGIN_TAG=	TWO_PANEL_DIALOG

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
