# $FreeBSD$

PORTNAME=	qmmp-plugin-filedialog
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	x11-fm multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Special made filedialog plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:${PORTSDIR}/multimedia/qmmp-uilib

QMMPPLUGIN_TARGET=	FileDialogs/QmmpFileDialog
QMMPPLUGIN_TAG=	QMMP_DIALOG

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
