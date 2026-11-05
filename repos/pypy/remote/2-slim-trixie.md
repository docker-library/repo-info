## `pypy:2-slim-trixie`

```console
$ docker pull pypy@sha256:7bfe20bda19e9cd2d9780981145b3478eb5a7a1d01405f1803c5731d4153c8f8
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
$ docker pull pypy@sha256:fe77ff2ba037f96aa469c91508b6f785d025b851d73208f64b0f1a009b511fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61396437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0bb960cceea271aa27cf3cfcfd0053f55154ccf9b201da0ab832e273c43c5bd`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:49:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:50:00 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:50:00 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:50:00 GMT
ENV PYPY_VERSION=8.0.1
# Thu, 05 Nov 2026 07:50:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux64.tar.gz'; 			sha256='78674cdf95eb4cb1dd5a9b68a70200387111cb29467f8a472ab7cf07a251653c'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-aarch64.tar.gz'; 			sha256='abd5bd601fc5af143a80d02c52b5f098f0096f9b0793140353e5e3d439676b85'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux32.tar.gz'; 			sha256='956365de00b86c4741acd719caff28edf3df2306962f7767ca0e2c9a73e262e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfreetype6 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Thu, 05 Nov 2026 07:50:00 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d15fa71189d3abcc0595d10fb318c4fa826885014c29b0e59c35c46b3b6647b`  
		Last Modified: Thu, 05 Nov 2026 07:50:10 GMT  
		Size: 1.2 MB (1218417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46687892a4c50affc45ba42c11230a2a388cf510edb273936c1f0d8ccc363a3c`  
		Last Modified: Thu, 05 Nov 2026 07:50:10 GMT  
		Size: 30.3 MB (30321888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-slim-trixie` - unknown; unknown

```console
$ docker pull pypy@sha256:7211a507199df308901a8fe772965ae6a96c027d2d0b6db6a7140d005efa84d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2135456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a4d53015772ed3a696d9e7c81d341016d833367aa302d6c6051da35a7b3785`

```dockerfile
```

-	Layers:
	-	`sha256:e1b2e543cb07e3a9646b19fb3329556ecd4e8754aee81b0e5e987299baf0863c`  
		Last Modified: Thu, 05 Nov 2026 07:50:10 GMT  
		Size: 2.1 MB (2114004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b77c3adc2685edc795870c06f3b94c6d01624f14018624b9c4283300a6f2d2dd`  
		Last Modified: Thu, 05 Nov 2026 07:50:09 GMT  
		Size: 21.5 KB (21452 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:2-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull pypy@sha256:c74f89d9dd8915183fd8910c2f1170018c1556c884fe8a4af07f5e6a041ff0ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60375109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ae0ee59c9ab18691107906ca5d93f960e5dc1d2f96fa259318608c39968d5c`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:52:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:54:52 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:54:52 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:54:52 GMT
ENV PYPY_VERSION=8.0.1
# Thu, 05 Nov 2026 07:54:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux64.tar.gz'; 			sha256='78674cdf95eb4cb1dd5a9b68a70200387111cb29467f8a472ab7cf07a251653c'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-aarch64.tar.gz'; 			sha256='abd5bd601fc5af143a80d02c52b5f098f0096f9b0793140353e5e3d439676b85'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux32.tar.gz'; 			sha256='956365de00b86c4741acd719caff28edf3df2306962f7767ca0e2c9a73e262e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfreetype6 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Thu, 05 Nov 2026 07:54:52 GMT
CMD ["pypy"]
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
	-	`sha256:156e6b6666b1bd8faa34ef6334ed5148932ab85d795a7e2a76af54f5327bbc74`  
		Last Modified: Thu, 05 Nov 2026 07:55:03 GMT  
		Size: 29.0 MB (28960657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-slim-trixie` - unknown; unknown

```console
$ docker pull pypy@sha256:8c7ee4d2ab632a6a3ef291f5ab6d38ebac4d0c7dccb65438f98a1813b3aa9bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84afabc75f4242c68850f5e433d346047c9add35775b8d9655e12faf17814f2f`

```dockerfile
```

-	Layers:
	-	`sha256:499fa48e32712ae0d0d9378239a9753fb4339eab76384fcaa27571ac248fef7c`  
		Last Modified: Thu, 05 Nov 2026 07:55:02 GMT  
		Size: 2.1 MB (2114398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5838c9e687ac0135df9bbeb6f610645c326973f66f62280ee811a8f05106940c`  
		Last Modified: Thu, 05 Nov 2026 07:55:02 GMT  
		Size: 21.7 KB (21715 bytes)  
		MIME: application/vnd.in-toto+json

### `pypy:2-slim-trixie` - linux; 386

```console
$ docker pull pypy@sha256:c2b836bb0ea1e0c9cff6151d38eae186c05818ce3a8c2fdf0238ac82e652bb28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59868350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da832e360c319672194a01eb5e0650cdf5cdfb8c156746abdab2b94e6a9d66fc`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:50:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:50:55 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:50:55 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:50:55 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 28 Oct 2026 01:50:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux64.tar.gz'; 			sha256='78674cdf95eb4cb1dd5a9b68a70200387111cb29467f8a472ab7cf07a251653c'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-aarch64.tar.gz'; 			sha256='abd5bd601fc5af143a80d02c52b5f098f0096f9b0793140353e5e3d439676b85'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v8.0.1-linux32.tar.gz'; 			sha256='956365de00b86c4741acd719caff28edf3df2306962f7767ca0e2c9a73e262e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfreetype6 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		pypy -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 28 Oct 2026 01:50:55 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23eb9216e17c4deb2acf657fd90e58b68530fa20715b8cd55ca0262752caee88`  
		Last Modified: Wed, 28 Oct 2026 01:51:03 GMT  
		Size: 1.2 MB (1226990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d3306543b3676bdf19299f4a2138718cea56b1e0173aec7a38fb627f0128bb`  
		Last Modified: Wed, 28 Oct 2026 01:51:04 GMT  
		Size: 27.3 MB (27272774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `pypy:2-slim-trixie` - unknown; unknown

```console
$ docker pull pypy@sha256:817d390b30a8474fce2795e32d1ee020394b85a225815f0d6e87dbc2b761803e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2132499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590eeed6bd44da481a6d138cdc1e77d46f05ae67ca5fc21d2fcf013b086432bb`

```dockerfile
```

-	Layers:
	-	`sha256:05a241e77eb92435d2562d95540862c8a466138d3f15c40652225a41f23bff5f`  
		Last Modified: Wed, 28 Oct 2026 01:51:03 GMT  
		Size: 2.1 MB (2111141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb59bc0accc856367ad7cca09720ab180715004258ddbc3d5f4516e8a9d74f55`  
		Last Modified: Wed, 28 Oct 2026 01:51:03 GMT  
		Size: 21.4 KB (21358 bytes)  
		MIME: application/vnd.in-toto+json
