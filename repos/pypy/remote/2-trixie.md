## `pypy:2-trixie`

```console
$ docker pull pypy@sha256:335cf4353e8c1023eb6eefa2b1f34264484514dce839073c47e93f05a1830cae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `pypy:2-trixie` - linux; amd64

```console
$ docker pull pypy@sha256:a9145792a9ce5e8dfe2547219401f6a0fbb38c33e67d7f8d60cc19ca8a30a59d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.1 MB (412136186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d744ee7900051745a1333f9a3f7efa40290b8a3962b68ad54ebe96f9cb9f05`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:35:35 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 04:35:35 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:35:35 GMT
ENV PYPY_VERSION=7.3.23
# Tue, 14 Jul 2026 04:35:35 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-linux64.tar.bz2'; 			sha256='7833be48244a6f4aa0720c6b98f151428291a52697da849ef6b3ca7d5bf45b96'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-aarch64.tar.bz2'; 			sha256='b0bec20c16b6ab2bd46bd4f5d6049b6070a22a53eaed437ee9ac36d842ceda74'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-linux32.tar.bz2'; 			sha256='fa6499281775ec22f4742e9dd7b31c22b8fc6a700c1cf50aebc7ef24f61461c5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 14 Jul 2026 04:35:35 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65956eab0c1ca261c14a3e13055ec8ca4f6ec75198f6ef0704d5194884466582`  
		Last Modified: Tue, 14 Jul 2026 03:18:55 GMT  
		Size: 236.3 MB (236258363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda6132ae391f75603d35d0483163a7e924fdb7b414501efdbe01f9629091195`  
		Last Modified: Tue, 14 Jul 2026 04:35:57 GMT  
		Size: 33.1 MB (33133794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-trixie` - unknown; unknown

```console
$ docker pull pypy@sha256:e0fb5a23747ae0991a1d2e0b6748c65acd58161278a5d0a4effa2a86eecb21da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17242170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cb1c97936ed68ba850b4a8731cc5612366c288d013f2109758b43895ccceded`

```dockerfile
```

-	Layers:
	-	`sha256:94812ce7841477f3d98fdf0b2de0d6dca4d84efd039807924b951b1bdc5e21b0`  
		Last Modified: Tue, 14 Jul 2026 04:35:56 GMT  
		Size: 17.2 MB (17221333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e83d5872444d7a7dce12f80a4c94cfdee1478c263b25b9e3f42c166cdad9eb5`  
		Last Modified: Tue, 14 Jul 2026 04:35:55 GMT  
		Size: 20.8 KB (20837 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:2-trixie` - linux; arm64 variant v8

```console
$ docker pull pypy@sha256:fb8a60428ee631779af76404767c293f22238d42c55c18e4437b9d73de51a04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.7 MB (399721773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28803f9c2bd619e749e5ac5810727e615f5e51643079d30671531a47b2c6e882`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:43:19 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 04:43:19 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:43:19 GMT
ENV PYPY_VERSION=7.3.23
# Tue, 14 Jul 2026 04:43:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-linux64.tar.bz2'; 			sha256='7833be48244a6f4aa0720c6b98f151428291a52697da849ef6b3ca7d5bf45b96'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-aarch64.tar.bz2'; 			sha256='b0bec20c16b6ab2bd46bd4f5d6049b6070a22a53eaed437ee9ac36d842ceda74'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-linux32.tar.bz2'; 			sha256='fa6499281775ec22f4742e9dd7b31c22b8fc6a700c1cf50aebc7ef24f61461c5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 14 Jul 2026 04:43:19 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79256f40905d77df81d1738841b42df00f81a53e4e600de7b74b82abccf93c3c`  
		Last Modified: Tue, 14 Jul 2026 03:18:54 GMT  
		Size: 226.4 MB (226376937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01641e5db2d1a2b9838a97f4325c6d12696a44757f43225628d5d78cf91d42df`  
		Last Modified: Tue, 14 Jul 2026 04:43:42 GMT  
		Size: 31.0 MB (31048178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-trixie` - unknown; unknown

```console
$ docker pull pypy@sha256:6d0d45257218ef19a364c3d5237a634cbc6d3fd339f7fed0022feec5175193ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17326231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04671ff388371374f08e812013007146785b8040646ce2a744fb3d463f1db17f`

```dockerfile
```

-	Layers:
	-	`sha256:1cf4be3e58112537b21a4d14220932469cbc6ea3b09dd275cc52aa402b23ebc1`  
		Last Modified: Tue, 14 Jul 2026 04:43:41 GMT  
		Size: 17.3 MB (17305146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9862483834228142f6be014f125304229c95a24c01d106a179f28118c038a35`  
		Last Modified: Tue, 14 Jul 2026 04:43:40 GMT  
		Size: 21.1 KB (21085 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:2-trixie` - linux; 386

```console
$ docker pull pypy@sha256:a6401f1aa89e1b25fb1c42246d37d1d2f29f3a1419036bb2047a9d7ba1ef078e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.6 MB (416576762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a79c91c3a6c8888063c7b4eedf47e0fb8382475d7e0fb2bbeb8ec076a8b696`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:38:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:26:55 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 04:26:55 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:26:55 GMT
ENV PYPY_VERSION=7.3.23
# Tue, 14 Jul 2026 04:26:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-linux64.tar.bz2'; 			sha256='7833be48244a6f4aa0720c6b98f151428291a52697da849ef6b3ca7d5bf45b96'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-aarch64.tar.bz2'; 			sha256='b0bec20c16b6ab2bd46bd4f5d6049b6070a22a53eaed437ee9ac36d842ceda74'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-linux32.tar.bz2'; 			sha256='fa6499281775ec22f4742e9dd7b31c22b8fc6a700c1cf50aebc7ef24f61461c5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 14 Jul 2026 04:26:55 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d062c05844db57ef4065a60eaa0d1715c922df19034daf883e4dadec97adf52b`  
		Last Modified: Tue, 14 Jul 2026 01:47:23 GMT  
		Size: 26.8 MB (26800462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1cc5ea947cd62ae2ce24a372d1d425ed7b2f973139c39ecafd214ac3b75fcb`  
		Last Modified: Tue, 14 Jul 2026 02:38:41 GMT  
		Size: 69.8 MB (69829128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321a69887cb8a003965108ff81744276cfdda890e6f58c0d2b5a49d9a078ff4b`  
		Last Modified: Tue, 14 Jul 2026 03:19:01 GMT  
		Size: 240.4 MB (240377282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf11efc90aa51c665b91ef7eb4f34dc95ecd12a271dd0febf34128007288967`  
		Last Modified: Tue, 14 Jul 2026 04:27:21 GMT  
		Size: 28.7 MB (28738400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-trixie` - unknown; unknown

```console
$ docker pull pypy@sha256:ad797c346dffdfb31b2825686d7230c5eeb67284490c7586108e6c66ca6e64fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17211613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac88ba197fe125d41dc24a8f35bcd823992a6598f0d8e31b686dc02288d9f16b`

```dockerfile
```

-	Layers:
	-	`sha256:2526c64073aa0a3ca4fcbbfe9c820e87cf69090760e255ae308922e8cfc1b6d5`  
		Last Modified: Tue, 14 Jul 2026 04:27:20 GMT  
		Size: 17.2 MB (17190869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c9253cc898c68027b6f27fefd27d3087aa93ef5885eb4b9dd96e3ed74ed4558`  
		Last Modified: Tue, 14 Jul 2026 04:27:20 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json
