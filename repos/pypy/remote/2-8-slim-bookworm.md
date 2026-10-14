## `pypy:2-8-slim-bookworm`

```console
$ docker pull pypy@sha256:32ca5e578d4964daf357903e50a49922221e3290fcf316cdd1d7c3fcbc33535a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `pypy:2-8-slim-bookworm` - linux; amd64

```console
$ docker pull pypy@sha256:6a7fd498b1b3016af760565c8a229056e3caa29e472137c0c42ddd0b96b58eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61908004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9506ae1c7c5884f1090f7a0440aad8d713839797da40f53f2fbc255a995cb35f`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Wed, 14 Oct 2026 20:15:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:15:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 20:15:48 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:15:48 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 14 Oct 2026 20:15:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux64.tar.gz'; 			sha256='78674cdf95eb4cb1dd5a9b68a70200387111cb29467f8a472ab7cf07a251653c'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-aarch64.tar.gz'; 			sha256='abd5bd601fc5af143a80d02c52b5f098f0096f9b0793140353e5e3d439676b85'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux32.tar.gz'; 			sha256='956365de00b86c4741acd719caff28edf3df2306962f7767ca0e2c9a73e262e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfreetype6 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 14 Oct 2026 20:15:48 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57b52ef4a921062ca8fd3ee7656bda7b910680f5a8a2208e0fa188028956d59`  
		Last Modified: Wed, 14 Oct 2026 20:15:59 GMT  
		Size: 3.3 MB (3332358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686d5898c1aefae014329df033376c563d2a28283bea559c002a41adb36114b1`  
		Last Modified: Wed, 14 Oct 2026 20:16:00 GMT  
		Size: 30.3 MB (30326323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-8-slim-bookworm` - unknown; unknown

```console
$ docker pull pypy@sha256:f10aaacdf787fe45443c8246e348811532078ffc82a49e746791c5a7968a92b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2519894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2066644b04446c1c3530f5771690a256c73d7ff99803bd7186b6c0a48161d97d`

```dockerfile
```

-	Layers:
	-	`sha256:edd47baf78060721b9f39f6c3a48db67360ad384b9e4b7cee644d1200f01c6bc`  
		Last Modified: Wed, 14 Oct 2026 20:15:59 GMT  
		Size: 2.5 MB (2500820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a1d2f1e3ad55ce3716ad15921958f6e99ecfc46a6f45d6f15ad1aad6ffb9eec`  
		Last Modified: Wed, 14 Oct 2026 20:15:59 GMT  
		Size: 19.1 KB (19074 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:2-8-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull pypy@sha256:582c84e5a75b324b223de2190c59dd8bbca4d59889e515bc85408d2f3da9315d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 MB (60266035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3980422676fb68bac217d069e5cf88a0cef0b5b9fbf3acea181dd855a7cd2be3`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Wed, 14 Oct 2026 20:13:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:15:10 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 20:15:10 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:15:10 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 14 Oct 2026 20:15:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux64.tar.gz'; 			sha256='78674cdf95eb4cb1dd5a9b68a70200387111cb29467f8a472ab7cf07a251653c'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-aarch64.tar.gz'; 			sha256='abd5bd601fc5af143a80d02c52b5f098f0096f9b0793140353e5e3d439676b85'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux32.tar.gz'; 			sha256='956365de00b86c4741acd719caff28edf3df2306962f7767ca0e2c9a73e262e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfreetype6 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 14 Oct 2026 20:15:10 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b115f45dfd55406c706e8f51ac8bd16729f1688345968f5a4380ad70b4657ad8`  
		Last Modified: Wed, 14 Oct 2026 20:14:51 GMT  
		Size: 3.2 MB (3163426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce060d6625c7f5e7af76f09af9646a7502b03d7b27d570b534fcda5c72155c1f`  
		Last Modified: Wed, 14 Oct 2026 20:15:21 GMT  
		Size: 29.0 MB (28965430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-8-slim-bookworm` - unknown; unknown

```console
$ docker pull pypy@sha256:f00330f6b08cbdd6316ad3823b7d370a80246ff56a96bf95a65159fca89831ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2520366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5939a0a08669485f75c083f9f99b173d742431e8a17f20935821a128fb3be3d2`

```dockerfile
```

-	Layers:
	-	`sha256:1be5cabdf12b5aee736ec187c696f58861404e36082f33a1655857aa85c86f0c`  
		Last Modified: Wed, 14 Oct 2026 20:15:20 GMT  
		Size: 2.5 MB (2501125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9702b9039985a8190887782a21ae5c6579607888ce9da5d6f2727a2b851a8001`  
		Last Modified: Wed, 14 Oct 2026 20:15:20 GMT  
		Size: 19.2 KB (19241 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:2-8-slim-bookworm` - linux; 386

```console
$ docker pull pypy@sha256:edb457f40539a2edc061b8cb89b429e9289e716063db77c81fdde84729dd909d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59847775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f271a9f736814ac20d56304ec89ebd0b66cd5dcf5be015f31a47317fd72f20`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Wed, 14 Oct 2026 20:15:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:15:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 20:15:48 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:15:48 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 14 Oct 2026 20:15:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux64.tar.gz'; 			sha256='78674cdf95eb4cb1dd5a9b68a70200387111cb29467f8a472ab7cf07a251653c'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-aarch64.tar.gz'; 			sha256='abd5bd601fc5af143a80d02c52b5f098f0096f9b0793140353e5e3d439676b85'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux32.tar.gz'; 			sha256='956365de00b86c4741acd719caff28edf3df2306962f7767ca0e2c9a73e262e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfreetype6 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 14 Oct 2026 20:15:48 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91ff23784d81dc019c9537bad47cdb4f0409c23c4e774a99cd8dcc6246b43c`  
		Last Modified: Wed, 14 Oct 2026 20:15:57 GMT  
		Size: 3.3 MB (3330549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2d2cfb250e6c8e72492663434b7f98be80a8cc488c4d11da577914eb3e2b6e`  
		Last Modified: Wed, 14 Oct 2026 20:15:58 GMT  
		Size: 27.3 MB (27277853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-8-slim-bookworm` - unknown; unknown

```console
$ docker pull pypy@sha256:cdc097da98ce89dfdc059d7d6e5c9ab7b9321a7864fdc1dd155f58e4ab25a25d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2517003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65a4e25577bf3ff0ffbccc9dee95873c1053f75ff142fa568fd000ce5954c20`

```dockerfile
```

-	Layers:
	-	`sha256:c843c50fe386cf1c702f046318c234483026f4577691e5f90c6a48d08cd96c43`  
		Last Modified: Wed, 14 Oct 2026 20:15:57 GMT  
		Size: 2.5 MB (2497983 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:123f3d06c4555fc7017e6560f842b10cd91ee0ffcba5dfaba34212332246c44b`  
		Last Modified: Wed, 14 Oct 2026 20:15:57 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.in-toto+json
