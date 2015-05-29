# $FreeBSD$

PORTNAME=	qmmp-plugin-filedialog
CATEGORIES=	x11-fm multimedia

COMMENT=	special made filedialog plug-in of QMMP

USE_QT4+=	network
LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	FileDialogs/QmmpFileDialog
QMMPPLUGIN_OPTIONS=

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
