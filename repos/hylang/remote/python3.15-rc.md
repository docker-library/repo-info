## `hylang:python3.15-rc`

```console
$ docker pull hylang@sha256:6fbc2117ea8e6a5cb56567add918da47e50fcd62adf134ebd15076a4e2bbe489
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 18
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.26100.32995; amd64
	-	windows version 10.0.20348.5256; amd64

### `hylang:python3.15-rc` - linux; amd64

```console
$ docker pull hylang@sha256:e654a442c6ddb54b0dc1defed2f2435940fd36df191f5416c578da11a39b16cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49827736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ee8a8e36938fc22fc0cb75fd11c3619c2bc0e47c8ff633b7e33ae424beb4d8`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:59:34 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:59:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:59:34 GMT
ENV PYTHON_VERSION=3.15.0b3
# Tue, 14 Jul 2026 01:59:34 GMT
ENV PYTHON_SHA256=6a935ae234a67e6549894373b0cfeb8361182d03b21442328ae9598ab7422127
# Tue, 14 Jul 2026 02:06:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 02:06:48 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 02:06:48 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 02:46:02 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 02:46:02 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 02:46:02 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 02:46:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2faf3da02badeebb15074f4a8c69e0b0ba9e9aab878266470c18b67dc11c3700`  
		Last Modified: Tue, 14 Jul 2026 02:06:57 GMT  
		Size: 1.3 MB (1293291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f022d85466556c33d40ca0e9c30b98b358518daf0fe7abbd0e64b7d29d93268d`  
		Last Modified: Tue, 14 Jul 2026 02:06:57 GMT  
		Size: 12.9 MB (12907890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30bba8ca22b2169a83e78f8901774b345082b641b22039d8d8333d5e613ef54`  
		Last Modified: Tue, 14 Jul 2026 02:06:57 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69bfc8a5b24d2d2b31d350f38421f5aac5df76e564bc31026714cafbcfd33a1`  
		Last Modified: Tue, 14 Jul 2026 02:46:08 GMT  
		Size: 5.8 MB (5845402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:b80322ba245e52be7c0fbffb60a8b1691631f5ed632a635cd5d8efe2433ae72e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2163704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8638733f988df4bfcc1d567ebe7992a6ed5fad48c54a7e66955de0e442e7fe97`

```dockerfile
```

-	Layers:
	-	`sha256:77667920643df9bb6594b1878417a15366d2418eb40396f3a8f0425c641bba1b`  
		Last Modified: Tue, 14 Jul 2026 02:46:08 GMT  
		Size: 2.2 MB (2154389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1ace9fbf5d2fdd4abf1dfcb27b9ba94db34bd62d126b117071c70d166cc5019`  
		Last Modified: Tue, 14 Jul 2026 02:46:08 GMT  
		Size: 9.3 KB (9315 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; arm variant v5

```console
$ docker pull hylang@sha256:6e5cc4233a18d7f53ea644a1c8d45a00717d7ed8a0d8830a2a46351763a57c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47680065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82c619a435e6ba647435ff0442f506411e34feee9192c42449eb78798f095df`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:40:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:40:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:40:17 GMT
ENV PYTHON_VERSION=3.15.0b3
# Tue, 14 Jul 2026 02:40:17 GMT
ENV PYTHON_SHA256=6a935ae234a67e6549894373b0cfeb8361182d03b21442328ae9598ab7422127
# Tue, 14 Jul 2026 02:51:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 02:51:09 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 02:51:09 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 04:09:11 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 04:09:11 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 04:09:11 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 04:09:11 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec028c382d9b9c0122458ff50976a3c7464b54de8f8d678f4eb756257b625c4`  
		Last Modified: Tue, 14 Jul 2026 02:51:17 GMT  
		Size: 1.3 MB (1276399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51cd9f5a00e0324bc055802c79de36b6a9e1e484e01d9fddf889a4b503248ae2`  
		Last Modified: Tue, 14 Jul 2026 02:51:17 GMT  
		Size: 12.6 MB (12603123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e531d6837815c8ad44540f66fc53508950646cd66b5116f0c38f26b9c1f6f5d`  
		Last Modified: Tue, 14 Jul 2026 02:51:16 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bf8783c81cce45e2080ce07f37a9bdbcc6274efd39ad72524247a82087ba1f`  
		Last Modified: Tue, 14 Jul 2026 04:09:19 GMT  
		Size: 5.8 MB (5845475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:7c0546dee08c03eb05e824b1bd893c5cb81c88d05d8cbd17dc4974e3c3583ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2166818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543cd315fcd84abfeecd9d8eeca999d5b528b351dae59314e95feeca6459fa54`

```dockerfile
```

-	Layers:
	-	`sha256:c33e4ebf9b6fc0ea9b03fa087fbbd2b388921d8ea3c781dc85eaf8d62dc25ba3`  
		Last Modified: Tue, 14 Jul 2026 04:09:18 GMT  
		Size: 2.2 MB (2157390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e80dff852e809bc014e0f11cbfcc08b81a572196b1205fd6559aad59e8008c76`  
		Last Modified: Tue, 14 Jul 2026 04:09:18 GMT  
		Size: 9.4 KB (9428 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; arm variant v7

```console
$ docker pull hylang@sha256:2eecc29514d8229b700ab3a69f76f193afeac314bdb01077a7f2553c32ff5b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45814987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13f436b4736e02f81c955e71047d559a39bb3d7700e6e62dcb67d03327d5dde1`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:16:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:16:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:16:44 GMT
ENV PYTHON_VERSION=3.15.0b3
# Tue, 14 Jul 2026 03:16:44 GMT
ENV PYTHON_SHA256=6a935ae234a67e6549894373b0cfeb8361182d03b21442328ae9598ab7422127
# Tue, 14 Jul 2026 03:28:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 03:28:41 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 03:28:41 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 04:35:57 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 04:35:57 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 04:35:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 04:35:57 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f08733206a785de4647b45e7c793b870d02e27b4fefbf52ef4e87c626b6995`  
		Last Modified: Tue, 14 Jul 2026 03:28:48 GMT  
		Size: 1.2 MB (1249160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f402bfbd01d72c91f7f3847355a03447da292e7fc6eca26c7b8f7c4508d9c24a`  
		Last Modified: Tue, 14 Jul 2026 03:28:48 GMT  
		Size: 12.5 MB (12513651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c17163fa85de70f432305ee540813fda8065b6d5e987a60ad20c189e4007c2`  
		Last Modified: Tue, 14 Jul 2026 03:28:48 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5e35ef75b2835730760a53eb50c6a28bbd30da5fc66d8a697373d52dd781f7`  
		Last Modified: Tue, 14 Jul 2026 04:36:05 GMT  
		Size: 5.8 MB (5845460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:fb0fdd2dd7d5d4e5863a7b9fb97414911c484bc391ae4c3467e6ad807bbbca7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2165271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076ce88598a529e59676587ef687f17d01491714283b58b1a5532ea719f64320`

```dockerfile
```

-	Layers:
	-	`sha256:3d88b625b525cab0f860866263a2e19730f12ee27b7e59469ed9c71e54130e04`  
		Last Modified: Tue, 14 Jul 2026 04:36:04 GMT  
		Size: 2.2 MB (2155843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da06663d872986ac620027df99ac6a0a23b3717b03b97a577224f510bc1bead4`  
		Last Modified: Tue, 14 Jul 2026 04:36:04 GMT  
		Size: 9.4 KB (9428 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:dfd72235a6bdab53888de708413262c17a132e6aea7b99fff90a6a2b2f196191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50075859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94398eca90217c249b80058b38b425bfb6dfa9247ed7d37e43c96379c31fb58`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:03:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:03:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:03:19 GMT
ENV PYTHON_VERSION=3.15.0b3
# Tue, 14 Jul 2026 02:03:19 GMT
ENV PYTHON_SHA256=6a935ae234a67e6549894373b0cfeb8361182d03b21442328ae9598ab7422127
# Tue, 14 Jul 2026 02:11:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 02:11:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 02:11:13 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 02:53:30 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 02:53:30 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 02:53:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 02:53:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de355a767685d1a8805fb2ee92c0f5213b7ab512e3d0a76684af146948909ba6`  
		Last Modified: Tue, 14 Jul 2026 02:11:21 GMT  
		Size: 1.3 MB (1274127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d7ea93376d361e4b3f8dde18d4ce42e368ad8a68fbefc4e2d9cc3c3b0872a8`  
		Last Modified: Tue, 14 Jul 2026 02:11:22 GMT  
		Size: 12.8 MB (12812341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4dc2f2149197bde29a8a355cdb6148dd843f05cf8b6b429b848e19f226edf9`  
		Last Modified: Tue, 14 Jul 2026 02:11:21 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98bf9cb5084e14e83151db1e776d808c9cb5b043dbbab1b38bb2d41c2495bb9`  
		Last Modified: Tue, 14 Jul 2026 02:53:37 GMT  
		Size: 5.8 MB (5845437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:17d4f6fe3fe3e22c500c33694c53df1ea64bbe950634d435b07c9da4f74bba28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2164163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078d03741176b8ef33711b974f13b781bdfaeb2c95f108d4745ec9769db90a37`

```dockerfile
```

-	Layers:
	-	`sha256:62a753d6f037e3478800227b0cb06289856b51c4d55ae9a9862e936e3f935a79`  
		Last Modified: Tue, 14 Jul 2026 02:53:37 GMT  
		Size: 2.2 MB (2154695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12479cd513dccc5a88ae985c7f9afb5de66761a98d8ce9d666717bd693dec92d`  
		Last Modified: Tue, 14 Jul 2026 02:53:37 GMT  
		Size: 9.5 KB (9468 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; 386

```console
$ docker pull hylang@sha256:f30c65f5754971651a4515fdb4ca4bf6ff50332824007694b9b51daff503de4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51250624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93e5d2ea34b9a089601c2cc8681f0589e44b3ce5d4a6ef9afe69107710f4ad2`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:58:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:58:47 GMT
ENV PYTHON_VERSION=3.15.0b3
# Tue, 14 Jul 2026 01:58:47 GMT
ENV PYTHON_SHA256=6a935ae234a67e6549894373b0cfeb8361182d03b21442328ae9598ab7422127
# Tue, 14 Jul 2026 02:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 02:19:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 02:19:45 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 03:18:46 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 03:18:46 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 03:18:46 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 03:18:46 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b376aae523c5bf7939610e310a6a97461b06d5be3d81b376336356296f855b`  
		Last Modified: Tue, 14 Jul 2026 02:19:53 GMT  
		Size: 1.3 MB (1297768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2329f12b6b51c970e8391381a49f3bef3b54e8d57a47e87b68865d28694038`  
		Last Modified: Tue, 14 Jul 2026 02:19:53 GMT  
		Size: 12.8 MB (12810676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1394b9b37dd4892b9a61ca3ce1769822e0e82202d85fdfac7041445e0b63d05c`  
		Last Modified: Tue, 14 Jul 2026 02:19:53 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febf06097aa7860bec22f51eb1c50bd70edaa05857fccc09286d972d710d7e80`  
		Last Modified: Tue, 14 Jul 2026 03:18:53 GMT  
		Size: 5.8 MB (5845630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:33d0c917a81cffd7d200c774ea7941dbf75d1e7928bc4e8972c3efc089148670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2160813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4f28485c7e0cae13c112be7e5b8bd703411105718960164f0a63c7e275a5ce`

```dockerfile
```

-	Layers:
	-	`sha256:91c9d27d57d23744a8884d4d8e78ae5cef25b39cc3b64e56a2400c308f57aefc`  
		Last Modified: Tue, 14 Jul 2026 03:18:53 GMT  
		Size: 2.2 MB (2151550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3df1c5386628ce63beaf69d71d367f94ea46286f917c98c89a8dab7dc05928b1`  
		Last Modified: Tue, 14 Jul 2026 03:18:53 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; ppc64le

```console
$ docker pull hylang@sha256:852c3a5658b81a577b37f1e6da3734d4f2934cbb9687adddf67713bd52388344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54099818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2b0af965e69a6b34c5f2d880cb1ca2aa9cab7a5417aa4c446360bae8766b60`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 04:56:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jun 2026 04:56:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:56:46 GMT
ENV PYTHON_VERSION=3.15.0b3
# Wed, 24 Jun 2026 04:56:46 GMT
ENV PYTHON_SHA256=6a935ae234a67e6549894373b0cfeb8361182d03b21442328ae9598ab7422127
# Thu, 25 Jun 2026 03:17:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 25 Jun 2026 03:17:22 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 25 Jun 2026 03:17:22 GMT
CMD ["python3"]
# Thu, 25 Jun 2026 04:19:46 GMT
ENV HY_VERSION=1.3.0
# Thu, 25 Jun 2026 04:19:46 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 25 Jun 2026 04:19:46 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 25 Jun 2026 04:19:46 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753a4e4f0c7745d7b5c870a411825dd3fb5c7b3df7bd9a8a4f3d13b93c5f8905`  
		Last Modified: Wed, 24 Jun 2026 05:21:15 GMT  
		Size: 1.3 MB (1321213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4ceadb78e053cbe43935dfd804d4f95e2d4400f85106c44451a85e2500fa053`  
		Last Modified: Thu, 25 Jun 2026 03:17:40 GMT  
		Size: 13.3 MB (13326304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c11b242d24fd2129c889289a22828beaf8bd57bc4a29acef87030b1ed70264c`  
		Last Modified: Thu, 25 Jun 2026 03:17:40 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af311806bfd4e706f28661e6c7e8fbdbee0389597da66b89030eec266c78e0e2`  
		Last Modified: Thu, 25 Jun 2026 04:20:06 GMT  
		Size: 5.8 MB (5845663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:3a1ef395e7e0493ff9a280467a8508aab5d9ca3dfb3ce7b80cde97d320687c95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2167328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e43d0c8b83c230e4913fa5681064044141a7bbfb7fc4c5873e89e2ea887510d`

```dockerfile
```

-	Layers:
	-	`sha256:89d0ecb6a333cc10b67014fce7aff5b7f956d9c348f30a408436e788bd3c6e6e`  
		Last Modified: Thu, 25 Jun 2026 04:20:06 GMT  
		Size: 2.2 MB (2157944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35b6372862897bf3bd387751e7dafec90651fafbb66c2e7346f32b1e670325c1`  
		Last Modified: Thu, 25 Jun 2026 04:20:06 GMT  
		Size: 9.4 KB (9384 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; riscv64

```console
$ docker pull hylang@sha256:bb84534c61fc3195ae2258243365bb682dc5f446a3fb6e5d20e4c101a96ea703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48298580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcdda18924d4e93f0d9edbdd13e3476de8674fffbbed5d4f4537203cb17373c7`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sun, 28 Jun 2026 15:46:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 28 Jun 2026 15:46:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Sun, 28 Jun 2026 15:46:45 GMT
ENV PYTHON_VERSION=3.15.0b3
# Sun, 28 Jun 2026 15:46:45 GMT
ENV PYTHON_SHA256=6a935ae234a67e6549894373b0cfeb8361182d03b21442328ae9598ab7422127
# Sun, 28 Jun 2026 17:26:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sun, 28 Jun 2026 17:26:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sun, 28 Jun 2026 17:26:18 GMT
CMD ["python3"]
# Mon, 29 Jun 2026 11:16:18 GMT
ENV HY_VERSION=1.3.0
# Mon, 29 Jun 2026 11:16:18 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 29 Jun 2026 11:16:18 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 29 Jun 2026 11:16:18 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1037ba7db6f690117c82e3915002f80e0130d96a622e005401dfd750b24abb75`  
		Last Modified: Sun, 28 Jun 2026 17:27:26 GMT  
		Size: 1.3 MB (1261166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3777acb0cad172702bfb29ac3023489edbf4421b909d0d3a73a2ee361d81fb20`  
		Last Modified: Sun, 28 Jun 2026 17:27:28 GMT  
		Size: 12.9 MB (12908789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f7b70ed1cd9e25646defc0382fcfca9c442666f7c93b066403b62219ddd965`  
		Last Modified: Sun, 28 Jun 2026 17:27:26 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52ac2e43cb2d3110f0fe375187eb68541e28b2531310e8652c5be48ab31d66c`  
		Last Modified: Mon, 29 Jun 2026 11:17:19 GMT  
		Size: 5.8 MB (5845997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:9bdf03090f3d087dfb1f33dc4d456e1befe4e196c80b79132983fadc7ebe77bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:441db8a4ea92a0d18ccb83f09502fe3af3f5b12e88d8b204389f44045409dcb4`

```dockerfile
```

-	Layers:
	-	`sha256:1aaa7998eb11d24dd22d4edb031b9a4b17e2bb9a1a7401df790349a3de75dc5c`  
		Last Modified: Mon, 29 Jun 2026 11:17:18 GMT  
		Size: 2.1 MB (2148315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47ffec0066920243e8c83706d1b03f178ec9d7825ff5be1ed5f827a1dcd7f701`  
		Last Modified: Mon, 29 Jun 2026 11:17:18 GMT  
		Size: 9.4 KB (9384 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; s390x

```console
$ docker pull hylang@sha256:f5f7426baa50b1c73e58affdc2d98bcfeed1829a88c096fb59809303b03c4ffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49978927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d83044f69eb9bec295564bb699362cfdb25ab1a6314b9744577a3dcc8e62efe5`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:39:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:39:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:39:17 GMT
ENV PYTHON_VERSION=3.15.0b3
# Tue, 14 Jul 2026 03:39:17 GMT
ENV PYTHON_SHA256=6a935ae234a67e6549894373b0cfeb8361182d03b21442328ae9598ab7422127
# Tue, 14 Jul 2026 03:48:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 03:48:47 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 03:48:47 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 05:21:47 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 05:21:47 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 05:21:47 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 05:21:47 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60fad593237e539d7adeb7e20d129d773a4bbf57aaa5b1f012ebfe0a2878012`  
		Last Modified: Tue, 14 Jul 2026 03:49:00 GMT  
		Size: 1.3 MB (1305803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2d7418febd6e8d9c100b9cafc1338dca4d7496e55d1bfd706ab28b931cd836`  
		Last Modified: Tue, 14 Jul 2026 03:49:00 GMT  
		Size: 13.0 MB (12980789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7b955c307d15f888f1549f89154a5447b89da9065df81f1b3f147d8d7f24db`  
		Last Modified: Tue, 14 Jul 2026 03:49:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542cf54f6d35401d52f09e7608fb4dd7911366dab058f735859ab484c11cc859`  
		Last Modified: Tue, 14 Jul 2026 05:21:59 GMT  
		Size: 5.8 MB (5845454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:3a1bee2a99eb99e885dcc778f8626e64f8e72940cd6218606c018b86f6afd605
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2165142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1981aea93d6017940ab41a9e7aac44fab11ea99114eb48302d9133675a6d65`

```dockerfile
```

-	Layers:
	-	`sha256:ceb04a1b99df4d57f5dbc2459ce1fcfe471d1259f29e28fee2bff0a13be8ef8d`  
		Last Modified: Tue, 14 Jul 2026 05:21:59 GMT  
		Size: 2.2 MB (2155828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93115fa83fbfe2cf157e4461a50ff9d5e0fca188166cd33c1532518d688d45da`  
		Last Modified: Tue, 14 Jul 2026 05:21:59 GMT  
		Size: 9.3 KB (9314 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - windows version 10.0.26100.32995; amd64

```console
$ docker pull hylang@sha256:6975f68a2ed393213508849ca0fd9d92c843847e2e24109242045821ad14dcaf
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2361954525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab980db59362b08208c22a7b520d1158e24b8ee42feef8413342a3740ad1740`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Thu, 25 Jun 2026 01:26:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 25 Jun 2026 01:26:33 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 25 Jun 2026 01:26:34 GMT
ENV PYTHON_VERSION=3.15.0b3
# Thu, 25 Jun 2026 01:26:35 GMT
ENV PYTHON_SHA256=8002dbdf7277964a3c50f5deef090dfcd0769647a35aec97999f63d5f2903d38
# Thu, 25 Jun 2026 01:28:59 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Thu, 25 Jun 2026 01:28:59 GMT
CMD ["python"]
# Thu, 25 Jun 2026 02:14:20 GMT
ENV HY_VERSION=1.3.0
# Thu, 25 Jun 2026 02:14:21 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 25 Jun 2026 02:15:27 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Thu, 25 Jun 2026 02:15:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee71d57b2226db82d002abc39a97b7dd144f007db435566364a0285bf115b83`  
		Last Modified: Tue, 09 Jun 2026 18:08:12 GMT  
		Size: 756.1 MB (756083682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a939a9213fc8b91b231fe71e29abe60e5b52af8f71daecb5fd4d745605c26309`  
		Last Modified: Thu, 25 Jun 2026 01:29:06 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a1f65d7ce8aa011c18411b203bc325ec42aeea18ea925f1a4bcc469ad15683`  
		Last Modified: Thu, 25 Jun 2026 01:29:04 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d01e19da9220897f1ab9603ff73f0ebcafa833d93e04c8fb044c1a22bc21be`  
		Last Modified: Thu, 25 Jun 2026 01:29:04 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6466b948123a7b43cfbbac534b530fd5e574ac09f6c9467bf2889dd51463602`  
		Last Modified: Thu, 25 Jun 2026 01:29:04 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342e20d02e16f07b12c7e47f1688c5e341955a2cfbba0a69a5bc755fcc38b433`  
		Last Modified: Thu, 25 Jun 2026 01:29:10 GMT  
		Size: 74.5 MB (74468842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1504ac4adb0a7f8a7a70b6723591294b4c9d4daa1cba739c82ad2043989dd8`  
		Last Modified: Thu, 25 Jun 2026 01:29:04 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41cbe8719a855221d555ebf038da27ed728bf871f92193807d6ae2edf99c4f5`  
		Last Modified: Thu, 25 Jun 2026 02:15:31 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e76f28036851278a6409a7948c857f073ad9b77cb0e72108c9ddebe498c9c7`  
		Last Modified: Thu, 25 Jun 2026 02:15:32 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2368702f0fe2a6fc21af648bea47c410a88acff5517c71c0bae282e90beadd`  
		Last Modified: Thu, 25 Jun 2026 02:15:33 GMT  
		Size: 8.3 MB (8332202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409d471fae2b3103982761c747d83c22d31b161402a5036e12496ecd0eab2067`  
		Last Modified: Thu, 25 Jun 2026 02:15:31 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.15-rc` - windows version 10.0.20348.5256; amd64

```console
$ docker pull hylang@sha256:a803e8ddac23b60230f38adb9cb960dad7d32f500f639d8df618ac31e02981e4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214789431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f71b279ca940f9ad25fa3a3bf6c2df8f332818cef3d56017aa6bc95190e4621`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 07 Jun 2026 06:43:23 GMT
RUN Install update 10.0.20348.5256
# Thu, 25 Jun 2026 01:20:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 25 Jun 2026 01:20:44 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 25 Jun 2026 01:20:46 GMT
ENV PYTHON_VERSION=3.15.0b3
# Thu, 25 Jun 2026 01:20:48 GMT
ENV PYTHON_SHA256=8002dbdf7277964a3c50f5deef090dfcd0769647a35aec97999f63d5f2903d38
# Thu, 25 Jun 2026 01:23:18 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Thu, 25 Jun 2026 01:23:19 GMT
CMD ["python"]
# Thu, 25 Jun 2026 02:43:54 GMT
ENV HY_VERSION=1.3.0
# Thu, 25 Jun 2026 02:43:56 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 25 Jun 2026 02:45:28 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Thu, 25 Jun 2026 02:45:28 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6897a04901ec162be0eabd7eb636b5ac50d6e37c880f1db618610f2d777b1ce6`  
		Last Modified: Tue, 09 Jun 2026 18:12:58 GMT  
		Size: 643.1 MB (643106423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d679cfdd053907154a7a14d14199d7e3b225231d251c8206906058a261d9e7f`  
		Last Modified: Thu, 25 Jun 2026 01:23:25 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a6c26d39019b811a494b2dc3e2cdce431d270bd3f8e6cd1981f441ee61b3c1`  
		Last Modified: Thu, 25 Jun 2026 01:23:23 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a15698356e0ada7f49f27fbfbd03de69a5d9a70aeb57fdaa1ac8c314f538cc`  
		Last Modified: Thu, 25 Jun 2026 01:23:23 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ca3e5bd4a5790a9fb7ed3fb1fa7ef5b768aaca69b9801007bf75df12a48fd2`  
		Last Modified: Thu, 25 Jun 2026 01:23:23 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efa50df7c64fe66a18b099757f2354352b668d5337e8f1b9de523515619826b`  
		Last Modified: Thu, 25 Jun 2026 01:23:29 GMT  
		Size: 74.5 MB (74464442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f92fa67e796eb5416e256c032ea547b903b15a2502ac429c624785cadf0ad5`  
		Last Modified: Thu, 25 Jun 2026 01:23:23 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48ffa9ac922d878003751bafe9ee4c9d4a4801dc4569cc6456ac54ec3bebc2c`  
		Last Modified: Thu, 25 Jun 2026 02:45:33 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6354d98b7f1b01c368044d6682c13dbe82f5eb9c47ff29b88669a8d2e26b1bf6`  
		Last Modified: Thu, 25 Jun 2026 02:45:33 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca337c46846712d35ce6ec1e669c9c051bdd075b663031541a6a3a9c514df98`  
		Last Modified: Thu, 25 Jun 2026 02:45:35 GMT  
		Size: 8.2 MB (8188814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d742f7f65c0817cdcf8b11f343951167469411ba3ae31ea8ff6b62f78100251`  
		Last Modified: Thu, 25 Jun 2026 02:45:34 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
