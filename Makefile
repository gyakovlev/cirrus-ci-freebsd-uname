_OS_SH=		uname -s | tr '/' '-'
_OS:=		$(shell ${_OS_SH})
OS?=		${_OS}

$(info _OS_SH="$(_OS_SH)")
$(info _OS="$(_OS)")
$(info OS="$(OS)")

.PHONY= all

all:
ifeq ($(OS),FreeBSD)
	@true
else
	$(error OS should be FreeBSD)
endif
