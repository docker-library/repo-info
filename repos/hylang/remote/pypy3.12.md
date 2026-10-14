## `hylang:pypy3.12`

```console
$ docker pull hylang@sha256:14c69844324fefa005c88dae90808a12e07c1082717fce9f3a3e1083198f1ef6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `hylang:pypy3.12` - linux; amd64

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

### `hylang:pypy3.12` - unknown; unknown

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

### `hylang:pypy3.12` - linux; arm64 variant v8

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

### `hylang:pypy3.12` - unknown; unknown

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

### `hylang:pypy3.12` - linux; 386

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

### `hylang:pypy3.12` - unknown; unknown

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

### `hylang:pypy3.12` - windows version 10.0.26100.33650; amd64

```console
$ docker pull hylang@sha256:328d000aba6e32adbedcab2dee7dce9f3248c342da208a61a59c18a9c7656c6f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2442042067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aed524fbf7e957f75e89f4a625e4d4117ef68723a216dd9b68961e8a059330e`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:13:04 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:13 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:14 GMT
ENV PYPY_VERSION=8.0.0
# Tue, 13 Oct 2026 23:13:45 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.0-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '0ccfe530cf22330bd225c561bb41b6200a759d96a15847c541d4b98859adaf3f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.0-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:46 GMT
CMD ["pypy"]
# Wed, 14 Oct 2026 00:20:52 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 00:20:53 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 00:21:39 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 14 Oct 2026 00:21:40 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2317d823a91fcf937f114808befc3f958cbbbba1b703000ae67114115fd486`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c6d600ab908ea14a7770575edc207dbd629805ae3b5f755e5b19eeaf65e301`  
		Last Modified: Tue, 13 Oct 2026 23:13:51 GMT  
		Size: 353.2 KB (353157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f671fe5ddb3a7e253d1d13d0399e34049e93f58f41cbdfb8e241e8a32ae9515`  
		Last Modified: Tue, 13 Oct 2026 23:13:53 GMT  
		Size: 15.5 MB (15532847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659b795c168d342892537a2224ceed0cae32f944d3a2a16cc70375241832d118`  
		Last Modified: Tue, 13 Oct 2026 23:13:51 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e5df5d8f8113497b47d63292ef2d815cba7f85be7da1137b54195fa1ab87f6`  
		Last Modified: Tue, 13 Oct 2026 23:13:55 GMT  
		Size: 27.6 MB (27641954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9a05dca5079f58f346f71e8d11db6fde83cd2f7ff2444e5402ae4962dd795d`  
		Last Modified: Tue, 13 Oct 2026 23:13:51 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5570049509a860313dac5a0b4b2c6e08ac49b8d0fc81c11cee9fa74089d75642`  
		Last Modified: Wed, 14 Oct 2026 00:21:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9f10aa6d8b1a7ccc16b9a77e4b345245d736ed2b060063e2abe646baaf6ea0`  
		Last Modified: Wed, 14 Oct 2026 00:21:44 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97421bd04f310eb61e0d49dc8b3b9e12198c09139a24b09e7d15c3ddcfba715`  
		Last Modified: Wed, 14 Oct 2026 00:21:45 GMT  
		Size: 6.5 MB (6512116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525bc71d3fd636e2e52b37156f7727ee6b9eee949963c9dea9d79b12989a2440`  
		Last Modified: Wed, 14 Oct 2026 00:21:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:pypy3.12` - windows version 10.0.20348.5761; amd64

```console
$ docker pull hylang@sha256:949a6ff4ac5dd87b75c7ebd41c399f88dc250425c81ae5d994d7c518e726f682
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276280994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0794784efaf3e724c3d8bd92b09a4af6a4dadc0a596909d4d8109d8b266af239`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:00:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:15:07 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:15:21 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:15:22 GMT
ENV PYPY_VERSION=8.0.0
# Tue, 13 Oct 2026 23:15:53 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.0-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '0ccfe530cf22330bd225c561bb41b6200a759d96a15847c541d4b98859adaf3f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.0-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:15:54 GMT
CMD ["pypy"]
# Wed, 14 Oct 2026 00:30:22 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 00:30:22 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 00:30:58 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 14 Oct 2026 00:30:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdfa17b4044e1440a5a0438b3f018d63e2b4fd2279d784da459aecfcc7fa880`  
		Last Modified: Tue, 13 Oct 2026 23:02:09 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521d2790d805887fdd377437a2d5a271c064b6e95d1e1cf5abb948f4997a1ce8`  
		Last Modified: Tue, 13 Oct 2026 23:15:58 GMT  
		Size: 338.2 KB (338171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa47d0910ebd318a33f1d9c2f6ba0476626816b0a69541de7248fd1c98e76f24`  
		Last Modified: Tue, 13 Oct 2026 23:16:01 GMT  
		Size: 15.5 MB (15516687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9787709c7b01e9055a9bcdb4f2ac19e5c503d73775dc8d9a8b4d6550cdb0d45f`  
		Last Modified: Tue, 13 Oct 2026 23:15:58 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e9d674130ce03f1c6a107fc29a209ba627d1a85626cb9691d0c69ac0bae22f`  
		Last Modified: Tue, 13 Oct 2026 23:16:02 GMT  
		Size: 27.6 MB (27636830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96022e5e791eb06e7d9daf7c18f88eb0cb81fa3dc6c140514c61aef3fac285f6`  
		Last Modified: Tue, 13 Oct 2026 23:15:58 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94370d04debc1bd379df945e97a4a45eb0875c87b86b59559cbd0e42df311377`  
		Last Modified: Wed, 14 Oct 2026 00:31:03 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b5103cb91fb36b509c8e78d40718b9e0f63f095b686fb1b83fdeb44636a8a1`  
		Last Modified: Wed, 14 Oct 2026 00:31:03 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40c29b7a1413f471523267701832b6060d9680b80a8e7b174f632e41f73ebfe`  
		Last Modified: Wed, 14 Oct 2026 00:31:04 GMT  
		Size: 6.5 MB (6495950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acc803785be122c8948d3dfa7d9f0022aa8157d62aff07a69d2f7fc1af21d20`  
		Last Modified: Wed, 14 Oct 2026 00:31:03 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
