## `hylang:pypy3.12`

```console
$ docker pull hylang@sha256:11ba22200eedad9dcbdf5c389b69d14f7a6c704dcbef498c43e79d36c53f0b7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `hylang:pypy3.12` - linux; amd64

```console
$ docker pull hylang@sha256:e290c1846ba3b3dadc93dcb81e5b3718ecc839c53209a19852d8a6e4fc64bdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71187345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113fb4a37135363466a40c69f6068b9627219d26135509498408dec4c45c533d`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:47:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:48:28 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:48:28 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:48:28 GMT
ENV PYPY_VERSION=8.0.1
# Thu, 05 Nov 2026 07:48:28 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Thu, 05 Nov 2026 07:48:28 GMT
CMD ["pypy3"]
# Thu, 05 Nov 2026 08:50:29 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:50:29 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:50:29 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:50:29 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8563d096a2c99f3bbc44d3c18b10030068e96dae3648d01e61c64b1cf901e`  
		Last Modified: Thu, 05 Nov 2026 07:48:38 GMT  
		Size: 1.2 MB (1218462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d4fbd0047d6d7b020b661da2e97f27af99b5bb58a10c12a42cbf43d73ba140`  
		Last Modified: Thu, 05 Nov 2026 07:48:39 GMT  
		Size: 34.2 MB (34204945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be95c0e83addd2b0b09cf9974de37d7220e384c52bf3d9b8ab8e420ba35c08f1`  
		Last Modified: Thu, 05 Nov 2026 08:50:36 GMT  
		Size: 5.9 MB (5907806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.12` - unknown; unknown

```console
$ docker pull hylang@sha256:62c237e0e396781d1861f7214e1c78fd5cd1c29d21b220249d07ef1659e7f694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2263897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca662dd66c354f09a713cdb911d18cc42e46f4e8496a7668662df8f34b84c609`

```dockerfile
```

-	Layers:
	-	`sha256:5d4d10597d2c1ec9a7bc2803655f4de5565d8018a7f36984091b079ebbd51dd7`  
		Last Modified: Thu, 05 Nov 2026 08:50:36 GMT  
		Size: 2.3 MB (2255064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb8482ef1e979240dc2518e34001e569aba70596fda9b281c08586d19da3617f`  
		Last Modified: Thu, 05 Nov 2026 08:50:36 GMT  
		Size: 8.8 KB (8833 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy3.12` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:55391862ce1ae5516dafbfd5fdd37b327805fd136c948bd84026adf5a88fc7a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69758059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f481c940a08797d348a2abcd69ad6f56b39701638b2f84486fe320e4c63a806`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:52:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:53:13 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:53:13 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:53:13 GMT
ENV PYPY_VERSION=8.0.1
# Thu, 05 Nov 2026 07:53:13 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Thu, 05 Nov 2026 07:53:13 GMT
CMD ["pypy3"]
# Thu, 05 Nov 2026 08:50:41 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:50:41 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:50:41 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:50:41 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff8ea10a47e6304a04517b19d2b91587a4955c67056869d62cd7e4cb27659be`  
		Last Modified: Thu, 05 Nov 2026 07:53:24 GMT  
		Size: 1.2 MB (1200415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c369301028bb622399efd35aa2cc97869125f82cf6d7f4500f42a5d7189f3c`  
		Last Modified: Thu, 05 Nov 2026 07:53:25 GMT  
		Size: 32.4 MB (32435755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e078ac8a8a298385ac442923e05889efbd1dca07963f695bfe802ee8ab7bbf27`  
		Last Modified: Thu, 05 Nov 2026 08:50:49 GMT  
		Size: 5.9 MB (5907852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.12` - unknown; unknown

```console
$ docker pull hylang@sha256:514ab4306f3367af883cad707a8aecf480f9628a0b19bc6cb29119e71f8a1e2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ce3300e9cc4445b2ea4f3911e9ed8ce9b5f28db7f95dffafd8a15884e088cc`

```dockerfile
```

-	Layers:
	-	`sha256:ee6fcebfdb6371a1614298da55297b41c8ffb704fc72857cad0ee6f2ccd2bd9d`  
		Last Modified: Thu, 05 Nov 2026 08:50:49 GMT  
		Size: 2.3 MB (2255374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df24cdeb9410947e85e4770a1d6a05b032995ba2729e75dd370c536a601c7406`  
		Last Modified: Thu, 05 Nov 2026 08:50:49 GMT  
		Size: 9.0 KB (8985 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy3.12` - linux; 386

```console
$ docker pull hylang@sha256:e33c158ae4688cd52cb210287b3d7d6f1c93255b76fdc46c3b3ed8e3410ebb4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.4 MB (69350598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe8376af8a88cd4c4a0503a519253d0477e62c832c44c00ed70897b1b8208401`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:46:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:46:57 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:46:57 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:46:57 GMT
ENV PYPY_VERSION=8.0.1
# Thu, 05 Nov 2026 07:46:57 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Thu, 05 Nov 2026 07:46:57 GMT
CMD ["pypy3"]
# Thu, 05 Nov 2026 08:43:27 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:43:27 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:43:27 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:43:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6910d74169843ba38101a56ad15359398636534d208b9c26ebc17286d6984da2`  
		Last Modified: Thu, 05 Nov 2026 07:47:08 GMT  
		Size: 1.2 MB (1227041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73450e4be0eb94c08656fd133e28b6a7b94b0776b13be2b4f9c7f8ae39914f9`  
		Last Modified: Thu, 05 Nov 2026 07:47:08 GMT  
		Size: 30.8 MB (30845173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db87355f914e9da757b36659a6efe03054432bb72c1473bfc98cb6b5d9eeaae1`  
		Last Modified: Thu, 05 Nov 2026 08:43:34 GMT  
		Size: 5.9 MB (5907625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.12` - unknown; unknown

```console
$ docker pull hylang@sha256:eb8cdf224e672bf65c07d0f7ed1cd7378069cab162bc905a10f1ee3939c36e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4896ea260d2b33fd23edd311b32078fd360ae06dc5bfcaf5a716b192c0922c65`

```dockerfile
```

-	Layers:
	-	`sha256:836ceffc503656b132b606bede9cb535ef25777cc8dbc7ac660fea6a06e5a8e1`  
		Last Modified: Thu, 05 Nov 2026 08:43:34 GMT  
		Size: 2.3 MB (2252217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90a3c8dae8c7e48d7689ed374554037f33206cfc7092a73e0b0ceb0b2172e7e1`  
		Last Modified: Thu, 05 Nov 2026 08:43:34 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy3.12` - windows version 10.0.26100.33674; amd64

```console
$ docker pull hylang@sha256:380195bd3339a4dafeaa6df422af4a68792a2e15dfaf220ce9b98226c9aa919a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2444858764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28e8c5e1870e6411a19f25c281e3a4bae1c36d91e21aee26c6066feeab50050`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:00:39 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:00:48 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:00:48 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 27 Oct 2026 18:01:16 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '225aa62deed1a624c86d5ffd03cc34615ff927b095d8508ad82593ee23ddce91'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:01:17 GMT
CMD ["pypy"]
# Tue, 27 Oct 2026 18:42:11 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 18:42:12 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 18:43:01 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 27 Oct 2026 18:43:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deac8411208c7be4087f6269cdff958ca4539894d5540fbed510906417fdf4c5`  
		Last Modified: Tue, 27 Oct 2026 17:50:06 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec2966608cca3f1e5a8da550b60b173e1cace916f124f91467760aee49418f`  
		Last Modified: Tue, 27 Oct 2026 18:01:22 GMT  
		Size: 354.0 KB (354029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed5ef28fcb4d04717cf725b9d9a0fb57ea31bde6b9210ebe8ed21d4446bf1a6`  
		Last Modified: Tue, 27 Oct 2026 18:01:24 GMT  
		Size: 15.5 MB (15532860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63b46bd3c74e6b56095408744aa8ad0436c2ae1505ec2e5c807e0ace105e424`  
		Last Modified: Tue, 27 Oct 2026 18:01:21 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca903e85d9927d8a8c681f691cfdd33712ce465de158583c9261c69014724041`  
		Last Modified: Tue, 27 Oct 2026 18:01:26 GMT  
		Size: 30.3 MB (30329507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a18477f793579b8df70255eb785f08c46837c14620c96b4b83fca87385c1c98`  
		Last Modified: Tue, 27 Oct 2026 18:01:21 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4ed43eebfcf908bde408d78cd80826c0c0273019fcdb721fc385aa56dd293f`  
		Last Modified: Tue, 27 Oct 2026 18:43:06 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e80fcb2103af340aaa0cb4de749a28b33aa9f828d42321652f1e89f6bef594`  
		Last Modified: Tue, 27 Oct 2026 18:43:06 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e7461b9ca85e853ffbfab1c88d07e3badaa4ca1983c04e4ab039310a379ead`  
		Last Modified: Tue, 27 Oct 2026 18:43:07 GMT  
		Size: 6.6 MB (6585600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d393a000b2e0a5471ed1d6e85926a6c8c532cdc20cceedd97a7792ef0daca854`  
		Last Modified: Tue, 27 Oct 2026 18:43:06 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:pypy3.12` - windows version 10.0.20348.5773; amd64

```console
$ docker pull hylang@sha256:34c8379f9c0b6f5d1d882ad479ff7bc4380424b5d1bec145a6bf3ef1d9dbe6ef
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2279807030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55eb4cef6d8dba4f65f42df2d96a0a615851377ffb87f69c540be94f69f0ed6`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:09:35 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:09:45 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:09:45 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 27 Oct 2026 18:10:15 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '225aa62deed1a624c86d5ffd03cc34615ff927b095d8508ad82593ee23ddce91'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:10:16 GMT
CMD ["pypy"]
# Tue, 27 Oct 2026 19:20:09 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 19:20:09 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 19:20:54 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 27 Oct 2026 19:20:54 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595092004383b652eb9dd6a9e61984c52d5b546af386f4d8e34bb346c0f86dd0`  
		Last Modified: Tue, 27 Oct 2026 17:50:41 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bf719628fdf6a415eb2dd5ae1c86c963336a5287001ee3d106ed5fe702259d`  
		Last Modified: Tue, 27 Oct 2026 18:10:22 GMT  
		Size: 338.5 KB (338547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5489eefe6077fef96834bc4b6727503d8215b9d678443bd1651bfaec7d6f10e7`  
		Last Modified: Tue, 27 Oct 2026 18:10:23 GMT  
		Size: 15.5 MB (15516649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7140cb91c140f20be528c14d8c761cb51a7c83be9c5aecd8840376c83127dd`  
		Last Modified: Tue, 27 Oct 2026 18:10:22 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6257d8f780e2b632105c7b28ac1b6b201d8708892df52dfa9088bc13d381a`  
		Last Modified: Tue, 27 Oct 2026 18:10:25 GMT  
		Size: 30.3 MB (30315697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cf7647f24f491ecc77c915f430ed8e9242f8163812e43930d2577b29045b44`  
		Last Modified: Tue, 27 Oct 2026 18:10:21 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c26cbbbecfce2d7afe642fbeb238437b4f0a8748b1e6aff410e6cff005809b`  
		Last Modified: Tue, 27 Oct 2026 19:20:58 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea02967874dbe500fe9d2e8e40a3861bd2b8c37e1d65c5eb1a3eb6e728f118`  
		Last Modified: Tue, 27 Oct 2026 19:20:58 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e3a721cdfa6529c48ed8748039096ae4e1eb29ef9d17b4ce080be7358cc17e`  
		Last Modified: Tue, 27 Oct 2026 19:20:59 GMT  
		Size: 6.6 MB (6572138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60fc38a6fd7857b6e9b95486a5e4f7196ff88fd1312de2748d306d90a7139df`  
		Last Modified: Tue, 27 Oct 2026 19:20:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
