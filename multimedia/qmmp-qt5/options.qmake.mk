.for opt in ${COMPLETE_OPTIONS_LIST} ${OPTIONS_SLAVE}
.  if ${PORT_OPTIONS:M${opt}}

.    if defined(${opt}_QMAKE_CONFIG)
_QT_CONFIG_ON+=	${${opt}_QMAKE_CONFIG}
.    endif

.    if defined(${opt}_QMAKE_CXXFLAGS)
_QT_CXXFLAGS+=	${${opt}_QMAKE_CXXFLAGS}
.    endif

.  else

.    if defined(${opt}_QMAKE_CONFIG)
_QT_CONFIG_OFF+=	${${opt}_QMAKE_CONFIG}
.    endif
.  endif
.endfor

QMAKE_ARGS+=	CONFIG+="${_QT_CONFIG_ON}" \
		DISABLED_PLUGINS="${_QT_CONFIG_OFF}" \
		QMAKE_CXXFLAGS+="${_QT_CXXFLAGS}" \
		PREFIX=${PREFIX}
