## `hylang:1-python3.10-alpine`

```console
$ docker pull hylang@sha256:2b4bf038106ff95363e7dd02471c03cb5478f29dbf1b56fce4d33f0053ae06fd
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

### `hylang:1-python3.10-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:ee5dd892d872c64d3564293d6a1d8e4b1d701fd6fa40d375ae39e23f5569cddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24874036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e130b0557896932d21ef01304772f0e1845b147fcb9e66d1191db769e3b8c52a`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:50:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:50:13 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:50:13 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:50:13 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 21:50:13 GMT
ENV PYTHON_VERSION=3.10.21
# Thu, 17 Sep 2026 21:50:13 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Thu, 17 Sep 2026 21:52:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:52:57 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:52:57 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:35:49 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:35:49 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:35:49 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:35:49 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1bd372d394a62c1688a2a5cb27665645c84a8789b52f27790c007e97efcd0e`  
		Last Modified: Thu, 17 Sep 2026 21:53:03 GMT  
		Size: 416.3 KB (416271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1307ba39d7e15e4f245f5d22c049591117b53e7c3389f477d0e811e4148a16f2`  
		Last Modified: Thu, 17 Sep 2026 21:53:04 GMT  
		Size: 15.6 MB (15561212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add8f65e39b4a7089a8a8b16ff60c7c409dd6d8fb0cf42453d9110e490530c6b`  
		Last Modified: Thu, 17 Sep 2026 21:53:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49ec325600ae2a22dd9bb81da539ca923f100cf9aafb7588f7c6361defd0e71`  
		Last Modified: Thu, 17 Sep 2026 22:35:54 GMT  
		Size: 5.0 MB (5046568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:f8a6a2b4008baf944bf3bffa845b76aa44d8bd8dd09348f35198245ab99f68c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.3 KB (694252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d254db72e5aea073b7eab2cd4e5b1e744aa5cb6ca85b834a08143c149cddbe96`

```dockerfile
```

-	Layers:
	-	`sha256:6868443bec8370f075993d61de797e5c6bd9208a7f7743988b40000398c90ac8`  
		Last Modified: Thu, 17 Sep 2026 22:35:54 GMT  
		Size: 684.8 KB (684845 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:871778ebbfe9c35ddde42b5dc74744f28b7137f7479988f47e0d30219461f7e1`  
		Last Modified: Thu, 17 Sep 2026 22:35:54 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine` - linux; arm variant v6

```console
$ docker pull hylang@sha256:6eb3c6712e4ffda4e36033202ec7f33c02e9dd49cebf7ab2700affe6e4e63a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24174368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3219646c27e4251d2060fa58f6c192960f3d4bd814c43e7fb807d8879be538`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:08:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:08:24 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:08:24 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 22:08:24 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 22:08:24 GMT
ENV PYTHON_VERSION=3.10.21
# Thu, 17 Sep 2026 22:08:24 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Thu, 17 Sep 2026 22:12:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:12:29 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:12:29 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:50:48 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:50:48 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:50:48 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:50:48 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52294fe465ba818521a3ebe65e20d092097ae5040d76d2c07276fa7be7224892`  
		Last Modified: Thu, 17 Sep 2026 22:12:34 GMT  
		Size: 417.5 KB (417524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab9e7b9afa960e10b398564ac327b12e25ec050f1e72ae2921900472b8efd99b`  
		Last Modified: Thu, 17 Sep 2026 22:12:34 GMT  
		Size: 15.2 MB (15154625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2bc7d2d977a2ddb577c0c38fcea62cb690b08bbaee1cba09219eb63bc864c51`  
		Last Modified: Thu, 17 Sep 2026 22:12:34 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768fba4f7b4381bee8f05063e15f7f6a15e31273c15366cbe276cb0d431aa336`  
		Last Modified: Thu, 17 Sep 2026 22:50:53 GMT  
		Size: 5.0 MB (5046858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:0bffffee9e2abf24f397e4f0a145852802489969457fd7f2d08b16807574536b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210466cf04bfce1c5020582480bb1e803ffd74b2551d8657431d1f01198b6614`

```dockerfile
```

-	Layers:
	-	`sha256:3db0969ea5a75358234453a01a64b2edadd4bb19f48ca17147f547dddc08fec8`  
		Last Modified: Thu, 17 Sep 2026 22:50:52 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine` - linux; arm variant v7

```console
$ docker pull hylang@sha256:9aa4d1dd9e9f7e6ed86da9dc5f0192219b9ff3516f4bba9428937dfc475c28e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23467255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443dbaa125bb3e6969c8abadad144de86cbcb30c56237b8effab26995ef1f3e2`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:14:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:14:26 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:14:26 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 22:14:26 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 22:14:26 GMT
ENV PYTHON_VERSION=3.10.21
# Thu, 17 Sep 2026 22:14:26 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Thu, 17 Sep 2026 22:18:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:18:44 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:18:44 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 23:25:16 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 23:25:16 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 23:25:16 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 23:25:16 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d57c914e49b45b2c8909699ea3650c95c3e0df493448a47ab0b7a388ba8d32a`  
		Last Modified: Thu, 17 Sep 2026 22:18:50 GMT  
		Size: 416.4 KB (416399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb83bae509ee80400414dcfc18cf5bd6c4532913373d017988ca2152173701a`  
		Last Modified: Thu, 17 Sep 2026 22:18:51 GMT  
		Size: 14.7 MB (14738486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca25417f269f7cdc82f03458ee174d5abc7d06bd9639202e72b256bd3b7a688`  
		Last Modified: Thu, 17 Sep 2026 22:18:50 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4226d6db61d37314802049047f2e93e88d2eff4829145ea9cb9fa6e262f3759a`  
		Last Modified: Thu, 17 Sep 2026 23:25:22 GMT  
		Size: 5.0 MB (5046917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:4b0812ccc4203a836eaf3fbff0a922639f3c54049002496a5d8b99a8270c8c17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.8 KB (696772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84efbd7da92604d57bb51c9173fc31467de2f95d26e401309b3fe9295b989b11`

```dockerfile
```

-	Layers:
	-	`sha256:ed7a542684fb260d4898b0bd56461bbbbc39f9e1db7120840a9166084098bcc3`  
		Last Modified: Thu, 17 Sep 2026 23:25:22 GMT  
		Size: 687.3 KB (687253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f01dad447683f52d809d61da849bb9e0faec173b14b5407ea8129d83fd085e84`  
		Last Modified: Thu, 17 Sep 2026 23:25:22 GMT  
		Size: 9.5 KB (9519 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:7c9599f322e4a92c9ce6eaf3a00883795079bcb82c6a99c998aeca66ed976645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25393220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ae9d62e267fa4ef0654e08301e8c41e34a1f2506715468a3aeaa66c4f86037`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:59:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:59:14 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:59:14 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:59:14 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 21:59:14 GMT
ENV PYTHON_VERSION=3.10.21
# Thu, 17 Sep 2026 21:59:14 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Thu, 17 Sep 2026 22:03:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:03:20 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:03:20 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 23:00:17 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 23:00:17 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 23:00:17 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 23:00:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d71ac9aee9c66170237b2736a54099116ded978ce6b6c9b9cc49db047de4fbd`  
		Last Modified: Thu, 17 Sep 2026 22:03:26 GMT  
		Size: 419.1 KB (419107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99577f6adbbd4d1c15b1a633f0d93c1446ddf7df131aef510f1a04f53316c355`  
		Last Modified: Thu, 17 Sep 2026 22:03:27 GMT  
		Size: 15.7 MB (15739466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5c989f414cb490bcc12f2cbd456f4012d5d2b96d1f366d273ce85254821a19`  
		Last Modified: Thu, 17 Sep 2026 22:03:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240c9feac8b959f8520878b59671cbe3567a88fd937c33f790da5c91dd92d8cb`  
		Last Modified: Thu, 17 Sep 2026 23:00:24 GMT  
		Size: 5.0 MB (5046739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:c71d0d6be1f6c4c5096da40f3f976438a9e775d72b561d0a7295c9764e6f657e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.9 KB (693858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdbfcea0f9b28b70cb6d82fc8fc0f60654c9973a059327c31aa6bd4a20c2ee2f`

```dockerfile
```

-	Layers:
	-	`sha256:8c71f976c25adda3a9a6a88b9194487360e8c8c8219cf693a176d31a3acb3806`  
		Last Modified: Thu, 17 Sep 2026 23:00:24 GMT  
		Size: 684.3 KB (684299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca5ea95f5798fc2642c439412427ea245e2dee7544bc93d031415a18b8bcc22b`  
		Last Modified: Thu, 17 Sep 2026 23:00:24 GMT  
		Size: 9.6 KB (9559 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine` - linux; 386

```console
$ docker pull hylang@sha256:92a905724099db3d4b5ec9f7e8732d91cfc9c55fbfac5a0250ab268012b3a87e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24935113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d01cd9abd15b55e8ba3112e2e745576561bad31c2abcf5044ef7bd67702be34`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:37:43 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:43 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:37:43 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 21:37:43 GMT
ENV PYTHON_VERSION=3.10.21
# Thu, 17 Sep 2026 21:37:43 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Thu, 17 Sep 2026 21:40:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:40:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:40:45 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:29:48 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:29:48 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:29:48 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:29:48 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634da0717135e311b5a7e641320d3ec42b3a6504a81406eefb9e102e48406523`  
		Last Modified: Thu, 17 Sep 2026 21:40:52 GMT  
		Size: 416.9 KB (416871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a6a3c24fd055c8a1b20dcfab49a1fedc01e5e0178765d85fd048d60e18f6fd`  
		Last Modified: Thu, 17 Sep 2026 21:40:52 GMT  
		Size: 15.8 MB (15794566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091ec569a6a8e845fdce8eb61eeb1c6f5541ff6a99ca919d40fea9edaebe82b`  
		Last Modified: Thu, 17 Sep 2026 21:40:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb23aa3ce51b2be3e7c9adf7b066127d3d6c5ace912f103721fc5aa0890a8531`  
		Last Modified: Thu, 17 Sep 2026 22:29:54 GMT  
		Size: 5.0 MB (5046647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:b7b61774ab4c0d8f309768b27b5e1f47073d82bf5367b7c08fe9888a4b74613c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.2 KB (694155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12d228179c42a70b6bd7320923178f7a9b293831da873fff702bfb550c04020`

```dockerfile
```

-	Layers:
	-	`sha256:f0bc61af88149e7beb6400b8770a727f21fa0ea25476fa5760d2dcb431eabc87`  
		Last Modified: Thu, 17 Sep 2026 22:29:54 GMT  
		Size: 684.8 KB (684800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f37e6ab3c391ad28b61fabc83263c95e95e9a36a573b154d204a322646d15225`  
		Last Modified: Thu, 17 Sep 2026 22:29:54 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine` - linux; ppc64le

```console
$ docker pull hylang@sha256:14dc02a0c8e7dfeb90889166d4e2e23de7d3fbcd4e0621693396551337fb36f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25654003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4a37799d8bc3532ecdca3ec9b08d421dde452c0384eb63a94b1a4f2a3da17b`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 00:12:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 00:12:25 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 00:12:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Fri, 18 Sep 2026 00:12:25 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Fri, 18 Sep 2026 00:12:25 GMT
ENV PYTHON_VERSION=3.10.21
# Fri, 18 Sep 2026 00:12:25 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Fri, 18 Sep 2026 00:40:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Fri, 18 Sep 2026 00:40:10 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 18 Sep 2026 00:40:10 GMT
CMD ["python3"]
# Fri, 18 Sep 2026 02:21:14 GMT
ENV HY_VERSION=1.3.1
# Fri, 18 Sep 2026 02:21:14 GMT
ENV HYRULE_VERSION=1.1.0
# Fri, 18 Sep 2026 02:21:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Fri, 18 Sep 2026 02:21:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2a6e18776fb076f55c4c350ec2f476f69cf22101081c8969eb0d29b64bffef`  
		Last Modified: Fri, 18 Sep 2026 00:22:49 GMT  
		Size: 419.5 KB (419505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19baaa9c035c95c883a06ddc36f38c87574580b149765a986fc7d9aed67bd37b`  
		Last Modified: Fri, 18 Sep 2026 00:40:22 GMT  
		Size: 16.4 MB (16369627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5355adbe4bb4c37c24afe4f7d8776d69ae83f80f72be335d44879cdd1a2112d5`  
		Last Modified: Fri, 18 Sep 2026 00:40:21 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b893c9c10136937488026316c5833d8a0b18a619aaf36cbad4f3d6d665da955`  
		Last Modified: Fri, 18 Sep 2026 02:21:26 GMT  
		Size: 5.0 MB (5047146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:c508f314c8ac05a29ee1ddfec0a7b2da777214061b0b37ffa0876ad40911067c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.7 KB (693727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c887b1050e1e610e38ce5ebb91eb4a56a063a73dbb50ec2ec1303382629d487`

```dockerfile
```

-	Layers:
	-	`sha256:e4751d51a873664495f482abb38588654896362c914bdf1d40e7aa73a5ca375a`  
		Last Modified: Fri, 18 Sep 2026 02:21:25 GMT  
		Size: 684.3 KB (684252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6648e5f7555edee4a03df4261c0e74fc4130a55239e167b7cd65223520de106`  
		Last Modified: Fri, 18 Sep 2026 02:21:25 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine` - linux; riscv64

```console
$ docker pull hylang@sha256:32a5039c75bce7e37a9df0f3bd50037815048dc3f1b8bc387b0ba1a333cab97f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26794476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f36b57de56de13e5c465a08b819d8f1738b948cd493da40bc6927dca1245853c`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 02:10:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 02:10:17 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 02:10:17 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 02 Sep 2026 02:10:17 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Wed, 02 Sep 2026 02:10:17 GMT
ENV PYTHON_VERSION=3.10.21
# Wed, 02 Sep 2026 02:10:17 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Wed, 02 Sep 2026 07:33:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Wed, 02 Sep 2026 07:33:25 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 02 Sep 2026 07:33:25 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 05:03:33 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 05:03:33 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 05:03:33 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 05:03:33 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914bf5a089621f8461f56dd92da4a1b1112c22e5f67444d0523cf7db398b8407`  
		Last Modified: Wed, 02 Sep 2026 02:45:23 GMT  
		Size: 408.6 KB (408648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b2fb8202a8f27348e09eae564eb36a9060a4c411d6c84320a1c397a81d2b2a`  
		Last Modified: Wed, 02 Sep 2026 07:34:18 GMT  
		Size: 17.8 MB (17762862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b24a0e2cfd71f942900d105f17515687eb7c1c493f324914e09399ee74c658c`  
		Last Modified: Wed, 02 Sep 2026 07:34:15 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f93a340c863e31a8803dd7e829d26df5b04d1034a6c04af5d84fbe103587b1`  
		Last Modified: Thu, 03 Sep 2026 05:04:15 GMT  
		Size: 5.0 MB (5048357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:2e7aea01705b73a84c6259a5d72bd0c3e99ed743c83366297315accf46e4bb5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.4 KB (692430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b6996e8dccb5e3c52af9f9677b4c809a1f972b10e74128481679f2da82e262`

```dockerfile
```

-	Layers:
	-	`sha256:8c5c2e21de0d2ee6dcaf43531ccc4d38e473bd11c6a3d6e1d07f0a85b6d55d14`  
		Last Modified: Thu, 03 Sep 2026 05:04:14 GMT  
		Size: 683.0 KB (682955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d621ac29125647737c26c88a60adf3f0dd4c82be87256edde5ebd823313b6bb`  
		Last Modified: Thu, 03 Sep 2026 05:04:14 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine` - linux; s390x

```console
$ docker pull hylang@sha256:d7202a833d7cdc12a117f3654e32d3b6726f5febd70a7f41100d13b103d3b0a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.1 MB (25106124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04eff72e6d773a4f0dde78b77d5f18130d689a744bcbb761b941347a8007e8ba`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:24:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 01:24:24 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 01:24:24 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Fri, 18 Sep 2026 01:24:24 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Fri, 18 Sep 2026 01:24:24 GMT
ENV PYTHON_VERSION=3.10.21
# Fri, 18 Sep 2026 01:24:24 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Fri, 18 Sep 2026 01:34:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Fri, 18 Sep 2026 01:34:04 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 18 Sep 2026 01:34:04 GMT
CMD ["python3"]
# Fri, 18 Sep 2026 02:51:51 GMT
ENV HY_VERSION=1.3.1
# Fri, 18 Sep 2026 02:51:51 GMT
ENV HYRULE_VERSION=1.1.0
# Fri, 18 Sep 2026 02:51:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Fri, 18 Sep 2026 02:51:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829df4255e29f0438247dd78e654b06fddde90fe1f730d6a80439a8e4fdf73d9`  
		Last Modified: Fri, 18 Sep 2026 01:30:17 GMT  
		Size: 417.4 KB (417434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b88057a7a8c1b0f22fecf0e745bafe49df3b42a161f30b9cb59a73c1eb9512`  
		Last Modified: Fri, 18 Sep 2026 01:34:16 GMT  
		Size: 15.9 MB (15926365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e885a332543eb729f77bc591e364023c5db074bc5be74a1d6d708880f506d82`  
		Last Modified: Fri, 18 Sep 2026 01:34:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed1806e82e77dc05d9b0d044dfbf01e986d15792b30420036cd7a85d78916c9f`  
		Last Modified: Fri, 18 Sep 2026 02:52:01 GMT  
		Size: 5.0 MB (5046738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:76487e968d3fb5d9eced2175a931fe3762f6da3fff828cdc6f3fc97a2c8a8c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.6 KB (693601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b29777482c27d26001a1abccb7b2450cfff0526fa7a102d797e9ea1fa276b9`

```dockerfile
```

-	Layers:
	-	`sha256:5e670da6875c3092a45e461c99921f0910fc201eed9bdc7d4fb831246b02b2b9`  
		Last Modified: Fri, 18 Sep 2026 02:52:01 GMT  
		Size: 684.2 KB (684194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cc0e2bb33d067d52755405ca6892ccc7a7301131c3f9e270f9dc03add4574ab`  
		Last Modified: Fri, 18 Sep 2026 02:52:01 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json
