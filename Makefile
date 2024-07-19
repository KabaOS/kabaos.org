CC=cc

build: \
	$(patsubst src/%,build/%,$(shell find src -type f)) \
	$(patsubst static/%,build/%,$(shell find static -type f))

build/%: src/%
	@mkdir -p $(dir $@)
	$(CC) -E -P -x c $< -o $@

build/%: static/%
	@mkdir -p $(dir $@)
	cp $< $@
