DIST_FILES = dist/temp/endpoint dist/temp/hbchannel.ipk

ARCHIVE = pelinux_arm_sl_710.tar

.PHONY: all
all: $(ARCHIVE)

$(DIST_FILES): autoroot.sh hbchannel.ipk
	mkdir -p -- 'dist/temp'
	install -m '0755' -T -- 'autoroot.sh' 'dist/temp/endpoint'
	install -m '0644' -T -- 'hbchannel.ipk' 'dist/temp/hbchannel.ipk'

$(ARCHIVE): $(DIST_FILES)
	tar -cf '$(@)' -C 'dist' --owner='root:0' --group='root:0' -- $(foreach f,$^,'$(f:dist/%=%)')

.PHONY: clean
clean:
	rm -rf -- '$(ARCHIVE)' 'dist'
