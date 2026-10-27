## `hylang:python3.11-bookworm`

```console
$ docker pull hylang@sha256:92b1a06d51ec45c45a531d8e19712144edd15d6318ecb35369fea0888691f14f
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

### `hylang:python3.11-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:2fa85cd3e1b4c776fdb9bffd019d953d28d46ee1d61f90d8ac0fd9694bdcf30b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55175933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1927ade67b0358edc582ab78ee606f7e854ac50467b9ef3229f1d69b30b2258`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 22:51:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:51:27 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:51:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 22:51:27 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 26 Oct 2026 22:51:27 GMT
ENV PYTHON_VERSION=3.11.18
# Mon, 26 Oct 2026 22:51:27 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Mon, 26 Oct 2026 22:59:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:59:54 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:59:54 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:50:10 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:50:10 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:50:10 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:50:10 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebbc9227530e803babaa16f6d5873e016191bfaa1f9104fa11c1656a517c2be`  
		Last Modified: Mon, 26 Oct 2026 23:00:02 GMT  
		Size: 4.0 MB (3977652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:479c0b79ca092d52a92e287f5b0ec9b22371ee79afe21d92b062eb7fef710a44`  
		Last Modified: Mon, 26 Oct 2026 23:00:03 GMT  
		Size: 16.0 MB (16028530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c870b0de80087505ec7c058e659db173700c2e8c9d0d2f4a9073e497abc09c83`  
		Last Modified: Mon, 26 Oct 2026 23:00:02 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484bb030e340c03f456a421da8c62a6af1c0301c16123bae91c753acf82c197f`  
		Last Modified: Mon, 26 Oct 2026 23:50:18 GMT  
		Size: 6.9 MB (6921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:e85be616aa0a3add9b50a7e4fc64db96512d2fc3b29923cc39dee05365e15e6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2637670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5073f493fb365a3ff05025d48ad6312889a7dfe3690781db28c7285db647a272`

```dockerfile
```

-	Layers:
	-	`sha256:ecd291124ce74e867493f98e6c4bcf5a34ce1d01c22a9388e4b5784ae3a4a1c2`  
		Last Modified: Mon, 26 Oct 2026 23:50:18 GMT  
		Size: 2.6 MB (2629577 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eea30a36895a891a92f34c2708abe22c481b35c8212e9c91961bafd44307dd7`  
		Last Modified: Mon, 26 Oct 2026 23:50:18 GMT  
		Size: 8.1 KB (8093 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:c22ff95472719f0e1cbc4da285af1035de90386b6894ca6af5797ce9634166a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49285056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411e254b0c44425970ee8e4c7a5243a01a6c52df1288d2416adda04bc5d20acc`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 23:09:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:09:24 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:09:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:09:24 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 26 Oct 2026 23:09:24 GMT
ENV PYTHON_VERSION=3.11.18
# Mon, 26 Oct 2026 23:09:24 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Mon, 26 Oct 2026 23:47:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 23:47:43 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 23:47:43 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 00:22:19 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 00:22:19 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 00:22:19 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 00:22:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59292a7a80ae93f6b0078b85c4542e61e8b145a76cb4869d753f1379f77aefb4`  
		Last Modified: Mon, 26 Oct 2026 23:31:06 GMT  
		Size: 3.4 MB (3382623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d7150487acfe3ca68b545594be5d53dac30f3832c0b332143d6d1a3383d2f7`  
		Last Modified: Mon, 26 Oct 2026 23:47:51 GMT  
		Size: 15.0 MB (15018992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b8a6ad87afa95a94c725e4d373b4cb92578cf2e021b01156d643fed20aa71b`  
		Last Modified: Mon, 26 Oct 2026 23:47:51 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725eb0f9624fba46ea82c30000c2b85c002cac6815265ad69ca24d4acd870f38`  
		Last Modified: Tue, 27 Oct 2026 00:22:26 GMT  
		Size: 6.9 MB (6921703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:05e3fd2cbdcfacbf22ebd83319c0b178ae01495bbbe51e96e1b76cc007058204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2640020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2dde6e87b1457466c7c44c698f7f68853d3f64c3e6109a1419d61730e0884d`

```dockerfile
```

-	Layers:
	-	`sha256:fed08c209680a78a368a480f2fa7d66951f934a26f035ef24952779e64c789f4`  
		Last Modified: Tue, 27 Oct 2026 00:22:26 GMT  
		Size: 2.6 MB (2631846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9e9f67aac725123e9d42c400e5e12b99bdebe5dbf5ff127aaf9261ad9e6b0b7`  
		Last Modified: Tue, 27 Oct 2026 00:22:26 GMT  
		Size: 8.2 KB (8174 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:d7a10747949b8d25573ade4bfc237a8a4de58fe90ab09cfd3f1052be1a74e4fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54838314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde6d6b72786768f92e0bf187b74b8128f3f453b3e0f7584adefe5541c4e39e1`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 22:56:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:56:29 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:56:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 22:56:29 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 26 Oct 2026 22:56:29 GMT
ENV PYTHON_VERSION=3.11.18
# Mon, 26 Oct 2026 22:56:29 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Mon, 26 Oct 2026 23:07:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:53:53 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:53:53 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:53:53 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:53:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:058ef5b164cb368b827e615a93779a9575392f290fac7e0c3d78e633089a04eb`  
		Last Modified: Mon, 26 Oct 2026 23:07:34 GMT  
		Size: 3.8 MB (3810242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02549e2cae4a8d8e68ae8488564fa432a8157afce20f1a20a73815f36ef4894`  
		Last Modified: Mon, 26 Oct 2026 23:07:34 GMT  
		Size: 16.0 MB (15967671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dbd1016add240c8d2f4480305ad56cf6f088c025aaa60491521fa16dbe8c312`  
		Last Modified: Mon, 26 Oct 2026 23:07:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c79306596e23994fa6fc7d13f9c09006ca0bbf7ec9b7e2cac50dc0211f14730`  
		Last Modified: Mon, 26 Oct 2026 23:54:02 GMT  
		Size: 6.9 MB (6921727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:942913d2e46ebd10c135622630bfd7b95cadbdad39970c0861203e09381593f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2638048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8491aaf8f19a53ec19410e7609912bd37dfe263e85371d0ff31fa9d6d0b01a0e`

```dockerfile
```

-	Layers:
	-	`sha256:f890db7201e80ac426b8a3285f38e137126af9eef18fc3cfdcf19cfcf9e29e75`  
		Last Modified: Mon, 26 Oct 2026 23:54:01 GMT  
		Size: 2.6 MB (2629850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e65b912735f650f090ba0d8799827639f719bc85c0e8dfc604cd7f2e809277d`  
		Last Modified: Mon, 26 Oct 2026 23:54:01 GMT  
		Size: 8.2 KB (8198 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:3620d90cae9d2ff1598ac489ff0d5d5f9a937404050add327ed1c1b408926b81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56409042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c77b1e0431972f97d0acf81d253847e04a6317a4158c129ae653042c20871f9`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 22:36:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:36:15 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:36:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 22:36:15 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 26 Oct 2026 22:36:15 GMT
ENV PYTHON_VERSION=3.11.18
# Mon, 26 Oct 2026 22:36:15 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Mon, 26 Oct 2026 23:15:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 23:15:42 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 23:15:42 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 00:17:04 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 00:17:04 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 00:17:04 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 00:17:04 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f18bb404f18e1a55e73386e40eac6da347163fe58e54559004ef9b0d1c24e4f2`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 29.2 MB (29239245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4edec2217d9a1ed220c0a3a39ea2050da998028dd40dbb20a5f406047189d1da`  
		Last Modified: Mon, 26 Oct 2026 22:50:30 GMT  
		Size: 4.0 MB (3981476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e1583169ef101db9d0182440b35e0055bdcb418b716112373edd9ae307eda0`  
		Last Modified: Mon, 26 Oct 2026 23:15:50 GMT  
		Size: 16.3 MB (16266519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86923de40e7185996b8074d4837a68049c979cb9d3591a7288e3cacccf27c173`  
		Last Modified: Mon, 26 Oct 2026 23:15:49 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a511f7b68aec8adb98a19ae3e963d1659bb9f94ce02836f490b3d057b010fdf6`  
		Last Modified: Tue, 27 Oct 2026 00:17:12 GMT  
		Size: 6.9 MB (6921554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:23d2dab1abc458564c7cf6761d0f0c2aa7c0c49b6775bf4b86c90dc391ecac3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae9a63af9166eab8a17b2584fe53671fdab0c5158391b46a824ed86622fae31`

```dockerfile
```

-	Layers:
	-	`sha256:4c19be7f0ab02905f6e69280c0e86050f05a19ae1d8f04ff14794b62ef765f19`  
		Last Modified: Tue, 27 Oct 2026 00:17:11 GMT  
		Size: 2.6 MB (2626728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02290e0c0f2c3a8c1d1c87355d5332ac0e1db9cef1caeb6d21d98f904e43e23c`  
		Last Modified: Tue, 27 Oct 2026 00:17:12 GMT  
		Size: 8.1 KB (8062 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:5f8391d994a5695584e0d7bb93e730062b89231ffe92a3a4dd5876f3e3156892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59220542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da680c2e6cffb43aa9ecb61ac54b3cc7397591915b2e122c8289c8546fb06c74`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 08:29:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 08:29:20 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 08:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 08:29:20 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Wed, 21 Oct 2026 08:29:20 GMT
ENV PYTHON_VERSION=3.11.17
# Wed, 21 Oct 2026 08:29:20 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Wed, 21 Oct 2026 09:19:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 09:19:29 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 09:19:29 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 14:42:44 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 14:42:44 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 14:42:44 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 14:42:44 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d987fde6a0b4b9bc8a2616d96734ddf024dceb6dd519ec51c02b83ad4ccbfe9`  
		Last Modified: Wed, 21 Oct 2026 08:53:44 GMT  
		Size: 3.5 MB (3543620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0efb7dcce5c5beb8ac072cbbd3ac60c5408a00969a91ad6b1fb017fd37892688`  
		Last Modified: Wed, 21 Oct 2026 09:19:52 GMT  
		Size: 16.7 MB (16661953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d318beac1f0541b9216cdbc6b65ce524eb6bfcc0c2b1e0437f28680e6a9d608`  
		Last Modified: Wed, 21 Oct 2026 09:19:52 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4940aa8f6539efea2fffeb80ab8f183fa25b02e5fa50bd4a989d61308c62524`  
		Last Modified: Wed, 21 Oct 2026 14:43:14 GMT  
		Size: 6.9 MB (6921511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:60b5268df9cdbb1a8c66ea6c31e1d7747c4a428552677c59651ef2b4949df1c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6597fd70131a0089fa60e1fad7068babab18ede13f16914eaca900e2e90bf0f`

```dockerfile
```

-	Layers:
	-	`sha256:404aead070cb498e9f5b42ae5c4047b3511bcc9a4a5bdc31c0640c1dc65b4f1f`  
		Last Modified: Wed, 21 Oct 2026 14:43:13 GMT  
		Size: 2.6 MB (2634083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83c895bc75c2a6f73612d2d01a9b5b8232bc9358565de42484c974729a7b06c7`  
		Last Modified: Wed, 21 Oct 2026 14:43:13 GMT  
		Size: 8.1 KB (8138 bytes)  
		MIME: application/vnd.in-toto+json
