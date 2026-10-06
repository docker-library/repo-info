## `hylang:python3.10`

```console
$ docker pull hylang@sha256:359e8b5f8d09d8a67a157d42e3513549c2c1b908e1a9c859ca5372bfa87a4015
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

### `hylang:python3.10` - linux; amd64

```console
$ docker pull hylang@sha256:daa6098836c3ea51a01a4f774b82c0b05b93ce424a16e2fcf7bd392ad53edc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50104766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f48a3e114fcd419c306b916496a33290255693ea9f19ac9e0de89bebab5e2f9`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:00:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:00:58 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 02:00:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:00:58 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 06 Oct 2026 02:00:58 GMT
ENV PYTHON_VERSION=3.10.22
# Tue, 06 Oct 2026 02:00:58 GMT
ENV PYTHON_SHA256=c61fe9b1a1a7ec2a0b0388e664187c378a5325a89e3606d220abf5bdfccb2543
# Tue, 06 Oct 2026 02:07:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:07:06 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:07:06 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:51:28 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:51:28 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:51:28 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:51:28 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1189ef607cc64ff2e2a214c12e5f46402dc316a1a62cc5adb7071616882df7ee`  
		Last Modified: Tue, 06 Oct 2026 02:07:14 GMT  
		Size: 1.3 MB (1294052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f4247a2db52342f23c9ff6911633949443ca83b454d185a05ed6fc8689ffca`  
		Last Modified: Tue, 06 Oct 2026 02:07:15 GMT  
		Size: 13.9 MB (13918444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1cbe171e30bea48715fd96ecf842ad9fae425ce5a18917bee871684eb836f1`  
		Last Modified: Tue, 06 Oct 2026 02:07:14 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91b029fef9ad57cf8906482372313b8f072ecaefbcbe195d6c12a3dd7f51869`  
		Last Modified: Tue, 06 Oct 2026 02:51:36 GMT  
		Size: 5.0 MB (5048671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10` - unknown; unknown

```console
$ docker pull hylang@sha256:6a4161697cd72656bea8991ab893a7b0234584381ef0b2c81309780866c12197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2217920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58911e1f0737cdf5560489730af3bd4f29903962d702eba62ff051f11eeace80`

```dockerfile
```

-	Layers:
	-	`sha256:747cba3586129f39120ac493a440e872eada8e9dca4eea232ea1ad1af1a5ba2e`  
		Last Modified: Tue, 06 Oct 2026 02:51:36 GMT  
		Size: 2.2 MB (2208600 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48d8dbe2a50529dc2086a94092d83d39fb82f6c6c525d3c967511565997deb17`  
		Last Modified: Tue, 06 Oct 2026 02:51:36 GMT  
		Size: 9.3 KB (9320 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10` - linux; arm variant v5

```console
$ docker pull hylang@sha256:5d8e3a731ae5299b76f684c3839dfb3db15a98110f5a540e290a09a9a22f9bc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47912691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7f9a1201e013faa825873dc7bcbd7d1a5a77e16dbd4f4311360f0d7d79c3ec`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:02:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:02:43 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 02:02:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:02:43 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 06 Oct 2026 02:02:43 GMT
ENV PYTHON_VERSION=3.10.22
# Tue, 06 Oct 2026 02:02:43 GMT
ENV PYTHON_SHA256=c61fe9b1a1a7ec2a0b0388e664187c378a5325a89e3606d220abf5bdfccb2543
# Tue, 06 Oct 2026 02:14:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:14:21 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:14:21 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 03:16:45 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 03:16:45 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 03:16:45 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 03:16:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280b2f382acda7d6bc790d40f75ac03e8272cc39d08d01bce6874309ac0c435f`  
		Last Modified: Tue, 06 Oct 2026 02:14:29 GMT  
		Size: 1.3 MB (1276962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ad86e60154092ebb0594fdf66f6ff47e5ae6deeeecafd131c655f8d82e993a`  
		Last Modified: Tue, 06 Oct 2026 02:14:29 GMT  
		Size: 13.6 MB (13578969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484f8300bc965ba841e0e67007261dc0ff172fc65b380f4d3370d43d56995567`  
		Last Modified: Tue, 06 Oct 2026 02:14:28 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5187e67c8ede07f5eb1b5aa9e87ff3977b448d0e35c2bd34c3b9e7cbe9dc7537`  
		Last Modified: Tue, 06 Oct 2026 03:16:52 GMT  
		Size: 5.0 MB (5049024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10` - unknown; unknown

```console
$ docker pull hylang@sha256:a02359157a744b4223045dfe3f064da657f2a7682c0db752f1fe66c5d5d6d10f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2221033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b4683a451401021c61ba3ba11a031be9af8993944c76656ee841e22414de8c`

```dockerfile
```

-	Layers:
	-	`sha256:32c242ad0ba3f2aaa5ba46392dc67340a47aa78fc4bee8d44c538badcd12fbdb`  
		Last Modified: Tue, 06 Oct 2026 03:16:52 GMT  
		Size: 2.2 MB (2211601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dd4adffa9a540d32ebc75762b882376f50ccb956ee83f7f77bfd7ee3bdab483`  
		Last Modified: Tue, 06 Oct 2026 03:16:51 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10` - linux; arm variant v7

```console
$ docker pull hylang@sha256:1bc848e755ad336edf23fac66b1dcb305af5fe3ea180c5ee526812e37cd1cd74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48075605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e96bd94a2ffa5a98c273acb0f43b3907c4754b061307d52d6360e23432b4e90`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 22:09:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 22:09:01 GMT
ENV LANG=C.UTF-8
# Thu, 01 Oct 2026 22:09:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 01 Oct 2026 22:09:01 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 01 Oct 2026 22:09:01 GMT
ENV PYTHON_VERSION=3.10.22
# Thu, 01 Oct 2026 22:09:01 GMT
ENV PYTHON_SHA256=c61fe9b1a1a7ec2a0b0388e664187c378a5325a89e3606d220abf5bdfccb2543
# Thu, 01 Oct 2026 22:38:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 22:38:05 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 22:38:05 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 23:11:45 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 23:11:45 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 23:11:45 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 23:11:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b78818bff1ad927fcdf202bccdbcd689c7602c2014f935694596ed7f841c7d`  
		Last Modified: Thu, 01 Oct 2026 22:26:49 GMT  
		Size: 3.5 MB (3464757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f30c2f880caae2b0180be933568633c40e0f25572eb5587bd2be1b8a1203cb`  
		Last Modified: Thu, 01 Oct 2026 22:38:13 GMT  
		Size: 13.3 MB (13312700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f126118c99b66605cfd6f65a38ffb2a149d3e4bc2aa0f902bb2b19f5349d2ed8`  
		Last Modified: Thu, 01 Oct 2026 22:38:13 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f149d970269ef01de90a3bc08ee6f0768978bc228f2805665faa1527e8fdb7ac`  
		Last Modified: Thu, 01 Oct 2026 23:11:53 GMT  
		Size: 5.0 MB (5048969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10` - unknown; unknown

```console
$ docker pull hylang@sha256:a7a12c313d962def8d896ac3bba063d21272c35be9a24c80aaa74fac4ea222d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2219486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee4d67afb60e242a8ee7fa9860a846cda5c310648cfea8abf97b51a507aa159`

```dockerfile
```

-	Layers:
	-	`sha256:ce396c084d18563c14124a0f9ce5080e8cfac99d68ecf9ba6aed4fb1ecbe254b`  
		Last Modified: Thu, 01 Oct 2026 23:11:53 GMT  
		Size: 2.2 MB (2210054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03ec6728726f9b9e06640f81fad40196295526c72bbc4b975659d5a7562444c8`  
		Last Modified: Thu, 01 Oct 2026 23:11:53 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:265ba217d7bd906fe41f4f5c0ecdec151be7d86f6702960329ff5126d69da6ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50397092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57da9683bfc2e4367fc3f992cf6033ac00316cdd47c4ef08cfa5df4909f954b2`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:04:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:04:15 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 02:04:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:04:15 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 06 Oct 2026 02:04:15 GMT
ENV PYTHON_VERSION=3.10.22
# Tue, 06 Oct 2026 02:04:15 GMT
ENV PYTHON_SHA256=c61fe9b1a1a7ec2a0b0388e664187c378a5325a89e3606d220abf5bdfccb2543
# Tue, 06 Oct 2026 02:11:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:11:48 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:11:48 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:44:41 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:44:41 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:44:41 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:44:41 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f4d98c31c2d8174aa8768b7d419a89cf8d082b14fb415c204d4b03229fbdbc`  
		Last Modified: Tue, 06 Oct 2026 02:11:56 GMT  
		Size: 1.3 MB (1275258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ac7ae14ecdc34224ee2852890f802ebc8efd8fae275a29cb2cb11127d26ae0`  
		Last Modified: Tue, 06 Oct 2026 02:11:56 GMT  
		Size: 13.9 MB (13872468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e438e1ba382f38ea04488b457dd14dd5fdfbfc62f3c40058d42f4442f08ead9a`  
		Last Modified: Tue, 06 Oct 2026 02:11:56 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e56e6f305d87b7ec1f512288617627a30f1090bc8fd2af319895fc51a201b9`  
		Last Modified: Tue, 06 Oct 2026 02:44:48 GMT  
		Size: 5.0 MB (5048834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10` - unknown; unknown

```console
$ docker pull hylang@sha256:f550308815f18715d901d97d7c4bb7b1e79043016ea96efb304189598a57bff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2218377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:193c910f4ca3bb77ce4610fb6a22c725027dc3b3602d9d9f7160efe0c1553bf4`

```dockerfile
```

-	Layers:
	-	`sha256:faec33ae55a7be2dd169cc3430b6927c200a058307ae6be84d7846b12d91024d`  
		Last Modified: Tue, 06 Oct 2026 02:44:48 GMT  
		Size: 2.2 MB (2208906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9b5f7973137f6f7dc72292d8ff792a44d02cdf1d8973e71dd3d8f17f8650e2f`  
		Last Modified: Tue, 06 Oct 2026 02:44:48 GMT  
		Size: 9.5 KB (9471 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10` - linux; 386

```console
$ docker pull hylang@sha256:77c6d87af607995cc332468459320c5f07a4cde1003e491b567044dd5ff4497d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51652633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a33308a04fdbe1007a5576bb4e8b503f0d90b95ccfcc2af0f3763f0a723ef7d`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:05:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:05:57 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 02:05:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:05:57 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 06 Oct 2026 02:05:57 GMT
ENV PYTHON_VERSION=3.10.22
# Tue, 06 Oct 2026 02:05:57 GMT
ENV PYTHON_SHA256=c61fe9b1a1a7ec2a0b0388e664187c378a5325a89e3606d220abf5bdfccb2543
# Tue, 06 Oct 2026 02:25:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:25:19 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:25:19 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 03:17:00 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 03:17:00 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 03:17:00 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 03:17:00 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f42ce8573705c9ab6a253bad8d36351d8d3aebf957bb76c7674c652aa7dcb6`  
		Last Modified: Tue, 06 Oct 2026 02:25:26 GMT  
		Size: 1.3 MB (1299080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c2ccc60c7b4a04911cefdc6e589afd54d70bc8a05f4c9326ee033aff77464f`  
		Last Modified: Tue, 06 Oct 2026 02:25:26 GMT  
		Size: 14.0 MB (13951428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8181dd60eaa2d48828f4dbf596ab4a2252fe6dab93d89817e2bd9a5ef8960bd3`  
		Last Modified: Tue, 06 Oct 2026 02:25:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9101d28396d15e036bd10086f5a94afcf183b3ed08731e62261d0e2b3ddea53f`  
		Last Modified: Tue, 06 Oct 2026 03:17:07 GMT  
		Size: 5.0 MB (5048579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10` - unknown; unknown

```console
$ docker pull hylang@sha256:184122e358108557f335bf9f114e8377b1d9339a55dd2689fd95e3db1775bc1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a71bbb08581f6a1d67bb3a01d9152e4ee2e97cf525ca00604b53793d647f7f7f`

```dockerfile
```

-	Layers:
	-	`sha256:fbc5bdb9cb4bbbf2ace4707b898ccb1776846c9ec16a4d6a1942ad613f18f3e7`  
		Last Modified: Tue, 06 Oct 2026 03:17:06 GMT  
		Size: 2.2 MB (2205761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90940d621d165e5229472b51420edb2f2f91e0745e39ab3e1c0246b7c2fa1a79`  
		Last Modified: Tue, 06 Oct 2026 03:17:07 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10` - linux; ppc64le

```console
$ docker pull hylang@sha256:113f32953caf203dd18a80e483be8cc6af78cf593f14ac9cc392debbeb28df18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57480288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:569690d8524487b2685b37f11faabd3d893e7eb3336d34564d3d772210c64fd2`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 00:29:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 00:29:11 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 00:29:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 02 Oct 2026 00:29:11 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Fri, 02 Oct 2026 00:29:11 GMT
ENV PYTHON_VERSION=3.10.22
# Fri, 02 Oct 2026 00:29:11 GMT
ENV PYTHON_SHA256=c61fe9b1a1a7ec2a0b0388e664187c378a5325a89e3606d220abf5bdfccb2543
# Fri, 02 Oct 2026 02:38:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Fri, 02 Oct 2026 02:38:21 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 02 Oct 2026 02:38:21 GMT
CMD ["python3"]
# Fri, 02 Oct 2026 06:00:42 GMT
ENV HY_VERSION=1.3.1
# Fri, 02 Oct 2026 06:00:42 GMT
ENV HYRULE_VERSION=1.1.0
# Fri, 02 Oct 2026 06:00:42 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Fri, 02 Oct 2026 06:00:42 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef90010ae7037e813979f8afc3bf728ede8b3901363a550df0817e72f9189e38`  
		Last Modified: Fri, 02 Oct 2026 00:50:45 GMT  
		Size: 4.5 MB (4535257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a75361a7e38eec4a4ef887aa37c0be32f65fdacf528646d060f0f2bde09192`  
		Last Modified: Fri, 02 Oct 2026 02:38:38 GMT  
		Size: 14.3 MB (14254391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d3e83601ae99534d4ea3e8c6b57b2d6b97acad699eb062418becd934d2463d`  
		Last Modified: Fri, 02 Oct 2026 02:38:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f6670ed98ddd3fe27fcfaf79ba3dd86090e8bc1d00434a07b52d7b37252edb`  
		Last Modified: Fri, 02 Oct 2026 06:00:57 GMT  
		Size: 5.0 MB (5049155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10` - unknown; unknown

```console
$ docker pull hylang@sha256:442e7b5925a7c476efdd693aa751e46b9cc22c037ce623e6819ffbc41ec459aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2221579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a3b1bbc0dabff9995d8699402d49dc42ce07e7fd69f9bf457728720c0cf15a`

```dockerfile
```

-	Layers:
	-	`sha256:01318b0e80e1cc8b72022d9d3feef4b2bc6e53a0c57e025721b21c4e9617f2f2`  
		Last Modified: Fri, 02 Oct 2026 06:00:57 GMT  
		Size: 2.2 MB (2212191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c51d1a66168953864985177def6ec82f8d798bd6098a39cb4dbf1eeb494342e4`  
		Last Modified: Fri, 02 Oct 2026 06:00:58 GMT  
		Size: 9.4 KB (9388 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10` - linux; riscv64

```console
$ docker pull hylang@sha256:f68e06d282f19082559e585295b5e92910c240208e3e1282f2ad4dd17c4edddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48466517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:387768a02afe5925087df9f9a50b1171fbddf2044290d9f009c4e9016c214e68`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 18:27:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:27:39 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:27:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 25 Sep 2026 18:27:39 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Fri, 25 Sep 2026 18:27:39 GMT
ENV PYTHON_VERSION=3.10.21
# Fri, 25 Sep 2026 18:27:39 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Tue, 29 Sep 2026 14:35:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 29 Sep 2026 14:35:08 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 29 Sep 2026 14:35:08 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 00:33:33 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 00:33:33 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 00:33:33 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 00:33:33 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5badbf61295a52bf6b5f706cd886d17f67eae77451637dd727c47721fa9be89`  
		Last Modified: Fri, 25 Sep 2026 20:13:09 GMT  
		Size: 1.3 MB (1262279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036d35e939119a4d87804fb84049af406826a71af5738958e7cb90008edef26a`  
		Last Modified: Tue, 29 Sep 2026 14:36:20 GMT  
		Size: 13.8 MB (13838308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7feef36f30f8b66b580a2a9a10b606f4f630e3c889a5e3eefadafa392c50de26`  
		Last Modified: Tue, 29 Sep 2026 14:36:18 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c540a6721abc5dcbf9d7ae095cf18b56d3d0ce72ebb1e1a15851f75a98b338`  
		Last Modified: Thu, 01 Oct 2026 00:34:48 GMT  
		Size: 5.0 MB (5041296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10` - unknown; unknown

```console
$ docker pull hylang@sha256:eaae028f2de2dda299e2765d8d91e011f45785d2451c5f0cb34a69c5f0be7d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbeae4243382260f981d827ade3e4503b05209f983be75352548b39df18949cb`

```dockerfile
```

-	Layers:
	-	`sha256:2e258d06a2dfebe1f58c55452eef7312883519a756b16d69cf9c583369c961aa`  
		Last Modified: Thu, 01 Oct 2026 00:34:48 GMT  
		Size: 2.2 MB (2202562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:beee73f4437b48c1a7017fb68e3fd6f574ff15a62d745988e2fd8435b002e0db`  
		Last Modified: Thu, 01 Oct 2026 00:34:47 GMT  
		Size: 9.4 KB (9388 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10` - linux; s390x

```console
$ docker pull hylang@sha256:0b40bdfca2e51ec039b253b8a5c5b5104c8f02ff54cabfbfe4c040005096887d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50120746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc775d316c097c3cef306de7f82b51ffb5bc2c13646622e1adea011fba65c2b`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:21:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:21:48 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 02:21:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:21:48 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 06 Oct 2026 02:21:48 GMT
ENV PYTHON_VERSION=3.10.22
# Tue, 06 Oct 2026 02:21:48 GMT
ENV PYTHON_SHA256=c61fe9b1a1a7ec2a0b0388e664187c378a5325a89e3606d220abf5bdfccb2543
# Tue, 06 Oct 2026 02:28:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:28:40 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:28:40 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 03:16:27 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 03:16:27 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 03:16:27 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 03:16:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1afc7f18fb9c26f49bc293f204d1b4a01886cbc5ab16b488f3949014b4662e6c`  
		Last Modified: Tue, 06 Oct 2026 02:28:51 GMT  
		Size: 1.3 MB (1306365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87d31142a1baa44f89879434fd3c943fc43e294ff1ffbb7a151c864a6aee9959`  
		Last Modified: Tue, 06 Oct 2026 02:28:51 GMT  
		Size: 13.9 MB (13855950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af030c4f7af069a0ac863bbe643d06b607de439e32aef36e7cb4d89dd85ee41`  
		Last Modified: Tue, 06 Oct 2026 02:28:51 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5418794c7b81edac121abdea2db56bc73349c09ee1187d9ae96f0e1f868bf356`  
		Last Modified: Tue, 06 Oct 2026 03:16:38 GMT  
		Size: 5.0 MB (5048935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10` - unknown; unknown

```console
$ docker pull hylang@sha256:aaf5bbe192d63ce6e872cf0b8e0a2fce50d57d662ccf14b9c542c89a8dbb8252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2219359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5cecec1bfe2a2b8d8364199e4a2e1b5c3dc8a97a5fcbc28de3a8e423ed3bb6`

```dockerfile
```

-	Layers:
	-	`sha256:49d90f6a2f551eeacd3ae67642badf57b2be52087456bbc72994d814b726022c`  
		Last Modified: Tue, 06 Oct 2026 03:16:38 GMT  
		Size: 2.2 MB (2210039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3f50cacc5faa1a3094ed61a095608e349c4b4cc44327946f71781f3360ad5ae`  
		Last Modified: Tue, 06 Oct 2026 03:16:38 GMT  
		Size: 9.3 KB (9320 bytes)  
		MIME: application/vnd.in-toto+json
