## `hylang:1-python3.13-alpine3.23`

```console
$ docker pull hylang@sha256:7046acaf01a01867eea946c9555ce954221fd7283e27792cd2685126306b6a6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `hylang:1-python3.13-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:b813f0c130a0f9e7646b84e6ad741e9db2fdf0047a86fd5ea86aea8c133db5bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22255251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39aa931b003c1facf4d61ebefe9014f710aa1e2bfbf85b35e1d9dc1ac83145b1`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:47:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:47:49 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:47:49 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 21:47:49 GMT
ENV PYTHON_VERSION=3.13.15
# Thu, 17 Sep 2026 21:47:49 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Thu, 17 Sep 2026 21:53:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:53:21 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:53:21 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:35:43 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:35:43 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:35:43 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:35:43 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb85f5626cc73155c8bc488b567e764006abd71cc19e581ea8f8b57dc725628`  
		Last Modified: Thu, 17 Sep 2026 21:53:27 GMT  
		Size: 416.3 KB (416292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076c6213f7ea6949659fd58a1926f9dedf83db6a8dedfc4ab22b2be84d01ed38`  
		Last Modified: Thu, 17 Sep 2026 21:53:28 GMT  
		Size: 12.6 MB (12638992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fd47ad0b8598456cc2526898bcabc1aebe464e43a0394a79ebb9f3ffd13d9b`  
		Last Modified: Thu, 17 Sep 2026 21:53:27 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999a4d62a122fff2b75defc66c4920cad9c6d67147524e6f2aa3297495c24e15`  
		Last Modified: Thu, 17 Sep 2026 22:35:48 GMT  
		Size: 5.4 MB (5351211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:08bf51beac202375c50d588031e3e0854f7a25d05db55b72a2499a97e9924f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.1 KB (626073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8678e0afbee430f9be17f29f702603f6f495d73edda48919f57db512479f12c2`

```dockerfile
```

-	Layers:
	-	`sha256:ccd14cfd615fc88642b549ec847d21b8bd7104e9fe035ae4712e5d234c1d665b`  
		Last Modified: Thu, 17 Sep 2026 22:35:47 GMT  
		Size: 618.0 KB (617987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3eae4df8a51c5299df09b4a08db2607ec32574c7d1fb0e7d3ea43257b1dcc54a`  
		Last Modified: Thu, 17 Sep 2026 22:35:48 GMT  
		Size: 8.1 KB (8086 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:027a5613fb81c945df414b08f3adedfcb7098ce132c5ee6ab9c087e318ee4eca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.6 MB (21600701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430df7e27a40d60dd8832fa0e23a99ceec1ea3aac699f8e1fad47b8a34e0cd12`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:58:35 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:58:35 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 21:58:35 GMT
ENV PYTHON_VERSION=3.13.15
# Thu, 17 Sep 2026 21:58:35 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Thu, 17 Sep 2026 22:06:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:06:41 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:06:41 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:48:57 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:48:57 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:48:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:48:57 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69fe4fc10ada466f4b3f6e19b681ab421832b1954b58d2e24baad3af8b428cc`  
		Last Modified: Thu, 17 Sep 2026 22:06:46 GMT  
		Size: 417.5 KB (417474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e573c558f174d25774de8af292c7e44b8757e2a5dbf07059c62a991e359f69f`  
		Last Modified: Thu, 17 Sep 2026 22:06:46 GMT  
		Size: 12.3 MB (12276806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7af2beb8e0689752ac5eab07d99d06ddec5cd08c34eae776885095f9838975`  
		Last Modified: Thu, 17 Sep 2026 22:06:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be03e0c0cc14cc8afcb9a705d1d9006382ea914e2aa9fb1f583a50df23ee4a8b`  
		Last Modified: Thu, 17 Sep 2026 22:49:01 GMT  
		Size: 5.4 MB (5351248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:21cf50eaad69e90aa3521e6e986a88a6387a3005cc23f486cd0f3657f231b67a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 KB (7953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e8dca2de286c514628788a0f07d592208f5780acefa0ded36eadeb286afd12`

```dockerfile
```

-	Layers:
	-	`sha256:82287c86b808c8f0a6758d1b39d5534d0a74b31d031a6001b8f4ee022df514c3`  
		Last Modified: Thu, 17 Sep 2026 22:49:00 GMT  
		Size: 8.0 KB (7953 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:f2a8e8011c0a15343d3de2628da14520909fafea890cb0f6d4655dd62dceb94d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 MB (20968300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7933e9aa0e220f87ba70bc8272d215c0c900a45b1012e7c9cb2b13332088e6`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:00:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:00:32 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 22:00:32 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 22:00:32 GMT
ENV PYTHON_VERSION=3.13.15
# Thu, 17 Sep 2026 22:00:32 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Thu, 17 Sep 2026 22:08:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:08:27 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:08:27 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:53:05 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:53:05 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:53:05 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:53:05 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb114f4d36242a5b08ea402e206f0af00b957b0a5d14b9b244eca6b3fde5ad2`  
		Last Modified: Thu, 17 Sep 2026 22:08:33 GMT  
		Size: 416.4 KB (416409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f563c1ad7e6920ac9bc6673f5eca4bd7d05d6ffb1bd1b114c56a1b4551518dca`  
		Last Modified: Thu, 17 Sep 2026 22:08:34 GMT  
		Size: 11.9 MB (11937437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e13c1fc634a92893b385441692971c278a8fce0c7a89ec23004e387488ea3e68`  
		Last Modified: Thu, 17 Sep 2026 22:08:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edde0191cc3109cb2c7afa57d042961344a871457117089ad65d2c4d57df92ad`  
		Last Modified: Thu, 17 Sep 2026 22:53:11 GMT  
		Size: 5.4 MB (5351293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:35a9990ebcf5874412e1a94daab8ab25be7e826b18472d7cb793bff56bbac717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.5 KB (628531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d5ee14d3668bd76cb0ec9ca797b1d54ddb1d5a66f3f9c4537a29407e3929b7`

```dockerfile
```

-	Layers:
	-	`sha256:614d80b8aa8960a928ab485607055bedd7523800a641096bc07ecc89de88517b`  
		Last Modified: Thu, 17 Sep 2026 22:53:11 GMT  
		Size: 620.4 KB (620363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2867bcbd428074176f499ab9d13e3cb6326c22beafe3df5c132b2123f3f0ee10`  
		Last Modified: Thu, 17 Sep 2026 22:53:10 GMT  
		Size: 8.2 KB (8168 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:ee13a4e63aeb9d4de3c5640d5c226523b610019972cb60da76b5583bc70a2cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22708929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c22d551aec3e63a3a3b30dc9ac51741815f3f634d2b402037fb5e66be90c284`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:48:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:48:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:48:40 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 21:48:40 GMT
ENV PYTHON_VERSION=3.13.15
# Thu, 17 Sep 2026 21:48:40 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Thu, 17 Sep 2026 21:59:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:59:00 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:59:00 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:59:58 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:59:58 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:59:58 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:59:58 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46986641432910bf636f3148a511cdcc233a85de7f0af9c5bbfd668090038b9b`  
		Last Modified: Thu, 17 Sep 2026 21:51:33 GMT  
		Size: 419.1 KB (419106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d600b9251bf824fff762b194c226c9a09a898664bb9f9d8beb32ff8c98293082`  
		Last Modified: Thu, 17 Sep 2026 21:59:07 GMT  
		Size: 12.8 MB (12752224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc6d6c7e8a652b2743654066a91784b8acb6321e46ea53dfc1a13742bbf7a18`  
		Last Modified: Thu, 17 Sep 2026 21:59:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964d52b46907f923773eb43b1f71ee407914d5d9fe75911040b6ccd33011ae1a`  
		Last Modified: Thu, 17 Sep 2026 23:00:07 GMT  
		Size: 5.4 MB (5351294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:057a64a9b2c38bd892d8690f3739e61bf29c346d3aa489d230b96384f28a3f26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **625.6 KB (625584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7150c7791501e196d35142b96a6ecfd77903b1596a083d0dd8b82c38ccf45d71`

```dockerfile
```

-	Layers:
	-	`sha256:67ba13e29e8e7da210bd1b0ba398e1187c342fab4c89ac1e3ad43f69ac593717`  
		Last Modified: Thu, 17 Sep 2026 23:00:07 GMT  
		Size: 617.4 KB (617393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9e273e1eda2118725d009fbd13be8c411ff38765a05f23098ed4a3ccc9d81b2`  
		Last Modified: Thu, 17 Sep 2026 23:00:07 GMT  
		Size: 8.2 KB (8191 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:d492641dadf95d63112f9493e00b2ed5b74438897ae79d1598bbbcdd80f693d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 MB (24693341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712dd85dc46643dd35be849aad00edc4b5dd535b9599dd73d02f332fc9338ddc`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:36:55 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:36:55 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:36:55 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:36:55 GMT
ENV PYTHON_VERSION=3.13.15
# Mon, 31 Aug 2026 23:36:55 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Mon, 31 Aug 2026 23:43:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:43:05 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:43:05 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:14:26 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:14:26 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:14:26 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:14:26 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f6fd44f32df48914649f2ed5965133af7fb4e4699df28f138ff02b35c17260`  
		Last Modified: Mon, 31 Aug 2026 23:43:12 GMT  
		Size: 408.9 KB (408850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c17e3ee9624a3adeb81c3cc2426ed84f760b5fd5bfbacca4a6f0d9b7f527a94`  
		Last Modified: Mon, 31 Aug 2026 23:43:12 GMT  
		Size: 15.3 MB (15264906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ad66d414939f146581490452d5ce203f3e196d820e8af7b0373f2716b5eddb`  
		Last Modified: Mon, 31 Aug 2026 23:43:11 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f67066513ef431cab08858d53294efd6a14975dcd6e577b9a7a478f93ea17e0`  
		Last Modified: Tue, 01 Sep 2026 00:14:32 GMT  
		Size: 5.4 MB (5351346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:6f9aa5f4ff0c3632c81e26e1fb776b09b2cabccd1a3db7c533bca73d3e75c895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **624.7 KB (624724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde83ebbc75a2d37fcef03f47a4371bfa9ac77e147b7528ffbe94d6f693259a9`

```dockerfile
```

-	Layers:
	-	`sha256:6d85055af76961ea0f920b26ca0c43e75a450624c7a77e38f8eea275028042b8`  
		Last Modified: Tue, 01 Sep 2026 00:14:32 GMT  
		Size: 616.7 KB (616669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b110d9e1fdb8b93e66d9a83013c2f8e633e0cd4db71856a7bef58d8ecaa08419`  
		Last Modified: Tue, 01 Sep 2026 00:14:31 GMT  
		Size: 8.1 KB (8055 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:1413779b6e1c1b20b01715e403f185bf9ba38acc9a338a74572356f57c634bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25470601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c4d53a6b3192fc2fa5d40ee9179bc10ffc8a3d5f7ebb12e26709b62eb5fa74`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 00:54:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 00:54:24 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 00:54:24 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 01 Sep 2026 00:54:24 GMT
ENV PYTHON_VERSION=3.13.15
# Tue, 01 Sep 2026 00:54:24 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Tue, 01 Sep 2026 01:57:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 01:57:21 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 01:57:21 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 04:12:20 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 04:12:20 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 04:12:20 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 04:12:20 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d8a95c2af47529ce8f5720318365d18384134ff8a738a6cb27917fbcf9cc91`  
		Last Modified: Tue, 01 Sep 2026 00:57:37 GMT  
		Size: 412.3 KB (412269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df42467e5679d6ccfb1b9c564fb9dc6434d0e555bd4e7165f0e3d8025836fd36`  
		Last Modified: Tue, 01 Sep 2026 01:57:33 GMT  
		Size: 15.9 MB (15894250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056dd57de426ead87329fe9ed50fac2cca3a8b9d292c064801ed0c7f3d6ffd89`  
		Last Modified: Tue, 01 Sep 2026 01:57:33 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad2b480611ad7eebaa05625487db09fa8269a01e5b64d7a3e22bc4289eab87f`  
		Last Modified: Tue, 01 Sep 2026 04:12:29 GMT  
		Size: 5.4 MB (5351534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:0933d78282696be8fdc247459ef7b300a0ad87f80fd4af15356bb1a2888fc334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **624.2 KB (624209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a0044dd980937ab09a9acb254fc80aed6fdda6904bc4b3a1d751c5133c9d38a`

```dockerfile
```

-	Layers:
	-	`sha256:30a5428e959813266c96c52286df6ef00bb3847d780f0981eb95f5559948ac24`  
		Last Modified: Tue, 01 Sep 2026 04:12:29 GMT  
		Size: 616.1 KB (616077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dddaeed8f174bbf7f23107de6805821e8ed2959ba36178cbecabefd71f57a7d`  
		Last Modified: Tue, 01 Sep 2026 04:12:29 GMT  
		Size: 8.1 KB (8132 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:b65b15135b0e9851f6d23a0e3605a1db64f99627b49b9b06ec38ca8496756482
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.3 MB (24252468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e248d6d641ac2815bff9cb294089e1b66c70fcc05bbf3bd1bd90912f606ccf`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 17:53:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 17:53:18 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 17:53:18 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 01 Sep 2026 17:53:18 GMT
ENV PYTHON_VERSION=3.13.15
# Tue, 01 Sep 2026 17:53:18 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Wed, 02 Sep 2026 00:28:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 02 Sep 2026 00:28:33 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 02 Sep 2026 00:28:33 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 04:32:30 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 04:32:30 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 04:32:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 04:32:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa049b4201f0ffd3b970723931cad56371db03003409ec049ecbeb84b289682e`  
		Last Modified: Tue, 01 Sep 2026 18:36:56 GMT  
		Size: 408.6 KB (408647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9653f7e1e364f525c7d004049a69d9ba20a9a002bdd3d6d46bfbc11a6be26a2`  
		Last Modified: Wed, 02 Sep 2026 00:29:22 GMT  
		Size: 14.9 MB (14918205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0ea8eb21f75614efafa40c55b6e9441ccc98ff872cd86f50405d2c4192a564`  
		Last Modified: Wed, 02 Sep 2026 00:29:19 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7b3adbcc77a2f8b01c4f0d5e79afb75ceb418a109e6ce10a5bdf5ed81a97dd`  
		Last Modified: Thu, 03 Sep 2026 04:33:09 GMT  
		Size: 5.4 MB (5352124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:f2a13865872b4bd38ccfecc1d3a5153fc79a2cb09d860add0aa64c77fc6ea0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **624.2 KB (624204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a3b07cb71f6f4d7e3d72e417377e403203685cbdfd9cd50155733b40962d3c`

```dockerfile
```

-	Layers:
	-	`sha256:1857001cf64a3bf978335a7b8f2bd3f9842b65afcb25032a54c20b467e7f3f3a`  
		Last Modified: Thu, 03 Sep 2026 04:33:09 GMT  
		Size: 616.1 KB (616073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5b49315569742f83344878ede6a2732c2cba5c3ce7fcf1eb548469a4762ed01`  
		Last Modified: Thu, 03 Sep 2026 04:33:08 GMT  
		Size: 8.1 KB (8131 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:da88aace2a5ccd54e0c24c2179ad8056083d14fb2374883a2c0352c35b66dae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24911412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d8d2f0e976c89e71d630b189075955f637d1563124805bbd256944aca179ff`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:45:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:45:23 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:45:23 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:45:23 GMT
ENV PYTHON_VERSION=3.13.15
# Mon, 31 Aug 2026 23:45:23 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Tue, 01 Sep 2026 00:02:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:02:40 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:02:40 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:32:08 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:32:08 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:32:08 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:32:08 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9e98c23dfc68797714cdcca588316ad4f73883cba80a44ee6a491838345435`  
		Last Modified: Mon, 31 Aug 2026 23:51:20 GMT  
		Size: 409.6 KB (409551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64d82cbd47ffc7892010f982966d2abfa088c064e9d688a652280387af26323`  
		Last Modified: Tue, 01 Sep 2026 00:03:00 GMT  
		Size: 15.4 MB (15442934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696b43082adc7811ae41d7f8d5d3f6fefd2b10e5cbce51cdb846bd2e4b6b68d2`  
		Last Modified: Tue, 01 Sep 2026 00:02:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bd07717a0ef43130824b1612843753a0b60888b68d06b6b0cef5bf3eb0be67`  
		Last Modified: Tue, 01 Sep 2026 00:32:22 GMT  
		Size: 5.4 MB (5351430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:4c02f90abc2039889f22d76597d39c7f4904815ae96a3186824bf10b50294ea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **624.1 KB (624130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16edbb260c3e28f712d457b1666529a563808f2cd8a8d2d9e71ad408c869d1b7`

```dockerfile
```

-	Layers:
	-	`sha256:011cc968f41848de3bfc37fc9017db53e2279a0e0d4e3758cabb30dad36b0ac6`  
		Last Modified: Tue, 01 Sep 2026 00:32:22 GMT  
		Size: 616.0 KB (616043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:871faea7bcefe91039531c254ca3995674a2ad1e338a6e6833986a44a8d4ee26`  
		Last Modified: Tue, 01 Sep 2026 00:32:21 GMT  
		Size: 8.1 KB (8087 bytes)  
		MIME: application/vnd.in-toto+json
