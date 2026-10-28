## `hylang:1-pypy3.12-bookworm`

```console
$ docker pull hylang@sha256:e86f5771937d4a0eef5d541682a01b5450c36d396320f601c6e0cf5a28bb72f9
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
$ docker pull hylang@sha256:9129809889366a9bd8fa730560924fa2d99bd2ac21fc7da15d611f9c0d091cc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.1 MB (72096358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ef25e5102d16b41153152e8f4198f5af41199158d5286bb5704fdc946d470d`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:56:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:57:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:57:04 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:57:04 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 21 Oct 2026 00:57:04 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 21 Oct 2026 00:57:04 GMT
CMD ["pypy3"]
# Wed, 21 Oct 2026 01:44:34 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 01:44:34 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 01:44:34 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 01:44:34 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5052e00e42fc58e12a447273b1d1220db7f17598ec1da99e7191c2760ccec070`  
		Last Modified: Wed, 21 Oct 2026 00:57:15 GMT  
		Size: 3.3 MB (3329541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef82ca09c15070a164bbe7a80e54b8e3869a180cc0a6b52a9d8cdeb2bdadac36`  
		Last Modified: Wed, 21 Oct 2026 00:57:16 GMT  
		Size: 34.6 MB (34611074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1953eef523953ca5c4b9cf3ebf8104862e4e91a6931d3862aa5f7756b547752`  
		Last Modified: Wed, 21 Oct 2026 01:44:43 GMT  
		Size: 5.9 MB (5907808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:fac8276d206479771e95d346dbbf6b233237d17555632ed38e47f0b696283188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2649016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f096ce76ab3fe85ae4570fbc53d28ecda76f8ee25a48f0af99be0b899eb66ea3`

```dockerfile
```

-	Layers:
	-	`sha256:697de814a6594ebd40fa292719a77943936f08c5a534b8537521f2bada448755`  
		Last Modified: Wed, 21 Oct 2026 01:44:43 GMT  
		Size: 2.6 MB (2641389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e495dedfcadee51a0b64c258fa2b2de64598637ab40d4d672d2d62c14beb2fb`  
		Last Modified: Wed, 21 Oct 2026 01:44:43 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:c9ad338faa72a03883634a7f9f5c591786bb20c73f7d494a39122a54c24c501e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (70046823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc6491ddfcdeb7b8318f41c1312282796efab40f516ea70c57ada88442ad2c3d`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:53:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:54:13 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:54:13 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:54:13 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 28 Oct 2026 01:54:13 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 28 Oct 2026 01:54:13 GMT
CMD ["pypy3"]
# Wed, 28 Oct 2026 02:54:25 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 02:54:25 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 02:54:25 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 02:54:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d118960354c564fa18288f25c1a51be8e46597b82b674ce64788fc169178f48`  
		Last Modified: Wed, 28 Oct 2026 01:54:24 GMT  
		Size: 3.2 MB (3160990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968b3efc69c5edae064a20883f064f3aa28e38f9aef42e5c903f4c0c5c40c5b8`  
		Last Modified: Wed, 28 Oct 2026 01:54:25 GMT  
		Size: 32.8 MB (32840346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2632fe95fe8cfaaaf0917baaeaee2365fbcd381c0e2a5712692bbc980c5c4d0`  
		Last Modified: Wed, 28 Oct 2026 02:54:33 GMT  
		Size: 5.9 MB (5907536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:fd6040c8405e57b1a1933348aab8e2fe6bd66544785e212d0e56e85e0f878410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2649419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e9ba1de7433d6c57a5207a6d7318fd8255042b577504b15343912c686de373`

```dockerfile
```

-	Layers:
	-	`sha256:8d59f0ff0b2ef4f31f059bccb3e7046320cd42db29cde7809bd664c935ddcf20`  
		Last Modified: Wed, 28 Oct 2026 02:54:33 GMT  
		Size: 2.6 MB (2641688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc01d0ce53a02b3189bd31ece4af2d10a23f33041564c7101740fc2d2335acb9`  
		Last Modified: Wed, 28 Oct 2026 02:54:32 GMT  
		Size: 7.7 KB (7731 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:7db1d5aaeccf1c225f37a9b44304f022b8f11e78516ae62689add13c8812733d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69823884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfae83ec6e66d06eda982dacecddb8414c003e851569afcd0d53fd3b8f823cc3`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:54:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:55:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:55:04 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:55:04 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 21 Oct 2026 00:55:04 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 21 Oct 2026 00:55:04 GMT
CMD ["pypy3"]
# Wed, 21 Oct 2026 01:38:57 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 01:38:57 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 01:38:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 01:38:57 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f18bb404f18e1a55e73386e40eac6da347163fe58e54559004ef9b0d1c24e4f2`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 29.2 MB (29239245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9bc15a8148aebb3a8c1c3e2c300c3afb18b0ec539e09967ccd6c572ad49ab9`  
		Last Modified: Wed, 21 Oct 2026 00:55:14 GMT  
		Size: 3.3 MB (3328081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196618c7f9d704df4dfb2d38095ffc4553d866bb181a3e180be0ec9f4ecf6da4`  
		Last Modified: Wed, 21 Oct 2026 00:55:15 GMT  
		Size: 31.3 MB (31348945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf7c48b83a8a6adc26112d112035f5900e0fa423ebb432e1ba605fd7b948b84`  
		Last Modified: Wed, 21 Oct 2026 01:39:06 GMT  
		Size: 5.9 MB (5907613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:7dfd1950654b6ae6540c711f8994107745386fd3e4116d90a67619e4f2126685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2646139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4737d90285468ba5429df8c9b263bd71f3da4b0e27749c6460b307436a2a2426`

```dockerfile
```

-	Layers:
	-	`sha256:b60ca32350af422a1cd9b5a39e2276989298a332d0a9242bd835722eb072c2e0`  
		Last Modified: Wed, 21 Oct 2026 01:39:06 GMT  
		Size: 2.6 MB (2638544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:809cc1c7f24354769bf661ea874b1da4c2d48e2024573bbd197406fc1c975f60`  
		Last Modified: Wed, 21 Oct 2026 01:39:05 GMT  
		Size: 7.6 KB (7595 bytes)  
		MIME: application/vnd.in-toto+json
