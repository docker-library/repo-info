## `hylang:pypy3.11-trixie`

```console
$ docker pull hylang@sha256:702672f567d6075ea62749b07b0bd80c623b193acf6ffd2eea1a94c26fbb64d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `hylang:pypy3.11-trixie` - linux; amd64

```console
$ docker pull hylang@sha256:0633c9bfa4363ace2292c23380f80204df1db2fedf472ce1a6f6bfff204a7f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74687464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae28a4a9f9881c59f4123e2b4244a2e3d7a08f623ee44e103602b79f0d16c30`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:51:37 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:51:37 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:51:37 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 28 Oct 2026 01:51:37 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 28 Oct 2026 01:51:37 GMT
CMD ["pypy3"]
# Wed, 28 Oct 2026 02:42:51 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 02:42:51 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 02:42:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 02:42:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2158b4e535b40740109d4ac863d64acc272b27556d9375fb7b7b4be2af8b41`  
		Last Modified: Wed, 28 Oct 2026 01:50:45 GMT  
		Size: 1.2 MB (1218440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7e86f5fe6950f0140bd8b4e4664e5bba09c92c7caff775ebc4a2cefa455492`  
		Last Modified: Wed, 28 Oct 2026 01:51:49 GMT  
		Size: 36.4 MB (36357279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91869ae74a152df31b9db2624f3fa4025c2afa2ae00972521179cfd156f84f95`  
		Last Modified: Wed, 28 Oct 2026 02:43:01 GMT  
		Size: 7.3 MB (7256509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:c4ef1ed87a787a39092fd84734e33927408f70bcdb6f1b007bd0ae36af3eebce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c81c4e6486efa16f0263632b4f3a52838324f68028bc5eccba29e79aa377052`

```dockerfile
```

-	Layers:
	-	`sha256:e53f10149d9224f5e2ec627cecada4c04d2b1c6e4c7ed8ddf215e8df0d844eff`  
		Last Modified: Wed, 28 Oct 2026 02:43:00 GMT  
		Size: 2.3 MB (2302382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b644e98c6a85d084428477649886b6d3dc5019c7f96d4fe6e6b17d7ecc8814e`  
		Last Modified: Wed, 28 Oct 2026 02:43:00 GMT  
		Size: 11.3 KB (11289 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy3.11-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:6268ca5cf01a2c224971e5f9191dc6ac8ed602b5c4653eefe95de8db53ae2068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73268599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407549b0dcc82de4e3a88607fe02ec307488d1387417887be4448dd23a15cf36`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:53:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:54:57 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:54:57 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:54:57 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 28 Oct 2026 01:54:57 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 28 Oct 2026 01:54:57 GMT
CMD ["pypy3"]
# Wed, 28 Oct 2026 02:54:21 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 02:54:21 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 02:54:21 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 02:54:21 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79fe75d1349cfa8add4b9c2d28ab8f9dc42f7d02b9510a2bae28c9aa71e353b`  
		Last Modified: Wed, 28 Oct 2026 01:54:04 GMT  
		Size: 1.2 MB (1200413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2721a2421ec25077363e4d787834d09ddf1bd0cf8c6c62f12263508ac9655fe6`  
		Last Modified: Wed, 28 Oct 2026 01:55:08 GMT  
		Size: 34.6 MB (34598119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8dc59aec3fcb3c829a0049cf31b7b80f7a6ad1fa5da22e5b1ddc3ca6794af5e`  
		Last Modified: Wed, 28 Oct 2026 02:54:28 GMT  
		Size: 7.3 MB (7256571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:f3663be3fd01d102d8dfb64247b3ced6adb7ecf2507cc14bd4031902a910e074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485e640caa7a9b8ae1a592e39f77c3ceaa023e6f415ce7bc8b117192afdd118`

```dockerfile
```

-	Layers:
	-	`sha256:dded9e08da0d8f34fa40e80a7a4c4faa68332d0136dbbe86bd82de5e0c228246`  
		Last Modified: Wed, 28 Oct 2026 02:54:28 GMT  
		Size: 2.3 MB (2302788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b54c09150cf5db8e75d60c7f0b2c8295883beece065c24e5897041d9dd238b16`  
		Last Modified: Wed, 28 Oct 2026 02:54:28 GMT  
		Size: 11.5 KB (11536 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy3.11-trixie` - linux; 386

```console
$ docker pull hylang@sha256:38e53f0b3bce22a5e4c4bd9de769ef5120403f2ff85a47edbc6bf8ddaff56c6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72933361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3feebc055fbbeede5855def7b0dd6f3f23135d3f1571fd49881d4e628adc533`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:54:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:55:30 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:55:30 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:55:30 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 21 Oct 2026 00:55:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 21 Oct 2026 00:55:30 GMT
CMD ["pypy3"]
# Wed, 21 Oct 2026 01:38:58 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 01:38:58 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 01:38:58 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 01:38:58 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee2081e029c4cff6751fd159492702ed07be4a9d9d921b77ae92cbe3363df4e`  
		Last Modified: Wed, 21 Oct 2026 00:55:40 GMT  
		Size: 1.2 MB (1226994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5800cbadd872447e36da5889948ea011e09974302903fef5a19b1a1b00bbaa1`  
		Last Modified: Wed, 21 Oct 2026 00:55:41 GMT  
		Size: 33.1 MB (33096432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf056b0358abd33e6d73a8adb4e43c584b800c3214e44b1d50f19adf2f41e25a`  
		Last Modified: Wed, 21 Oct 2026 01:39:07 GMT  
		Size: 7.3 MB (7256401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:e2d13fb5bd9f1af748c89b05d825ced0176b42e96c08896877ccb30f7b0cc467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d877360ac9d39f25cd286fc947672b81d049b8b7c26afa8a79f1ff51c766e39b`

```dockerfile
```

-	Layers:
	-	`sha256:61b25b6961eafb8e8977a5150038e03cba2fbabd06354437469da69b2d7a2b17`  
		Last Modified: Wed, 21 Oct 2026 01:39:07 GMT  
		Size: 2.3 MB (2299467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3c743b0328ad3ebe842fcba6102e935f7ed55f89429a79635965b417add10fc`  
		Last Modified: Wed, 21 Oct 2026 01:39:07 GMT  
		Size: 11.2 KB (11197 bytes)  
		MIME: application/vnd.in-toto+json
