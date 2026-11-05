## `hylang:pypy-trixie`

```console
$ docker pull hylang@sha256:063f390951b7383caa6d0a72535fd6e47216fbbb6d5ad27d8eaef8270ffa1aea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `hylang:pypy-trixie` - linux; amd64

```console
$ docker pull hylang@sha256:6f1fe44a05bbf07250f7439249cb636f763b9ba197cf2db9e5c992aa5886aad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74688862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5831e0191451a545125156e3299d520bb875ff3c072482014a1c77f1c4db8ee`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:47:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:49:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:49:26 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:49:26 GMT
ENV PYPY_VERSION=8.0.1
# Thu, 05 Nov 2026 07:49:26 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Thu, 05 Nov 2026 07:49:26 GMT
CMD ["pypy3"]
# Thu, 05 Nov 2026 08:50:39 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:50:39 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:50:39 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:50:39 GMT
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
	-	`sha256:61327138f92046635e549de1e254a35e7aa407837fc554d1705689f958cf41a1`  
		Last Modified: Thu, 05 Nov 2026 07:49:37 GMT  
		Size: 36.4 MB (36357528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f232ee6a5f0c1f540f9fde3e55b0573c9a8b4ec24a35082a87c77f47b6d7a0`  
		Last Modified: Thu, 05 Nov 2026 08:50:47 GMT  
		Size: 7.3 MB (7256740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:339990b7f5b1e5dbd0d5be40b11c29559d132ca23358872ef97470b869d4e859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766b6cd2a9129c4a03e404ccb93a6aa416c0451d23e7e2b804cbb0fada816fa1`

```dockerfile
```

-	Layers:
	-	`sha256:63bee9b9b8c6f600dc059ea557c28e280edff755b1e3be9782fbc168148c9c62`  
		Last Modified: Thu, 05 Nov 2026 08:50:47 GMT  
		Size: 2.3 MB (2302382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b964ea5f1754262062992cb370b0c677084bd8cb8210c4021098bbfbf7f22a3`  
		Last Modified: Thu, 05 Nov 2026 08:50:47 GMT  
		Size: 11.3 KB (11289 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:ad40f2274e7ee9548bcc43ad6a7b04979b4847f14e6da3ecba5963f4f80fed93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73269390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1274d3a1fffd464593308f33743673ec8cd1c566e47947b7a9c1b0e5db5143a5`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:53:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:54:20 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:54:20 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:54:20 GMT
ENV PYPY_VERSION=8.0.1
# Thu, 05 Nov 2026 07:54:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Thu, 05 Nov 2026 07:54:20 GMT
CMD ["pypy3"]
# Thu, 05 Nov 2026 08:50:38 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:50:38 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:50:38 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:50:38 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c868e1d4ff8b9b887c22901ed6731cf355961f78f24104329897f8d23b407cb0`  
		Last Modified: Thu, 05 Nov 2026 07:54:32 GMT  
		Size: 1.2 MB (1200436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadb6c3c02b7c1b52c4a422d735fe35b262f96c7fde9179d31fb3e2a8c990be7`  
		Last Modified: Thu, 05 Nov 2026 07:54:32 GMT  
		Size: 34.6 MB (34598015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b51c837be0cf3ad82503098af815b61c1bded3ead39d5d695e58c636dcb5b96`  
		Last Modified: Thu, 05 Nov 2026 08:50:47 GMT  
		Size: 7.3 MB (7256902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:462ae33a5807d222dcd423b5a970fc88d7dfb115ab331ed85b3bad04ae19b769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b4a47df0525d59e25151350c2b91372e5fe796a5fe82ccad27c463834f0d85c`

```dockerfile
```

-	Layers:
	-	`sha256:10de0e9216a70e3c314e6eec45525d7aed61798cf3a9ed4ad06d25f0d6a62515`  
		Last Modified: Thu, 05 Nov 2026 08:50:47 GMT  
		Size: 2.3 MB (2302788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40e8bb6360da1f818a30402f7a080bd80c8ca51dbd248c6236046857b832709d`  
		Last Modified: Thu, 05 Nov 2026 08:50:46 GMT  
		Size: 11.5 KB (11537 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy-trixie` - linux; 386

```console
$ docker pull hylang@sha256:4f7e125f93e585edfe9c8f481eb26fa611a6aaa565fd0b198e78605c028a9fe7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72950137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa61a319c6fedd548bcab67ffef55a45e017fce88899bce0bc1f80ab988c54c`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:47:49 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:47:49 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:47:49 GMT
ENV PYPY_VERSION=8.0.1
# Thu, 05 Nov 2026 07:47:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Thu, 05 Nov 2026 07:47:49 GMT
CMD ["pypy3"]
# Thu, 05 Nov 2026 08:43:26 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:43:26 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:43:26 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:43:26 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbfadf9e7a0b8aee85f534915c4ce6b42dba28199078323509b14efc0726facd`  
		Last Modified: Thu, 05 Nov 2026 07:47:58 GMT  
		Size: 1.2 MB (1227030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b72abacb46b2361a54aa942d2dcb593b5e142c23a3285cd3e1863fb03a7288`  
		Last Modified: Thu, 05 Nov 2026 07:47:59 GMT  
		Size: 33.1 MB (33095501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b1eb4fddae08e718ef8efe6faa197904cd73afd272f8caf481abfc97442d3f`  
		Last Modified: Thu, 05 Nov 2026 08:43:33 GMT  
		Size: 7.3 MB (7256847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:c4e7e08a523fe6c81f051306bcea6542c902cf272e59e6877b24f77d0155a386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce39a10ab81d21072219c66ef07601742da56cf902e82ab0431117d7d70f55eb`

```dockerfile
```

-	Layers:
	-	`sha256:e1c9b40f918c43401d513730ce35da713dff41a871b620625ab3dca004a414a9`  
		Last Modified: Thu, 05 Nov 2026 08:43:33 GMT  
		Size: 2.3 MB (2299495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1fbff26941bb888340436c0e1431a8bc8147eb97b10e1dcb7f8703abb5c8917`  
		Last Modified: Thu, 05 Nov 2026 08:43:32 GMT  
		Size: 11.2 KB (11197 bytes)  
		MIME: application/vnd.in-toto+json
