# $FreeBSD$

PORTNAME=	qmmp-plugin-filedialog
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	x11-fm multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Special made filedialog plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libqmmpui.so:multimedia/qmmp-uilib

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	FileDialogs/QmmpFileDialog
QMMPPLUGIN_OPTIONS=

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
