## `hylang:pypy3.12-trixie`

```console
$ docker pull hylang@sha256:138940b2815a6229ba4c840dd1cab9104bdc7e1d142bc4892f7be2b189eb5af0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `hylang:pypy3.12-trixie` - linux; amd64

```console
$ docker pull hylang@sha256:dc776c136ea7687dfd8b8bc44c5a8abd844a3791f01527d5c7ec30fa16ea8a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71101192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:733fce5e1afadc476707a969d8aed747c1ff18c9a85c2f505136e3745fee6f0a`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Mon, 21 Sep 2026 23:04:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 23:05:02 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:05:02 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:05:02 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:05:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux64.tar.gz'; 			sha256='a1b4851459c2b3dffccab71cb08989534fab0839deddd34f0e6bf18add256fd7'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-aarch64.tar.gz'; 			sha256='72de008683246b0c18aeb8e163dc5d022d3f19b001e8cc5c258010968f10e336'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux32.tar.gz'; 			sha256='228d793e57217f2516032db2c38e593914cb222f0d41660d1d8adbb571dcd4e3'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		patch 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		wget -O cffi.patch 'https://github.com/pypy/pypy/commit/8c384bde537fd7742f3acc0e7ecaf55924f29b16.patch?full_index=1'; 	echo '957c091c80a5041d4faeb82d012ec494c8fea8d260ce5fe4a642c8c0eee03caf *cffi.patch' | sha256sum --check --strict -; 	patch -p2 -d /opt/pypy/lib/pypy3.12 < cffi.patch; 	rm cffi.patch; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Mon, 21 Sep 2026 23:05:02 GMT
CMD ["pypy3"]
# Tue, 22 Sep 2026 23:45:36 GMT
ENV HY_VERSION=1.3.1
# Tue, 22 Sep 2026 23:45:36 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 22 Sep 2026 23:45:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 22 Sep 2026 23:45:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a1fb191415d4c05bd153beedefe38e3d5e9bd22544f23b31e8a7ffc2fe944e`  
		Last Modified: Mon, 21 Sep 2026 23:05:13 GMT  
		Size: 1.2 MB (1221131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60c948b828af93beb392c4e3acba1b47f70ce85e285beb1e286ec7a8dcc00c96`  
		Last Modified: Mon, 21 Sep 2026 23:05:13 GMT  
		Size: 34.2 MB (34217437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04582abf2ec87114a0c76cb21f4a5cd49590e2920a491393fd6e7feb4cd7c0b4`  
		Last Modified: Tue, 22 Sep 2026 23:45:44 GMT  
		Size: 5.8 MB (5832206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.12-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:6e1c127a9cb4140bdafc0a4018c76b739adf616db96b2f79845bb8884e43f61f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7304ed78378cb7f533e7f1fc5c238c81a08b78d342fa617a1fe0296ffb585f6d`

```dockerfile
```

-	Layers:
	-	`sha256:8876ce4680685b2043a703d0d089ff5db33eed85172e8b57837f2180480a8d30`  
		Last Modified: Tue, 22 Sep 2026 23:45:44 GMT  
		Size: 2.3 MB (2256313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70e0eeb2e2e4c9e03aa6ddbf27be6136917498a70dcffdd4b45014716edc04d5`  
		Last Modified: Tue, 22 Sep 2026 23:45:44 GMT  
		Size: 8.8 KB (8833 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy3.12-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:a8c99701687329c0fa47446b4fa5e301f274a7d70b36f32a11ec416c0a808cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.7 MB (69683338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ecfddc1f20a4592c83a0be91be327718040901b2315a300e845bf88187a4694`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Mon, 21 Sep 2026 23:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 23:05:01 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:05:01 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:05:01 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:05:01 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux64.tar.gz'; 			sha256='a1b4851459c2b3dffccab71cb08989534fab0839deddd34f0e6bf18add256fd7'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-aarch64.tar.gz'; 			sha256='72de008683246b0c18aeb8e163dc5d022d3f19b001e8cc5c258010968f10e336'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux32.tar.gz'; 			sha256='228d793e57217f2516032db2c38e593914cb222f0d41660d1d8adbb571dcd4e3'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		patch 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		wget -O cffi.patch 'https://github.com/pypy/pypy/commit/8c384bde537fd7742f3acc0e7ecaf55924f29b16.patch?full_index=1'; 	echo '957c091c80a5041d4faeb82d012ec494c8fea8d260ce5fe4a642c8c0eee03caf *cffi.patch' | sha256sum --check --strict -; 	patch -p2 -d /opt/pypy/lib/pypy3.12 < cffi.patch; 	rm cffi.patch; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Mon, 21 Sep 2026 23:05:01 GMT
CMD ["pypy3"]
# Tue, 22 Sep 2026 23:45:18 GMT
ENV HY_VERSION=1.3.1
# Tue, 22 Sep 2026 23:45:18 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 22 Sep 2026 23:45:18 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 22 Sep 2026 23:45:18 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440f3887dd69f7ee5937f477cbfa1f882134aa1dc17cd208b02ec5b8c2c86890`  
		Last Modified: Mon, 21 Sep 2026 23:05:12 GMT  
		Size: 1.2 MB (1202805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be74267469c0ec8902e92c524164cf7046e6d3590f9669d28c19dfff834b49c4`  
		Last Modified: Mon, 21 Sep 2026 23:05:13 GMT  
		Size: 32.5 MB (32458561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab8a34e208eaabf751daf72dfac8f4738b97de64442d0ae9f721207918042b1`  
		Last Modified: Tue, 22 Sep 2026 23:45:26 GMT  
		Size: 5.8 MB (5832281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.12-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:6f685ef0536a7f54f27219d366c02b80c8f0eb7d98adc14626e3e795c7d2ebb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38a1ae666d148a592b7474cf5807f6f8e99c810e0a75588b03558ea62907cc0f`

```dockerfile
```

-	Layers:
	-	`sha256:ffbeb47082dd1d8c7ef9b6de0f362c9dc4d49c13229d5c5828a4ff36f9ce1562`  
		Last Modified: Tue, 22 Sep 2026 23:45:26 GMT  
		Size: 2.3 MB (2256623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6596b6b97d638089d5bd780fde31e4714234c1d36b2c23b0280a9e35dc2fc478`  
		Last Modified: Tue, 22 Sep 2026 23:45:26 GMT  
		Size: 9.0 KB (8984 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy3.12-trixie` - linux; 386

```console
$ docker pull hylang@sha256:e8edeaa604243c67afad34bc53fc2495f2d1e1a479eac8e30dce4982f4061820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69247196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e849c9eef0630e06ea82aa27b7097c3acb36f631accc3ccdfd5e243864649c4`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Mon, 21 Sep 2026 23:03:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 23:04:29 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:04:29 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:04:29 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:04:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux64.tar.gz'; 			sha256='a1b4851459c2b3dffccab71cb08989534fab0839deddd34f0e6bf18add256fd7'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-aarch64.tar.gz'; 			sha256='72de008683246b0c18aeb8e163dc5d022d3f19b001e8cc5c258010968f10e336'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux32.tar.gz'; 			sha256='228d793e57217f2516032db2c38e593914cb222f0d41660d1d8adbb571dcd4e3'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		patch 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		wget -O cffi.patch 'https://github.com/pypy/pypy/commit/8c384bde537fd7742f3acc0e7ecaf55924f29b16.patch?full_index=1'; 	echo '957c091c80a5041d4faeb82d012ec494c8fea8d260ce5fe4a642c8c0eee03caf *cffi.patch' | sha256sum --check --strict -; 	patch -p2 -d /opt/pypy/lib/pypy3.12 < cffi.patch; 	rm cffi.patch; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Mon, 21 Sep 2026 23:04:29 GMT
CMD ["pypy3"]
# Tue, 22 Sep 2026 23:45:25 GMT
ENV HY_VERSION=1.3.1
# Tue, 22 Sep 2026 23:45:25 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 22 Sep 2026 23:45:25 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 22 Sep 2026 23:45:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fabaa5af2c82b386757df06e23df82dd04a0a91acaacf0ee08bd8c4fbb43489d`  
		Last Modified: Mon, 21 Sep 2026 23:04:39 GMT  
		Size: 1.2 MB (1228274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08cdf907e11be9a8e1bef027f9af8902707b0dc473bbd9ccf992a8305c342a6`  
		Last Modified: Mon, 21 Sep 2026 23:04:40 GMT  
		Size: 30.8 MB (30846460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806011278f3998f12cd83c6635a4d23895e672fce4071c45d67d3ecc9f7e98a3`  
		Last Modified: Tue, 22 Sep 2026 23:45:32 GMT  
		Size: 5.8 MB (5832064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy3.12-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:a40fbefe0b0200e4d375c494d44f982bb7942bd45a95a1bdad8e4e6223a32fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0301277fd1639f62cc1d296dfd374e3f2b6a48b4ed378e46a84e3a2bed202db5`

```dockerfile
```

-	Layers:
	-	`sha256:f75658076ced7f9dfb2e7f0f61b5dc11829736cb952f57063a7e45085e80d2c6`  
		Last Modified: Tue, 22 Sep 2026 23:45:32 GMT  
		Size: 2.3 MB (2253466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abf5b786c7100096dbeb83243862bd33ab56653d0bd886f0fec23a6cf474477d`  
		Last Modified: Tue, 22 Sep 2026 23:45:32 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json
