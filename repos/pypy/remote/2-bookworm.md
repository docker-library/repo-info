## `pypy:2-bookworm`

```console
$ docker pull pypy@sha256:ce2e0f1f2cfe253f87d5beeaad967fcb1cd00e7af51dabae969ad1b026d8487c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `pypy:2-bookworm` - linux; amd64

```console
$ docker pull pypy@sha256:1d20c98b068be058c647c5eb8d9a2498a4e24dfe7ba8d89dfee3b102f490ce98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381709852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc6b386e48e3a591c9f156b8cbea0d1ef0a2b143c075aec22bffccc2c8464107`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:35:52 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 04:35:52 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:35:52 GMT
ENV PYPY_VERSION=7.3.23
# Tue, 14 Jul 2026 04:35:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-linux64.tar.bz2'; 			sha256='7833be48244a6f4aa0720c6b98f151428291a52697da849ef6b3ca7d5bf45b96'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-aarch64.tar.bz2'; 			sha256='b0bec20c16b6ab2bd46bd4f5d6049b6070a22a53eaed437ee9ac36d842ceda74'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-linux32.tar.bz2'; 			sha256='fa6499281775ec22f4742e9dd7b31c22b8fc6a700c1cf50aebc7ef24f61461c5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 14 Jul 2026 04:35:52 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd2dd4f152bd44fe5b02de3e47483f6cdf32bf3d7ea1c7cc70d57b075f2eebd`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 64.4 MB (64408455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e7f1cb7a296e8a2f35401d96a0c2fc030894e200451ae74437bdb7a4b2cb43`  
		Last Modified: Tue, 14 Jul 2026 03:18:35 GMT  
		Size: 211.6 MB (211626576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a377edd2af78b85f78a814bdf35bf59497829355f714c6dd8cabfa4d6de302`  
		Last Modified: Tue, 14 Jul 2026 04:36:11 GMT  
		Size: 33.1 MB (33133318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-bookworm` - unknown; unknown

```console
$ docker pull pypy@sha256:4374a402e601e0eea17f4052b64e454c978ab87cdd4f53b6fa093e34c7841a5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15901948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7186206832de0de44ef5e87e906af4ca78751029a867a1d948c6df55902eadba`

```dockerfile
```

-	Layers:
	-	`sha256:8d4daaab639c689d281cfc94a217074b5d0f7252a383449b8d9d00f6804a89a7`  
		Last Modified: Tue, 14 Jul 2026 04:36:11 GMT  
		Size: 15.9 MB (15883413 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3064f830c4ee1e9168f5f32c575f5ea65f8f48c851ccb5d1e7dc812aaba41544`  
		Last Modified: Tue, 14 Jul 2026 04:36:10 GMT  
		Size: 18.5 KB (18535 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:2-bookworm` - linux; arm64 variant v8

```console
$ docker pull pypy@sha256:772be087559b9cebce0a58fafd47dfd80793436b46a9dfa1313aa6820c22c25f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.7 MB (370693124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189363835e150b054c35fecde4e63831195efd3f218cae73833dc90375d2830f`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:43:34 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 04:43:34 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:43:34 GMT
ENV PYPY_VERSION=7.3.23
# Tue, 14 Jul 2026 04:43:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-linux64.tar.bz2'; 			sha256='7833be48244a6f4aa0720c6b98f151428291a52697da849ef6b3ca7d5bf45b96'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-aarch64.tar.bz2'; 			sha256='b0bec20c16b6ab2bd46bd4f5d6049b6070a22a53eaed437ee9ac36d842ceda74'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-linux32.tar.bz2'; 			sha256='fa6499281775ec22f4742e9dd7b31c22b8fc6a700c1cf50aebc7ef24f61461c5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 14 Jul 2026 04:43:34 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af2d47cd8540f7af1f8ba488289fa82e9a2258d051477163651baf22fc99ea6`  
		Last Modified: Tue, 14 Jul 2026 02:37:00 GMT  
		Size: 64.5 MB (64498147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09cafdc051b9826ce9f47360fd9501131e7c28c94021b769e4e6d91204cdf8a`  
		Last Modified: Tue, 14 Jul 2026 03:18:39 GMT  
		Size: 203.2 MB (203150933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e7e927c03fbf1a01314cafe98363fa833f0349fd12d82dbdb9f693cc7ff3e7`  
		Last Modified: Tue, 14 Jul 2026 04:43:55 GMT  
		Size: 31.0 MB (31047652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-bookworm` - unknown; unknown

```console
$ docker pull pypy@sha256:0891aa726e1cedb84c8842e4b344cb1c2ca475abaa2cb2790aa693bdc17f13d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15930674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4b3c597a90c5854c313fa4b11bf5cc86ef265ea463fc2dd8ad4da19f01278e`

```dockerfile
```

-	Layers:
	-	`sha256:1889995ccb13cedd10b9949439dbe4e01b755352f0355dc6fe587435def3abf5`  
		Last Modified: Tue, 14 Jul 2026 04:43:55 GMT  
		Size: 15.9 MB (15911987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fe2e6cec6f44b5420aa23c2dfdec2a58bcaafab90a48595fb61440656152b52`  
		Last Modified: Tue, 14 Jul 2026 04:43:54 GMT  
		Size: 18.7 KB (18687 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:2-bookworm` - linux; 386

```console
$ docker pull pypy@sha256:cbbebca9e14f23b1dd641119c6dfe637e5139dccd1cedd5db797dbb8e73a05ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.9 MB (379892475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41e13355994950b3731dc00e313e7dc5a253d3a86c58de517823143a1d266de`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:18:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:26:51 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 04:26:51 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:26:51 GMT
ENV PYPY_VERSION=7.3.23
# Tue, 14 Jul 2026 04:26:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-linux64.tar.bz2'; 			sha256='7833be48244a6f4aa0720c6b98f151428291a52697da849ef6b3ca7d5bf45b96'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-aarch64.tar.bz2'; 			sha256='b0bec20c16b6ab2bd46bd4f5d6049b6070a22a53eaed437ee9ac36d842ceda74'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.23-linux32.tar.bz2'; 			sha256='fa6499281775ec22f4742e9dd7b31c22b8fc6a700c1cf50aebc7ef24f61461c5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype6 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 14 Jul 2026 04:26:51 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57925bd1ff28d8c7df42e8e4386b1a8e5104548196adaa28c62e0c7b26b5f2b9`  
		Last Modified: Tue, 14 Jul 2026 01:46:55 GMT  
		Size: 24.9 MB (24879833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a17209efcdd987645a47d85b886216acc5254a2a0c1aef2364b9a70bdfd8b2`  
		Last Modified: Tue, 14 Jul 2026 02:38:33 GMT  
		Size: 66.2 MB (66249184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec007785d4fac623d5aa32d96b975990b9fe16223670ebbd4ee22ed9e61c330`  
		Last Modified: Tue, 14 Jul 2026 03:18:47 GMT  
		Size: 210.5 MB (210540155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7216fc5037bd56a3ceb3157f26574f92b3e7c02fa2536ba83448f4b2bb8cdf24`  
		Last Modified: Tue, 14 Jul 2026 04:27:11 GMT  
		Size: 28.7 MB (28737864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-bookworm` - unknown; unknown

```console
$ docker pull pypy@sha256:11c9b7fb34e00766d06f70668c0d270c41a803197f125e9a0f21fb451a574e6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15880094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1199da065292d134876e27945114427f9fcf064056963e5ccc2fa005f800d9db`

```dockerfile
```

-	Layers:
	-	`sha256:7fc1de0a0ede34947cc8479457f12358add554e1a8bd4521dbe1c2447e2e9a17`  
		Last Modified: Tue, 14 Jul 2026 04:27:10 GMT  
		Size: 15.9 MB (15861611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a899965f52e36d2a0bab4788c0d6b75b51e3868b1f895de67ac00215d42097f`  
		Last Modified: Tue, 14 Jul 2026 04:27:10 GMT  
		Size: 18.5 KB (18483 bytes)  
		MIME: application/vnd.in-toto+json
