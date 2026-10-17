## `python:slim-trixie`

```console
$ docker pull python@sha256:d802f03223b9e00604cd54574bcac1a4638914c43683d3f0afd6ebee35f25313
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

### `python:slim-trixie` - linux; amd64

```console
$ docker pull python@sha256:a83d68dc3d8f1048ff5628bc6f8c9f859938eb5add44ca947b70105b0383e961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44349677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e033f9ac9f2e32dd3b08599d84d509dfcee72e2b2679ec99c135b507947226`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 22:22:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 22:22:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 16 Oct 2026 22:22:48 GMT
ENV PYTHON_VERSION=3.15.0
# Fri, 16 Oct 2026 22:22:48 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 22:29:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 22:29:25 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 22:29:25 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dc1b0efc9fbaaa3b446369d3e205bbdda4a4c8284daf6a8d0b38e4ca4a0d03`  
		Last Modified: Fri, 16 Oct 2026 22:29:33 GMT  
		Size: 1.3 MB (1294100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f192a4c2636696001e567a0cd97bae176b188bcbc673aa4cc61d123c185f4a0d`  
		Last Modified: Fri, 16 Oct 2026 22:29:33 GMT  
		Size: 13.2 MB (13211978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a779a2f54de126b20a6ad8fbce227221fa44f9c853492ebd7a2ce9ee6d874e7`  
		Last Modified: Fri, 16 Oct 2026 22:29:33 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:slim-trixie` - unknown; unknown

```console
$ docker pull python@sha256:d4512dcdb292f60245076a417a2a17666e1868f87137f4bea4807d5c70ec307e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2196468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65dd5bd5fc83bdf9871c46fafee3ad40271d03085c01bf345697a8ed8bbc16e3`

```dockerfile
```

-	Layers:
	-	`sha256:5355b569dddaaddea2c96eece1a82512997af5f9bab5c8a47b8dc40a0fb4cb65`  
		Last Modified: Fri, 16 Oct 2026 22:29:33 GMT  
		Size: 2.2 MB (2172481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e0422e2f715b0fb55b0dc95ff0605a34988c5ddccb2a5e64e7cf7237441bf75`  
		Last Modified: Fri, 16 Oct 2026 22:29:33 GMT  
		Size: 24.0 KB (23987 bytes)  
		MIME: application/vnd.in-toto+json

### `python:slim-trixie` - linux; arm variant v5

```console
$ docker pull python@sha256:7117d806eb48b0370ceeac7eefbbfca1adc6f6f47f5665320cc08d0fa9d6bbfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42167027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b2a0cd33d040444c0947b165f8ec0ed8b7eaef2b47c9e8abf16b044cb0c6e26`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 22:25:34 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 22:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 16 Oct 2026 22:25:34 GMT
ENV PYTHON_VERSION=3.15.0
# Fri, 16 Oct 2026 22:25:34 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 22:36:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 22:36:00 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 22:36:00 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6331be5f1a323cab052617a66d8090132ce7b840f3654e99588bf71f3187cb8e`  
		Last Modified: Fri, 16 Oct 2026 22:36:08 GMT  
		Size: 1.3 MB (1276989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff26de8ac55c0c55cf860277b9014c9b52895a236e9015af685f69a779db506`  
		Last Modified: Fri, 16 Oct 2026 22:36:08 GMT  
		Size: 12.9 MB (12882303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33394ab5345d631fe7751b18472f6ceec9c40feeaf45be33c4387c60465de46`  
		Last Modified: Fri, 16 Oct 2026 22:36:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:slim-trixie` - unknown; unknown

```console
$ docker pull python@sha256:bdb4fbe0b0d11e8252b599939797c667cfb95e7b62444a2097f257f24761758e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2199608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9912e90418590e126e63c5db9cbbe6406021107911af2136a8b5cc9fabe4e6b8`

```dockerfile
```

-	Layers:
	-	`sha256:d8ca389e646f3de5e4d5951a0d7994a4c5b6180cb06027f5b2aa4612dca0fc53`  
		Last Modified: Fri, 16 Oct 2026 22:36:08 GMT  
		Size: 2.2 MB (2175483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0995e5a43d5f2142ca68f06210ad8aba94ad5aa7a0d4de428ea34f33c18086fe`  
		Last Modified: Fri, 16 Oct 2026 22:36:08 GMT  
		Size: 24.1 KB (24125 bytes)  
		MIME: application/vnd.in-toto+json

### `python:slim-trixie` - linux; arm variant v7

```console
$ docker pull python@sha256:bcbc9920b9c04f7f32bf33a798a99ade32e4febb252d2dabbde5a09c44d3adbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40284553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173a6b4ab51873208c71e47bdce1ce453b3c69d65c485b44fc86aace33db718b`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 22:24:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 22:24:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 16 Oct 2026 22:24:31 GMT
ENV PYTHON_VERSION=3.15.0
# Fri, 16 Oct 2026 22:24:31 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 22:36:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 22:36:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 22:36:45 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049c8eb87c1da3198456f7a1884f801a975cd2f7aaaaeda07a9da178f5cd9fba`  
		Last Modified: Fri, 16 Oct 2026 22:36:53 GMT  
		Size: 1.3 MB (1250223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09709e9533d94ceaa8d8646042e6f9ea7a90489dd71f42a55c0ebe431c4f62ff`  
		Last Modified: Fri, 16 Oct 2026 22:36:53 GMT  
		Size: 12.8 MB (12775902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0e7f0d23ad60f506d5d4180a6fa9af01dd29bc6a1508cea52900bc11543bfb`  
		Last Modified: Fri, 16 Oct 2026 22:36:53 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:slim-trixie` - unknown; unknown

```console
$ docker pull python@sha256:ddb979646f58ec77285ea175f5dbbd12e44b0359d5f9316c8a0b43b3cc42d9d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2198063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b7dc19b9b5bb23227a7a515f066064d0f4e3ea726c9129f6b2fe2270c87c64`

```dockerfile
```

-	Layers:
	-	`sha256:31d70552e252a03c90b2276539449c67f3eb4c3265f3a47740201236ecd41d5b`  
		Last Modified: Fri, 16 Oct 2026 22:36:53 GMT  
		Size: 2.2 MB (2173938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2d7072bc7fb934a34cc0bdf77934b89c113b9548f6740f306b67d212533b6d0`  
		Last Modified: Fri, 16 Oct 2026 22:36:53 GMT  
		Size: 24.1 KB (24125 bytes)  
		MIME: application/vnd.in-toto+json

### `python:slim-trixie` - linux; arm64 variant v8

```console
$ docker pull python@sha256:6387eaccc0ee752d8fd750c3d78da05145cc14eaa520800536aadbd9a7ef7efd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44596786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2c7f1a9de97347862f793bcc492e7fe66a4a9b626fc758d9dc729dcf3975db`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 22:22:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 22:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 16 Oct 2026 22:22:25 GMT
ENV PYTHON_VERSION=3.15.0
# Fri, 16 Oct 2026 22:22:25 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 22:30:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 22:30:32 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 22:30:32 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3396e2eb5021b9b96cce072fd585c594fee5d26bc1529badd32e6606257a2d2f`  
		Last Modified: Fri, 16 Oct 2026 22:30:40 GMT  
		Size: 1.3 MB (1275275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8011f249c417ed0360ad122f116480021d46d6e34200d5956d159ffaac550d56`  
		Last Modified: Fri, 16 Oct 2026 22:30:41 GMT  
		Size: 13.1 MB (13120980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46642322600f8824315a257d32ececf87dc3e3064984e6ea8acb4a13d531047b`  
		Last Modified: Fri, 16 Oct 2026 22:30:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:slim-trixie` - unknown; unknown

```console
$ docker pull python@sha256:aacfb97663aade3964b10b80e4e3e016b0eccc786d1da74ea46247420ded2f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2196957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87abcd1175874749d49bdd1d1196583e5391ff4cb75c374bdd5603de7a11b71`

```dockerfile
```

-	Layers:
	-	`sha256:6eca14ddbf973503fcccf400f8a776a58a8e72a1ec7845a3306a1c6e70ac09dd`  
		Last Modified: Fri, 16 Oct 2026 22:30:40 GMT  
		Size: 2.2 MB (2172788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9da87fbbc7dd24fc67fab53f8bc34eb6361c6078691dac09393fcde81829a3f`  
		Last Modified: Fri, 16 Oct 2026 22:30:40 GMT  
		Size: 24.2 KB (24169 bytes)  
		MIME: application/vnd.in-toto+json

### `python:slim-trixie` - linux; 386

```console
$ docker pull python@sha256:068fefa953373494a7ee9f60d71f04f4ace2ca303bec851ba0364a00bf94b1a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45794103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c4975afcc9c4a3be511ed915e77aba6a568676113ed0217821c6eb5233ac074`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 22:22:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 22:22:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 16 Oct 2026 22:22:56 GMT
ENV PYTHON_VERSION=3.15.0
# Fri, 16 Oct 2026 22:22:56 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 22:44:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 22:44:25 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 22:44:25 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8dc039cbf133162dccab8f57f99e6dedb92b8c53eea6217e17bb60ad367de4d`  
		Last Modified: Fri, 16 Oct 2026 22:44:33 GMT  
		Size: 1.3 MB (1299121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e172f41be612210ba2e7b582c7e59832eacaa41da0fd230f2c83a7e33228e1`  
		Last Modified: Fri, 16 Oct 2026 22:44:34 GMT  
		Size: 13.1 MB (13141435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4ce2f56ef9923409a478e32df954c261dcf7ab199d176198897569d94e350c`  
		Last Modified: Fri, 16 Oct 2026 22:44:33 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:slim-trixie` - unknown; unknown

```console
$ docker pull python@sha256:22f05249e6db956f2d1feb005c08fc17c1ce9e74cd0e846e50de8324cfb27aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2193571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e5eef2c938ca6805e00625038b67db136a2e97ec1e26ceecbe895c834c557f9`

```dockerfile
```

-	Layers:
	-	`sha256:e811bbaa91e5e2cccc719e7b7c469c4b182452e4db3a7a9a8b41dd18d2f21c01`  
		Last Modified: Fri, 16 Oct 2026 22:44:33 GMT  
		Size: 2.2 MB (2169640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed15828d5a86c17182101b59c0916e5601bd96845a26d727aebd18776a1b6eaa`  
		Last Modified: Fri, 16 Oct 2026 22:44:33 GMT  
		Size: 23.9 KB (23931 bytes)  
		MIME: application/vnd.in-toto+json

### `python:slim-trixie` - linux; ppc64le

```console
$ docker pull python@sha256:223225ca608632fb63887c0cf618750b81877db0003c92379dbf96c0c9c37a44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48640497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2165ba7a97b8f50925ce221df25a6d12d95188fd6047602c1ee86b286f7066d8`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 22:25:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:25:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 22:25:12 GMT
ENV PYTHON_VERSION=3.15.0
# Mon, 12 Oct 2026 22:25:12 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 23:18:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 23:18:05 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 23:18:05 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:775f719e6e273eb1d992f3d5f66f9e3c865daae488c2b758b485e0af115692af`  
		Last Modified: Mon, 12 Oct 2026 22:55:25 GMT  
		Size: 1.3 MB (1322043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8010b53991ff0c4fe4b01e8c174ca8578a47a790c8a0b301d8a74937c8b5eb`  
		Last Modified: Fri, 16 Oct 2026 23:18:24 GMT  
		Size: 13.7 MB (13666604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082309914a6952686f1f5280a36de932cf8c97380b8fd09543ea484d779fae3c`  
		Last Modified: Fri, 16 Oct 2026 23:18:23 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:slim-trixie` - unknown; unknown

```console
$ docker pull python@sha256:136e988192ac961c66b5d2c9fa0326eb2826b5c75af16e2213af0b390ca890f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2200140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffefab88f28a728ae4a3f2479529f3018ce1bbe4f9c4f142508cffd88373d666`

```dockerfile
```

-	Layers:
	-	`sha256:fd05eabcead6877fb7ada3bb911ecd39fd48e51837def2f100c351d017ca320c`  
		Last Modified: Fri, 16 Oct 2026 23:18:23 GMT  
		Size: 2.2 MB (2176081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a33c32451947f5885b26e00f016407e3e0597578695691edae986a22d9c3a38`  
		Last Modified: Fri, 16 Oct 2026 23:18:23 GMT  
		Size: 24.1 KB (24059 bytes)  
		MIME: application/vnd.in-toto+json

### `python:slim-trixie` - linux; riscv64

```console
$ docker pull python@sha256:7058e0bfd0f4ce4ea53198428922d5cff6f314bb326b40751d328bcd243651bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.7 MB (42665306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a188772bf384a7fd237f259629f8e3b19396836e903b720a35d293daf8b57bb`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Thu, 08 Oct 2026 06:47:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 06:47:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 06:47:27 GMT
ENV PYTHON_VERSION=3.15.0
# Thu, 08 Oct 2026 06:47:27 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Wed, 14 Oct 2026 10:30:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 14 Oct 2026 10:30:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 14 Oct 2026 10:30:52 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654ea5963a3fab2c5586a46177ab7d31db135a1669f2c63e29417d36490b518e`  
		Last Modified: Thu, 08 Oct 2026 08:34:32 GMT  
		Size: 1.3 MB (1262209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed8a331b114b9e79f712b0ee803590438359707180f12f93af72f570def6f9c`  
		Last Modified: Wed, 14 Oct 2026 10:32:04 GMT  
		Size: 13.1 MB (13069083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82dbb5bd997fd852da94dfce61cac4803b937a6998da6cd6c3b91a7c25133676`  
		Last Modified: Wed, 14 Oct 2026 10:32:02 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:slim-trixie` - unknown; unknown

```console
$ docker pull python@sha256:f3a2e4bbaf5e5f7e07673f397d5942849e0d5617703f2cdf15d3d435f5b35e94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2184751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93df145161f54e4507665bdfaf4dacc0da10d02fb1513b7e6738584395fce052`

```dockerfile
```

-	Layers:
	-	`sha256:a31641e05126a7ee457b651d3d607aa11be96d64a8e0e50950999ff9b693be92`  
		Last Modified: Wed, 14 Oct 2026 10:32:02 GMT  
		Size: 2.2 MB (2160771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdbf892991f8d71f25b777123464ddedcaa12ec7db2d83fefc6bc4b261923d65`  
		Last Modified: Wed, 14 Oct 2026 10:32:01 GMT  
		Size: 24.0 KB (23980 bytes)  
		MIME: application/vnd.in-toto+json

### `python:slim-trixie` - linux; s390x

```console
$ docker pull python@sha256:6d6376575af8c65d9bc9a07e90d78929d4629cb9075e94a4dd39a4347e321b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44522078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceeac404532f5aa33fe4a73ce64480274e3eb050812a91a64333100ea79fcd4a`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 22:25:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 22:25:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 16 Oct 2026 22:25:57 GMT
ENV PYTHON_VERSION=3.15.0
# Fri, 16 Oct 2026 22:25:57 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 22:34:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 22:34:51 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 22:34:51 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ca54b05f32ddb02e828889a64f0e4336d94fefbd59625295517a31d2f6612c`  
		Last Modified: Fri, 16 Oct 2026 22:35:02 GMT  
		Size: 1.3 MB (1306381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bf31b91fe52c50a2bf638e6a7cac3cca57f319254f1cec71c63709e7979195`  
		Last Modified: Fri, 16 Oct 2026 22:35:02 GMT  
		Size: 13.3 MB (13306200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4311b2b89fdcbb26f8c7df66478cb483978693576ad13b473b7367c84bb4639`  
		Last Modified: Fri, 16 Oct 2026 22:35:02 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:slim-trixie` - unknown; unknown

```console
$ docker pull python@sha256:5eab0bd2f347132e4186d70ed6146684e43820ba63590f2b2ba1d251e8668089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2197906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a0c8f9c2b91a723ab339b60b29a00bd46a992b281c5df2c5943f0327e158ec`

```dockerfile
```

-	Layers:
	-	`sha256:5a22dd1e4cf1c20a9e582eb22962927e77c9563323bdc973db35a4022f8c8072`  
		Last Modified: Fri, 16 Oct 2026 22:35:02 GMT  
		Size: 2.2 MB (2173919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5301af946ced0a408111e8946dfef465b736ef79e814087683cf04a159b28e6`  
		Last Modified: Fri, 16 Oct 2026 22:35:02 GMT  
		Size: 24.0 KB (23987 bytes)  
		MIME: application/vnd.in-toto+json
