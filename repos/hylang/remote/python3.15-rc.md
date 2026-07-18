## `hylang:python3.15-rc`

```console
$ docker pull hylang@sha256:8c59f009de16808b6d317fe6319f07d88df8631296322817b96c7c385120de48
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
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

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
$ docker pull hylang@sha256:10a3885e60faf29e9a27ccab5505e409924a28f7b7a81c4bce467b28fefea4fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54078725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17757ba051ca7ac33fb08b025cff7977c024a8bcb42186767f74b4b003cc83e`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 05:16:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 05:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:16:18 GMT
ENV PYTHON_VERSION=3.15.0b3
# Tue, 14 Jul 2026 05:16:18 GMT
ENV PYTHON_SHA256=6a935ae234a67e6549894373b0cfeb8361182d03b21442328ae9598ab7422127
# Tue, 14 Jul 2026 05:39:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 05:39:57 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 05:39:57 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 14:25:03 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 14:25:03 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 14:25:03 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 14:25:03 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab9b965cff9151135c00ea74516cd640b3c0220c80b703fbb752b2df4bf7fa51`  
		Last Modified: Tue, 14 Jul 2026 05:40:10 GMT  
		Size: 1.3 MB (1321298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b4635e2c69d07e3ec15f61ac2c58723dd798244ef4b5b7da675c66ab5582c8`  
		Last Modified: Tue, 14 Jul 2026 05:40:10 GMT  
		Size: 13.3 MB (13310073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:382f6e6390131fc757042f82cd6fdc6d2bbf3bbf9ea6879e5be0d3c0031ef98f`  
		Last Modified: Tue, 14 Jul 2026 05:40:10 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b53ba2c87d473164b8fa7f1e41f84c3e02d528b4d7a1af61d8b39c61f48c5e`  
		Last Modified: Tue, 14 Jul 2026 14:25:16 GMT  
		Size: 5.8 MB (5845626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:8b06b08fd751bcdaf82e7376c5e2636855d061f78fad81040e4541cf02c66177
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2167364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3317dec96c77fd994b4e106fab00c1582e0c2eb9bcf28134d0dc9c7e788034`

```dockerfile
```

-	Layers:
	-	`sha256:4accce3a681a246f5b5bf5ec366df7679ae041043a1839d5c8316ef396776739`  
		Last Modified: Tue, 14 Jul 2026 14:25:16 GMT  
		Size: 2.2 MB (2157980 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b869e09701e46122e4adaeaf82d0d0edbec99a7f5326d91ca87a347206697d61`  
		Last Modified: Tue, 14 Jul 2026 14:25:16 GMT  
		Size: 9.4 KB (9384 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; riscv64

```console
$ docker pull hylang@sha256:42ca2f95222073a50846f2718659fb5a9855b3ccfa884928f9108be45d765b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48292644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654264768e2c039aee33853d7be7f4d7105e0ed9f54e7d5942931d0c7cc22a17`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 03:30:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 03:30:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 16 Jul 2026 03:30:46 GMT
ENV PYTHON_VERSION=3.15.0b3
# Thu, 16 Jul 2026 03:30:46 GMT
ENV PYTHON_SHA256=6a935ae234a67e6549894373b0cfeb8361182d03b21442328ae9598ab7422127
# Thu, 16 Jul 2026 05:11:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 16 Jul 2026 05:11:08 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 16 Jul 2026 05:11:08 GMT
CMD ["python3"]
# Fri, 17 Jul 2026 20:34:46 GMT
ENV HY_VERSION=1.3.0
# Fri, 17 Jul 2026 20:34:46 GMT
ENV HYRULE_VERSION=1.1.0
# Fri, 17 Jul 2026 20:34:46 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Fri, 17 Jul 2026 20:34:46 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e6437f4b58b44c9c73a65b65b6274707a0fff7871607d48eb919a356e0e74cf`  
		Last Modified: Thu, 16 Jul 2026 05:12:16 GMT  
		Size: 1.3 MB (1260036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba650075ae799690f6a8f78c1737470e7ce452f6f6f88729d0166975cd66af0`  
		Last Modified: Thu, 16 Jul 2026 05:12:18 GMT  
		Size: 12.9 MB (12908204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecdfcf4cce8840e523de059239b5562cdcd8f3a2725d0d501b58ee5829051765`  
		Last Modified: Thu, 16 Jul 2026 05:12:16 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcce57f77dea364cad4a1d0961998e7acc1d43e960d4fd598349411159ec1db`  
		Last Modified: Fri, 17 Jul 2026 20:35:48 GMT  
		Size: 5.8 MB (5845945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:d7f40b36347d6e8fe96bd37f7a2b552b3528128bcd28123e3a5921a1cd38d49c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ea7ccf8e7175b4dc7e023b3be48ef9b7f62529bc4811a4946a252452dcc392`

```dockerfile
```

-	Layers:
	-	`sha256:2da4ce108961ce13f69a6482cba6ab2eded1c3643589bc246d5cbebf96c9e460`  
		Last Modified: Fri, 17 Jul 2026 20:35:47 GMT  
		Size: 2.1 MB (2148351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43b71dd5ac7e828c3cf4d1c2eb633c9e46c69c8662321304c8446b674fec2d64`  
		Last Modified: Fri, 17 Jul 2026 20:35:47 GMT  
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

### `hylang:python3.15-rc` - windows version 10.0.26100.33158; amd64

```console
$ docker pull hylang@sha256:a9f621694bf931d5d1bb3c3b8651da346af92708b66eccf48b4e08d86b7ff6b8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2437962451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d16f87f63584639f3d597b28f5c631f89dcb11f6ec5c243aa7445babbdd45c9`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:57:20 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 16 Jul 2026 00:02:23 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 16 Jul 2026 00:02:24 GMT
ENV PYTHON_VERSION=3.15.0b3
# Thu, 16 Jul 2026 00:02:25 GMT
ENV PYTHON_SHA256=8002dbdf7277964a3c50f5deef090dfcd0769647a35aec97999f63d5f2903d38
# Thu, 16 Jul 2026 00:03:03 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Thu, 16 Jul 2026 00:03:04 GMT
CMD ["python"]
# Thu, 16 Jul 2026 00:19:01 GMT
ENV HY_VERSION=1.3.0
# Thu, 16 Jul 2026 00:19:01 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 16 Jul 2026 00:19:33 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Thu, 16 Jul 2026 00:19:33 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ac4ee773ecceeadd169f6bb0593cd609a4e3a08b152c59568702f23d517bd7`  
		Last Modified: Wed, 15 Jul 2026 23:58:12 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07a4e3e0184a2b1ab8ef603c358886be6c17090a4588b2b063542223156890f`  
		Last Modified: Thu, 16 Jul 2026 00:03:08 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c64600244d73dc0aa98c2f3859d96cf241f3a527210a7811d0ea3f0b9dcae2b`  
		Last Modified: Thu, 16 Jul 2026 00:03:08 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158df0e78b63e11ec1da2d4ea7c63437a161b06baeb89a5e72faae7c97521e6c`  
		Last Modified: Thu, 16 Jul 2026 00:03:08 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfe8f7121653e5dd3b44bcc364d29ccd92d8758fd38a6767b593a6829e26d40`  
		Last Modified: Thu, 16 Jul 2026 00:03:13 GMT  
		Size: 74.5 MB (74517867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b25b9ff166c0fdddecfbcfbafa775313ced86ea92e6059ecd0d07adbe3636f`  
		Last Modified: Thu, 16 Jul 2026 00:03:08 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a41c332b4d4613c2090e0784bf2623b82bbb01f40436aac27fb527e309cdd0d`  
		Last Modified: Thu, 16 Jul 2026 00:19:38 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0add99bca62f0ec0a464fcfd7ffcfdddd7adb1a3e51ce74ccf867cb65495947`  
		Last Modified: Thu, 16 Jul 2026 00:19:37 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd489b2cbc41adeab684ad9d54198f2eb314abd786ebc23f322bc983c7e10e2`  
		Last Modified: Thu, 16 Jul 2026 00:19:39 GMT  
		Size: 8.4 MB (8426175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50df8e6dfe2edb69e67677d187907ee8ba312f71df96f60abd9cefc5e708f1fd`  
		Last Modified: Thu, 16 Jul 2026 00:19:37 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.15-rc` - windows version 10.0.20348.5386; amd64

```console
$ docker pull hylang@sha256:aa13f0ee570f39c18464c46b409a604ccc2087513bbe6cfcfe947287af078bc5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2240229609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:880991dbdcd3037b0c74a49330d33e0d04df0ff536bbee960700a2eb233a88b5`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:29:19 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 15 Jul 2026 23:30:25 GMT
ENV PYTHON_VERSION=3.15.0b3
# Wed, 15 Jul 2026 23:30:25 GMT
ENV PYTHON_SHA256=8002dbdf7277964a3c50f5deef090dfcd0769647a35aec97999f63d5f2903d38
# Wed, 15 Jul 2026 23:30:58 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:30:59 GMT
CMD ["python"]
# Thu, 16 Jul 2026 00:09:46 GMT
ENV HY_VERSION=1.3.0
# Thu, 16 Jul 2026 00:09:46 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 16 Jul 2026 00:10:16 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Thu, 16 Jul 2026 00:10:16 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552627ff15545aa9fdec68ddce1b24a3653c79d40f00b6e24d9e684d2d01c6b`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0ca70be573a550d161f919b6d2f0753ef2c65a6e3e4773462f48ba783f9d4d`  
		Last Modified: Wed, 15 Jul 2026 23:30:08 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2a79f0773a32c34c5c37574b01ede31a5dbfbc59f7f8beaa06d3a8e2ed84f6`  
		Last Modified: Wed, 15 Jul 2026 23:31:03 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bfd158ef723721665979f2a22bdcd00962134bbf592de9ee3cf7666ac7a462`  
		Last Modified: Wed, 15 Jul 2026 23:31:03 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ede0351728cdd44c5251262dbca0a8f4e5538506ae5afed3a782d2361436515`  
		Last Modified: Wed, 15 Jul 2026 23:31:08 GMT  
		Size: 74.5 MB (74479732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4dc2fb627a453b08f441dc4a63f35780e66fe5919d5c79882042337e40d0f5`  
		Last Modified: Wed, 15 Jul 2026 23:31:03 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1983073e019d560aa1f31d73bf2629e941660442da25c9a48ef00950a7a2c8c`  
		Last Modified: Thu, 16 Jul 2026 00:10:20 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3bfe59625338f28527c9930c72d8f0b313914a900f3fe9517e282fa66fed868`  
		Last Modified: Thu, 16 Jul 2026 00:10:20 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba45f2c628b22af00ae55ec2e4eea203b75eeeefb7b4401abbdbea03723f264`  
		Last Modified: Thu, 16 Jul 2026 00:10:22 GMT  
		Size: 8.2 MB (8186247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b5fd0bd943c27ad71d3a0da9be33e84d5e07e52a3cd20d7eac3396d4de9bca`  
		Last Modified: Thu, 16 Jul 2026 00:10:20 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
