## `pypy:2-slim-trixie`

```console
$ docker pull pypy@sha256:4d8f4d7c25d7575b6a5c6314c0225d7d06df6dce6ff9c9c5203b560e9b539634
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `pypy:2-slim-trixie` - linux; amd64

```console
$ docker pull pypy@sha256:f5ab32c210c07ba8de9c39a6db5bab80a368d9d74e2cc331b8de0ba261863464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61382598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1623157f25c3cdbdc3c62a6b14ed592c158f68b0dbbd79f7c620b9ae8907fb80`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:49:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:51:11 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:51:11 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:51:11 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 24 Nov 2026 04:51:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux64.tar.gz'; 			sha256='78674cdf95eb4cb1dd5a9b68a70200387111cb29467f8a472ab7cf07a251653c'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-aarch64.tar.gz'; 			sha256='abd5bd601fc5af143a80d02c52b5f098f0096f9b0793140353e5e3d439676b85'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux32.tar.gz'; 			sha256='956365de00b86c4741acd719caff28edf3df2306962f7767ca0e2c9a73e262e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfreetype6 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 24 Nov 2026 04:51:11 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cf69ab93e678bc3ff2c7e42eddd336f640892cdd1e17e8a0b50c04262b5c6cb`  
		Last Modified: Tue, 24 Nov 2026 04:49:51 GMT  
		Size: 1.2 MB (1218571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e86e2d4b5b8cf6f774d0ff73f69ac5036e78c4f5cecbb56be60dc8de3aa732b`  
		Last Modified: Tue, 24 Nov 2026 04:51:22 GMT  
		Size: 30.3 MB (30321845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-slim-trixie` - unknown; unknown

```console
$ docker pull pypy@sha256:0c29f71f1d9eda4f4d1ee42e903565f900f4218a96c9802b8b885f1354d73b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2135484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd639433bd1424afc58f43d8a8e17571d78f2ef7b6febae6f90d0a5e8b681ee2`

```dockerfile
```

-	Layers:
	-	`sha256:979205eece344341c28e980ea9102470b282cbf64863c4e055cd57e58866c643`  
		Last Modified: Tue, 24 Nov 2026 04:51:21 GMT  
		Size: 2.1 MB (2114032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75fdbd4bfb3c0b45f9b2ea1c46cbcf4132cb0d643e8a3c11ee5a4d8147c97b72`  
		Last Modified: Tue, 24 Nov 2026 04:51:21 GMT  
		Size: 21.5 KB (21452 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:2-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull pypy@sha256:c4b269c33e8bcdc0b9cb1e122876a026985174e9fec8b572a00099bb272c6f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60359581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008ca0d643abd713675d642ee590d53e748da7379926e04bc76836755d3e3b9c`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:54:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:54:53 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:54:53 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:54:53 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 24 Nov 2026 04:54:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux64.tar.gz'; 			sha256='78674cdf95eb4cb1dd5a9b68a70200387111cb29467f8a472ab7cf07a251653c'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-aarch64.tar.gz'; 			sha256='abd5bd601fc5af143a80d02c52b5f098f0096f9b0793140353e5e3d439676b85'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux32.tar.gz'; 			sha256='956365de00b86c4741acd719caff28edf3df2306962f7767ca0e2c9a73e262e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfreetype6 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 24 Nov 2026 04:54:53 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f2c07c956275916686957de247ab5b7f75a4a896febab966a3c43cc3de7948`  
		Last Modified: Tue, 24 Nov 2026 04:55:03 GMT  
		Size: 1.2 MB (1200842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e5da9dbfb81bcafe541805eebf01ca02b0fba5480cda80a922797afb9963af`  
		Last Modified: Tue, 24 Nov 2026 04:55:04 GMT  
		Size: 29.0 MB (28960705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-slim-trixie` - unknown; unknown

```console
$ docker pull pypy@sha256:758259c742fdea3857701f1c69cc62e0454e2bbc029f57833235294f0d659772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2118560258f8eb5e15e4ba88ba4e8d87fa915f3e943bdd55d429ea8b18396e0d`

```dockerfile
```

-	Layers:
	-	`sha256:b84f51e538686954b02b723d57886a8523d145e23f01e841300888ff25a65eb0`  
		Last Modified: Tue, 24 Nov 2026 04:55:03 GMT  
		Size: 2.1 MB (2114426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3c351716b91d73dc279cb391154c5a17ef0239f37790ab5d249c292a980a787`  
		Last Modified: Tue, 24 Nov 2026 04:55:03 GMT  
		Size: 21.7 KB (21715 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:2-slim-trixie` - linux; 386

```console
$ docker pull pypy@sha256:bf4db14d68cef7b841daf260b36c74c8c2213461f94d94a8051cdf3ad9ee25b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59857973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9054d574351d01caf043986e4f9fb0e54f3ca07d3c24fa82d286fc81b33e480`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:45:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:47:55 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:47:55 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:47:55 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 24 Nov 2026 04:47:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux64.tar.gz'; 			sha256='78674cdf95eb4cb1dd5a9b68a70200387111cb29467f8a472ab7cf07a251653c'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-aarch64.tar.gz'; 			sha256='abd5bd601fc5af143a80d02c52b5f098f0096f9b0793140353e5e3d439676b85'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux32.tar.gz'; 			sha256='956365de00b86c4741acd719caff28edf3df2306962f7767ca0e2c9a73e262e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfreetype6 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Tue, 24 Nov 2026 04:47:55 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c910834226e1249db4ac30110c38a36aec77c98e90de732846fa66f38c8a055d`  
		Last Modified: Tue, 24 Nov 2026 04:46:36 GMT  
		Size: 1.2 MB (1227127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358ba7876e63d36adb5dbf113cf7b986d97f32e1fea3a9f6c3bd5348db945ab2`  
		Last Modified: Tue, 24 Nov 2026 04:48:04 GMT  
		Size: 27.3 MB (27272927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-slim-trixie` - unknown; unknown

```console
$ docker pull pypy@sha256:056cf7b979cb41779a382a928e7bece22284229d97843e8f2cde16eebe5d674b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2132527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:449566aa58c10878d750d9c02d29b3834ee85b600e3c13f8baced02217d70b77`

```dockerfile
```

-	Layers:
	-	`sha256:b3e68022da3e577d2bdd9e2222d662279dfafeceb557c4ecaa421b7be93f2400`  
		Last Modified: Tue, 24 Nov 2026 04:48:04 GMT  
		Size: 2.1 MB (2111169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fd010b5633b008011eb54ef942fdae32c0eef70b602c3647e3ae4005e4cf049`  
		Last Modified: Tue, 24 Nov 2026 04:48:03 GMT  
		Size: 21.4 KB (21358 bytes)  
		MIME: application/vnd.in-toto+json
