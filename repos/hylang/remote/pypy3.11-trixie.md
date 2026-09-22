## `hylang:pypy3.11-trixie`

```console
$ docker pull hylang@sha256:e4cc1111340c4acc0bd081d8f15a4d0ecfe63098ec39b94e79146e5159560b11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `hylang:pypy3.11-trixie` - linux; amd64

```console
$ docker pull hylang@sha256:4b1bdbdefab0f0578c38af5a833a3ff243516acd70ec5238449416ccba24f6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74557322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c523fdb11506f917b41c9389c61c0212a9910dd7cf0dbe52762b0bcfaa4b422`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Mon, 21 Sep 2026 23:04:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 23:05:04 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:05:04 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:05:04 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:05:04 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux64.tar.gz'; 			sha256='66a3657e9ddf2d62ead44d3a44b9ea2f6e7dbf28d812554cae5c982a0585bfa5'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-aarch64.tar.gz'; 			sha256='37faf1a0b00131748910ad21844a9b1b3fedd630c89b01ec98cdb1b5466ffca5'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux32.tar.gz'; 			sha256='14fcf398eacffdc98db2f3b10ae9e8c9628932dc89b0958d145b9fd9c7307301'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Mon, 21 Sep 2026 23:05:04 GMT
CMD ["pypy3"]
# Mon, 21 Sep 2026 23:07:16 GMT
ENV HY_VERSION=1.3.1
# Mon, 21 Sep 2026 23:07:16 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 21 Sep 2026 23:07:16 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 21 Sep 2026 23:07:16 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a217d87b01411aae8295f9ffd043abd9990c12a2f6a35a28e48ffd762cdf6d`  
		Last Modified: Mon, 21 Sep 2026 23:05:16 GMT  
		Size: 1.2 MB (1221121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cbd642c08817c89249a9309a75b666044f0e3aa9dd94bbd2cff773a44425da1`  
		Last Modified: Mon, 21 Sep 2026 23:05:17 GMT  
		Size: 36.3 MB (36318933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5179db30853b63c0fdc0a69a28c9ea64d53e9222b3288a64082828d71d0f7cbd`  
		Last Modified: Mon, 21 Sep 2026 23:07:25 GMT  
		Size: 7.2 MB (7186850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:04b86e26e99e1473b361ac8cb4ed8985bd5f6fd048833b8617e1a1010dd9e6b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6a8133cd2f4bedc52796df5ea612b2db46f472a720ba6d3c08890e31a74a7a`

```dockerfile
```

-	Layers:
	-	`sha256:7dfb0d028bb40357bbbd90598f62d18026a0a09458ad3b687136571b058e4b67`  
		Last Modified: Mon, 21 Sep 2026 23:07:24 GMT  
		Size: 2.3 MB (2303631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab468a6a6fd3a494065f6be401c75572d1e8a4ccf27d35976da120df17efd6c`  
		Last Modified: Mon, 21 Sep 2026 23:07:24 GMT  
		Size: 11.3 KB (11289 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy3.11-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:a0fcfff860bfe3c885d9292437fba2fc9f3447439666b971d50f6f4c93bdbe01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73181177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d0d9fbcefb4b4da1056895026c7ebd78f3fe5d249e83b693ef6b651917b8cc`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Mon, 21 Sep 2026 23:04:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 23:05:18 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:05:18 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:05:18 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:05:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux64.tar.gz'; 			sha256='66a3657e9ddf2d62ead44d3a44b9ea2f6e7dbf28d812554cae5c982a0585bfa5'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-aarch64.tar.gz'; 			sha256='37faf1a0b00131748910ad21844a9b1b3fedd630c89b01ec98cdb1b5466ffca5'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux32.tar.gz'; 			sha256='14fcf398eacffdc98db2f3b10ae9e8c9628932dc89b0958d145b9fd9c7307301'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Mon, 21 Sep 2026 23:05:18 GMT
CMD ["pypy3"]
# Mon, 21 Sep 2026 23:07:25 GMT
ENV HY_VERSION=1.3.1
# Mon, 21 Sep 2026 23:07:25 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 21 Sep 2026 23:07:25 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 21 Sep 2026 23:07:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1244c337e24a6aaa2cc1a9cccc24631bf2a66151652b5c147eb163dd485b179`  
		Last Modified: Mon, 21 Sep 2026 23:05:29 GMT  
		Size: 1.2 MB (1202794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc8b75d356ae03666e9c82ab32e23774cef861b215baca21d276fc0b41cd9a8`  
		Last Modified: Mon, 21 Sep 2026 23:05:30 GMT  
		Size: 34.6 MB (34601747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05833d61250aa609f6bacfe84e5453342cdc995e9ec6811935af1eb5824a2168`  
		Last Modified: Mon, 21 Sep 2026 23:07:33 GMT  
		Size: 7.2 MB (7186945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:9a36a15894812531ddc8a33ee4cb3c62a5318e999b4ab82c9e9b9e76a935f260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2315574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be77d107e89b37de6d1b90c6afaf8089898a8cc289d9072d96ec43a67a1bcf7`

```dockerfile
```

-	Layers:
	-	`sha256:d304b34a02711835107c51bd037b838704503f7e02c57a2d0a5b4a97aa7762bc`  
		Last Modified: Mon, 21 Sep 2026 23:07:33 GMT  
		Size: 2.3 MB (2304037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf895149e63577c56c66cda2470b95275ce0edca1c7539f2e9e4263b8e89553e`  
		Last Modified: Mon, 21 Sep 2026 23:07:33 GMT  
		Size: 11.5 KB (11537 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy3.11-trixie` - linux; 386

```console
$ docker pull hylang@sha256:29937ddd2cd8a9480f300af6c0c93fe0601a30d47daf6a42f99985ed997b56a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.8 MB (72848771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e37aac18be49bdc61df8240684ce5dff26abaef1eef0ae5043eed34db65984`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Mon, 21 Sep 2026 23:04:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 23:05:15 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:05:15 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:05:15 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:05:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux64.tar.gz'; 			sha256='66a3657e9ddf2d62ead44d3a44b9ea2f6e7dbf28d812554cae5c982a0585bfa5'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-aarch64.tar.gz'; 			sha256='37faf1a0b00131748910ad21844a9b1b3fedd630c89b01ec98cdb1b5466ffca5'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux32.tar.gz'; 			sha256='14fcf398eacffdc98db2f3b10ae9e8c9628932dc89b0958d145b9fd9c7307301'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Mon, 21 Sep 2026 23:05:15 GMT
CMD ["pypy3"]
# Mon, 21 Sep 2026 23:07:55 GMT
ENV HY_VERSION=1.3.1
# Mon, 21 Sep 2026 23:07:55 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 21 Sep 2026 23:07:55 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 21 Sep 2026 23:07:55 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f9997704ac94e2879b1948aa13efac601430fa4092d77d03ae1b0bf9a10c7d`  
		Last Modified: Mon, 21 Sep 2026 23:05:26 GMT  
		Size: 1.2 MB (1228259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c77f936991d02a9f0ff95e8a6f0ee1eaf480027e29dfd6a26d4e2630c512780`  
		Last Modified: Mon, 21 Sep 2026 23:05:27 GMT  
		Size: 33.1 MB (33093336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4c245a7413828bab6cdb6b2dad5caa10714e3daa6bebd6a6f426a067069157`  
		Last Modified: Mon, 21 Sep 2026 23:08:03 GMT  
		Size: 7.2 MB (7186778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:ff3adb43edb10a1373cc5122e16ebd2caa0a7023bea372a6403c6b9ab61f75f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5afeef87e1ce0b0f0b37212d0e3108c8438a422df87601374974bc0ab90d5e2c`

```dockerfile
```

-	Layers:
	-	`sha256:4d277e36c03797f354df70a0ad90bf09ef5df3a0e08da778bed7d9cc4bfa55a8`  
		Last Modified: Mon, 21 Sep 2026 23:08:02 GMT  
		Size: 2.3 MB (2300744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8415620ff3f00dee69fbbdf823bf5e948458c1b37f0e364771b9e7f0bf4eb76`  
		Last Modified: Mon, 21 Sep 2026 23:08:02 GMT  
		Size: 11.2 KB (11197 bytes)  
		MIME: application/vnd.in-toto+json
