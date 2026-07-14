## `hylang:python3.11`

```console
$ docker pull hylang@sha256:2b70c02932dc5d30833e2dbf46c0f54b894502555a3ae12d8cc89484c9893214
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

### `hylang:python3.11` - linux; amd64

```console
$ docker pull hylang@sha256:559a0e00adb9475652ef018a5f8e1e7a2e8ca760d9dc0b950e796c6b2f414593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52476385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ef42ee4906180f303587ad11a3fcb7fe3b32cecbd617c908d9e60079208a97b`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:03:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:03:18 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 02:03:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:03:18 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 14 Jul 2026 02:03:18 GMT
ENV PYTHON_VERSION=3.11.15
# Tue, 14 Jul 2026 02:03:18 GMT
ENV PYTHON_SHA256=272179ddd9a2e41a0fc8e42e33dfbdca0b3711aa5abf372d3f2d51543d09b625
# Tue, 14 Jul 2026 02:10:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 02:10:44 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 02:10:44 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 02:46:29 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 02:46:29 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 02:46:29 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 02:46:29 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9775d166087aba0afe5ba9a88859c04c08090e82ae218742d09fec9119e0335d`  
		Last Modified: Tue, 14 Jul 2026 02:10:53 GMT  
		Size: 1.3 MB (1293282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b265b8eae4a26a263eb55546aa430c1eef37032a7cd86393d98c6b779f28319`  
		Last Modified: Tue, 14 Jul 2026 02:10:53 GMT  
		Size: 14.4 MB (14418685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c89b9f64c028c19ba92e195d7589d914b9cd1fc69f3c3dfeb931e93876ac2064`  
		Last Modified: Tue, 14 Jul 2026 02:10:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4570f77dad41f2576de5795df22bebd403906dcc30755bdea909e8d034363d`  
		Last Modified: Tue, 14 Jul 2026 02:46:35 GMT  
		Size: 7.0 MB (6983265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11` - unknown; unknown

```console
$ docker pull hylang@sha256:aab823a6e52bb8ad155549e5175f545ba6c3bfd7c175931e090f0f2646cf9b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523d191e45cddc128586d8f5ebc771bf49c6a7a74cf863af8d9509a3167cd58f`

```dockerfile
```

-	Layers:
	-	`sha256:e9f4361c315f4c15f3fb4ea92642e8fccdf45df02909b9a6e9db5373ad18cf60`  
		Last Modified: Tue, 14 Jul 2026 02:46:35 GMT  
		Size: 2.2 MB (2202652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfd7e7953dc189377387c23b7acbcdc1dcaaec1f8f2fe3a82e0ac8040a901e67`  
		Last Modified: Tue, 14 Jul 2026 02:46:35 GMT  
		Size: 9.3 KB (9320 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11` - linux; arm variant v5

```console
$ docker pull hylang@sha256:e6df6e06367d56e71b391e978592e81802e615906f2b26e71755696a82e91b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50272704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:572f3421af8d988d461634089f73bb3dc2083c3b27a1800257a823df19343691`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:51:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:51:53 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 02:51:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:51:53 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 14 Jul 2026 02:51:53 GMT
ENV PYTHON_VERSION=3.11.15
# Tue, 14 Jul 2026 02:51:53 GMT
ENV PYTHON_SHA256=272179ddd9a2e41a0fc8e42e33dfbdca0b3711aa5abf372d3f2d51543d09b625
# Tue, 14 Jul 2026 03:10:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 03:10:38 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 03:10:38 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 04:10:30 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 04:10:30 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 04:10:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 04:10:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099a619aa84935a7950eb67fa8b5b1d6a631c3e1958c954d0c05aafcabbf34d9`  
		Last Modified: Tue, 14 Jul 2026 03:10:46 GMT  
		Size: 1.3 MB (1276396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d07d7aa4f67ce003beb4d1443ebcd6831167550d7f4a6bbff386f590e3b70a9c`  
		Last Modified: Tue, 14 Jul 2026 03:10:46 GMT  
		Size: 14.1 MB (14057893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be9ef76188de5c9d6467d4b5dccbb4c9ecc2bf21a6301492f89b1be92c6baea`  
		Last Modified: Tue, 14 Jul 2026 03:10:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bd93923d33dfc0a95369156888dfe3018fc2f3414bddb3410b82b945ec2b62`  
		Last Modified: Tue, 14 Jul 2026 04:10:37 GMT  
		Size: 7.0 MB (6983349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11` - unknown; unknown

```console
$ docker pull hylang@sha256:25d8e5944844b56602089a7368ef0ed5add072ea44366374cc0a582255d0073c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f49f2be36f48fc4090d2b321930417d28ba48ab917513f035c11516502d982f`

```dockerfile
```

-	Layers:
	-	`sha256:b90ba673afb17196d58470365a31f39e2d40d35fa97ffe99e38eb15e4fbf884b`  
		Last Modified: Tue, 14 Jul 2026 04:10:37 GMT  
		Size: 2.2 MB (2205653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c986339bbd097d6d89a73f689e1fab290b662e0516b123d403c876e662df703`  
		Last Modified: Tue, 14 Jul 2026 04:10:37 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11` - linux; arm variant v7

```console
$ docker pull hylang@sha256:dfe6862259c0ddb21114b36fd0cf147da9b74e9102a5ce14477a190513e0ca3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48230373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f51fdf1c2948b61fdc6260d9708b1c3b5c1ac6700897ae40aad67a5dde01fa1`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:21:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:21:41 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:21:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:21:41 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 14 Jul 2026 03:21:41 GMT
ENV PYTHON_VERSION=3.11.15
# Tue, 14 Jul 2026 03:21:41 GMT
ENV PYTHON_SHA256=272179ddd9a2e41a0fc8e42e33dfbdca0b3711aa5abf372d3f2d51543d09b625
# Tue, 14 Jul 2026 03:38:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 03:38:29 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 03:38:29 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 04:36:24 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 04:36:24 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 04:36:24 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 04:36:24 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b07c093b8248c05f7dcf40e7954f9249dafbf56a9363a01031ebe5d06a4bc3`  
		Last Modified: Tue, 14 Jul 2026 03:38:37 GMT  
		Size: 1.2 MB (1249173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea181bc8042a0ad299dc045d5514b26f022704df26c4e159d935e880823653f`  
		Last Modified: Tue, 14 Jul 2026 03:38:37 GMT  
		Size: 13.8 MB (13791058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792f2b06cd323be9cdcba7bc1e734848303f84e8b9aa246c8e27e51ec2a245e6`  
		Last Modified: Tue, 14 Jul 2026 03:38:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f560376bf8dff2d7575978ca6cdbf76ee603235e86bc77c3cd38ba1fe0fcc1e5`  
		Last Modified: Tue, 14 Jul 2026 04:36:31 GMT  
		Size: 7.0 MB (6983425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11` - unknown; unknown

```console
$ docker pull hylang@sha256:caf0c7f0b704bffbfceda61a0c4806ed8c45fedf7aba307f5a88fa1794acc33f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2213538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a986b50ff568df8c6030c03012ff1f44cd8ae46f2a294358bdb14bb8e4e7f2b`

```dockerfile
```

-	Layers:
	-	`sha256:d39e14093cd5ddbce0938dfac05e35e59ff8fc1fa2dd693cb39c2fdba4b9eaa2`  
		Last Modified: Tue, 14 Jul 2026 04:36:31 GMT  
		Size: 2.2 MB (2204106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2434c710f69c749f013318ab5b0925391b96c946fc30b0ec042306b94683ba38`  
		Last Modified: Tue, 14 Jul 2026 04:36:30 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:b30bc0b70f70593d713694c64adf1aa1d7b196d9556d67242443180232bd52f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52776003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1206e265f70bec73d80741ae648e6b8703d4bc4c87d1d584106efcb336531700`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:07:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:07:56 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 02:07:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:07:56 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 14 Jul 2026 02:07:56 GMT
ENV PYTHON_VERSION=3.11.15
# Tue, 14 Jul 2026 02:07:56 GMT
ENV PYTHON_SHA256=272179ddd9a2e41a0fc8e42e33dfbdca0b3711aa5abf372d3f2d51543d09b625
# Tue, 14 Jul 2026 02:19:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 02:19:19 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 02:19:19 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 03:25:22 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 03:25:22 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 03:25:22 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 03:25:22 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391ef874fe2e0ae15c7ece42b9961db1260f333e9a2151e5269646d119f3e1b1`  
		Last Modified: Tue, 14 Jul 2026 02:19:28 GMT  
		Size: 1.3 MB (1274134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a62bb0a4e66546f1d746670a60e4a654b876719da3c955685825d396ce70e71`  
		Last Modified: Tue, 14 Jul 2026 02:19:28 GMT  
		Size: 14.4 MB (14374574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c1f77b2e7215faf96d9764895595c2cde9a080c696241deed63b5e0cdb49d2`  
		Last Modified: Tue, 14 Jul 2026 02:19:27 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb947ec162b93bd8184a1ee73de2fece1cd964ebb5e17f08b2d5f3ddd934fbf0`  
		Last Modified: Tue, 14 Jul 2026 03:25:29 GMT  
		Size: 7.0 MB (6983340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11` - unknown; unknown

```console
$ docker pull hylang@sha256:a8f20ec67158d02d861c172cd4910f806999b44ec37930ac4c211b66906f3052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f32116c3652fe86cbdd1b8f4154b0fdde6cb213102ba3b9cc2109c56be7c4e93`

```dockerfile
```

-	Layers:
	-	`sha256:0470f7c053236ea83837b7e3a2c75933a0462a61875d56a1234d846547e85f19`  
		Last Modified: Tue, 14 Jul 2026 03:25:29 GMT  
		Size: 2.2 MB (2202958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe3ee582ae56e957d264ee414d23b4dca4649fd509f580b931a2c92d1fbb6396`  
		Last Modified: Tue, 14 Jul 2026 03:25:29 GMT  
		Size: 9.5 KB (9472 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11` - linux; 386

```console
$ docker pull hylang@sha256:e944d250ce4c3a5f8ce2a70a932f9d4a6d477ef14d92eb2e79478476465c5f82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54038214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00a70188837dea342e066a152b85f2aa460e6e42f6373f66e84f0cce1520e22`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:01:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:01:57 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 02:01:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:01:57 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 14 Jul 2026 02:01:57 GMT
ENV PYTHON_VERSION=3.11.15
# Tue, 14 Jul 2026 02:01:57 GMT
ENV PYTHON_SHA256=272179ddd9a2e41a0fc8e42e33dfbdca0b3711aa5abf372d3f2d51543d09b625
# Tue, 14 Jul 2026 02:22:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 02:22:05 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 02:22:05 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 03:19:03 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 03:19:03 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 03:19:03 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 03:19:03 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ba4c2ef42b071725d2d25652776896d4971518b969938607d129a4d44d3fbc`  
		Last Modified: Tue, 14 Jul 2026 02:22:12 GMT  
		Size: 1.3 MB (1297795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164230f692fd6fef76694bdd5fe990ae497de2d3f0df9d81f90765c516988d3b`  
		Last Modified: Tue, 14 Jul 2026 02:22:13 GMT  
		Size: 14.5 MB (14460620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449ed2d7f304fe9ff68aab12c74a75a7bbd1c73650413aa329fd5f3e6b409ab0`  
		Last Modified: Tue, 14 Jul 2026 02:22:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b91594eafd047045e690c00854cb9edb2e10553a093ba582eeadf4a58b0f74`  
		Last Modified: Tue, 14 Jul 2026 03:19:10 GMT  
		Size: 7.0 MB (6983249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11` - unknown; unknown

```console
$ docker pull hylang@sha256:eea0a060aac7ca6367604fbf26610a00c90b0d8af208d3536c03e66e94276247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2209081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c5a0dfbeeef0c3acbfb79fa087fa10454ffb85482c23408af8d7ceedd1a3ec`

```dockerfile
```

-	Layers:
	-	`sha256:ce65626429310f7c64a6c146e834ce79a95afd9abd01e049a21d6afe241b18c8`  
		Last Modified: Tue, 14 Jul 2026 03:19:09 GMT  
		Size: 2.2 MB (2199813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dacfd9da8d971fc7405348c3bc698a9be66e917364ba1b1ae9f64c144d6a7ff`  
		Last Modified: Tue, 14 Jul 2026 03:19:09 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11` - linux; ppc64le

```console
$ docker pull hylang@sha256:be20c64dad3fee699706c195d5af11b62651884f1158ca308665abe468ebe564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56665208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7232d4c63eb9bb6d23fd7b0561fee92350d43825a0c331b0bfd1e59c3f3ab2e`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 06:38:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 06:38:47 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 06:38:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 06:38:47 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 14 Jul 2026 06:38:47 GMT
ENV PYTHON_VERSION=3.11.15
# Tue, 14 Jul 2026 06:38:47 GMT
ENV PYTHON_SHA256=272179ddd9a2e41a0fc8e42e33dfbdca0b3711aa5abf372d3f2d51543d09b625
# Tue, 14 Jul 2026 07:29:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 07:29:26 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 07:29:26 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 14:30:36 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 14:30:36 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 14:30:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 14:30:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdcdc81014205d888d1015e03d00cd2b5946c200da44ff8327cc67f2d08828f4`  
		Last Modified: Tue, 14 Jul 2026 06:57:42 GMT  
		Size: 1.3 MB (1321258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aea0388fb1f2dbe975b7be0189ffb28bf63e5e5c46b63350d9be7667bf3b5b7`  
		Last Modified: Tue, 14 Jul 2026 07:29:40 GMT  
		Size: 14.8 MB (14758497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682ce04804a7a8da6c94f20b2ca06fb1548e7b70119de076c8f4f1b2b8cbdcb5`  
		Last Modified: Tue, 14 Jul 2026 07:29:39 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef65946e5d85ac80f5a8463591746dc01f8b0a3706449682f6337ebc5ce91e30`  
		Last Modified: Tue, 14 Jul 2026 14:30:50 GMT  
		Size: 7.0 MB (6983726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11` - unknown; unknown

```console
$ docker pull hylang@sha256:076be7825f29450ca33cc72e27ae05469fae6979db2cac65448c78a7cbc12ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9b4f3196c0c34f513f361d2ae9d13dcdcdb8d8ff60e0806067de715bb3c705`

```dockerfile
```

-	Layers:
	-	`sha256:52d1f4a3f041d59483c86d588204d97bd09bdc86a0eb4de4047d1c86567bf13b`  
		Last Modified: Tue, 14 Jul 2026 14:30:49 GMT  
		Size: 2.2 MB (2206243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:392c5cac2fea342cee30cc3317ade54b288be0b2a3bc27b84582f6c1688d4e67`  
		Last Modified: Tue, 14 Jul 2026 14:30:49 GMT  
		Size: 9.4 KB (9388 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11` - linux; riscv64

```console
$ docker pull hylang@sha256:e709be2c0c1d536790a19b72eaf0fa3d7f57dd300ea64f2f4ccd92d5ab6d84fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50778406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d97de33b63aafd1d0114a4bd7ff340c4c8fc22887e5a79e003ad5abbd89b2e9`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 19:02:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 19:02:41 GMT
ENV LANG=C.UTF-8
# Tue, 07 Jul 2026 19:02:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 07 Jul 2026 19:02:41 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 07 Jul 2026 19:02:41 GMT
ENV PYTHON_VERSION=3.11.15
# Tue, 07 Jul 2026 19:02:41 GMT
ENV PYTHON_SHA256=272179ddd9a2e41a0fc8e42e33dfbdca0b3711aa5abf372d3f2d51543d09b625
# Tue, 07 Jul 2026 20:21:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 07 Jul 2026 20:21:33 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 07 Jul 2026 20:21:33 GMT
CMD ["python3"]
# Thu, 09 Jul 2026 04:51:02 GMT
ENV HY_VERSION=1.3.0
# Thu, 09 Jul 2026 04:51:02 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 09 Jul 2026 04:51:02 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 09 Jul 2026 04:51:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2c705486f99dc6118d671fa44330115ba602850a050cd6bb453828e82e4941`  
		Last Modified: Tue, 07 Jul 2026 20:22:45 GMT  
		Size: 1.3 MB (1261214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11d3d1477df60bae4911ae138216cf9000ff46a7987c85ea9bf99128195fe82`  
		Last Modified: Tue, 07 Jul 2026 20:22:47 GMT  
		Size: 14.3 MB (14250167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ced86c3e24b8b9baa0eb5de5a866a1f92e2d6b72683a2e9bfdc56650003aafc`  
		Last Modified: Tue, 07 Jul 2026 20:22:45 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98ea671d237414452b8ffed985e89be12a483661c61fa5f56439ff020855d62`  
		Last Modified: Thu, 09 Jul 2026 04:52:07 GMT  
		Size: 7.0 MB (6984390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11` - unknown; unknown

```console
$ docker pull hylang@sha256:1a2d6d6cfd64dab4ab86474353e9ad80708c62373485307e9b2655c2f6e758cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2205966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee854417ffc4f846bbf0892e049dcf9f7b62228f705f5a0c14484cf3f3bd287`

```dockerfile
```

-	Layers:
	-	`sha256:d1e8891f08b34584aa6e7b4ed697659dca552ff90dc089f55e3f5b97632eec45`  
		Last Modified: Thu, 09 Jul 2026 04:52:06 GMT  
		Size: 2.2 MB (2196578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ff88a8f048b55a3286596727aa54215cc8ae64cd22d41c6eb903531e5633960`  
		Last Modified: Thu, 09 Jul 2026 04:52:06 GMT  
		Size: 9.4 KB (9388 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11` - linux; s390x

```console
$ docker pull hylang@sha256:ce5230fde9b2fb6ec9a2cbd6200a9b11e4f0d8af88a98f0c1b99a81b0accf506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52559643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4db08a31be6e6437e199675b15511fc98bda009a3a8034f63a2953342da4113`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:03:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:03:03 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 04:03:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:03:03 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 14 Jul 2026 04:03:03 GMT
ENV PYTHON_VERSION=3.11.15
# Tue, 14 Jul 2026 04:03:03 GMT
ENV PYTHON_SHA256=272179ddd9a2e41a0fc8e42e33dfbdca0b3711aa5abf372d3f2d51543d09b625
# Tue, 14 Jul 2026 04:14:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 04:14:27 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 04:14:27 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 05:30:24 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 05:30:24 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 05:30:24 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 05:30:24 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078a6114a25a94b915e6f138e8167e9ff1f3608a95e260d4e165dc7dc24a063b`  
		Last Modified: Tue, 14 Jul 2026 04:14:38 GMT  
		Size: 1.3 MB (1305787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ab9efa865e6d58caab36c59cd6ad82373b466bb56ffb49a37b2806ccc7f876`  
		Last Modified: Tue, 14 Jul 2026 04:14:39 GMT  
		Size: 14.4 MB (14423432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d75cd4ad2723fd44b92765d4f2e418749a50bf7a37f5ec4b6957532944901b`  
		Last Modified: Tue, 14 Jul 2026 04:14:38 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e76cefc00c0379df0d71e549918260babccdc16756936c58fea1d8eb79b308`  
		Last Modified: Tue, 14 Jul 2026 05:30:38 GMT  
		Size: 7.0 MB (6983543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11` - unknown; unknown

```console
$ docker pull hylang@sha256:258a0e929d2a1b44eb03516272601fabb98adc9dc27bc0458e791e209f4f54f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2213411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b686ae8e9e6fd5137fe375f3bf63c735f7e6271b287670face6dfdaeceada3`

```dockerfile
```

-	Layers:
	-	`sha256:cc63a590a04602f37a3af892ce54e726dc99afac41fe2290d760231266e84add`  
		Last Modified: Tue, 14 Jul 2026 05:30:38 GMT  
		Size: 2.2 MB (2204091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33af20c44f45ca10397f5ad4c41583bb0f112caeae4bb5808f3f926b61f188a0`  
		Last Modified: Tue, 14 Jul 2026 05:30:38 GMT  
		Size: 9.3 KB (9320 bytes)  
		MIME: application/vnd.in-toto+json
