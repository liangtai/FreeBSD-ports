# $FreeBSD$

PORTNAME=	qmmp-plugin-musepack
CATEGORIES=	audio multimedia

COMMENT=	musepack file format plug-in of QMMP

LIB_DEPENDS+=	libmpcdec.so:${PORTSDIR}/audio/musepack \
	libtag.so:${PORTSDIR}/audio/taglib

QMMPPLUGIN_TARGET=	Input/mpc
QMMPPLUGIN_TAG=	MPC

DISTINFO_FILE=	${.CURDIR}/../../multimedia/qmmp/distinfo
.include "${.CURDIR}/../../multimedia/qmmp/Makefile.plugin"
