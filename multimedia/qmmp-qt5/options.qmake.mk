.for opt in ${COMPLETE_OPTIONS_LIST} ${OPTIONS_SLAVE}
.  if ${PORT_OPTIONS:M${opt}}

.    if defined(${opt}_QMAKE_CONFIG)
_QT_CONFIG+=	${${opt}_QMAKE_CONFIG}
.    endif

.    if defined(${opt}_QMAKE_CXXFLAGS)
_QT_CXXFLAGS+=	${${opt}_QMAKE_CXXFLAGS}
.    endif

.  endif
.endfor

QMAKE_ARGS+=	CONFIG+="${_QT_CONFIG}" \
		QMAKE_CXXFLAGS+="${_QT_CXXFLAGS}" \
		PREFIX=${PREFIX}
