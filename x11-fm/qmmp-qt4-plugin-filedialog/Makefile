# $FreeBSD$

PORTNAME=	qmmp-qt4-plugin-filedialog
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	x11-fm multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Special made filedialog plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui${QTVER}.so:${PORTSDIR}/multimedia/qmmp-qt4-uilib

USE_QT4+=	network

QMMPPLUGIN_TARGET=	FileDialogs/QmmpFileDialog
QMMPPLUGIN_TAG=	QMMP_DIALOG

.include "${.CURDIR}/../../multimedia/qmmp-qt4/Makefile.plugin"
.include <bsd.port.mk>
