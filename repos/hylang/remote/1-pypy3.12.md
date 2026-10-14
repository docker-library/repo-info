## `hylang:1-pypy3.12`

```console
$ docker pull hylang@sha256:635d77d25d348d1d5bd5dd21e307b11abbf87c10e92680fa3d7ceed52d1a45d9
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

### `hylang:1-pypy3.12` - linux; amd64

```console
$ docker pull hylang@sha256:9b446f6b495e6202d1b10165051963803d9837666130f2b240162e2d8b899c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71225579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08cb530e90948f8f3396e591a398284f0ca084f1b8ef064606be6cf9b0cc3d8`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:14:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:15:12 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 20:15:12 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:15:12 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 14 Oct 2026 20:15:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 14 Oct 2026 20:15:12 GMT
CMD ["pypy3"]
# Wed, 14 Oct 2026 20:23:04 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 20:23:04 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 20:23:04 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 14 Oct 2026 20:23:04 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c9f78ad2e83a377d5ddcd210a7012ff8f63e5c109049a85e929ff53ae33150`  
		Last Modified: Wed, 14 Oct 2026 20:15:24 GMT  
		Size: 1.2 MB (1221063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff146a89c53515c757b134a34c1c79e18525a400c8a07825090892803509940`  
		Last Modified: Wed, 14 Oct 2026 20:15:25 GMT  
		Size: 34.3 MB (34312723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccbb303bba3af040a10465e8b4e95af45cfb1362af08d986746811297b02fa4`  
		Last Modified: Wed, 14 Oct 2026 20:23:11 GMT  
		Size: 5.8 MB (5848443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12` - unknown; unknown

```console
$ docker pull hylang@sha256:c7640b2621a4967be2f7089ef0d659c11d4a1bb71fbb2f1c4058fac7f6117fd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c648a13dc29fd63397e00fcc11587cd9e7f95b65692d95c7ab139b23ee85c2a`

```dockerfile
```

-	Layers:
	-	`sha256:ac8ac3170e899090723061942a8cc0065c18c62c973372ef4036bddb8cd564d8`  
		Last Modified: Wed, 14 Oct 2026 20:23:11 GMT  
		Size: 2.3 MB (2256313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6018e9692797ac0b23bd1298fc2db76fc9fea16a60d16c6752599dc5c4269156`  
		Last Modified: Wed, 14 Oct 2026 20:23:11 GMT  
		Size: 8.8 KB (8833 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:517379101919b1d0b031f2b5fd30d4f925fc07d76aff45c464d0945ed436a470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69791351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28af00c0a31e3f33fd19a8e1f068d96cc5e0ec40dbd89c2e38681ec7e1fe3c16`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:12:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:13:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 20:13:32 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:13:32 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 14 Oct 2026 20:13:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 14 Oct 2026 20:13:32 GMT
CMD ["pypy3"]
# Wed, 14 Oct 2026 20:19:45 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 20:19:45 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 20:19:45 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 14 Oct 2026 20:19:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c9eebf44eb9c68db0dd1d7cb757fa2e4090ff50805a03054f1e15d2d7b22b92`  
		Last Modified: Wed, 14 Oct 2026 20:13:42 GMT  
		Size: 1.2 MB (1202737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfa2443e7dfec9907495c65297ac4cc1aba5d7fa2d364615656baabaa5a8480`  
		Last Modified: Wed, 14 Oct 2026 20:13:43 GMT  
		Size: 32.5 MB (32539917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9e0b68f8f01e8ac6cd2861eddc6966b589210096071c82763cefa914439bb7`  
		Last Modified: Wed, 14 Oct 2026 20:19:53 GMT  
		Size: 5.8 MB (5848415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12` - unknown; unknown

```console
$ docker pull hylang@sha256:ff099cda838bdf268e91ac490264fc082e1b6215574847bbad665c8a4fb36e8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2265608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6045edde91981ff3965f69c2f6cee908f76b5872f8719d97e278e9c3bc7d1b`

```dockerfile
```

-	Layers:
	-	`sha256:779cebfd448a6b4d0a82f603f96202f711896983effb9e83a62e254beefd5e28`  
		Last Modified: Wed, 14 Oct 2026 20:19:52 GMT  
		Size: 2.3 MB (2256623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5c64c112546fbe9592154d3228c45772b2fcce9ea3e5bf54cc9c765392e2357`  
		Last Modified: Wed, 14 Oct 2026 20:19:52 GMT  
		Size: 9.0 KB (8985 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12` - linux; 386

```console
$ docker pull hylang@sha256:777c7cf6c77133723557d657a41bdd786ee97fc378b2014765a38ab473c7be4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.4 MB (69391707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729dfd15c4c5a13ac4b5c4749d8d5bf3153a3efcc102d7d736f70fd5c4a0d22f`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:14:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:15:16 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 20:15:16 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 20:15:16 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 14 Oct 2026 20:15:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 14 Oct 2026 20:15:16 GMT
CMD ["pypy3"]
# Wed, 14 Oct 2026 20:23:11 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 20:23:11 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 20:23:11 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 14 Oct 2026 20:23:11 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28af3ae88c7595ff201666400dba53baf944a9f9edf642cf548a4356a62b14ad`  
		Last Modified: Wed, 14 Oct 2026 20:15:26 GMT  
		Size: 1.2 MB (1228266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:699bf588f329336f34bc0b1ae70f8a7c95d5b04deab98f721827808c921f79ac`  
		Last Modified: Wed, 14 Oct 2026 20:15:27 GMT  
		Size: 31.0 MB (30961744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c2252825544451756952d1768a0211e543e1baad79b93098c7d118c273a573`  
		Last Modified: Wed, 14 Oct 2026 20:23:18 GMT  
		Size: 5.8 MB (5848400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12` - unknown; unknown

```console
$ docker pull hylang@sha256:e386452fe984cbfa3ce89c9262abbd69972827691cfc6f5acdf4ecde1c82d450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2262247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9284f31c670af1ae1d18f431ee1b16099662ff2b4aa6727584f7abb007ad58a6`

```dockerfile
```

-	Layers:
	-	`sha256:d60c8a4a74a212b0533af75d5dd2fe09bd1d8f5f8773984b95acd27fe91c7cd1`  
		Last Modified: Wed, 14 Oct 2026 20:23:18 GMT  
		Size: 2.3 MB (2253466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06228b640826863d68bc310967f517e74144506df03f4f8601182bd3d56d88df`  
		Last Modified: Wed, 14 Oct 2026 20:23:18 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12` - windows version 10.0.26100.33650; amd64

```console
$ docker pull hylang@sha256:a986834ab636907afa0472b8074e34749cecad6ca8509fa0cc68d46afc327caf
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2444754728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e00c092e02ab660203358fe9ed65f443df3a8e10ec86c2a49c6f004b699c5032`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 14 Oct 2026 20:17:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Oct 2026 20:18:30 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Wed, 14 Oct 2026 20:19:09 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Wed, 14 Oct 2026 20:19:10 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 14 Oct 2026 20:19:56 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '225aa62deed1a624c86d5ffd03cc34615ff927b095d8508ad82593ee23ddce91'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Wed, 14 Oct 2026 20:19:58 GMT
CMD ["pypy"]
# Wed, 14 Oct 2026 21:09:43 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 21:09:44 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 21:10:39 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 14 Oct 2026 21:10:40 GMT
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
	-	`sha256:66174f71f59a875a940cfc7c0e03c74ee51b21ffa5c68b0912ffcd82cd9251d7`  
		Last Modified: Wed, 14 Oct 2026 20:20:06 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9e6d32087a112d8105cf5141d8f1707b87c36f4a9b8a272598c2da34a048dd`  
		Last Modified: Wed, 14 Oct 2026 20:20:05 GMT  
		Size: 355.2 KB (355173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f117281cf9afb3b2737ca19f477547530f9a32f70526523915920ce8fcccb56b`  
		Last Modified: Wed, 14 Oct 2026 20:20:09 GMT  
		Size: 15.5 MB (15538162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32007ba53074343ea91677ab839dfe64f28dfa58f9b3b4e690641d667a8020c1`  
		Last Modified: Wed, 14 Oct 2026 20:20:05 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be38ab8909460994e993e09782fe2a20d22b2b2c48439a18a23bedb6de01cce`  
		Last Modified: Wed, 14 Oct 2026 20:20:09 GMT  
		Size: 30.3 MB (30330401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1d120d595113b0086472a0f99f13c432f4d07c30eb610d3f404e55de9812bc`  
		Last Modified: Wed, 14 Oct 2026 20:20:05 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf6f609591c0dfdac8d4a3ef149a0982b74303874135c6d20d652deef13e933`  
		Last Modified: Wed, 14 Oct 2026 21:10:44 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1349a907623f8ee3b7ee33002a1366c7d902b5b506313d63f8436e7f08b296`  
		Last Modified: Wed, 14 Oct 2026 21:10:44 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3507e895e67a7fa2813780f5ec34ec2ee0b731dbac42cf56638b0c6363d8e87b`  
		Last Modified: Wed, 14 Oct 2026 21:10:45 GMT  
		Size: 6.5 MB (6528965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3155e78d3e8d4a61ad7f9ccc318bee1f29ff04f4686f8e65023c79af989ac596`  
		Last Modified: Wed, 14 Oct 2026 21:10:44 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:1-pypy3.12` - windows version 10.0.20348.5761; amd64

```console
$ docker pull hylang@sha256:feb9dc73ca37fc578e279645db38a5f016dc637d0077e97578e9666b34b17418
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2278989032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94eccc9c0f5fd7ef183eab96ca18e0c58b835fb00bd04e18af721a9917cb5327`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 14 Oct 2026 20:19:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Oct 2026 20:20:10 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Wed, 14 Oct 2026 20:20:40 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Wed, 14 Oct 2026 20:20:41 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 14 Oct 2026 20:21:15 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '225aa62deed1a624c86d5ffd03cc34615ff927b095d8508ad82593ee23ddce91'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Wed, 14 Oct 2026 20:21:15 GMT
CMD ["pypy"]
# Wed, 14 Oct 2026 21:09:46 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 21:09:47 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 21:10:36 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 14 Oct 2026 21:10:36 GMT
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
	-	`sha256:6937e4632aa5434bf605986bd199b58be23b543f3a66c286e71bc82f0ea98fae`  
		Last Modified: Wed, 14 Oct 2026 20:21:23 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01581bbb6f40d389d5f40394ee6274c2f133a3bf0a6093819fa71d3090751ed`  
		Last Modified: Wed, 14 Oct 2026 20:21:22 GMT  
		Size: 344.7 KB (344664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8286780a1a99decd92054707e9e02cb3d3ba2b216b8da0810671fde095b5e43b`  
		Last Modified: Wed, 14 Oct 2026 20:21:26 GMT  
		Size: 15.5 MB (15522016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62133e2f5585fcd6a7b58d8e0208d71716ba78503e58f9d26140e0c02f224d85`  
		Last Modified: Wed, 14 Oct 2026 20:21:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bad08dbcb6ad7ddd0e62901ac0863b476963a2133d94b97d534604c3d55c5b3`  
		Last Modified: Wed, 14 Oct 2026 20:21:25 GMT  
		Size: 30.3 MB (30317224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab333ebbef4e5ff41a5b6b849e48a0d7196b987d4c564d302216559ea533b05`  
		Last Modified: Wed, 14 Oct 2026 20:21:22 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc0b11ed8fdd9fbb829b978daf077c4e15944c0ac862f968e4d30e528595a66`  
		Last Modified: Wed, 14 Oct 2026 21:10:40 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bfb3cf92e62326d839094243bdc6682eee58ddfecfaa4f20a8005ba3d96874`  
		Last Modified: Wed, 14 Oct 2026 21:10:41 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889769c17f0205493657e94176bf3192039073414c178893b8488411477dbf0a`  
		Last Modified: Wed, 14 Oct 2026 21:10:42 GMT  
		Size: 6.5 MB (6511835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec4bb8a3591977dfd316f1e4bc78dc742adec871321254568626eb8c19aa57c`  
		Last Modified: Wed, 14 Oct 2026 21:10:41 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
