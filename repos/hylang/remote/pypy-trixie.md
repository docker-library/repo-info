## `hylang:pypy-trixie`

```console
$ docker pull hylang@sha256:73fbf67346232c191653921054aad784a61f6fab841639c4cf7375eb6abb7786
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
$ docker pull hylang@sha256:2be4b6255e9f92c3d8f31794bf8fdd0cfc8d22ca143df1f8e3b2c127f52e805c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74724294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc40a41c6dffbab07626186501b324cd9e57c762093eba8708640f24f850ed94`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:15:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:15:56 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 20:15:56 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:15:56 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 14 Oct 2026 20:15:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 14 Oct 2026 20:15:56 GMT
CMD ["pypy3"]
# Wed, 14 Oct 2026 20:24:03 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 20:24:03 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 20:24:03 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 14 Oct 2026 20:24:03 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c9c6445afefcd9e8068922db6ef560665aedfca38b20f65e884b5e8deb35fb`  
		Last Modified: Wed, 14 Oct 2026 20:16:07 GMT  
		Size: 1.2 MB (1221080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8836500b06ebaa9782431cabc6f85bb7a3e22d2f1ce4e3b84afcb595ce8733f`  
		Last Modified: Wed, 14 Oct 2026 20:16:08 GMT  
		Size: 36.5 MB (36462830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e299841a4c78faa2df00a5da85925eb2d4c23152f7574792766b6505c959f7a`  
		Last Modified: Wed, 14 Oct 2026 20:24:11 GMT  
		Size: 7.2 MB (7197034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:ff288469b16477f96cbb095a456aea632ee4bedddc12940b4190e6b4e0648713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b18266d8556db190f944f719258ac8d13458b66437df64cf489500bb7d4868`

```dockerfile
```

-	Layers:
	-	`sha256:baa7c36d1c34c42a72702db8c81e1f71c2ee7c06ea3de9c3b19895641c6e1ea7`  
		Last Modified: Wed, 14 Oct 2026 20:24:11 GMT  
		Size: 2.3 MB (2303631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:452035f89a325c0b132d90501d949d77702bed9e07039c6aa4a0da6df51fd3c7`  
		Last Modified: Wed, 14 Oct 2026 20:24:11 GMT  
		Size: 11.3 KB (11289 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:5ba4f18e145df1cc91963e18cbfb73e3f2374defb281bf2d2fadf6d683f7d84e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73301379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217e19c871558bccdd31aef16586ec7eab32bdbbc0ac7195468fa550d081ebd7`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:13:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:14:39 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 20:14:39 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:14:39 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 14 Oct 2026 20:14:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 14 Oct 2026 20:14:39 GMT
CMD ["pypy3"]
# Wed, 14 Oct 2026 20:27:25 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 20:27:25 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 20:27:25 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 14 Oct 2026 20:27:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a2b4390d49ff341e918a182c8e85b8d4957f868da7efee2a52615505b6a47c`  
		Last Modified: Wed, 14 Oct 2026 20:14:50 GMT  
		Size: 1.2 MB (1202745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c063d9db8bcb1abd42c6dac4c9e0356c2e0fc98dd1eeead6c241687343ad9da7`  
		Last Modified: Wed, 14 Oct 2026 20:14:51 GMT  
		Size: 34.7 MB (34701140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2badbb0495438d6afeeb47901a8afab91e959de2255fa45ab5308136c2ea5300`  
		Last Modified: Wed, 14 Oct 2026 20:27:32 GMT  
		Size: 7.2 MB (7197212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:8b66c2767adc7ecb7cfea0cadef0dad643d1a3aa9bbac2442fd58c880a5bff6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2315574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62d54785581f92e0bd5d611355cfc956b279513556c6d15c7bf1cc8206e946e`

```dockerfile
```

-	Layers:
	-	`sha256:06e51c5720107a54065697aa3240cae784807b58f9ff583d385a53dd7809fd44`  
		Last Modified: Wed, 14 Oct 2026 20:27:32 GMT  
		Size: 2.3 MB (2304037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a9d970e239ea2033d42198bf0bc381879793092a7bcb763d91fcd5fc0d3612e`  
		Last Modified: Wed, 14 Oct 2026 20:27:32 GMT  
		Size: 11.5 KB (11537 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:pypy-trixie` - linux; 386

```console
$ docker pull hylang@sha256:2153d2ebe284ff09f2a48a9f8e7f3d81e73d0648b1bcd330d6e42978745ee323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72990341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d518e542d484aa913dd4f0982e7376172a3eafa6067b9270a947f0d133bc524e`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:15:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:16:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 20:16:18 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:16:18 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 14 Oct 2026 20:16:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux64.tar.gz'; 			sha256='706965bcf372752ba69dafd59d860e51bc2fadbb0f8a47cec3426125d7058ceb'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-aarch64.tar.gz'; 			sha256='5b568e1515dee46df58c9844dba95921c69dfd9f38ebf9e0f091caad5e10cd0c'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.11-v8.0.1-linux32.tar.gz'; 			sha256='fdafc3aa7a17e25f7ba63a6a2baa91c4a765c1c9a99149759e583f68e68115e5'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.11; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 14 Oct 2026 20:16:18 GMT
CMD ["pypy3"]
# Wed, 14 Oct 2026 20:24:19 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 20:24:19 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 20:24:19 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 14 Oct 2026 20:24:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9557cd834a2d5a380af843c5a39e92bed8f3545704b4151b10f97e68c802aceb`  
		Last Modified: Wed, 14 Oct 2026 20:16:28 GMT  
		Size: 1.2 MB (1228259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daaa8bf7d8f022fa58905a98ad80f1109b479f8692a1c55f1d71366251ff33c3`  
		Last Modified: Wed, 14 Oct 2026 20:16:29 GMT  
		Size: 33.2 MB (33211794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b95665282916ebb9f93a99507b23e396faee1e7fc2cb644555d57f8f630c41`  
		Last Modified: Wed, 14 Oct 2026 20:24:26 GMT  
		Size: 7.2 MB (7196991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:pypy-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:0eb73478d3c5c00883ac200b43c03156d46191375382dc5cd475a9e69eb9345c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0104a809820ff762db253e20dec6c336d0eb03a542069a28f3bcd675d4a4762`

```dockerfile
```

-	Layers:
	-	`sha256:d7e94216b5288c9e8e1c344c73992d47c1215395a4c978afda1d73d8ab79a166`  
		Last Modified: Wed, 14 Oct 2026 20:24:26 GMT  
		Size: 2.3 MB (2300744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71543c05b46578d789e14f06db8a0bc9fe9494ea6aaff8150f5504ddf8cf459d`  
		Last Modified: Wed, 14 Oct 2026 20:24:26 GMT  
		Size: 11.2 KB (11197 bytes)  
		MIME: application/vnd.in-toto+json
