# $FreeBSD$

PORTNAME=	qmmp-plugin-sid
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	SID plug-in of QMMP (Qt4)

LICENSE=	GPLv2

LIB_DEPENDS+=	libsidplayfp.so:${PORTSDIR}/audio/libsidplayfp

QMMPPLUGIN_TARGET=	Input/sid
QMMPPLUGIN_TAG=	SID

.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
.include <bsd.port.mk>
