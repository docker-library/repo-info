## `hylang:pypy`

```console
$ docker pull hylang@sha256:9619a18035691a1d915df382f28fe135b3c6400615ef20c882f6cba3993f22c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `hylang:pypy` - linux; amd64

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

### `hylang:pypy` - unknown; unknown

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

### `hylang:pypy` - linux; arm64 variant v8

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

### `hylang:pypy` - unknown; unknown

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

### `hylang:pypy` - linux; 386

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

### `hylang:pypy` - unknown; unknown

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

### `hylang:pypy` - windows version 10.0.26100.33438; amd64

```console
$ docker pull hylang@sha256:8a5ee2006ee84a929b7ee9c7fdd6815d6142b775a7deae9a11199fe147e3e7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2520622655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375b73a388e22ed317243d3d328f53996369201a470c730073f639d8f0022f75`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 21 Sep 2026 23:11:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 21 Sep 2026 23:12:38 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:13:09 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:13:10 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:13:53 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.11-v8.0.0-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = 'af7383c6c4fbccec8b904fc8f59678764253a0e9d5ad89c1f34b7d7e68afe715'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.11-v8.0.0-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Installing "wheel" (backwards compat) ...'; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:13:54 GMT
CMD ["pypy"]
# Mon, 21 Sep 2026 23:33:30 GMT
ENV HY_VERSION=1.3.1
# Mon, 21 Sep 2026 23:33:30 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 21 Sep 2026 23:34:15 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 21 Sep 2026 23:34:16 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f26701dd5d982cce6f36310c31a6e631e6f4236fd05dcf9ea929f64f9c6b1d`  
		Last Modified: Mon, 21 Sep 2026 23:14:02 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a0f9d51fa98ff26952b2b8477b478bd65ad9dae6c806c8627a42b0f3ca04ac`  
		Last Modified: Mon, 21 Sep 2026 23:14:01 GMT  
		Size: 386.2 KB (386213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b4178d72e4caed9a36ec013feddd3576e8df99dff23b9d5cfc0a0083f3fbf8`  
		Last Modified: Mon, 21 Sep 2026 23:14:06 GMT  
		Size: 24.4 MB (24390905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb600c58e4d072d3c2c075c7196d3c2acf1f0c2fb5e8db7450f328220a46541`  
		Last Modified: Mon, 21 Sep 2026 23:14:00 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa4d31efe241abf84e0d7bc175dece627d2a75222399caf8a19ff76263859465`  
		Last Modified: Mon, 21 Sep 2026 23:14:05 GMT  
		Size: 30.2 MB (30215106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f4ec8f1eaf80208938d943555e1615cb44750dc56c240a1e39831a2ce56ed6`  
		Last Modified: Mon, 21 Sep 2026 23:14:00 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e418d04a40a5ccdcebd3c5f7cd89284cecac4c5d63ba0f2c2135b3048f74c6`  
		Last Modified: Mon, 21 Sep 2026 23:34:20 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c18c8966549e0b4f8e17a12c19a63c8ccbff880c6ebb7c763e057e0fe2170f`  
		Last Modified: Mon, 21 Sep 2026 23:34:20 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b189edbe1e3ec85dd5541d8c44f3c5fdf028169d253b13ca12e40b3d17af2b`  
		Last Modified: Mon, 21 Sep 2026 23:34:21 GMT  
		Size: 8.0 MB (7993092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c636faa97ed2faff3017727837f8cd91d90ba5715cb95ccf6549cc158a8cc6f`  
		Last Modified: Mon, 21 Sep 2026 23:34:20 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:pypy` - windows version 10.0.20348.5622; amd64

```console
$ docker pull hylang@sha256:f9064f7fd87fa5cc69530e298cd053cad3c44acf9cf102f4f2ee7572161e04c8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2273528615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec420bbd7c649c903ea83e915ac4812fb00b7c814c6dda25b91ff2ca30d83de6`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 21 Sep 2026 23:10:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 21 Sep 2026 23:11:33 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:12:00 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:12:01 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:13:06 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.11-v8.0.0-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = 'af7383c6c4fbccec8b904fc8f59678764253a0e9d5ad89c1f34b7d7e68afe715'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.11-v8.0.0-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Installing "wheel" (backwards compat) ...'; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:13:07 GMT
CMD ["pypy"]
# Mon, 21 Sep 2026 23:33:21 GMT
ENV HY_VERSION=1.3.1
# Mon, 21 Sep 2026 23:33:21 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 21 Sep 2026 23:34:03 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 21 Sep 2026 23:34:04 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638b95d51208603122012cef4b16c2435a5c9b6bbca3c77e3cd446bcd7a038dc`  
		Last Modified: Mon, 21 Sep 2026 23:13:17 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782d94d39bcd01b4dc4acaf5a41aae3a96e0d5290adc31a4c243985657bc13d4`  
		Last Modified: Mon, 21 Sep 2026 23:13:16 GMT  
		Size: 359.9 KB (359859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea48e436a5b7f9c7adf95c283a54ec8d520d47f227d90d5b2bb61a6349e21a8`  
		Last Modified: Mon, 21 Sep 2026 23:13:19 GMT  
		Size: 15.5 MB (15533215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dfa7252998b612f537717e70d486dfb02d04a554bd5f61e6e655505801b0ec`  
		Last Modified: Mon, 21 Sep 2026 23:13:16 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbe3cde7f9904b574ec4aa61f536dccd24d650aea39a3a001fbe38094a167d0`  
		Last Modified: Mon, 21 Sep 2026 23:13:20 GMT  
		Size: 30.2 MB (30179659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6385e30071088d6ebeb7791a42fb27582e999cf43aa50cf802b65d33e7fba5f`  
		Last Modified: Mon, 21 Sep 2026 23:13:16 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3676c2f59461c6f30d8731bb6a939fb9a5e985081cb92b59a6df49605c51e44`  
		Last Modified: Mon, 21 Sep 2026 23:34:08 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6b66667e687398f207a1c474f69a5bde2e6bb38756ef55410423b2bc959c8a`  
		Last Modified: Mon, 21 Sep 2026 23:34:08 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c2e40996184ee9adf263e6430d46a59a27bd8f9efe66ded771d581c709900`  
		Last Modified: Mon, 21 Sep 2026 23:34:09 GMT  
		Size: 8.0 MB (7959284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4869f727f706986e11e1691ff220b2faba8153dd41cf9dbe77677b000a9c341`  
		Last Modified: Mon, 21 Sep 2026 23:34:08 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
