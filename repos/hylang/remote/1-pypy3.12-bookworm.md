## `hylang:1-pypy3.12-bookworm`

```console
$ docker pull hylang@sha256:ef35b93df3392918a2b00dc35fc32fb8b619559ae20355ac66c84e2a2fb4b99c
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
$ docker pull hylang@sha256:42830b5a846be90d9e00a576ed7b2ffc24c52831350155ffba5cdac3cfe2226f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72217832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11ef0c5b629cbac661214e2d3b25117da6188e164ce8ee9ec689e7e902a97076`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Mon, 21 Sep 2026 23:04:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 23:05:24 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:05:24 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:05:24 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:05:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux64.tar.gz'; 			sha256='a1b4851459c2b3dffccab71cb08989534fab0839deddd34f0e6bf18add256fd7'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-aarch64.tar.gz'; 			sha256='72de008683246b0c18aeb8e163dc5d022d3f19b001e8cc5c258010968f10e336'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux32.tar.gz'; 			sha256='228d793e57217f2516032db2c38e593914cb222f0d41660d1d8adbb571dcd4e3'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		patch 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		wget -O cffi.patch 'https://github.com/pypy/pypy/commit/8c384bde537fd7742f3acc0e7ecaf55924f29b16.patch?full_index=1'; 	echo '957c091c80a5041d4faeb82d012ec494c8fea8d260ce5fe4a642c8c0eee03caf *cffi.patch' | sha256sum --check --strict -; 	patch -p2 -d /opt/pypy/lib/pypy3.12 < cffi.patch; 	rm cffi.patch; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Mon, 21 Sep 2026 23:05:24 GMT
CMD ["pypy3"]
# Tue, 22 Sep 2026 23:45:13 GMT
ENV HY_VERSION=1.3.1
# Tue, 22 Sep 2026 23:45:13 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 22 Sep 2026 23:45:13 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 22 Sep 2026 23:45:13 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1ed936760645bc472f6c8b2edbb78e4a9870c083f86b96e943ea03760a2b67`  
		Last Modified: Mon, 21 Sep 2026 23:05:36 GMT  
		Size: 3.5 MB (3523478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd1a168d14e611dd450a26f1dd991066be577103a33295504ce4b36682bd4ef`  
		Last Modified: Mon, 21 Sep 2026 23:05:37 GMT  
		Size: 34.6 MB (34623750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdb1f59ab75bb971d4a0072e29ed8a60b7ba6bbbccb0be7c1e7f78fd57f682`  
		Last Modified: Tue, 22 Sep 2026 23:45:21 GMT  
		Size: 5.8 MB (5832161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:8893d084b134753b8ac327b768f78716304dac88b24c63fedf3ac30c56888979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2650311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57be616ebadd42eab479b66f9fd9e9668d51d815a7d7ee97c0039139417cc3df`

```dockerfile
```

-	Layers:
	-	`sha256:6264cea853cf2a2945d8e4d710b108687bbefba85f1fffa887242797fe5443e0`  
		Last Modified: Tue, 22 Sep 2026 23:45:21 GMT  
		Size: 2.6 MB (2642684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:030380457c76a1fb683a49851586b8b78ca33962d19df5ba3ad47286f61fa1a6`  
		Last Modified: Tue, 22 Sep 2026 23:45:21 GMT  
		Size: 7.6 KB (7627 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:36d95f315eb8f14ca1bf76a936e265aafb5df0a53f5ec1006824e7e664df2c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70172748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7062694a8aa09a840ce3d23435e9cec476f3a23adb1c8cfde6ae47d5426dedb6`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Mon, 21 Sep 2026 23:03:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 23:04:35 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:04:35 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:04:35 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:04:35 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux64.tar.gz'; 			sha256='a1b4851459c2b3dffccab71cb08989534fab0839deddd34f0e6bf18add256fd7'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-aarch64.tar.gz'; 			sha256='72de008683246b0c18aeb8e163dc5d022d3f19b001e8cc5c258010968f10e336'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux32.tar.gz'; 			sha256='228d793e57217f2516032db2c38e593914cb222f0d41660d1d8adbb571dcd4e3'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		patch 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		wget -O cffi.patch 'https://github.com/pypy/pypy/commit/8c384bde537fd7742f3acc0e7ecaf55924f29b16.patch?full_index=1'; 	echo '957c091c80a5041d4faeb82d012ec494c8fea8d260ce5fe4a642c8c0eee03caf *cffi.patch' | sha256sum --check --strict -; 	patch -p2 -d /opt/pypy/lib/pypy3.12 < cffi.patch; 	rm cffi.patch; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Mon, 21 Sep 2026 23:04:35 GMT
CMD ["pypy3"]
# Tue, 22 Sep 2026 23:45:21 GMT
ENV HY_VERSION=1.3.1
# Tue, 22 Sep 2026 23:45:21 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 22 Sep 2026 23:45:21 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 22 Sep 2026 23:45:21 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be70741f11cb92e5f839a61030d85899a0cb659cc5d467715d92f339743013`  
		Last Modified: Mon, 21 Sep 2026 23:04:46 GMT  
		Size: 3.4 MB (3353383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e256650ed785480f859590b9e1feed6f4f4c6501eb8d9cd784d8b51a11f54f99`  
		Last Modified: Mon, 21 Sep 2026 23:04:47 GMT  
		Size: 32.9 MB (32863421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2f1b6f56fe859b71d208cad0da84471683f6ba7ea420d128e37a24ea5da0cb`  
		Last Modified: Tue, 22 Sep 2026 23:45:29 GMT  
		Size: 5.8 MB (5832264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:0d7f12858b3581999c848d5a2457276d4b3370c986ceb55136bd8dcc22e558af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2650686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1a64b5d2f2313817ba0f4fc111ffad02321648780764e0bb150905b813cceb`

```dockerfile
```

-	Layers:
	-	`sha256:df3cf139d38e1205106d9e93bdc8a9b88017b4927a634300827b56567af53088`  
		Last Modified: Tue, 22 Sep 2026 23:45:29 GMT  
		Size: 2.6 MB (2642955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ed4f870e0b05f77e5019f3ced3faa0bdfb447c1ec41752b9f890650a6084504`  
		Last Modified: Tue, 22 Sep 2026 23:45:28 GMT  
		Size: 7.7 KB (7731 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:db6e911f1546ffb07c09c03d096429d04fd70fa3ea3d52b0799a10e5b7058df6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69932752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01abde47dd61d06b141e4f33d6de297c112ecc65899f29dbfd4c3888f0edc85e`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Mon, 21 Sep 2026 23:04:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 23:04:46 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:04:46 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:04:46 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:04:46 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux64.tar.gz'; 			sha256='a1b4851459c2b3dffccab71cb08989534fab0839deddd34f0e6bf18add256fd7'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-aarch64.tar.gz'; 			sha256='72de008683246b0c18aeb8e163dc5d022d3f19b001e8cc5c258010968f10e336'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux32.tar.gz'; 			sha256='228d793e57217f2516032db2c38e593914cb222f0d41660d1d8adbb571dcd4e3'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		patch 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		wget -O cffi.patch 'https://github.com/pypy/pypy/commit/8c384bde537fd7742f3acc0e7ecaf55924f29b16.patch?full_index=1'; 	echo '957c091c80a5041d4faeb82d012ec494c8fea8d260ce5fe4a642c8c0eee03caf *cffi.patch' | sha256sum --check --strict -; 	patch -p2 -d /opt/pypy/lib/pypy3.12 < cffi.patch; 	rm cffi.patch; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Mon, 21 Sep 2026 23:04:46 GMT
CMD ["pypy3"]
# Tue, 22 Sep 2026 23:45:24 GMT
ENV HY_VERSION=1.3.1
# Tue, 22 Sep 2026 23:45:24 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 22 Sep 2026 23:45:24 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 22 Sep 2026 23:45:24 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f95bb02a2aa70889bc5e069830285457cc466f3248afef4f8f73e013729b1eb`  
		Last Modified: Mon, 21 Sep 2026 23:04:56 GMT  
		Size: 3.5 MB (3522063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a7bcfe00db37186def25a883ab1b7cf3f3ea7238b3eb5637b489b5b4074b55`  
		Last Modified: Mon, 21 Sep 2026 23:04:57 GMT  
		Size: 31.4 MB (31352552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8f2daeb5b8067f772cf00bc67ab79c06a764556295b680756ba41690850a5c`  
		Last Modified: Tue, 22 Sep 2026 23:45:31 GMT  
		Size: 5.8 MB (5832032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:c1c3e6515ffc6ce04d7e59988406ce807c4f25b6aeef5c386920d0b53caf37e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2647432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74fc988292aa17214d5e5526f8237bf3b5303ecd2d024f2473d8710a804e9ba1`

```dockerfile
```

-	Layers:
	-	`sha256:50d4fe1b983c31c03c6d6e05c5473a1bfd06b4520f0c0651105097a51796d966`  
		Last Modified: Tue, 22 Sep 2026 23:45:31 GMT  
		Size: 2.6 MB (2639839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e2d297b756887e20c38654f62a0fc335fbcaf618af3a14950be1b38fb5363cc`  
		Last Modified: Tue, 22 Sep 2026 23:45:31 GMT  
		Size: 7.6 KB (7593 bytes)  
		MIME: application/vnd.in-toto+json
