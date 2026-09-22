## `hylang:pypy-bookworm`

```console
$ docker pull hylang@sha256:fa25ee720afd56f2b5acc96949055e7907e7079b9b1cd7392542309f3d5e143d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `hylang:pypy-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:9fac3bcc5244e3f331311f3a33b972dc05e539969246743a6b37cc05a0829aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75673338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d941b671a1bc9fe1853d2edd7b4bb3754f508d7b29bbd18cdb0bbc44ae027324`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Mon, 21 Sep 2026 23:04:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 23:05:07 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:05:07 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:05:07 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:05:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux64.tar.gz'; 			sha256='66a3657e9ddf2d62ead44d3a44b9ea2f6e7dbf28d812554cae5c982a0585bfa5'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-aarch64.tar.gz'; 			sha256='37faf1a0b00131748910ad21844a9b1b3fedd630c89b01ec98cdb1b5466ffca5'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux32.tar.gz'; 			sha256='14fcf398eacffdc98db2f3b10ae9e8c9628932dc89b0958d145b9fd9c7307301'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Mon, 21 Sep 2026 23:05:07 GMT
CMD ["pypy3"]
# Mon, 21 Sep 2026 23:07:18 GMT
ENV HY_VERSION=1.3.1
# Mon, 21 Sep 2026 23:07:18 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 21 Sep 2026 23:07:18 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 21 Sep 2026 23:07:18 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ee844fadefbe6642536ec2b426bf285c6b82587cff02d1afb67198d6d76156`  
		Last Modified: Mon, 21 Sep 2026 23:05:17 GMT  
		Size: 3.5 MB (3523503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59bfcf4068fca86e9b61468200a6c59f6cc9d1b12c9c5fe6b48eb49ed150c90`  
		Last Modified: Mon, 21 Sep 2026 23:05:18 GMT  
		Size: 36.7 MB (36724672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e64d76105b3342170aa4614155734e200565495768247c00a957ece61ca2b24`  
		Last Modified: Mon, 21 Sep 2026 23:07:26 GMT  
		Size: 7.2 MB (7186720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:56d59f01525822e4083fb65c3c041e3037136cc6c04cf81dff61c0f111036398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2697717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ca8fc23a16a17c2ee11f54a05ad033bb1497d3ce8867e77819854ccda5ab72`

```dockerfile
```

-	Layers:
	-	`sha256:a9dc9588ae2cbfb7067850eb69c2ece43954c683bc36a3063e6f5308bc93b6b4`  
		Last Modified: Mon, 21 Sep 2026 23:07:26 GMT  
		Size: 2.7 MB (2688818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67f1de5aa4ddf9e1c78d26eb0dd857958e6443f58415998d0c8448c464eccb00`  
		Last Modified: Mon, 21 Sep 2026 23:07:26 GMT  
		Size: 8.9 KB (8899 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:4f33854762c3713514a3fc3b51b2d033360a08b93dc21a6659d30e2a991eebca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73673045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56da69de2888fec99f0db507753dc72032ec39e1bf6c84c692f87f772e3df76`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Mon, 21 Sep 2026 23:04:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 23:05:07 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:05:07 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:05:07 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:05:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux64.tar.gz'; 			sha256='66a3657e9ddf2d62ead44d3a44b9ea2f6e7dbf28d812554cae5c982a0585bfa5'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-aarch64.tar.gz'; 			sha256='37faf1a0b00131748910ad21844a9b1b3fedd630c89b01ec98cdb1b5466ffca5'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux32.tar.gz'; 			sha256='14fcf398eacffdc98db2f3b10ae9e8c9628932dc89b0958d145b9fd9c7307301'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Mon, 21 Sep 2026 23:05:07 GMT
CMD ["pypy3"]
# Mon, 21 Sep 2026 23:07:30 GMT
ENV HY_VERSION=1.3.1
# Mon, 21 Sep 2026 23:07:30 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 21 Sep 2026 23:07:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 21 Sep 2026 23:07:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4415c7e4f37c24b404ceb47898054d114926824a6408b5e83d9b782b90f0ad2`  
		Last Modified: Mon, 21 Sep 2026 23:05:18 GMT  
		Size: 3.4 MB (3353400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e754dd5969e034af8275d782b439d4591ac4558f611483e9b1c372f37fd7c0`  
		Last Modified: Mon, 21 Sep 2026 23:05:19 GMT  
		Size: 35.0 MB (35009043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238c1b9ec8d398a196b0a6c6b66475ead9560217cf895c9ff1f4f0623561d999`  
		Last Modified: Mon, 21 Sep 2026 23:07:38 GMT  
		Size: 7.2 MB (7186922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:a5b9d2329dbdc8f15cc41fc694b398808baadb5beea3671c43ef7d76c8866bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2698188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9953bba6567ca85cdb5015f5992cbce6681247823a462f7c235249dd77d9d365`

```dockerfile
```

-	Layers:
	-	`sha256:3698cc67d04f77a60c53dbe2ad0ba91f3b5f11c357093a05459dc366a50e7b96`  
		Last Modified: Mon, 21 Sep 2026 23:07:38 GMT  
		Size: 2.7 MB (2689137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcf76c233d99483e0d68bf50e2e473ee92c6a6f560f4a61822eaab174f5cac59`  
		Last Modified: Mon, 21 Sep 2026 23:07:38 GMT  
		Size: 9.1 KB (9051 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:d68ac9bec288ce87d4db319fdc7ea69df771193f76c848080afa7a3478871528
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73535811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f7a735510a403d494d54c2b0cdac07fdf62f6192b2eda82ccb3d2c32b4c786`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Mon, 21 Sep 2026 23:04:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 21 Sep 2026 23:05:24 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:05:24 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:05:24 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:05:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux64.tar.gz'; 			sha256='66a3657e9ddf2d62ead44d3a44b9ea2f6e7dbf28d812554cae5c982a0585bfa5'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-aarch64.tar.gz'; 			sha256='37faf1a0b00131748910ad21844a9b1b3fedd630c89b01ec98cdb1b5466ffca5'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.0-linux32.tar.gz'; 			sha256='14fcf398eacffdc98db2f3b10ae9e8c9628932dc89b0958d145b9fd9c7307301'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Mon, 21 Sep 2026 23:05:24 GMT
CMD ["pypy3"]
# Mon, 21 Sep 2026 23:07:16 GMT
ENV HY_VERSION=1.3.1
# Mon, 21 Sep 2026 23:07:16 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 21 Sep 2026 23:07:16 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 21 Sep 2026 23:07:16 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c680e9c8b6d6181e7e481326401061dc88d3bc8854a9145c28f33ecb4095a1`  
		Last Modified: Mon, 21 Sep 2026 23:05:34 GMT  
		Size: 3.5 MB (3522059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd94950e6d9b0611a51ecde3c4eb1fd534d7c0705a70b06fa189b5246b0af6c4`  
		Last Modified: Mon, 21 Sep 2026 23:05:35 GMT  
		Size: 33.6 MB (33601017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:353129e95e5e68b0e3843300742183659af4771cee4373819d9116c15f86b4a6`  
		Last Modified: Mon, 21 Sep 2026 23:07:24 GMT  
		Size: 7.2 MB (7186630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:8c74775c558532cd22c70fc363e265f9e6652b09290d06f448dab69f818690f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2694800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e3c642f763d928c2c6d0de31338fc3f6559c5ee3a0368467ec3b8d57ebb17f`

```dockerfile
```

-	Layers:
	-	`sha256:c981f8113403393d31201d521ba33103d1ea47751845a8f4bb2bd1934f248ce2`  
		Last Modified: Mon, 21 Sep 2026 23:07:24 GMT  
		Size: 2.7 MB (2685953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ac1f60ea89df7882062afc596f01f5930a6cbb1de0941d5e52c7bef056130d4`  
		Last Modified: Mon, 21 Sep 2026 23:07:23 GMT  
		Size: 8.8 KB (8847 bytes)  
		MIME: application/vnd.in-toto+json
