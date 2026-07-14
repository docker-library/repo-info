## `pypy:bookworm`

```console
$ docker pull pypy@sha256:5f4b061794e80a702949ad732762cb7166c7ea7970b45e55284e93ae414fc65d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `pypy:bookworm` - linux; amd64

```console
$ docker pull pypy@sha256:4becf3094434017b131687762be11334185092f6e8c4a07e4dd87e98fd7aea5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.7 MB (385736123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f533b64a2320d4709e6659bf1669ef676e88276035493a2e3d6ea10813cd184c`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:35:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tcl 		tk 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:35:37 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 04:35:37 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:35:37 GMT
ENV PYPY_VERSION=7.3.23
# Tue, 14 Jul 2026 04:35:37 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux64.tar.bz2'; 			sha256='16f9f56e82d1f4ec95a324c1a8cacfd78afc7f0656c0a809a18725ef4391453a'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-aarch64.tar.bz2'; 			sha256='5433ac0ad526aeb35025ef8509bed65cd62ea35cb9e21ac649c69a5eff4eecb6'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux32.tar.bz2'; 			sha256='c7e2ffb173dcadbe4708a2e606e0b705474c1c33f25a09a4084f265d538172e4'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libfontconfig1 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 14 Jul 2026 04:35:37 GMT
CMD ["pypy3"]
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
	-	`sha256:bc0a1b3a6670b0427ad2bcf145685f504c41de10f9d1e02eb4d15f329064346c`  
		Last Modified: Tue, 14 Jul 2026 04:35:57 GMT  
		Size: 3.0 MB (3000020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83dd3fffae9b503d361d43b4d8eef125aa6a67025bcde445c831002ca753d97e`  
		Last Modified: Tue, 14 Jul 2026 04:35:58 GMT  
		Size: 34.2 MB (34159569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:bookworm` - unknown; unknown

```console
$ docker pull pypy@sha256:32019e73a4fe692a9a9b35e8f8d40266e244943f6da4d60441df3a20c1c0e122
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16257097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e17e88a3ebddbcce103466ade41397132e8c5014cb71509ae5a805f23279a21`

```dockerfile
```

-	Layers:
	-	`sha256:87b1d26df20513a82249284fb2ada90a25ee3ee8be022846752ff863fecbe755`  
		Last Modified: Tue, 14 Jul 2026 04:35:58 GMT  
		Size: 16.2 MB (16233799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f234cc53ecff280f090b05f316580cfd35c8c79d2a8ed5c5f023fc3e24d5b2e3`  
		Last Modified: Tue, 14 Jul 2026 04:35:57 GMT  
		Size: 23.3 KB (23298 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:bookworm` - linux; arm64 variant v8

```console
$ docker pull pypy@sha256:d32e77bf1ee1d646efba05aff1bc17e0f25ccd60f803357e30297a854ea319fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.0 MB (374955996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7a935a6694e40ef4bd7e0e3d45baeceae5196535ca591a5a219650405cad5e`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:16:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tcl 		tk 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:43:49 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 04:43:49 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jun 2026 04:43:49 GMT
ENV PYPY_VERSION=7.3.23
# Wed, 24 Jun 2026 04:43:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux64.tar.bz2'; 			sha256='16f9f56e82d1f4ec95a324c1a8cacfd78afc7f0656c0a809a18725ef4391453a'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-aarch64.tar.bz2'; 			sha256='5433ac0ad526aeb35025ef8509bed65cd62ea35cb9e21ac649c69a5eff4eecb6'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux32.tar.bz2'; 			sha256='c7e2ffb173dcadbe4708a2e606e0b705474c1c33f25a09a4084f265d538172e4'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libfontconfig1 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 24 Jun 2026 04:43:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ebca214f1a4b66acfdb0bd20aa3ee139d1747885ef4b0f3d07aa2a68459230`  
		Last Modified: Wed, 24 Jun 2026 01:44:48 GMT  
		Size: 23.6 MB (23613316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533bb0e918720911be6cb7a1a5ba9ad0e1a308fcbf24961a23aba0cd220df6cf`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 64.5 MB (64487706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cae401c24fa4bb4f22bb94674a5eb530bff1cfd2e063ec20053ecb9a5509556`  
		Last Modified: Wed, 24 Jun 2026 03:17:13 GMT  
		Size: 203.1 MB (203132913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25718d3cffc7cfc093ba3c5ac33781ca975033ab12be19a4a0ebe06b8e52d03e`  
		Last Modified: Wed, 24 Jun 2026 04:44:09 GMT  
		Size: 3.0 MB (2989751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d805a2a4b5e7740b6fa246d4744e9bf907833578843893dcd818279b624fe538`  
		Last Modified: Wed, 24 Jun 2026 04:44:10 GMT  
		Size: 32.3 MB (32343109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:bookworm` - unknown; unknown

```console
$ docker pull pypy@sha256:7fd98b28022e7642aadda6ad3f523134dad084692a3716e4766c82974cd65888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16285778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95c3d6083340af493c4b483e30e0f06df161676205c5812c79a427840f3088b`

```dockerfile
```

-	Layers:
	-	`sha256:7bfea7da917bc89c4d04b7469bc7a641a98aedec9460f47041d0f47bafbe1a55`  
		Last Modified: Wed, 24 Jun 2026 04:44:09 GMT  
		Size: 16.3 MB (16262300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:288f35d1d83d596438127d1d73a41d809464cdbfad687be58655d0fb37ae738d`  
		Last Modified: Wed, 24 Jun 2026 04:44:09 GMT  
		Size: 23.5 KB (23478 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:bookworm` - linux; 386

```console
$ docker pull pypy@sha256:a87815c1e6c2bc57302230578e2b2e686357faef35cfd2b1d2c7d231b147f1fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.4 MB (384430671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2ec06649883582519d516c86700e2e5855d8caca9af3cfe1a615a0a2806bf6`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:43:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:34:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:18:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:26:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tcl 		tk 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:26:50 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 04:26:50 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jun 2026 04:26:50 GMT
ENV PYPY_VERSION=7.3.23
# Wed, 24 Jun 2026 04:26:50 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux64.tar.bz2'; 			sha256='16f9f56e82d1f4ec95a324c1a8cacfd78afc7f0656c0a809a18725ef4391453a'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-aarch64.tar.bz2'; 			sha256='5433ac0ad526aeb35025ef8509bed65cd62ea35cb9e21ac649c69a5eff4eecb6'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux32.tar.bz2'; 			sha256='c7e2ffb173dcadbe4708a2e606e0b705474c1c33f25a09a4084f265d538172e4'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libfontconfig1 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 24 Jun 2026 04:26:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b45c9ce5ae5ea6ab37787312be8b0a9732642c1221f97d5689baacac874b4cd`  
		Last Modified: Wed, 24 Jun 2026 01:43:48 GMT  
		Size: 24.9 MB (24879740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db0110899c29fd647e62f912bfb740fc8af5310cdc227454d8f086f16cba33e`  
		Last Modified: Wed, 24 Jun 2026 02:35:05 GMT  
		Size: 66.2 MB (66244204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d35d0ef7b0d342bb15591580b2f53dedb16d47cf8b5adeb9bc453fd0b71b9b`  
		Last Modified: Wed, 24 Jun 2026 03:18:51 GMT  
		Size: 210.5 MB (210534885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e76e3e979d9f061fc630dc9f82a8b4f8e6e8fb9a9ae3ee08f7dc406a38d5ad`  
		Last Modified: Wed, 24 Jun 2026 04:27:08 GMT  
		Size: 3.1 MB (3143126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10dd2fa972cdeecf1f6e3e5627476370e0e3a455e49941cc9d730191931af0fc`  
		Last Modified: Wed, 24 Jun 2026 04:27:09 GMT  
		Size: 30.1 MB (30137338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:bookworm` - unknown; unknown

```console
$ docker pull pypy@sha256:4f1d93de331d528ba3f6bdeeb327165edcda0113820c61805080a7b05f83b82b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16235132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523fedb3cb3a5f1745d8124c99b6a5423b7287c0af899292b7a26cd9791a627a`

```dockerfile
```

-	Layers:
	-	`sha256:fed00a4ff4bd277405da64f60744281d087248bd69a9413cbbfea39d6f97deb0`  
		Last Modified: Wed, 24 Jun 2026 04:27:08 GMT  
		Size: 16.2 MB (16211892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0de30f838da89c194c480ae17ebe7318c3fd09c950ac5c537d2dc9680702917c`  
		Last Modified: Wed, 24 Jun 2026 04:27:08 GMT  
		Size: 23.2 KB (23240 bytes)  
		MIME: application/vnd.in-toto+json
