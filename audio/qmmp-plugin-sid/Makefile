# $FreeBSD$

PORTNAME=	qmmp-plugin-sid
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	SID plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libsidplayfp.so:audio/libsidplayfp

USE_QT+=	uic_build

QMMPPLUGIN_TARGET=	Input/sid
QMMPPLUGIN_OPTIONS=	SID_PLUGIN

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
