## `hylang:1-pypy3.12-bookworm`

```console
$ docker pull hylang@sha256:33222d467dc9531e62d7297dc7c73ab1dc7d89ac89939aa1829b205e659b26c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `hylang:1-pypy3.12-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:f0203428b0c6bcd10e52bf2953da9125e111e7ae709c2b41674c056f547e2c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.1 MB (72112302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed550268ad1de47c40c3a14e0558290f4bfdc2559d8c14a2b11abaee2c2cf76c`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:49:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:49:46 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:49:46 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:49:46 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 24 Nov 2026 04:49:46 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 24 Nov 2026 04:49:46 GMT
CMD ["pypy3"]
# Tue, 24 Nov 2026 05:39:27 GMT
ENV HY_VERSION=1.3.1
# Tue, 24 Nov 2026 05:39:27 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 24 Nov 2026 05:39:27 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 24 Nov 2026 05:39:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d66dbc7a90ebbd253144ac7b50ba6f5312b611e460a8a72a3945c7df506d976d`  
		Last Modified: Tue, 24 Nov 2026 04:49:57 GMT  
		Size: 3.3 MB (3330106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a209d2ee095148fcb50c9321137f9d553fb42ac9fc681fbef095ed88d9689a`  
		Last Modified: Tue, 24 Nov 2026 04:49:58 GMT  
		Size: 34.6 MB (34617843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca45b714f38bd337353911c7b918d3d691f224a13b9842cb8787aae9de9aa1f5`  
		Last Modified: Tue, 24 Nov 2026 05:39:35 GMT  
		Size: 5.9 MB (5916393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:77ccd44ee81dfe836566553d3294e8dd83dd5898916cd453edafdf605ed3eab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2649044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64434223c1735e0b4ce252a10ce1ea3b4950458a3439939b3b3a3ab0e1d993f8`

```dockerfile
```

-	Layers:
	-	`sha256:7f2f9a86b51e6d514aba101574bbeb3122eb95da33a21a1f4363ee181031df71`  
		Last Modified: Tue, 24 Nov 2026 05:39:35 GMT  
		Size: 2.6 MB (2641417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b44ad385eb45a1d32bfb5816427088b9386868a045dcca9840aac1d2540a109`  
		Last Modified: Tue, 24 Nov 2026 05:39:35 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:2ce1a77e49f9b881c34300c8b2592777915f408f26209481f5b7a36dfe4f1421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.1 MB (70062271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ff7ca4de4f4d2c2b44507d89f7dd0434fbfd1b50505c108436d87faaf6030f`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:53:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:54:16 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:54:16 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:54:16 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 24 Nov 2026 04:54:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 24 Nov 2026 04:54:16 GMT
CMD ["pypy3"]
# Tue, 24 Nov 2026 05:52:22 GMT
ENV HY_VERSION=1.3.1
# Tue, 24 Nov 2026 05:52:22 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 24 Nov 2026 05:52:22 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 24 Nov 2026 05:52:22 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbd4af807ad353710e1abe9fd116651903f84429d709f94efe9afbfc09af639`  
		Last Modified: Tue, 24 Nov 2026 04:54:27 GMT  
		Size: 3.2 MB (3161073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097b8f8cd108ef1b1e6d788f05928fc7bd7d0528b3747a6519a87db3ae2604e5`  
		Last Modified: Tue, 24 Nov 2026 04:54:28 GMT  
		Size: 32.8 MB (32840312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106f3e4329dab2a8c507e48f1896baca79296f2b5fadda20eadf3d0fdb09c5a2`  
		Last Modified: Tue, 24 Nov 2026 05:52:31 GMT  
		Size: 5.9 MB (5916581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:521c9b03f35aa5441547f3e51c8dcfaf00bcb7e4778937bb2b62cdbc68009072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2649419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870260e51d277e9dfad2d1634da96fa5c9723846829242031b82113c3ff611f6`

```dockerfile
```

-	Layers:
	-	`sha256:1e95537445273a1118900b21e1a61b52f242e1379db60982d54beeefa2a6ff9b`  
		Last Modified: Tue, 24 Nov 2026 05:52:31 GMT  
		Size: 2.6 MB (2641688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:122c936a1ffd24a5e962c6c8a0388f070b73ebd64051480c6b78e17674076424`  
		Last Modified: Tue, 24 Nov 2026 05:52:31 GMT  
		Size: 7.7 KB (7731 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:ddd1d682309c6238c2ee392edca849e1c48e8c539cc21ff92045e5bc24a99a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69835696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6e9481f5c0f85b4644b0a0573491d61a4337f6db4a09e795233bc18810829d`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:45:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:21 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:46:21 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:46:21 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 24 Nov 2026 04:46:21 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 24 Nov 2026 04:46:21 GMT
CMD ["pypy3"]
# Tue, 24 Nov 2026 05:41:43 GMT
ENV HY_VERSION=1.3.1
# Tue, 24 Nov 2026 05:41:43 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 24 Nov 2026 05:41:43 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 24 Nov 2026 05:41:43 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1cde02d171534450b668912ef8ef66ab259bfca33204cf933a2860bfd06fe63b`  
		Last Modified: Tue, 24 Nov 2026 03:40:03 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f2f00e8cdf37cc56d8ce83b3b2adf366626d650a237da634d0290d3a236b640`  
		Last Modified: Tue, 24 Nov 2026 04:46:31 GMT  
		Size: 3.3 MB (3328940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a310a1e482e7cc59d2c9bd54fc81f955cea16b95b90d4e2769f2bc58a46d527`  
		Last Modified: Tue, 24 Nov 2026 04:46:32 GMT  
		Size: 31.4 MB (31351266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e11c6b28909a858eabc57d2529133947887bc2d2c06f24fdd661521ac6292b4b`  
		Last Modified: Tue, 24 Nov 2026 05:41:51 GMT  
		Size: 5.9 MB (5916278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:78ee963ac01c2b810ed3c9cf46ab9f5d73810505cb66d80a41f0c28b0a320255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2646167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e21db29624d61aab9f46df0dffa95a40593bfe22ed3fa366ba399104387e56b3`

```dockerfile
```

-	Layers:
	-	`sha256:6a475e255503aa4d74cbb2195fb07f66d04740e91794d84d56cc50cdb492573b`  
		Last Modified: Tue, 24 Nov 2026 05:41:51 GMT  
		Size: 2.6 MB (2638572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:233cffd94d734225b233e424d7fe68cfddb88254b80357acea5717203b7f106b`  
		Last Modified: Tue, 24 Nov 2026 05:41:50 GMT  
		Size: 7.6 KB (7595 bytes)  
		MIME: application/vnd.in-toto+json
