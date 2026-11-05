## `hylang:1-pypy3.11-bookworm`

```console
$ docker pull hylang@sha256:8c70b76f5ba1b566462bb8f3d8285782c75007c839bca587191ddc0fcaae3bf2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `hylang:1-pypy3.11-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:ad437cfd4f80ad8e0b4bebb8306b689c3a39b9b44ce855712f05e799e5c36eab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75599330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281df1310c7a26745c3f32c84a15090c8067bfdce6bf1664e89a490f79a66c11`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:47:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:49:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:49:22 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:49:22 GMT
ENV PYPY_VERSION=8.0.1
# Thu, 05 Nov 2026 07:49:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Thu, 05 Nov 2026 07:49:22 GMT
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
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f739f62b35cb3c63ebd97d18c325a0da05c1769ffe70c0c441e1ca0dff343ac1`  
		Last Modified: Thu, 05 Nov 2026 07:48:39 GMT  
		Size: 3.3 MB (3330125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1c6984b9b27102abbbe9d6ce551d14a40aac3b2f622de2e43fd120b21f5c72`  
		Last Modified: Thu, 05 Nov 2026 07:49:33 GMT  
		Size: 36.8 MB (36764662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edce86504f021d760d8ce3c85b63a8000a1aa343e59cb9f054ac6eae96400f2`  
		Last Modified: Thu, 05 Nov 2026 08:50:45 GMT  
		Size: 7.3 MB (7256561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.11-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:9233d9d239eaafb30a0a9ccee580a301f7762301c2b93f49288558122bf0f083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2696450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8788c9c3f64d8dc5aefe40a50d87ce35dcb814a6203a2bac2ea56d1c2f0a72`

```dockerfile
```

-	Layers:
	-	`sha256:26fb07f7b80558de42e6bab14d7f9220b2d1e9db803db8cd6ebe08fc79097f73`  
		Last Modified: Thu, 05 Nov 2026 08:50:45 GMT  
		Size: 2.7 MB (2687551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d3ccc1acc452ba98d7c9ec753f30f96e0a673e3a03158027cdfc7233dac3a13`  
		Last Modified: Thu, 05 Nov 2026 08:50:45 GMT  
		Size: 8.9 KB (8899 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.11-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:8522a4f8c67c73918723cbe4eb843dab93614473c68668d7bcb2373ed4660432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73562401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d90406f8f2d8b8faa0d70fecf150f68ac60489fd02e887ad6611eeb88dc4825`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:53:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:54:19 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:54:19 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:54:19 GMT
ENV PYPY_VERSION=8.0.1
# Thu, 05 Nov 2026 07:54:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Thu, 05 Nov 2026 07:54:19 GMT
CMD ["pypy3"]
# Thu, 05 Nov 2026 08:50:46 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:50:46 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:50:46 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:50:46 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b3df4a57bf74a3129474cbabbb4bcc4d7413cb279433985901dfcd143d435b`  
		Last Modified: Thu, 05 Nov 2026 07:54:31 GMT  
		Size: 3.2 MB (3161040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0cad78f04a0c3721c9402ba084d0f4fbbcfad1b96540893db83265e8c0d6b8d`  
		Last Modified: Thu, 05 Nov 2026 07:54:32 GMT  
		Size: 35.0 MB (35000070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d0d883dc21dba4e5762ac43a059a0c5aa9c7814b57c633a2eb9f3b54721623`  
		Last Modified: Thu, 05 Nov 2026 08:50:55 GMT  
		Size: 7.3 MB (7256933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.11-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:dde8ca369e4e5ba13b91d51bba6ce46f60cc42dbd0746df76bb46e8ebe62f214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2696921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ac0925e60ca04bbce1b2add15d848a25760eaed8e94133075ad1a7f2e32e3e`

```dockerfile
```

-	Layers:
	-	`sha256:fb6589a81e6cafefa8183ed70c8fbf412b00ebbf660a71a6332373e0daf4f3b9`  
		Last Modified: Thu, 05 Nov 2026 08:50:55 GMT  
		Size: 2.7 MB (2687870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1722b30ff9f3990b38cdef7c642d10badd13157d04ba5cb2d38e4ed5879cdcd6`  
		Last Modified: Thu, 05 Nov 2026 08:50:54 GMT  
		Size: 9.1 KB (9051 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.11-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:6ed47b225002df03c704901003fff004e7833a5427790db0c97ca3061ee08e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73425520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cd3c4c23640fcfd3fefe8a836a1fc60b5812da0b4ba4a8e81fe2f9129af4c9`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:47:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:48:04 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:48:04 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:48:04 GMT
ENV PYPY_VERSION=8.0.1
# Thu, 05 Nov 2026 07:48:04 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Thu, 05 Nov 2026 07:48:04 GMT
CMD ["pypy3"]
# Thu, 05 Nov 2026 08:43:28 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:43:28 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:43:28 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:43:28 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2abe56c2c7bef3fbc0005594168ba29cbf559e535b987d8d402a73d98d613d82`  
		Last Modified: Thu, 05 Nov 2026 07:48:14 GMT  
		Size: 3.3 MB (3328958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd339cab44ee77f0ab5ea93a2f861e4127d5d1388771dc3abe484c01d57698c0`  
		Last Modified: Thu, 05 Nov 2026 07:48:15 GMT  
		Size: 33.6 MB (33600492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3af9b5fd40e259c3c0a123f3f1322f0d0b26443fa8428f5602b22b64a934f1`  
		Last Modified: Thu, 05 Nov 2026 08:43:36 GMT  
		Size: 7.3 MB (7256858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.11-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:392d240ba6a405b4e8e73831c01d71960ab9910013a00c6e30bb6b53c5d76958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2693533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad9d437d62ce3d37796871c0c250e45d62209db8f9de7f4ceeea509ea9c9904`

```dockerfile
```

-	Layers:
	-	`sha256:c5c42bccbad798eb351fe5201453045548728ed0d924def10a5e6ada2790211b`  
		Last Modified: Thu, 05 Nov 2026 08:43:36 GMT  
		Size: 2.7 MB (2684686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6815582b00e2312c6edafedb88efef0e2925598d5baf924042955a50d39e4268`  
		Last Modified: Thu, 05 Nov 2026 08:43:36 GMT  
		Size: 8.8 KB (8847 bytes)  
		MIME: application/vnd.in-toto+json
