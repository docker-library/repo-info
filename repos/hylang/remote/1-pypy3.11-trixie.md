## `hylang:1-pypy3.11-trixie`

```console
$ docker pull hylang@sha256:fb73bf3def174c57a98e28c428883c20b5f214f33f666daa7843a4e868d9ef51
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `hylang:1-pypy3.11-trixie` - linux; amd64

```console
$ docker pull hylang@sha256:3b83e76986c56821847109b0837f71027b4574e71a842bce6e95877310d1b4f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74570420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc351f50c985c86e71859afd26e62ff47f01d9cec832b501c482e37c36f3a5c0`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:51:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:52:34 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:52:34 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:52:34 GMT
ENV PYPY_VERSION=8.0.0
# Tue, 06 Oct 2026 01:52:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux64.tar.gz'; 			sha256='66a3657e9ddf2d62ead44d3a44b9ea2f6e7dbf28d812554cae5c982a0585bfa5'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-aarch64.tar.gz'; 			sha256='37faf1a0b00131748910ad21844a9b1b3fedd630c89b01ec98cdb1b5466ffca5'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux32.tar.gz'; 			sha256='14fcf398eacffdc98db2f3b10ae9e8c9628932dc89b0958d145b9fd9c7307301'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 06 Oct 2026 01:52:34 GMT
CMD ["pypy3"]
# Tue, 06 Oct 2026 02:51:51 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:51:51 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:51:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:51:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714bef88adb14646298cfb0c80220196959752a57a7e574ad6d12ee11bada890`  
		Last Modified: Tue, 06 Oct 2026 01:52:46 GMT  
		Size: 1.2 MB (1221091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29c031d85f69f0afe158e5b66ebeaa32a45098f31ca9d3ab6ba8ce88bf06df5`  
		Last Modified: Tue, 06 Oct 2026 01:52:47 GMT  
		Size: 36.3 MB (36319021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0910e4d79db0cf7341612df088c28f1bbcb55d1bd2a8f022257b4e2f7453982b`  
		Last Modified: Tue, 06 Oct 2026 02:51:58 GMT  
		Size: 7.2 MB (7186958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:157fec63fec6578255ab68b073bf98a549bd561d390ad3f6cac9ba0f58adcb48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd72200577365661d00bdb5592e1a8b933518baa8cbf157ef0ab05aad505d22b`

```dockerfile
```

-	Layers:
	-	`sha256:afe6550c05049b2c682b4dbf09f9f1f0e2a729dd74ccfbedef3a10b691c5583e`  
		Last Modified: Tue, 06 Oct 2026 02:51:58 GMT  
		Size: 2.3 MB (2303631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d14abef8acf71df75750b2540dc557cffa2b3689ad9ac5b6d4f450a8a01355da`  
		Last Modified: Tue, 06 Oct 2026 02:51:58 GMT  
		Size: 11.3 KB (11289 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.11-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:6328ad8d89e1803c00b06ff97332480cc0b908908abfcebac872efab83e9055e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73191744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189c96ebbab73dc51168884f9d3e2f834cb2e137e72b846bbf72cc33f0bb3b88`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:54:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:55:38 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:55:38 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:55:38 GMT
ENV PYPY_VERSION=8.0.0
# Tue, 06 Oct 2026 01:55:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux64.tar.gz'; 			sha256='66a3657e9ddf2d62ead44d3a44b9ea2f6e7dbf28d812554cae5c982a0585bfa5'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-aarch64.tar.gz'; 			sha256='37faf1a0b00131748910ad21844a9b1b3fedd630c89b01ec98cdb1b5466ffca5'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux32.tar.gz'; 			sha256='14fcf398eacffdc98db2f3b10ae9e8c9628932dc89b0958d145b9fd9c7307301'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 06 Oct 2026 01:55:38 GMT
CMD ["pypy3"]
# Tue, 06 Oct 2026 02:45:13 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:45:13 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:45:13 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:45:13 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f81a8fd3d0a89c7f3a60c5a9770a7d5adcb40b3154596760be2134dcf721b5b`  
		Last Modified: Tue, 06 Oct 2026 01:55:49 GMT  
		Size: 1.2 MB (1202749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d5a2669f73d09c2c76d90ff1a254cff966dcbe1fef1382143b49f39cd0ac92`  
		Last Modified: Tue, 06 Oct 2026 01:55:50 GMT  
		Size: 34.6 MB (34601642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c720ab7081fafd10a6974ddee68092f5eb78ddee4327587fe80c607cd46150`  
		Last Modified: Tue, 06 Oct 2026 02:45:21 GMT  
		Size: 7.2 MB (7187071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:a5eba96646f262592b29eb2a00c078a66a90b3ad0db3294b31d11d7d313a0711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2315574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf18d09bf9637f6d9dc76016c6934e01f7009575de0b66a9cd775f1a954284`

```dockerfile
```

-	Layers:
	-	`sha256:dae06316e9602fdd355c508ca77b65d344ef9ab83b89032fbb7dff073d6edbb4`  
		Last Modified: Tue, 06 Oct 2026 02:45:21 GMT  
		Size: 2.3 MB (2304037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:655ba4b1449f4b4dbbd01c85263d8d8a3d1510585479fabaa20344a20ec9191a`  
		Last Modified: Tue, 06 Oct 2026 02:45:21 GMT  
		Size: 11.5 KB (11537 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.11-trixie` - linux; 386

```console
$ docker pull hylang@sha256:969289f052ba069bb0b10958f499a83a1ff171f0c0ff850236970c649cd07425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72861748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d01d5d49cd5ee41b035331cf13f5c5cf929b3b868cc6ded6dcae2cde6912910`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:51:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:52:36 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:52:36 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:52:36 GMT
ENV PYPY_VERSION=8.0.0
# Tue, 06 Oct 2026 01:52:36 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux64.tar.gz'; 			sha256='66a3657e9ddf2d62ead44d3a44b9ea2f6e7dbf28d812554cae5c982a0585bfa5'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-aarch64.tar.gz'; 			sha256='37faf1a0b00131748910ad21844a9b1b3fedd630c89b01ec98cdb1b5466ffca5'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux32.tar.gz'; 			sha256='14fcf398eacffdc98db2f3b10ae9e8c9628932dc89b0958d145b9fd9c7307301'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 06 Oct 2026 01:52:36 GMT
CMD ["pypy3"]
# Tue, 06 Oct 2026 02:49:30 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:49:30 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:49:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:49:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8dace3fdda4a46755e2bf91f1d13ad9d8d3287600ac94d3f68a7d7e45e5e63`  
		Last Modified: Tue, 06 Oct 2026 01:52:45 GMT  
		Size: 1.2 MB (1228275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11ed8b1535b0810e4de4fb231bd288df5fc5044dd3ad5c0c378e4c8f93b3c73`  
		Last Modified: Tue, 06 Oct 2026 01:52:46 GMT  
		Size: 33.1 MB (33093249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8870b2e931ed87adffb7892830ef4fda5e501bc861abe59ac6b10a10d405d568`  
		Last Modified: Tue, 06 Oct 2026 02:49:38 GMT  
		Size: 7.2 MB (7186927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:4330a83cf0d0aa39b1e8089edffb0bc6c511141fbfe496f4d7031db3e3bafb1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09c93d5f594a5cfdd9a59fbd1f3a9f6ad39aad0a8e3734b981be9051194cee6`

```dockerfile
```

-	Layers:
	-	`sha256:05ee1d535972f7ecfc245ee3fccc3ff00dba0bb433b9b0f00c2d6a685aef71a7`  
		Last Modified: Tue, 06 Oct 2026 02:49:38 GMT  
		Size: 2.3 MB (2300744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ff4043dc3e0d5dcb13e30e08868b83a932333540c7fbf49c2266dae0e7da430`  
		Last Modified: Tue, 06 Oct 2026 02:49:38 GMT  
		Size: 11.2 KB (11197 bytes)  
		MIME: application/vnd.in-toto+json
