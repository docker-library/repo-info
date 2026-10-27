## `hylang:1-bookworm`

```console
$ docker pull hylang@sha256:75b5841b7dab7972313e29696ee04624b87eecb1e1dcd5a552efe64e6d8319d5
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

### `hylang:1-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:37d618b0757b76f37c97d89f02dd62b1f116e9487f4f7605a5671ae69a079265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51767492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f3dd8abe06be47410809333c87fdfac3d5b4af3b0c2d65fe0275a4b1888107`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 22:32:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:32:15 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:32:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 22:32:15 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:32:15 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:43:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 		--without-system-libmpdec 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:43:49 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:43:49 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:47:14 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:47:14 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:47:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:47:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d2d3f4a48e3369aec9082cf0cff9ac9efbe40b0ae6bc736401c3e941f156cdd`  
		Last Modified: Mon, 26 Oct 2026 22:43:58 GMT  
		Size: 4.0 MB (3977624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3b7de1ab63ccd77fb97a5ec27d96f7bf02d35cabfb02c17d2518e23dd7780f`  
		Last Modified: Mon, 26 Oct 2026 22:43:58 GMT  
		Size: 13.8 MB (13818110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbd14c9ff2069e4c83fc8f988a2bea193adbac22f8e45f64ab5caf184ae0381`  
		Last Modified: Mon, 26 Oct 2026 22:43:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2bde80f8f6931e77c31491f90c2bcb6eb876170fb84c1b3f72f8492e224bb12`  
		Last Modified: Mon, 26 Oct 2026 23:47:23 GMT  
		Size: 5.7 MB (5723574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:2b07353ec95117e111990e7cb560291d56a16e063a903daa554efa6d5844739e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2559505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05411a9af100478ca8a4f9462171a3201fdc17497a5c3407d15a90e5752e808`

```dockerfile
```

-	Layers:
	-	`sha256:3cdf4812953e0f108bb4f447c8b9ca70ffb34584bb755bb191c4f77f3c9f7730`  
		Last Modified: Mon, 26 Oct 2026 23:47:23 GMT  
		Size: 2.6 MB (2550231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26615962c8636e77297e9716443eab74bbcf5d56391165a858bbcfd9c8379dba`  
		Last Modified: Mon, 26 Oct 2026 23:47:23 GMT  
		Size: 9.3 KB (9274 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:386e3cc68353c832a231c081a6b2a495ff3c4560583186bf2b94866f0baeb503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45576040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9489b60f57e10b45d765c41558bd4b5065da3a06eb5dd4ac424379dc36a1a658`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 22:17:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:17:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:17:35 GMT
ENV PYTHON_VERSION=3.15.1
# Wed, 21 Oct 2026 22:17:35 GMT
ENV PYTHON_SHA256=673ae7232d84c894729882c8257d300ef2d26523911bfd3917ec8ce7f526f99b
# Wed, 21 Oct 2026 22:41:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 		--without-system-libmpdec 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 22:41:39 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 22:41:39 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 22:54:18 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:54:18 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:54:18 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 22:54:18 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa8d03ba5784166a64defe7b615d82879289aa34c68bcf7d7e1ea373ed4b103`  
		Last Modified: Wed, 21 Oct 2026 22:41:46 GMT  
		Size: 2.7 MB (2745771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7f3bbe67a247d2de1ac26f6c3b45e389773ae2d8bca68a9ec4a9db8ad5c793`  
		Last Modified: Wed, 21 Oct 2026 22:41:47 GMT  
		Size: 13.1 MB (13145279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a389d65514654f6a72baa33dfd9127c08bc78a5f1950cce1f3b8bfda4df67bd4`  
		Last Modified: Wed, 21 Oct 2026 22:41:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483965a86737ccf0672fb8b3458a086fb2ee86cd71fc7b744efd1a94ab7e7b21`  
		Last Modified: Wed, 21 Oct 2026 22:54:25 GMT  
		Size: 5.7 MB (5723253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:a188738ba8636fa669d6ff0943f0c6eedbe56f96769cd9bf587421e66f75dbe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68f4ed7c27a93fc6a16895b3c39e57f28a561b06a2111fe967f38b3cc6670d1`

```dockerfile
```

-	Layers:
	-	`sha256:39ac7293155cf0a065cf4c61251102c901e2aa5d9a60d445aae65301143b9637`  
		Last Modified: Wed, 21 Oct 2026 22:54:25 GMT  
		Size: 2.6 MB (2552508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:367e1f104b431eaf8ff7b0edaaee82ef2bd0d1b1ff225fbae3e174934495a93d`  
		Last Modified: Wed, 21 Oct 2026 22:54:25 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:e4df9f92eba6531d4729eeaa29ce2371bfeb6efb16131638620dd49c3a27e01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51365835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d3e998d7b55e674d4cd4e904e2c845f58651f441c368e698308f8465d6a87c`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 22:32:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:32:15 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:32:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 22:32:15 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:32:15 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:47:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 		--without-system-libmpdec 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:47:29 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:47:29 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:50:27 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:50:27 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:50:27 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:50:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f025d98efb6ee53ad11831f4f0f6f6db528a1f684f62ba24cd6666934b39cbe3`  
		Last Modified: Mon, 26 Oct 2026 22:47:38 GMT  
		Size: 3.8 MB (3810224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83f267839c2b284af62941459cfa5620e0547c63cd477ff1e6bde2e0c611c5e`  
		Last Modified: Mon, 26 Oct 2026 22:47:38 GMT  
		Size: 13.7 MB (13693443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374ddafdc89e4a47b31316f2bad472e63cf2b5aae1f7f662f2debf33322720d0`  
		Last Modified: Mon, 26 Oct 2026 22:47:38 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fb71ce9075f0e3b7a295f0731b8fb4eebba9ae00dfdad658a865b7bdf6c9f3`  
		Last Modified: Mon, 26 Oct 2026 23:50:37 GMT  
		Size: 5.7 MB (5723494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:edd0a8e4105cff9e82df8d291ce90d408254e5950f0d3da3bd1183b4da5a3cec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2559970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e49749d717feb65a4fb14b64aefb62385475e3e577bb6605c317802875c221`

```dockerfile
```

-	Layers:
	-	`sha256:85e7852b52fef6c9a8c5e057f0a7128981849e8c246947ac7ea035ab1168fbda`  
		Last Modified: Mon, 26 Oct 2026 23:50:37 GMT  
		Size: 2.6 MB (2550544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c6f0fc2d5695fbb5dd2c52c941c0618a329a56cf078fe40ca4fe91982e1aa36`  
		Last Modified: Mon, 26 Oct 2026 23:50:36 GMT  
		Size: 9.4 KB (9426 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:2418c50f8c616ce7ccc82263bdc8c988a80f5225952e9958f7eae81b993763e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52129496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112c8e171acf3e2cabcd53127bdbe57c5b9c7b2df41ad97e44382fdcc9fff0b3`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 22:15:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:15:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:15:15 GMT
ENV PYTHON_VERSION=3.15.1
# Wed, 21 Oct 2026 22:15:15 GMT
ENV PYTHON_SHA256=673ae7232d84c894729882c8257d300ef2d26523911bfd3917ec8ce7f526f99b
# Wed, 21 Oct 2026 22:28:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 		--without-system-libmpdec 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 22:28:54 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 22:28:54 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 22:52:11 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:52:11 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:52:11 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 22:52:11 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f18bb404f18e1a55e73386e40eac6da347163fe58e54559004ef9b0d1c24e4f2`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 29.2 MB (29239245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbcec1441244daebe09769167a71101f456c6f694c9030a8207ea69d64942c3d`  
		Last Modified: Wed, 21 Oct 2026 22:29:02 GMT  
		Size: 3.3 MB (3344890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c27e194f1f33fc231466e241e7ba64883dfaedfd3a330c1f0b923943c73755`  
		Last Modified: Wed, 21 Oct 2026 22:29:02 GMT  
		Size: 13.8 MB (13821826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73b8a2c70b1453510b8b0cb278227f19619b680f73973d7b755a5e825831237`  
		Last Modified: Wed, 21 Oct 2026 22:29:02 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:641bfeb02afa6a91c41b6b98a05610d87dc42e7b2e288317ca4f95cb930fa29b`  
		Last Modified: Wed, 21 Oct 2026 22:52:18 GMT  
		Size: 5.7 MB (5723285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:89e10107d2678e07f9a3d9bd0766d4df8986f610d0d689d9d02297a5bf2c6433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00afabfacb5ee24c4147aece0b9c57d5a0cb29a88436c4b89c686b6cc82f6149`

```dockerfile
```

-	Layers:
	-	`sha256:0e525217963b67460b3824d602aec2d6465dfa875b508903b84e18dcb407b81c`  
		Last Modified: Wed, 21 Oct 2026 22:52:18 GMT  
		Size: 2.5 MB (2547378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26a20bb6eaaae12dffa7e8565656c34f152b15e65e7fecd2d5186e71c9aa1710`  
		Last Modified: Wed, 21 Oct 2026 22:52:18 GMT  
		Size: 9.2 KB (9205 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:5b60ea35c1e7cec510dbb7f485400101ba77f1dcebb7c537d7e1be54c9421518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55732464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8559021e1fb0c148d1bbef629586a141e2ab85e31c45e57b4304afc76e0ec354`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 06:33:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 06:33:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 06:33:32 GMT
ENV PYTHON_VERSION=3.15.1
# Wed, 21 Oct 2026 06:33:32 GMT
ENV PYTHON_SHA256=673ae7232d84c894729882c8257d300ef2d26523911bfd3917ec8ce7f526f99b
# Thu, 22 Oct 2026 07:10:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 		--without-system-libmpdec 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 22 Oct 2026 07:10:23 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 22 Oct 2026 07:10:23 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 15:29:11 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 15:29:11 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 15:29:11 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 15:29:11 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1dd2154e42bde071f30f7129cf83513b47a84b66cfcb13a0fc066c618f46e0`  
		Last Modified: Wed, 21 Oct 2026 07:24:41 GMT  
		Size: 3.5 MB (3543697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff04282b37872b7cfab2012a458a71dfcefe8f4f0d38f52dcd03910fa2120f90`  
		Last Modified: Thu, 22 Oct 2026 07:10:39 GMT  
		Size: 14.4 MB (14371806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e31832c76a78e4fe25bbcb6258e60445f4f4276437b95938ebb80f6ac9082e`  
		Last Modified: Thu, 22 Oct 2026 07:10:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c58611e1de4bc1383ebdd74c1a7cb9134ce62fdd296687f2060cf6551826d5`  
		Last Modified: Thu, 22 Oct 2026 15:29:27 GMT  
		Size: 5.7 MB (5723504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:435b2bd2023b88eaf196454eb366754c6ae11d94fd4772a4c299395920accea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2564020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2457e5ad3db885f2ce0dd2078443caa53d9bc5900599c7a963e1e09d488de669`

```dockerfile
```

-	Layers:
	-	`sha256:f38825befda2c289b0f03d24daa797e55b9a76b79fc2b006bf630cac1f261c12`  
		Last Modified: Thu, 22 Oct 2026 15:29:27 GMT  
		Size: 2.6 MB (2554693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c711cfeb696f36fcf8372903013e421c0a07c807544ca20a1792a7e8da0fe7f`  
		Last Modified: Thu, 22 Oct 2026 15:29:27 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.in-toto+json
