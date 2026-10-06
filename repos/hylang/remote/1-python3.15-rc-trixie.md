## `hylang:1-python3.15-rc-trixie`

```console
$ docker pull hylang@sha256:529c0ddde1a273db6a86310fd66f141f154600f32e520d29a22bcf7ccb275e6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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

### `hylang:1-python3.15-rc-trixie` - linux; amd64

```console
$ docker pull hylang@sha256:8b198574aa715f91394b28745b16f456a42c3a006f57a8880569bb5aa4e92df9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52806493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eca3f094008cd4808862a53337c6a2980eb113190b938b31e2d836df8986716`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Mon, 05 Oct 2026 21:24:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:24:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 05 Oct 2026 21:24:04 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Mon, 05 Oct 2026 21:24:04 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Mon, 05 Oct 2026 21:30:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 21:30:54 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 21:30:54 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 21:56:50 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 21:56:50 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 21:56:50 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 21:56:50 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a6382b06d3cc81aabf1415ea2033122b4a760c2255e6c15f4246c9c7c06935`  
		Last Modified: Mon, 05 Oct 2026 21:31:02 GMT  
		Size: 4.3 MB (4268651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d6b718c4a4a658a61857c4099cbe031f06e00db861b0aaf2fdc1d686c8d6ff`  
		Last Modified: Mon, 05 Oct 2026 21:31:02 GMT  
		Size: 12.9 MB (12943212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051318a5000be91c5e0ec8427c72fbd362b60cdc81c4ebe2c4d3cff35619d23d`  
		Last Modified: Mon, 05 Oct 2026 21:31:01 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19462bf8770cf2b8ec4a2985f86e002734214f9859563d36b917f9df904930c`  
		Last Modified: Mon, 05 Oct 2026 21:56:57 GMT  
		Size: 5.8 MB (5763961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:06e9670a20f840338dcc4b857a110d840d74cfc34c0da68407be396299940822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2183820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9acc1bf233a73d7a80ecda2c9f769b457580742c78878897dffb403e6439de51`

```dockerfile
```

-	Layers:
	-	`sha256:fe54017d06a78fd8d6745c825aada39a8ae0cd8214bc3c73a7d73b14be0c42a6`  
		Last Modified: Mon, 05 Oct 2026 21:56:57 GMT  
		Size: 2.2 MB (2174504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b4d6f9a1824c5a3ad84570266f44c7e9f319f060685de55c69b1742ffd4e8f8`  
		Last Modified: Mon, 05 Oct 2026 21:56:57 GMT  
		Size: 9.3 KB (9316 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-trixie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:ae4635f207d22395967c128b7895a11bfd7722e1e0560ba27258584aa49f7d46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50068959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40ea93904937536cf17b0e1ab0e78937cdfde424322e1cb0a7e5f490fb0ea8f`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Mon, 05 Oct 2026 21:24:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:24:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 05 Oct 2026 21:24:23 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Mon, 05 Oct 2026 21:24:23 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Mon, 05 Oct 2026 21:34:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 21:34:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 21:34:35 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 21:51:41 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 21:51:41 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 21:51:41 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 21:51:41 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94599635817ad85bc6ef46df73f49a91e3e7b78ae37544a4efe5923f913b32eb`  
		Last Modified: Mon, 05 Oct 2026 21:34:43 GMT  
		Size: 3.7 MB (3663597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ae4f68943377de37efb4ed48b0f5bcd605a9a2f24428d470c6ac23f2083951`  
		Last Modified: Mon, 05 Oct 2026 21:34:43 GMT  
		Size: 12.6 MB (12642954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9762829a323a382b1ef8a170797eed9f761f8c1f22275201c72256021e6bd965`  
		Last Modified: Mon, 05 Oct 2026 21:34:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae71fcb6848b908af2a96388b6d0cb70217f16b93a46f9cdf679169c7f076946`  
		Last Modified: Mon, 05 Oct 2026 21:51:48 GMT  
		Size: 5.8 MB (5764127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:5c0a8fccb8901bcdddca6e824de3629866c5af24fffb762656a69e31b72e0f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2186934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a8a788f4e41c02e405a65e9373664c3ac8645b6abbb8e6c012481fd35f8beb`

```dockerfile
```

-	Layers:
	-	`sha256:1a8c0520bce2c7db723612fcbb2b7a0fea8aff50ba4e67d8d96cff5c515f3bc2`  
		Last Modified: Mon, 05 Oct 2026 21:51:48 GMT  
		Size: 2.2 MB (2177505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccb7743108ce432b9593b297232ffb03c66340ef45390d09c00bd6fb15f8194b`  
		Last Modified: Mon, 05 Oct 2026 21:51:48 GMT  
		Size: 9.4 KB (9429 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-trixie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:166099cad499187e00c1b7008599f4246cefcc30b038566fdb92800ca228108e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48028631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23718f6b80edfd89ed069c23882e33df27f680efdd0808818bff4e3c91a84f09`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Mon, 05 Oct 2026 21:29:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:29:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 05 Oct 2026 21:29:56 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Mon, 05 Oct 2026 21:29:56 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Mon, 05 Oct 2026 21:41:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 21:41:37 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 21:41:37 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 21:59:57 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 21:59:57 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 21:59:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 21:59:57 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d3696d4139d25a3cc0e9196d6e4084f9cd4d4e8e4bf8820e1da87937603786`  
		Last Modified: Mon, 05 Oct 2026 21:41:45 GMT  
		Size: 3.5 MB (3464693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7acecdfbf6d8b0d94fc231c0e77ed4f0be5871d4240476b4317eb7435fb0d646`  
		Last Modified: Mon, 05 Oct 2026 21:41:45 GMT  
		Size: 12.6 MB (12550693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2faedbeaab34f8aa7e8d0bf6a0acafc7f654903e4066013533d7a15f464b189`  
		Last Modified: Mon, 05 Oct 2026 21:41:45 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34097830e7bf3b7d7c358589b76ce268b568a26c75bfa1a2d744fe321748a3ff`  
		Last Modified: Mon, 05 Oct 2026 22:00:09 GMT  
		Size: 5.8 MB (5764066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:10a893c06142f5d5356ac882b9adb2de3ec8ff4a7537624b22166bee9fde64eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2185387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51369e46c88c1b7caff440f7b1ec632555623fe1a47e2cd49ee5b141c25d32ef`

```dockerfile
```

-	Layers:
	-	`sha256:7ef6a74a4541ed877233540d7707678c3a2b28f783104279e8be17e7a7694ce7`  
		Last Modified: Mon, 05 Oct 2026 22:00:09 GMT  
		Size: 2.2 MB (2175958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:218d64a5cf0bf509a91d5355750805d81a8e0be555c3ee2ac5a3cfa9d6b1c6c4`  
		Last Modified: Mon, 05 Oct 2026 22:00:09 GMT  
		Size: 9.4 KB (9429 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:b3fa9bf056b7db9fd6092378354683c5f1c36c88b604f7d921234585190d218f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50089561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394a148d1e2934bb3adbef65895b02fc1bd89162e51ae3d44bacdf8339710a9c`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:56:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:56:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:56:01 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Tue, 06 Oct 2026 01:56:01 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Tue, 06 Oct 2026 02:03:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:03:47 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:03:47 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:44:16 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:44:16 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:44:16 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:44:16 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21ac1805b72e0886c8402b4e35c22e4ece099832dff2c87b48e8548d2708a5d`  
		Last Modified: Tue, 06 Oct 2026 02:03:56 GMT  
		Size: 1.3 MB (1275232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd249a779d574e5788d84c2f21416567a0a530914414f04a866fdef79df1796`  
		Last Modified: Tue, 06 Oct 2026 02:03:56 GMT  
		Size: 12.8 MB (12849701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:204fc8eb7f42467a9b50853d6fff41144dcad756675b744759ccc99f2673d439`  
		Last Modified: Tue, 06 Oct 2026 02:03:56 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2a2e80da7cc6e488e0a50dadb492de7ee931b9d2dbcd1eabc7745ddaef0433`  
		Last Modified: Tue, 06 Oct 2026 02:44:23 GMT  
		Size: 5.8 MB (5764096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:bd397d90f4e7946beabbc26ad625ff6333095e7e9a5412958843d601e4cf9512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2184279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f78dc8f34d04b7520f6a61077ef6d6712524d82b818f7afaf5c6f857eda4378b`

```dockerfile
```

-	Layers:
	-	`sha256:b5d257fca8c0f22f975b57999827d61d116987ee09c68edc1cb42f45e7b9e45a`  
		Last Modified: Tue, 06 Oct 2026 02:44:23 GMT  
		Size: 2.2 MB (2174810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:166bcbb4c9f81e8a0a4b4d395afc52588db5b42f69e7888bcb6d56646563bab6`  
		Last Modified: Tue, 06 Oct 2026 02:44:23 GMT  
		Size: 9.5 KB (9469 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-trixie` - linux; 386

```console
$ docker pull hylang@sha256:0f74c58ad257206414fd1bbd0fd1964cd5f9de1dbf9e977e47bb97fcd1aac67b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51269663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a719752722375b1ad961e04cb3e9159e96ccc2adeb4d578e5bdc9a7db926758`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:53:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:53:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:53:20 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Tue, 06 Oct 2026 01:53:20 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Tue, 06 Oct 2026 02:11:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:11:37 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:11:37 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:48:54 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:48:54 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:48:54 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:48:54 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32bf5f4071359bb30cea4106a9435496d6b8d7ea2b6cda46fa82670d30defbc0`  
		Last Modified: Tue, 06 Oct 2026 02:11:44 GMT  
		Size: 1.3 MB (1299079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518f777cef77da52aeccc0005b6ecdd4c287ae61d580f467adef5289f300f861`  
		Last Modified: Tue, 06 Oct 2026 02:11:44 GMT  
		Size: 12.9 MB (12852563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3ab817cf93b7c6b1fc02c5726962f6c782c3a635bbb28f0d59dcbb6970bb48`  
		Last Modified: Tue, 06 Oct 2026 02:11:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2649bfe427badddbfce932452f1ac07f425638868499407e6562c3234ac7586`  
		Last Modified: Tue, 06 Oct 2026 02:49:01 GMT  
		Size: 5.8 MB (5764475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:c3cd19e23359a6a07a2429f423111d5f226dc44bde1af468a44e52f6de845628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2180930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef8c2bb7f57a7bfa2000fde3be731aec535c986d1013e26e4a90f2af2964c029`

```dockerfile
```

-	Layers:
	-	`sha256:995186b3272fb6c2ec8dbabee724c9f3e3925f7e42d37a22d297127488851d73`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 2.2 MB (2171665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e4f2d0c9624326d28cb5d60ae588d7debc7fd328f4741e52ebce402f1f4e68a`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-trixie` - linux; ppc64le

```console
$ docker pull hylang@sha256:d4d09ea42bd791b2a9e1dd65abe6f90bfc00d9c3599d77b96132dc43fcd08129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57307589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fd3d514f4c54bbbd2a8e5156587aca263d657615a5708d1ae326e73241113f`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 21:36:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 01 Oct 2026 21:36:00 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Thu, 01 Oct 2026 21:36:00 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Mon, 05 Oct 2026 21:52:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 21:52:32 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 21:52:32 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 23:17:35 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 23:17:35 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 23:17:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 23:17:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe3bb8998496bc22bd8ec1d047f98e180282aa34da095d6c7d32838f29c11f47`  
		Last Modified: Thu, 01 Oct 2026 22:03:51 GMT  
		Size: 4.5 MB (4535213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b8580ad8a9f6e3023471d0103e866e6e04d2d6eaddb4bce46769616e2d8c1b7`  
		Last Modified: Mon, 05 Oct 2026 21:52:49 GMT  
		Size: 13.4 MB (13366494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8136da1fc15faf07aa300ab4c0195d4fa7ab55a400fcae0d644756d5fe0869`  
		Last Modified: Mon, 05 Oct 2026 21:52:48 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ee0dac0d2d1cc0b3a2eb8051490ff623a0602bae8ae400d1a72fe72b115371`  
		Last Modified: Mon, 05 Oct 2026 23:17:51 GMT  
		Size: 5.8 MB (5764397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:d22e41327e0587a091ba587ea33241847a6cb749a1b27808f56da761003e4e74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2187480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c07b5d8f516723ca400a44949b7f6b62f6fbb6cb8f41cbd704f58af7455ec96`

```dockerfile
```

-	Layers:
	-	`sha256:102e5ce3f48732dc8ab9faa7dcd74a02f37a97e537f30de9babff84f0116bd73`  
		Last Modified: Mon, 05 Oct 2026 23:17:51 GMT  
		Size: 2.2 MB (2178095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8639d67f3563854a7a23dc8ff168348e61b671e0eca664baa3afcc257331da97`  
		Last Modified: Mon, 05 Oct 2026 23:17:51 GMT  
		Size: 9.4 KB (9385 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-trixie` - linux; riscv64

```console
$ docker pull hylang@sha256:03e1dc47511e9de91a2f2bb98b84f2bf8749cb56daddd09248b0e391a9cd449b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48284478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed7491889828925b0f86bca064a6b81e222ed91970f35724cae789872707530`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 13:18:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 13:18:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 25 Sep 2026 13:18:41 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Fri, 25 Sep 2026 13:18:41 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Fri, 25 Sep 2026 15:06:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 25 Sep 2026 15:06:40 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 25 Sep 2026 15:06:40 GMT
CMD ["python3"]
# Tue, 29 Sep 2026 08:39:43 GMT
ENV HY_VERSION=1.3.1
# Tue, 29 Sep 2026 08:39:43 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 29 Sep 2026 08:39:43 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 29 Sep 2026 08:39:43 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88e53254af881b931a0b04fc7b52de250cbfedfbb985b7e8817410184a85134`  
		Last Modified: Fri, 25 Sep 2026 15:07:50 GMT  
		Size: 1.3 MB (1262286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32565e4af4ec42032c1c999ca0c927fd56fd546c7124ec2c66954749b94d04d0`  
		Last Modified: Fri, 25 Sep 2026 15:07:52 GMT  
		Size: 12.9 MB (12933705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2633a7b748860f62258d8dfa2dbb09c3110a0e507bed45d8b5e76660b5a87ba1`  
		Last Modified: Fri, 25 Sep 2026 15:07:50 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747bad3b9ec4ecf822f4de9f61c4e2daf39485f68bada68625ff73b6fadcfc1`  
		Last Modified: Tue, 29 Sep 2026 08:40:45 GMT  
		Size: 5.8 MB (5763854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:4ca41ffb43bb57c97620e41cf2976e5a9ba0fd14f17be8dcb29e15b6afb39814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2177851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39dae6fdb84d670a8b7ad9924abfa20f0122de202316ce5cc67deacde39e97fb`

```dockerfile
```

-	Layers:
	-	`sha256:65b1f1520355dbf13c45958ec0437dde8c0cf10c5e70419d98c528ad6ce6aa65`  
		Last Modified: Tue, 29 Sep 2026 08:40:44 GMT  
		Size: 2.2 MB (2168466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8c16906a71b9894126ec74a276d8bb3d07ba13ca4f838c12810b16403e8fdab`  
		Last Modified: Tue, 29 Sep 2026 08:40:44 GMT  
		Size: 9.4 KB (9385 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-trixie` - linux; s390x

```console
$ docker pull hylang@sha256:c462500639199abad3cf6a376803e952806baea05a69f341424f491767ab767a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50001640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fc4551a6730a6fb57ef373fae3ad25469d71b87d0e64fc8b5d0108b860f266`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:13:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:13:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:13:20 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Tue, 06 Oct 2026 02:13:20 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Tue, 06 Oct 2026 02:19:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:19:27 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:19:27 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 03:15:48 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 03:15:48 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 03:15:48 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 03:15:48 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a612e2df4096a04985000ea7e31ca06a94d123de62fcd22ac8ceec423ce7e84`  
		Last Modified: Tue, 06 Oct 2026 02:19:38 GMT  
		Size: 1.3 MB (1306328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1beec8cdb4de0e10a8f3ecec8d998e93b25461df6793c2f9ff8222b6bc8c6cb`  
		Last Modified: Tue, 06 Oct 2026 02:19:38 GMT  
		Size: 13.0 MB (13021690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c896627c3e639ca1a911f9a1e90106371015538b8e808cdcc984b8c27161dc2`  
		Last Modified: Tue, 06 Oct 2026 02:19:38 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e064fdd5884a4e12c4e7722b66b75e7141c3a329edef7ee3dac0f2c41fee22`  
		Last Modified: Tue, 06 Oct 2026 03:15:59 GMT  
		Size: 5.8 MB (5764126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:7ac0928a3b548a1ea7fc04235909658d73306117f013cafca63210de8f46424b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2185260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31ead4a104db8fe2a70087332f693c0ffbd23377063ae18a4556cc62b686fb2`

```dockerfile
```

-	Layers:
	-	`sha256:93bd21dd10b7c207ecd9c250229df69b8458a521a1406e1ca8d90933fd8e4de6`  
		Last Modified: Tue, 06 Oct 2026 03:15:59 GMT  
		Size: 2.2 MB (2175943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:025c52a85d9129207ca3819e38452964a93c4e72394c707c5a1731de5364883a`  
		Last Modified: Tue, 06 Oct 2026 03:15:59 GMT  
		Size: 9.3 KB (9317 bytes)  
		MIME: application/vnd.in-toto+json
