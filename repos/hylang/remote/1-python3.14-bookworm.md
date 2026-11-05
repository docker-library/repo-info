## `hylang:1-python3.14-bookworm`

```console
$ docker pull hylang@sha256:de2a04e8879860c835bb5478f074dde26d6b26f39aaaca949ffa9889e415f554
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `hylang:1-python3.14-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:20d0371cceb3982d1cdeb06fa108b25b0f6aa9d184a8d52048dbff071455b30c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50365075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45ce597add09318e1a3e8ea1554769627c98786d12a3cd49f509aec1fe51f469`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:51:49 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:51:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 08:02:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:02:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:02:15 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:50:00 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:50:00 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:50:00 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:50:00 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dafbb7c7e67755f2c23dbcaff495bda6f6547c52cafc055e38b4a3f579236ed0`  
		Last Modified: Thu, 05 Nov 2026 08:02:23 GMT  
		Size: 3.3 MB (3341533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d3ec61710abd366b8e7645686b9c82187905a3955f07b0bcefbaa0cf9a6257b`  
		Last Modified: Thu, 05 Nov 2026 08:02:23 GMT  
		Size: 13.1 MB (13094470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b26c2dd3ba317984bc361f7307cc4169e54ab7fd4d89f45fce27526c474034`  
		Last Modified: Thu, 05 Nov 2026 08:02:22 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d9148992a0fe2901b65930cbebc1ba66b7703f07af430096dcbd3d19b6ebd37`  
		Last Modified: Thu, 05 Nov 2026 08:50:06 GMT  
		Size: 5.7 MB (5680841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:d06d7f6b27a3e131de220442d7c26897239967f8f7b00693e4e513946932727f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88d2f63ac67ad96b331d7a61946136723a5b3983a964e0981654037bb8a199f`

```dockerfile
```

-	Layers:
	-	`sha256:9f3b0505985dd8430ff1c141df1120874d776d4e061a4c48339937d0bc3818df`  
		Last Modified: Thu, 05 Nov 2026 08:50:06 GMT  
		Size: 2.5 MB (2549001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37236ce089bc45abf3a730283297d2f796886ed739721e2a9b34971c8b6cc438`  
		Last Modified: Thu, 05 Nov 2026 08:50:06 GMT  
		Size: 8.0 KB (8043 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:5844d55f627fb62e99bb19a53df4138561dc9d96d6df281829ad4590fb2bb080
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44608619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4811130beb49114a7cafc2dc365b50349220e5474c236017a272b774fd3b16`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:36:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:36:53 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:36:53 GMT
ENV PYTHON_VERSION=3.14.10
# Wed, 28 Oct 2026 02:36:53 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Wed, 28 Oct 2026 03:00:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 03:00:24 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 03:00:24 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 03:50:54 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 03:50:54 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 03:50:54 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 03:50:54 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97eb79d33d338f7401b3dcc8ff02efdd826700a2c3eb239e1223b880185da3e3`  
		Last Modified: Wed, 28 Oct 2026 03:00:32 GMT  
		Size: 2.7 MB (2746660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026bff3aa9f54fb5a0853f762f0b203be0eb7fd215ccfc7d1995bda2e0c6482b`  
		Last Modified: Wed, 28 Oct 2026 03:00:32 GMT  
		Size: 12.2 MB (12219948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd00a808b0191713a75639ce66bdb12cc780a53db2a62125d90ef2d3bcfcb3b`  
		Last Modified: Wed, 28 Oct 2026 03:00:32 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b85c6d4fe7bed84e82da262a464aeec82c69ea85588f2f45dc088becfc1c3f`  
		Last Modified: Wed, 28 Oct 2026 03:51:01 GMT  
		Size: 5.7 MB (5680795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:95a5abc517bc320bbb6972f1ceb2f34a70b5abaf43af1f4c76e8f7e27856b7cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2559369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42542e252e4fd32f0e0b0693cbb264b96869d5c238f5ca577368a9d7640d763e`

```dockerfile
```

-	Layers:
	-	`sha256:822a7694004394c4070b1b55e12ca662182cb30f1aeebbd5ad09c74c851fd036`  
		Last Modified: Wed, 28 Oct 2026 03:51:01 GMT  
		Size: 2.6 MB (2551246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da525ce4858e0d23901054b155f5c32999c21577bba047735a1e98a779078178`  
		Last Modified: Wed, 28 Oct 2026 03:51:01 GMT  
		Size: 8.1 KB (8123 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:c5ae6a8300b3a2b0278eaf1d9b5051e398c1eda6bb6cbefa90144543240d4e69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49980200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964fa8a427f3b58157b0752d3c72639b6a2d7c56a2cbb7c0bfac04691b491cd9`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:57:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:57:00 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:57:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:57:00 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:57:00 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 08:11:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:11:17 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:11:17 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:50:03 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:50:03 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:50:03 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:50:03 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037c4c4b7ecaf201bf3a8bdda19cde58cccf26c1ad8e7428cce4f75a542e64b8`  
		Last Modified: Thu, 05 Nov 2026 08:11:25 GMT  
		Size: 3.2 MB (3174176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6fc4d62a37a60e87d4fc4daf8893df1f2027270c34fbf86ccf3dd3132015f4f`  
		Last Modified: Thu, 05 Nov 2026 08:11:26 GMT  
		Size: 13.0 MB (12980632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63913dd855dc8cc007976191daa7ba9790b09dce1a765831accb0867f94ead07`  
		Last Modified: Thu, 05 Nov 2026 08:11:25 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386624d0f7676161c29612b4d2d44b2926ccc8d5510e2fbd723499850a3a9567`  
		Last Modified: Thu, 05 Nov 2026 08:50:11 GMT  
		Size: 5.7 MB (5680785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:f71fc857ea22d29c5c693640f3f328218752e5aec2f34b3152cd762c40bcba70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd04bbf1406451872ad19969f1ac19ef8f9300c11a7a6a06e15bbe03746c003f`

```dockerfile
```

-	Layers:
	-	`sha256:a3bb1b9c5791e35fc9483ded843f7f2436112f36d9ed0b4f867fa01df782a08b`  
		Last Modified: Thu, 05 Nov 2026 08:50:10 GMT  
		Size: 2.5 MB (2549266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c05a7121775e98d8e15ba5c48b8b2fd72eaf459ae19a5e27fd277580a2f92d8a`  
		Last Modified: Thu, 05 Nov 2026 08:50:10 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:3e8bdd12de98d4aa2840772cf3ba7de4af2889a0e343946139788a4f105d3271
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51640322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51e20bf068c4955290f5870ae3c72d3b9e3cd117131b87c2c6af800bc4dc5728`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:49:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:49:39 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:49:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:49:39 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:49:39 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 08:03:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:03:17 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:03:17 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:42:50 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:42:50 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:42:50 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:42:50 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eddd90112d0dc7e66057407e05d1a018032edace31b7cd35b29b40def241ed4`  
		Last Modified: Thu, 05 Nov 2026 08:03:24 GMT  
		Size: 3.3 MB (3345729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8652ed9fe6926a5e1c8f8c6ef2f07c9b39ed807335b006069fe84963275e21e7`  
		Last Modified: Thu, 05 Nov 2026 08:03:25 GMT  
		Size: 13.4 MB (13374331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8500c4d8bb70487d8be8a2f31a5edd947abf830ed7847362eba2bc8951e26d`  
		Last Modified: Thu, 05 Nov 2026 08:03:24 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94a14001043d28422a4828740f7452570743ad47522e0ed58d81925f4812ddc3`  
		Last Modified: Thu, 05 Nov 2026 08:42:57 GMT  
		Size: 5.7 MB (5680801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:ba9b0d7786be10f3d2cc8ab308284a5a7d5a72d02d2540f3ecfd9af4e98d2d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2554179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a7997349b19d4337dd8345098d6adae8ff26b24b3ad2a476d1186d2ee96906`

```dockerfile
```

-	Layers:
	-	`sha256:4d92569c2af93055177925cc2597b78f8e918fd1a2441f3471f55c1fdde4fb42`  
		Last Modified: Thu, 05 Nov 2026 08:42:57 GMT  
		Size: 2.5 MB (2546168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53d76deefb477562c616fd5471dd4941272a440a059b44ee3b1607a81b4df572`  
		Last Modified: Thu, 05 Nov 2026 08:42:57 GMT  
		Size: 8.0 KB (8011 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:eea20c7b55008f5595f820f374f3254835469338ce9621b2f84a443dd1b6b539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54977392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b856b1ab041567875908a900a7d99e3b2d4579bc0245ef0388c14c0b0ee1519`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 06:27:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 06:27:49 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 06:27:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 06:27:49 GMT
ENV PYTHON_VERSION=3.14.10
# Wed, 28 Oct 2026 06:27:49 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Wed, 28 Oct 2026 07:40:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 07:40:50 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 07:40:50 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 14:31:06 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 14:31:06 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 14:31:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 14:31:06 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3489e22b9fa2ff497dd5db25eb12eeb70e1e4b6246c19e39271ff2756e1f42e9`  
		Last Modified: Wed, 28 Oct 2026 07:11:50 GMT  
		Size: 3.5 MB (3544532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe88ce4f3f2b48c048590bd27c09a7d9bc9f5d4ace4929dd9fc45daca6c855cb`  
		Last Modified: Wed, 28 Oct 2026 07:41:07 GMT  
		Size: 13.7 MB (13658649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763277222cdb288a74f5790dbbd5a97ba7174f0254790dd69e55b4dd98cf68f6`  
		Last Modified: Wed, 28 Oct 2026 07:41:07 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66fe0c1cfc19277d0994397d43b855a6baa8aee7e262998ebc3ba187bd7c3f95`  
		Last Modified: Wed, 28 Oct 2026 14:31:23 GMT  
		Size: 5.7 MB (5681120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:9b73fb548314ef307302d9061db2575a23f76e3c3afb4683de2b2fcaf2ba9bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2443a81efe4e2f42c0e9d1c6f9acbefac7a729487d293e356f4e2fda77fac1`

```dockerfile
```

-	Layers:
	-	`sha256:4e863186faec8d1c9f1f9a343d81e114385df18dbe9aed1b40e45eca8c689503`  
		Last Modified: Wed, 28 Oct 2026 14:31:23 GMT  
		Size: 2.6 MB (2553439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3fa80ebfd701d3bd0f309e5bf460aaa3e7f58b4095e39642052d230555b56e0`  
		Last Modified: Wed, 28 Oct 2026 14:31:23 GMT  
		Size: 8.1 KB (8086 bytes)  
		MIME: application/vnd.in-toto+json
