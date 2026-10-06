## `hylang:1-pypy3.12`

```console
$ docker pull hylang@sha256:8d7003c7fbcaced002973a66239c434a899a0e403f47295c86d129eadf03af3c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `hylang:1-pypy3.12` - linux; amd64

```console
$ docker pull hylang@sha256:aa367bfa06d8094466cc5b18a2ed372dff8f50d12970e12c1349a15e46d98311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71113938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bdd0afe248f02e3ac73b8fe4dd3632e95a41b7a2070df3dfa177db7c5db96c0`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:51:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:51:59 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:51:59 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:51:59 GMT
ENV PYPY_VERSION=8.0.0
# Tue, 06 Oct 2026 01:51:59 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux64.tar.gz'; 			sha256='a1b4851459c2b3dffccab71cb08989534fab0839deddd34f0e6bf18add256fd7'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-aarch64.tar.gz'; 			sha256='72de008683246b0c18aeb8e163dc5d022d3f19b001e8cc5c258010968f10e336'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux32.tar.gz'; 			sha256='228d793e57217f2516032db2c38e593914cb222f0d41660d1d8adbb571dcd4e3'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		patch 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		wget -O cffi.patch 'https://github.com/pypy/pypy/commit/8c384bde537fd7742f3acc0e7ecaf55924f29b16.patch?full_index=1'; 	echo '957c091c80a5041d4faeb82d012ec494c8fea8d260ce5fe4a642c8c0eee03caf *cffi.patch' | sha256sum --check --strict -; 	patch -p2 -d /opt/pypy/lib/pypy3.12 < cffi.patch; 	rm cffi.patch; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 06 Oct 2026 01:51:59 GMT
CMD ["pypy3"]
# Tue, 06 Oct 2026 02:51:42 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:51:42 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:51:42 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:51:42 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17af6fe14ad5d3e449f740ad7bf28340e0f9a912789879b810c2ee028dd0bc0e`  
		Last Modified: Tue, 06 Oct 2026 01:52:10 GMT  
		Size: 1.2 MB (1221085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ec474b0aa801cd313400ac4b57ec025658d99ead96c239503ffaabc7e483c8`  
		Last Modified: Tue, 06 Oct 2026 01:52:11 GMT  
		Size: 34.2 MB (34217446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6c130c97c33d69c89d586ff754fcf18d2be55de024b97722eb4680a4824c0e8`  
		Last Modified: Tue, 06 Oct 2026 02:51:49 GMT  
		Size: 5.8 MB (5832057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12` - unknown; unknown

```console
$ docker pull hylang@sha256:9a4c1dac58c746388d3ebe7b18c36116b0720c90b5da62556f5a6cb7b45d52d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69e64a1103ee56b4770a6878d9e64272ea0d7ac226e59da7e488d4fefc738c5`

```dockerfile
```

-	Layers:
	-	`sha256:66b253369009c9b85c9cbd5adda858736ed4b33213bbd37621f64816bf548b11`  
		Last Modified: Tue, 06 Oct 2026 02:51:49 GMT  
		Size: 2.3 MB (2256313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7b7ac8e62b4ec3cc20c36f9873d343b3fd2ae828ca23b406ce39207fa426fe8`  
		Last Modified: Tue, 06 Oct 2026 02:51:49 GMT  
		Size: 8.8 KB (8833 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:dcd165522b8164c5b3ca964d2c0a0336763fe69bfadb9c22fe7677147ff72f25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.7 MB (69693373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:894f52be2592524f95bd53c830cc23d9c9a5fd658ae291324adc290ea706b444`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:54:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:55:27 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:55:27 GMT
ENV PYPY_VERSION=8.0.0
# Tue, 06 Oct 2026 01:55:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux64.tar.gz'; 			sha256='a1b4851459c2b3dffccab71cb08989534fab0839deddd34f0e6bf18add256fd7'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-aarch64.tar.gz'; 			sha256='72de008683246b0c18aeb8e163dc5d022d3f19b001e8cc5c258010968f10e336'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux32.tar.gz'; 			sha256='228d793e57217f2516032db2c38e593914cb222f0d41660d1d8adbb571dcd4e3'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		patch 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		wget -O cffi.patch 'https://github.com/pypy/pypy/commit/8c384bde537fd7742f3acc0e7ecaf55924f29b16.patch?full_index=1'; 	echo '957c091c80a5041d4faeb82d012ec494c8fea8d260ce5fe4a642c8c0eee03caf *cffi.patch' | sha256sum --check --strict -; 	patch -p2 -d /opt/pypy/lib/pypy3.12 < cffi.patch; 	rm cffi.patch; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 06 Oct 2026 01:55:27 GMT
CMD ["pypy3"]
# Tue, 06 Oct 2026 02:45:06 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:45:06 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:45:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:45:06 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d1550d15338eca9ff54f35658c5e985471c3d60c697f55a7486ddb546535f8`  
		Last Modified: Tue, 06 Oct 2026 01:55:38 GMT  
		Size: 1.2 MB (1202754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32c74393471068d700add3ffc0669d71b32189cbb5ec0a537e80fd16643b992`  
		Last Modified: Tue, 06 Oct 2026 01:55:39 GMT  
		Size: 32.5 MB (32458218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4cfd17092600b357b7765fbf4c683777cdb57f7627b0e2c7379cf995d6733e`  
		Last Modified: Tue, 06 Oct 2026 02:45:14 GMT  
		Size: 5.8 MB (5832119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12` - unknown; unknown

```console
$ docker pull hylang@sha256:16c8afff48912c8e24d3b31d2dcb151943c97b32750c77f0b2f0cbb0d5f64003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8407573e192b4732b281a626eb88f9a87a9c3dd1f376f113b68318c111bdcb94`

```dockerfile
```

-	Layers:
	-	`sha256:9ae8c4942630ab6f7822ae0e46bb04ee6ce28d0eeae7ac3f6ac82a33318560ef`  
		Last Modified: Tue, 06 Oct 2026 02:45:14 GMT  
		Size: 2.3 MB (2256623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15f53c454b970a8f21b5211b807d9f4d24eeadec50bb11dfc4432a1e1ee3b516`  
		Last Modified: Tue, 06 Oct 2026 02:45:13 GMT  
		Size: 9.0 KB (8985 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12` - linux; 386

```console
$ docker pull hylang@sha256:2489288f56516356ee846843f01b458d642301df3fab07ae561d578387a6146f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.3 MB (69259861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c561992f27b6473432470282d1658acf3a4fbad093aba2ea1ee232b48b69d26`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:50:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:51:28 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:51:28 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:51:28 GMT
ENV PYPY_VERSION=8.0.0
# Tue, 06 Oct 2026 01:51:28 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux64.tar.gz'; 			sha256='a1b4851459c2b3dffccab71cb08989534fab0839deddd34f0e6bf18add256fd7'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-aarch64.tar.gz'; 			sha256='72de008683246b0c18aeb8e163dc5d022d3f19b001e8cc5c258010968f10e336'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.0-linux32.tar.gz'; 			sha256='228d793e57217f2516032db2c38e593914cb222f0d41660d1d8adbb571dcd4e3'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		patch 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		wget -O cffi.patch 'https://github.com/pypy/pypy/commit/8c384bde537fd7742f3acc0e7ecaf55924f29b16.patch?full_index=1'; 	echo '957c091c80a5041d4faeb82d012ec494c8fea8d260ce5fe4a642c8c0eee03caf *cffi.patch' | sha256sum --check --strict -; 	patch -p2 -d /opt/pypy/lib/pypy3.12 < cffi.patch; 	rm cffi.patch; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 06 Oct 2026 01:51:28 GMT
CMD ["pypy3"]
# Tue, 06 Oct 2026 02:49:31 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:49:31 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:49:31 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:49:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600672d77ea9d771e14d5acfc39dc0eecd5492326ca9603c434bc32d22854812`  
		Last Modified: Tue, 06 Oct 2026 01:51:37 GMT  
		Size: 1.2 MB (1228241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29d59a31de7bdd7e8daa7991c1312d0538959e77a341582a0a1cf5bff777815`  
		Last Modified: Tue, 06 Oct 2026 01:51:38 GMT  
		Size: 30.8 MB (30846358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0507a456c1594e56b06289ff95b53cb89446554bae47fc25d94a97179abd075c`  
		Last Modified: Tue, 06 Oct 2026 02:49:39 GMT  
		Size: 5.8 MB (5831965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12` - unknown; unknown

```console
$ docker pull hylang@sha256:84cdf6c9a85fec7e25d67ac54fbe2a13d56601410fd9e246a11c15f12d423ad6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff01dd4960fd05485f187593dc6504789d2cc92e63fd1fca9ac1b89ebec2ef8f`

```dockerfile
```

-	Layers:
	-	`sha256:8ded9d8dae893b2ac2098eb87eea290c9831dd02728b0935d82aaec2998afb02`  
		Last Modified: Tue, 06 Oct 2026 02:49:39 GMT  
		Size: 2.3 MB (2253466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ce1d10718318bab59a105a45fb3356335917fbd1aa1fb2c102058cc137cdec2`  
		Last Modified: Tue, 06 Oct 2026 02:49:38 GMT  
		Size: 8.8 KB (8780 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12` - windows version 10.0.26100.33438; amd64

```console
$ docker pull hylang@sha256:99156c35ef47e27848f126992bf6544384b6fcdfe7515fc89262792774d47269
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2507807434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1dc0081d8037b3fdae461881b44e310fc08fd5fca13ba7b524de455d11d9557`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 21 Sep 2026 23:11:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 21 Sep 2026 23:12:38 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:13:09 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:13:10 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:13:43 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.0-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '0ccfe530cf22330bd225c561bb41b6200a759d96a15847c541d4b98859adaf3f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.0-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:13:44 GMT
CMD ["pypy"]
# Tue, 22 Sep 2026 23:49:07 GMT
ENV HY_VERSION=1.3.1
# Tue, 22 Sep 2026 23:49:08 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 22 Sep 2026 23:50:52 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 22 Sep 2026 23:50:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5703c01387f6d2933a9d0c44f6973a89d39b7ee08179e4419fe028042146049`  
		Last Modified: Mon, 21 Sep 2026 23:13:51 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27d99ae912e4662765cbf48b0c1471205f8ffe5a0cca61b39c6f82c2948d51b`  
		Last Modified: Mon, 21 Sep 2026 23:13:50 GMT  
		Size: 386.2 KB (386177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6add52f67ffc05bc248308d919daceff6eb836a407679b809b4367dd832fef3d`  
		Last Modified: Mon, 21 Sep 2026 23:13:55 GMT  
		Size: 15.6 MB (15565597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ccd98c6ca686f4d779dc6d842c7c0b900f35f6053f6b80c0b1b34d4452b974`  
		Last Modified: Mon, 21 Sep 2026 23:13:50 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b9de44b5342b008a88147867a0c001fa7f267ef5cd855abdf4d94500516bea`  
		Last Modified: Mon, 21 Sep 2026 23:13:54 GMT  
		Size: 27.7 MB (27675950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fe921c4c80422f24cd7be0117dfe7c4d81c7066bd5d64425232c96f5b2ac99`  
		Last Modified: Mon, 21 Sep 2026 23:13:50 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05c458a55145ec7078818741eb57e0e40b45095a5cf46cd785141a1e546384a`  
		Last Modified: Tue, 22 Sep 2026 23:50:57 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c93359e8d23471219f69a4840c81f6d8eef8f2c49156058ace08dd6e726b3b9`  
		Last Modified: Tue, 22 Sep 2026 23:50:57 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68eee175e9f108262905201c93a1884c28ec2cdcd23b8a3e603c2f69b1d7e43`  
		Last Modified: Tue, 22 Sep 2026 23:50:58 GMT  
		Size: 6.5 MB (6542367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf8b397abd38b797569f9254b4aebb5265e33cf0ce72bf076cf26285fa7c2a8`  
		Last Modified: Tue, 22 Sep 2026 23:50:57 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:1-pypy3.12` - windows version 10.0.20348.5622; amd64

```console
$ docker pull hylang@sha256:a89492151d6874ef1ecfac1fe1b5649eb602775b28677311e2a2a836dbed9874
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2269440612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d9fb88d6ebc7fa0abb277097ee7a909a60a19bf7e4d1c2e23ab81362eae6e7`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 21 Sep 2026 23:08:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 21 Sep 2026 23:10:09 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:10:47 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:10:48 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:11:39 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.0-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '0ccfe530cf22330bd225c561bb41b6200a759d96a15847c541d4b98859adaf3f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.0-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:11:40 GMT
CMD ["pypy"]
# Wed, 23 Sep 2026 00:16:05 GMT
ENV HY_VERSION=1.3.1
# Wed, 23 Sep 2026 00:16:09 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 23 Sep 2026 00:18:27 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 23 Sep 2026 00:18:29 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47afe180dbd93a1801ebb214117f4505e152de871cda8696e4fb1dee46aa5db1`  
		Last Modified: Mon, 21 Sep 2026 23:11:49 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac8e017d7c706ee39fc7ed5072af6dec8a2f0b6988afea5b8e0e5dd8da843e0`  
		Last Modified: Mon, 21 Sep 2026 23:11:48 GMT  
		Size: 361.6 KB (361550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2720361629f16aca3b2dd8bf271ba974d859cb5c51cab375c76e4ff9b075c4b9`  
		Last Modified: Mon, 21 Sep 2026 23:11:52 GMT  
		Size: 15.5 MB (15499207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd4c0248ee1766290b09cc04ca203f404681265d2f9ba5f38f3c4b6549ac883`  
		Last Modified: Mon, 21 Sep 2026 23:11:47 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9a04a0a1ca0c4c192edf3404ce8003bcea00d9fd50a76e5d61a298063b8d5e`  
		Last Modified: Mon, 21 Sep 2026 23:11:51 GMT  
		Size: 27.6 MB (27607272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b88db62a80e77f2f82c40e3326aa6c0b0c2985fb187e527aa032d954f95950`  
		Last Modified: Mon, 21 Sep 2026 23:11:47 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9134664b9a669ad6569d55689447884315288c7074df0bd696336a671bfb21`  
		Last Modified: Wed, 23 Sep 2026 00:18:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab980850d724e434ed660e74bb645aacaf95d3846ab9ef86c8fd27e2a99c5ed`  
		Last Modified: Wed, 23 Sep 2026 00:18:34 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36c3f8123cbe0fb95588b58f62c9aa8f52ee7504f4012820ac3473dd7eb53a2`  
		Last Modified: Wed, 23 Sep 2026 00:18:34 GMT  
		Size: 6.5 MB (6476015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d3e1f398193e0e0de9b88bfb70e44cf58a205e3775a68bfdf11e1bf67af634`  
		Last Modified: Wed, 23 Sep 2026 00:18:34 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
