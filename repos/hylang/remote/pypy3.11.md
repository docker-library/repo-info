## `hylang:pypy3.11`

```console
$ docker pull hylang@sha256:26848408adf3ae440866e7ef5a7688c859a2bf79a86b47ef37e84a9dfa2bb312
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `hylang:pypy3.11` - linux; amd64

```console
$ docker pull hylang@sha256:ef3678847c566653df7f4b7dca7627575cac49625604e525809267db9c0e346d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76119384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44622b254367ffe45d06e2bd87b98b258a7d33d55a27b11de5868a70d4e355b2`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:00:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:01:07 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:01:07 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:01:07 GMT
ENV PYPY_VERSION=7.3.23
# Wed, 05 Aug 2026 01:01:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux64.tar.bz2'; 			sha256='16f9f56e82d1f4ec95a324c1a8cacfd78afc7f0656c0a809a18725ef4391453a'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-aarch64.tar.bz2'; 			sha256='5433ac0ad526aeb35025ef8509bed65cd62ea35cb9e21ac649c69a5eff4eecb6'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux32.tar.bz2'; 			sha256='c7e2ffb173dcadbe4708a2e606e0b705474c1c33f25a09a4084f265d538172e4'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libfontconfig1 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 05 Aug 2026 01:01:07 GMT
CMD ["pypy3"]
# Wed, 05 Aug 2026 15:59:22 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 15:59:22 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 15:59:22 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 15:59:22 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d768f6f7da63c1307360d219e97f9626053c8d0a085b4766e906368ebd908ac`  
		Last Modified: Wed, 05 Aug 2026 01:01:18 GMT  
		Size: 1.2 MB (1220987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:561c089a27b9532abc1c8524efe28e3a83b81d08a78649d77e0b91a1a9bd2252`  
		Last Modified: Wed, 05 Aug 2026 01:01:19 GMT  
		Size: 37.8 MB (37759618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8864e4c2d1f9ebcdcdcf17f98fb54f9fdf8013715855140bd96eb978a639be4a`  
		Last Modified: Wed, 05 Aug 2026 15:59:30 GMT  
		Size: 7.4 MB (7358014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.11` - unknown; unknown

```console
$ docker pull hylang@sha256:2ae9e2244eb9d1156329dfa7573187bec9a5ce95d9a1aa19cd71333ee7de8edb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6120ee7da1562ba47a18227a6a7dce70d9d3eec9e34e7d2f2704034e822e8d15`

```dockerfile
```

-	Layers:
	-	`sha256:79fae883e13e44ba754b390c4db721af93194f73f10bfc589437eb257c800ae7`  
		Last Modified: Wed, 05 Aug 2026 15:59:30 GMT  
		Size: 2.3 MB (2297747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc45a3d10e0a8e45ddf7e01335c3f03f98c164b01dd979d5899d6a0247c7b9a0`  
		Last Modified: Wed, 05 Aug 2026 15:59:29 GMT  
		Size: 11.3 KB (11290 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy3.11` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:28baac4609d0fc099ccace21fe1e57151e2da6e9eb22b14a9e7ccc5696b07588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74650376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed82ccdca4292845867658289780b562be53bf6413b7afd0e14103f4ee1d1e2f`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:03:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:04:27 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:04:27 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:04:27 GMT
ENV PYPY_VERSION=7.3.23
# Wed, 05 Aug 2026 01:04:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux64.tar.bz2'; 			sha256='16f9f56e82d1f4ec95a324c1a8cacfd78afc7f0656c0a809a18725ef4391453a'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-aarch64.tar.bz2'; 			sha256='5433ac0ad526aeb35025ef8509bed65cd62ea35cb9e21ac649c69a5eff4eecb6'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v7.3.23-linux32.tar.bz2'; 			sha256='c7e2ffb173dcadbe4708a2e606e0b705474c1c33f25a09a4084f265d538172e4'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libfontconfig1 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 05 Aug 2026 01:04:27 GMT
CMD ["pypy3"]
# Wed, 05 Aug 2026 16:00:47 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 16:00:47 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:00:47 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 16:00:47 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f450f9e3dbc2c44df510e7f851dfb9fcf789c38c994740bdbce1289e63a221a6`  
		Last Modified: Wed, 05 Aug 2026 01:04:37 GMT  
		Size: 1.2 MB (1202576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628d9dd5f872c5cd4274b42853b3f4304738a4624a25da70b4437b2a5061cea3`  
		Last Modified: Wed, 05 Aug 2026 01:04:38 GMT  
		Size: 35.9 MB (35946111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bf8769954c3e7d8848c16bd28a4ddd97c221496bd4ba4a0ea85543df1fc4f3`  
		Last Modified: Wed, 05 Aug 2026 16:00:55 GMT  
		Size: 7.4 MB (7358080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.11` - unknown; unknown

```console
$ docker pull hylang@sha256:090665ffa1eaa2356b0703812e6e93458a5eb1f5f206eee4e044bc39fc5c9bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208ad24c84ea8e31939277a9ee63897f6bc2762b775020c3b76af2043efdf037`

```dockerfile
```

-	Layers:
	-	`sha256:dfc078747e6a5e987cea15fbb3a8c4cd56aceed11190a019a662290c355961ec`  
		Last Modified: Wed, 05 Aug 2026 16:00:55 GMT  
		Size: 2.3 MB (2298153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbdf2e1c50459c31026109048c65b27f39ce3c0e8aba545e872f17e227ea9cc6`  
		Last Modified: Wed, 05 Aug 2026 16:00:55 GMT  
		Size: 11.5 KB (11538 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy3.11` - linux; 386

```console
$ docker pull hylang@sha256:b5e454ccc04194321ee795e8e0a575da43bbc22b7103e51bf505f7d33713f6d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73674984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63908d2dd7ec4b33d13cce734f83b9a4d533a7c10edbfe9225dcbc6897ab2dbc`
-	Default Command: `["hy"]`

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
# Wed, 05 Aug 2026 16:01:35 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 16:01:35 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:01:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 16:01:35 GMT
CMD ["hy"]
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
	-	`sha256:a509e9a818f0aa26a64156825f3f2ac0efd6849a281a6d5ad994a45278d75846`  
		Last Modified: Wed, 05 Aug 2026 16:01:43 GMT  
		Size: 7.4 MB (7357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.11` - unknown; unknown

```console
$ docker pull hylang@sha256:68862fcf78801cd39a1fdae7f830e0ba1934265907d8d1fbf2ffcc589edee18c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18dc91e98fb511747ae8911d5dada9f9c1b7519d24fcb63571849dd5fd9aee13`

```dockerfile
```

-	Layers:
	-	`sha256:107072129a341ed721175984981e3c003718fc04bb068c0314b87c7462d7786b`  
		Last Modified: Wed, 05 Aug 2026 16:01:42 GMT  
		Size: 2.3 MB (2294860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a4141ce4aad1fbf23438120305c216b7c4188b8801404c2b9d00fc520379f54`  
		Last Modified: Wed, 05 Aug 2026 16:01:42 GMT  
		Size: 11.2 KB (11198 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy3.11` - windows version 10.0.26100.33296; amd64

```console
$ docker pull hylang@sha256:5978880e9859e5813f827a5d9642325d85c35add9ca1f6620dbec63b58be1615
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2495532111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c637e231f7121cfdf8bf4f0390977462f21f9a2cc58d4feefe5ad8027327057f`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:49:30 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:49:39 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:49:40 GMT
ENV PYPY_VERSION=7.3.23
# Wed, 12 Aug 2026 17:50:19 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.11-v7.3.23-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '948b8ea58dea5b9917210fe4afd242c788fbfaba1c3f1a25e696a404f703389a'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.11-v7.3.23-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Installing "wheel" (backwards compat) ...'; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:50:19 GMT
CMD ["pypy"]
# Wed, 12 Aug 2026 18:24:17 GMT
ENV HY_VERSION=1.3.1
# Wed, 12 Aug 2026 18:24:17 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 12 Aug 2026 18:25:17 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 12 Aug 2026 18:25:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bf9629e3b114b952c8857ccb303d4df4a5bcdeb86edb8a93fcb5278560c99d`  
		Last Modified: Wed, 12 Aug 2026 17:37:12 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d5d7bd658a92c6a8e38b70f0e0569534423fe835bbac06f8707f99256062bb`  
		Last Modified: Wed, 12 Aug 2026 17:50:25 GMT  
		Size: 361.2 KB (361197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595919d782e01b0d15265acc11dc1e9762531f9d89ad935b02c70fff7aaa6c90`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 15.5 MB (15538582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54198de55b81af38365433c574d2db2015c1ffb877d267f0bef8232904b8f17`  
		Last Modified: Wed, 12 Aug 2026 17:50:25 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05848e375446677f6a4cb9e75219e6b8bc39ff4c3b5035cc02c435ce4c301427`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 30.9 MB (30876949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9858bd07dc0d4811097dcc036591f6f82b562d879e075647f59686f91d5890`  
		Last Modified: Wed, 12 Aug 2026 17:50:25 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffced0c6dba65544675958ab467a0e8dfe91f942bc3e40af0880fbb2ccdf9aab`  
		Last Modified: Wed, 12 Aug 2026 18:25:22 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d039fbeccdc95be625a2d9dd381b697f819417b2778a31381a862a80747364`  
		Last Modified: Wed, 12 Aug 2026 18:25:22 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f783709152687bb83a85445f13f5e7f5a995c7688562747dce549c14794f930e`  
		Last Modified: Wed, 12 Aug 2026 18:25:23 GMT  
		Size: 8.0 MB (7962166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9531ed6e5bbb22d7d8c642b2dc2bb643e7337ef58b3638ae0003e614f868a0b8`  
		Last Modified: Wed, 12 Aug 2026 18:25:22 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:pypy3.11` - windows version 10.0.20348.5499; amd64

```console
$ docker pull hylang@sha256:da9c10d149ff7cf90a9dee4a453be6d2fce98ab7541587656c9248d36ef59029
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2238678832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8a94232f353ea462443aee332373f1f4a1d6e24c0e034179bb77272dab1726f`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:50:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:51:39 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:52:08 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:52:09 GMT
ENV PYPY_VERSION=7.3.23
# Wed, 12 Aug 2026 17:53:04 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.11-v7.3.23-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '948b8ea58dea5b9917210fe4afd242c788fbfaba1c3f1a25e696a404f703389a'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.11-v7.3.23-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Installing "wheel" (backwards compat) ...'; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:53:05 GMT
CMD ["pypy"]
# Wed, 12 Aug 2026 18:19:48 GMT
ENV HY_VERSION=1.3.1
# Wed, 12 Aug 2026 18:19:49 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 12 Aug 2026 18:20:35 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 12 Aug 2026 18:20:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e05ffa1d42945055559d13c674b9b9745fe283b847111a7d27cac84f7749db`  
		Last Modified: Wed, 12 Aug 2026 17:53:15 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72de9b8f0a00a8ae6508c717c55469d1ae9f75880dc77b251fdef0ab1569798c`  
		Last Modified: Wed, 12 Aug 2026 17:53:14 GMT  
		Size: 346.3 KB (346260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc827d6488b26caa70abfeeea5245eb7eb61d79fde1cee5966237474d908130d`  
		Last Modified: Wed, 12 Aug 2026 17:53:18 GMT  
		Size: 15.5 MB (15522047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5bdef20750db5b762563a97dde7880beb4ecbb84c999c29f52f006eabb6db2`  
		Last Modified: Wed, 12 Aug 2026 17:53:14 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca8e4d1506219879efc98da78ad3f2f1d23bb4300b30d43294cf97bab1b9269`  
		Last Modified: Wed, 12 Aug 2026 17:53:18 GMT  
		Size: 30.9 MB (30862360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae5789f49ac76d37572ce31bb4bdbd5cd59bbccd6af595be80a6ec8b8058c69`  
		Last Modified: Wed, 12 Aug 2026 17:53:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668196406cb0567814176cef7d71c027688f26009f026a28fa63e52b6cb1e70f`  
		Last Modified: Wed, 12 Aug 2026 18:20:40 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f40c2aa4278f61589e97adeaa57a755a8655c06763bf61275288b863607ec2`  
		Last Modified: Wed, 12 Aug 2026 18:20:40 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde9b9490dd08bc60d43c1409511bcbcfec1f010d73df342043ec14386ac3afb`  
		Last Modified: Wed, 12 Aug 2026 18:20:41 GMT  
		Size: 7.9 MB (7942911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe17feb800b4eacde50b8fc992f58baf5a6ea95f6b6337880cf39d1e24ea138`  
		Last Modified: Wed, 12 Aug 2026 18:20:40 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
