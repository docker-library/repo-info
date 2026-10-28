## `pypy:slim-bookworm`

```console
$ docker pull pypy@sha256:daae8dfe1f243ffcca40d5c3f43b46bc39a84adacd21e8a1b69c73cf840a00e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `pypy:slim-bookworm` - linux; amd64

```console
$ docker pull pypy@sha256:e215b8ee9a572bf1832c9e16578b12f00dbaa2db3b873e8b7f1cc985d5e438f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68342643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee1561b2557d9be2401be40005285526d43008b0303f2b506b56af9fb7c2273`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:50:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:51:45 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:51:45 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:51:45 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 28 Oct 2026 01:51:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 28 Oct 2026 01:51:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51bebf075f320682e83addd8afc8d786f0d0f5cf5df7a5404b6af13dd6ff537`  
		Last Modified: Wed, 28 Oct 2026 01:50:57 GMT  
		Size: 3.3 MB (3330168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ee1ac86ba153332affc3360308c902266de05009c7b0addf24a92fe78a5363`  
		Last Modified: Wed, 28 Oct 2026 01:51:56 GMT  
		Size: 36.8 MB (36765038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:slim-bookworm` - unknown; unknown

```console
$ docker pull pypy@sha256:ed61fabfccdeb3edf24e7680e02b2656b49518c0baf1656a1c8d81fef534ef2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2703190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed136b21f83d6ca995794c62332a0c44320147fd49390b8de1050613feb8dd7`

```dockerfile
```

-	Layers:
	-	`sha256:8b454d72fdb239f61497c3c9a8a11cf0ae0bd5dbf20f5debcc93e59394abcb07`  
		Last Modified: Wed, 28 Oct 2026 01:51:55 GMT  
		Size: 2.7 MB (2680322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30a32666ac2519a8ba419d57c769d1d6abe37731f4370ec25b5ffee745c425c8`  
		Last Modified: Wed, 28 Oct 2026 01:51:55 GMT  
		Size: 22.9 KB (22868 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull pypy@sha256:b1233e3aa06a98c011dc090caef94938e9921321b7068bf8a2e1ac62b3c59c75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66294245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfde269307aacb7ed9d74f8ba1041e0ef618c5d3ab2140d503b8542b7e79a238`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:00:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:01:02 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 01:01:02 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:01:02 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 21 Oct 2026 01:01:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 21 Oct 2026 01:01:02 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a923384b533a8b80af91e0ea1fc74d2402a6a027d9107f4e32ac1e1e913e0f`  
		Last Modified: Wed, 21 Oct 2026 01:01:14 GMT  
		Size: 3.2 MB (3160027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aed13ba7073e3d1383e30371d1ea72346dccf74b234301c0d0131da0789eec5`  
		Last Modified: Wed, 21 Oct 2026 01:01:14 GMT  
		Size: 35.0 MB (34995793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:slim-bookworm` - unknown; unknown

```console
$ docker pull pypy@sha256:1ced635dace481d7a98907e5fdc7c6e7aa04e229b6fa2f9e718d772bda3790b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2703674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e20cae67e8cdf96bd10c8d81eae6f2142293fc0df3d683d89b338cb85969e8f`

```dockerfile
```

-	Layers:
	-	`sha256:f5488ea202658ab04a5fc46db042272df4367d3d0c84cb257c845b08750f8dbb`  
		Last Modified: Wed, 21 Oct 2026 01:01:13 GMT  
		Size: 2.7 MB (2680625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecdcf69c404dc64aadf27f50c75a0df7bef9750dcf18c1f8f9aca447034ecf12`  
		Last Modified: Wed, 21 Oct 2026 01:01:13 GMT  
		Size: 23.0 KB (23049 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:slim-bookworm` - linux; 386

```console
$ docker pull pypy@sha256:f4f06e0b7ea508b8cbabd254d3ab4f5e25e6de04033e2c6b2f3d2c4099218f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66168245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79311334b944914c0551acbd8357770062756f43a06430090f482accd1c081a0`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:49:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:50:45 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:50:45 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:50:45 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 28 Oct 2026 01:50:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 28 Oct 2026 01:50:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917b2c81510c044db39f8e07b28d26504b74549c10822de65f4ae093bf61c181`  
		Last Modified: Wed, 28 Oct 2026 01:49:56 GMT  
		Size: 3.3 MB (3328967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad16bfa95327633f9fdccae9e72f9831dfb5db2fab29b819d74d968284b5d328`  
		Last Modified: Wed, 28 Oct 2026 01:50:56 GMT  
		Size: 33.6 MB (33600499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:slim-bookworm` - unknown; unknown

```console
$ docker pull pypy@sha256:165cc263845f1e4c2f2693e5523ba7ce5cfabcfefb1e7e8538c16cea6def95eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2700262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d4993228c690dafd9353ba15f5afe8c3197ab8a649008189fa180e020f6ce`

```dockerfile
```

-	Layers:
	-	`sha256:c9cec006d6857024c5e1d38756e5717dce2ff1cc776eb8956f997961703073bb`  
		Last Modified: Wed, 28 Oct 2026 01:50:55 GMT  
		Size: 2.7 MB (2677452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de780f52c3ec5a2922874547ba98e8d18bbac947edbca12c32201780870cf82d`  
		Last Modified: Wed, 28 Oct 2026 01:50:55 GMT  
		Size: 22.8 KB (22810 bytes)  
		MIME: application/vnd.in-toto+json
