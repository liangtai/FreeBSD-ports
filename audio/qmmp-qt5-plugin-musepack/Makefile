# $FreeBSD$

PORTNAME=	qmmp-qt5-plugin-musepack
PORTVERSION=	${QMMP_VERSION}
CATEGORIES=	audio multimedia

MAINTAINER=	liangtai.s16@gmail.com
COMMENT=	Musepack file format plug-in of QMMP (Qt5)

LICENSE=	GPLv2

LIB_DEPENDS+=	libmpcdec.so:audio/musepack \
	libtag.so:audio/taglib

QMMPPLUGIN_TARGET=	Input/mpc
QMMPPLUGIN_TAG=	MPC

.include "${.CURDIR}/../../multimedia/qmmp-qt5/Makefile.plugin"
.include <bsd.port.mk>
