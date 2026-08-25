## `pypy:slim`

```console
$ docker pull pypy@sha256:60ba6f50af803dc9c8f807be08820bb239238fbbe0a55a8094dcf833d6b46a6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `pypy:slim` - linux; amd64

```console
$ docker pull pypy@sha256:49784dc0b343522e2a7b5f80d6b9d1e16002da370cec27ffcca8d990fc195f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68773781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbbc559805c07a51d953be52d3106c775f055d1153436c7ad7df50ef96940dc`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:07:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:07:43 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:07:43 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:07:43 GMT
ENV PYPY_VERSION=7.3.23
# Tue, 25 Aug 2026 01:07:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux64.tar.bz2'; 			sha256='16f9f56e82d1f4ec95a324c1a8cacfd78afc7f0656c0a809a18725ef4391453a'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-aarch64.tar.bz2'; 			sha256='5433ac0ad526aeb35025ef8509bed65cd62ea35cb9e21ac649c69a5eff4eecb6'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux32.tar.bz2'; 			sha256='c7e2ffb173dcadbe4708a2e606e0b705474c1c33f25a09a4084f265d538172e4'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libfontconfig1 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 25 Aug 2026 01:07:43 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062475f8bb06c4e9788b22ed8f0a77e74418beedb08f2c0a3abc6de81cc4500d`  
		Last Modified: Tue, 25 Aug 2026 01:07:54 GMT  
		Size: 1.2 MB (1220929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c808cc9879168a96c58f1d0401b5cc2adbb6ffb3c35882720ca85094845055a`  
		Last Modified: Tue, 25 Aug 2026 01:07:56 GMT  
		Size: 37.8 MB (37760194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:slim` - unknown; unknown

```console
$ docker pull pypy@sha256:f54a23d164e22e80e441b5d7ba13535001397161dbbdbc31b3b72ec319d4547c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2316639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd99c57baf791033ba1f317da937541dbccc87c115d7f84e8b2303557ef46a0e`

```dockerfile
```

-	Layers:
	-	`sha256:5ec2cb255bd376b824a01c80bd7a17942f4a0514f0393191fc7454030bb5c7f1`  
		Last Modified: Tue, 25 Aug 2026 01:07:55 GMT  
		Size: 2.3 MB (2291002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a54d45e710d2e6bccd6c82b3cd197879707290c2258e69fad6b0380f4881aa1`  
		Last Modified: Tue, 25 Aug 2026 01:07:55 GMT  
		Size: 25.6 KB (25637 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:slim` - linux; arm64 variant v8

```console
$ docker pull pypy@sha256:bb9618206e84d4261cc60fede7d804699c06c018221ca20c9dd2c07514979683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.3 MB (67308413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c865af8e3bdfcc01a901d7f915f89f836bee04bee49f1e793bbcf9120407a2cd`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:09:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:09:58 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:09:58 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:09:58 GMT
ENV PYPY_VERSION=7.3.23
# Tue, 25 Aug 2026 01:09:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux64.tar.bz2'; 			sha256='16f9f56e82d1f4ec95a324c1a8cacfd78afc7f0656c0a809a18725ef4391453a'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-aarch64.tar.bz2'; 			sha256='5433ac0ad526aeb35025ef8509bed65cd62ea35cb9e21ac649c69a5eff4eecb6'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux32.tar.bz2'; 			sha256='c7e2ffb173dcadbe4708a2e606e0b705474c1c33f25a09a4084f265d538172e4'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libfontconfig1 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 25 Aug 2026 01:09:58 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fe004b9739c983398433d9b38cff3dd0ea4987cb9ec637a1ea52102eca9335`  
		Last Modified: Tue, 25 Aug 2026 01:10:10 GMT  
		Size: 1.2 MB (1202551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10112266682c12ac4099c953fb81e69df5574d4b39d58ab8333f9a711277e21e`  
		Last Modified: Tue, 25 Aug 2026 01:10:11 GMT  
		Size: 35.9 MB (35946280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:slim` - unknown; unknown

```console
$ docker pull pypy@sha256:644d76e214234dbe688bafefae727dbc01cbedb5a4b4d450861962b3a5cd3743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2317356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f42ff75f8ba8c6ce088cedef4336ae8003f7000edfe75883044d247bfc4dd6`

```dockerfile
```

-	Layers:
	-	`sha256:bbcfb3801f195939bdce2f98689bde7e3d55f7ca0852b3bad24817bec4b1fcc3`  
		Last Modified: Tue, 25 Aug 2026 01:10:10 GMT  
		Size: 2.3 MB (2291432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7316fa2dd00458830acc02f2ca0dd34231de19ff279f9ea391371ab30d7f43a`  
		Last Modified: Tue, 25 Aug 2026 01:10:09 GMT  
		Size: 25.9 KB (25924 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:slim` - linux; 386

```console
$ docker pull pypy@sha256:99ff6cc1ad3f9469beab2d602a90119346565a363dc0f2b2fbe7b4f5d3d631f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66317065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa46ae70bfa98ea7bf153c598914e26107ba9ba14d08e71a2eb0a82d88b3f46f`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:56:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:57:44 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:57:44 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:57:44 GMT
ENV PYPY_VERSION=7.3.23
# Wed, 05 Aug 2026 00:57:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux64.tar.bz2'; 			sha256='16f9f56e82d1f4ec95a324c1a8cacfd78afc7f0656c0a809a18725ef4391453a'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-aarch64.tar.bz2'; 			sha256='5433ac0ad526aeb35025ef8509bed65cd62ea35cb9e21ac649c69a5eff4eecb6'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux32.tar.bz2'; 			sha256='c7e2ffb173dcadbe4708a2e606e0b705474c1c33f25a09a4084f265d538172e4'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libfontconfig1 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 05 Aug 2026 00:57:44 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d81eb9dad55cffa7325b7d7672ea66881c14d010e05b6cbf9d7eda4e844a92`  
		Last Modified: Wed, 05 Aug 2026 00:57:53 GMT  
		Size: 1.2 MB (1228293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee7723baae17023e1b66a9fc112b50da105a5634dcf259146f4614a28c0ce48`  
		Last Modified: Wed, 05 Aug 2026 00:57:54 GMT  
		Size: 33.8 MB (33792503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:slim` - unknown; unknown

```console
$ docker pull pypy@sha256:4c4327d5eaadcf8b855a154e4e3a4e6730579cec18d53b4f4952adc3a15e4364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83651bbc3bd8c205298e3adc5b7d62c95267871ba78a14abba8b9539c39a3194`

```dockerfile
```

-	Layers:
	-	`sha256:fa4a2a8312e0153b1b938b744a5d6ee113d05e8516f906fcac4829ff831064e0`  
		Last Modified: Wed, 05 Aug 2026 00:57:53 GMT  
		Size: 2.3 MB (2287907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c57bd5a3189a52e6e21fbfbcad4c99016d1f26320f59afef3cb60aa8df53edd8`  
		Last Modified: Wed, 05 Aug 2026 00:57:53 GMT  
		Size: 25.5 KB (25533 bytes)  
		MIME: application/vnd.in-toto+json
