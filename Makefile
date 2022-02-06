ifndef DESTDIR
DESTDIR=/usr/
endif
ifndef CONFDIR
CONFDIR=/etc
endif

install:
	install -v -m 644 ionir-nvme-tcp-lib.sh $(DESTDIR)/lib/kvc/
	install -v -m 644 ionir-nvme-tcp.conf $(CONFDIR)/kvc/
	install -v -m 755 ionir-nvme-tcp-wrapper.sh $(DESTDIR)/lib/kvc/
