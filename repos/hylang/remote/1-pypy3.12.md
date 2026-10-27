## `hylang:1-pypy3.12`

```console
$ docker pull hylang@sha256:22e7019694b3304596928267a288c4e0accde97d9c6299298d4a8220fd25729c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `hylang:1-pypy3.12` - linux; amd64

```console
$ docker pull hylang@sha256:5b5a8f6422a2771946b4048119b27639fd245ecac06d18ba1e805faedb56b36d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71174721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6153405159543ed9d3aa2559b8f2c2a6c59c10fb43dbb536024e01314448831`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:56:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:56:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:56:52 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:56:52 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 21 Oct 2026 00:56:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 21 Oct 2026 00:56:52 GMT
CMD ["pypy3"]
# Wed, 21 Oct 2026 01:44:35 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 01:44:35 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 01:44:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 01:44:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef17010ff28159ef6bd878ab120488d1aca95799358ed9734c01f1b3ff2a1e7`  
		Last Modified: Wed, 21 Oct 2026 00:57:03 GMT  
		Size: 1.2 MB (1218432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca29f78c36dd7ea34cac92dc50d9702c8c1328aefdceec6d9a06ffbcb73a8e02`  
		Last Modified: Wed, 21 Oct 2026 00:57:04 GMT  
		Size: 34.2 MB (34204875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2582582d66deac551ff744cf02ade06562bf6939940d6d5c5fc2e722f1ce24a`  
		Last Modified: Wed, 21 Oct 2026 01:44:44 GMT  
		Size: 5.9 MB (5907835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12` - unknown; unknown

```console
$ docker pull hylang@sha256:dd3093e7773411e8fc3f9d8aff935293bea1ddf7c9210a97fd8d76c96abd884f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2263867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585030375185f788b4e225d31bbc654006ee0d4ee0b18e8225234b0286e98817`

```dockerfile
```

-	Layers:
	-	`sha256:b630fa1feb32878fbc625827ffab2bf04c6ce7d169d12d7a658f688956242c61`  
		Last Modified: Wed, 21 Oct 2026 01:44:44 GMT  
		Size: 2.3 MB (2255036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c93fe0463fcf649790d662b6fd73ce3aff3e9a9207fdb11903e034e534ebf48d`  
		Last Modified: Wed, 21 Oct 2026 01:44:44 GMT  
		Size: 8.8 KB (8831 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:c0905226ed9498fd2131942ff78a20774e8749ff656ec3a23e4884da100d378e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.7 MB (69743792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:077e1739ec2c93bd4070aca1e1ae66460a97bd335cdd28376b403be8d14c65fa`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:59:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:00:22 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 01:00:22 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:00:22 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 21 Oct 2026 01:00:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 21 Oct 2026 01:00:22 GMT
CMD ["pypy3"]
# Wed, 21 Oct 2026 01:53:06 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 01:53:06 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 01:53:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 01:53:06 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d91b956debbca1050ef9a118a65ecad70235e74b5080c685563dc5c392b382`  
		Last Modified: Wed, 21 Oct 2026 01:00:34 GMT  
		Size: 1.2 MB (1200392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35219dd6d763ed8fee1e2cca4f3a1a91d43ccc8b92d4946fdc480a4c10e28707`  
		Last Modified: Wed, 21 Oct 2026 01:00:34 GMT  
		Size: 32.4 MB (32435355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:788110125243d0d1a73e5b9796701715241258bd789de7e7639229f6cb7087c9`  
		Last Modified: Wed, 21 Oct 2026 01:53:13 GMT  
		Size: 5.9 MB (5907567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12` - unknown; unknown

```console
$ docker pull hylang@sha256:72d5e72169d2a8e5ed3f8ad00d52875ec9fa79554ac47e67fe0dafcb674989fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2264331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21daa0584a213702f5d9fbd46ab212fb73f4c514d19fb824df60b21da47ddcbf`

```dockerfile
```

-	Layers:
	-	`sha256:5d88252d9f1f07fa9629a83baae3928bf7f35e073160c42b3b29a5bc86c2570c`  
		Last Modified: Wed, 21 Oct 2026 01:53:13 GMT  
		Size: 2.3 MB (2255346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db8eccba39d0229cbfbe7d91734a614808817d97c3d7bbcd3dc550d906d7a0ef`  
		Last Modified: Wed, 21 Oct 2026 01:53:14 GMT  
		Size: 9.0 KB (8985 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12` - linux; 386

```console
$ docker pull hylang@sha256:767939f0fce4b0cb5ca7b8210d5d78df838cae5dfd999203edddd42f0d4595ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.3 MB (69333824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6fffce105cdaff7e000b9b20bc0ca8e82acced5b66d6cdaa44347682dc07e73`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:53:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:54:05 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:54:05 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:54:05 GMT
ENV PYPY_VERSION=8.0.1
# Wed, 21 Oct 2026 00:54:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux64.tar.gz'; 			sha256='aeed27797777296d9c94e53bdfa608804696dbd4ff9f2213003cce064ee46ef8'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-aarch64.tar.gz'; 			sha256='4dd9611f782f0974ffd25b521120b4297049daec05a3cec5698dbc6022c74fb9'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy3.12-v8.0.1-linux32.tar.gz'; 			sha256='aac46889fd2e85e522f5446256cd57167f91648c48d906d79eb593c812dbe55f'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 		libfontconfig1 	; 		wget -O pypy.tar.gz "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.gz" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xzC /opt/pypy --strip-components=1 -f pypy.tar.gz; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.gz; 		rm -v /opt/pypy/lib/libtk*.so /opt/pypy/lib/libz.so*; 		ln -sv '/opt/pypy/bin/pypy3' /usr/local/bin/; 		pypy3 --version; 		cd /opt/pypy/lib/pypy3.12; 	if [ -f _gdbm_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libgdbm-dev; 		pypy3 _gdbm_build.py; 	fi; 	if [ -f _ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		pypy3 _ssl_build.py; 	fi; 	if [ -f _lzma_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev liblzma-dev; 		pypy3 _lzma_build.py; 	fi; 	if [ -f _sqlite3_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libsqlite3-dev; 		pypy3 _sqlite3_build.py; 	fi; 	if [ -f _tkinter/tklib_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev tk-dev; 		pypy3 _tkinter/tklib_build.py; 	fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	export shellPid="$$"; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| grep -vE 'lib(tcl|tk|X[a-z]*)[0-9]*[.]' 		| awk '/not found/ { print >> "/dev/stderr"; system("kill -9 -$shellPid") } /=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1 || index(so, "/opt/pypy/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 		pypy3 -m ensurepip --default-pip; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + # buildkit
# Wed, 21 Oct 2026 00:54:05 GMT
CMD ["pypy3"]
# Wed, 21 Oct 2026 01:38:47 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 01:38:47 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 01:38:47 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 01:38:47 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df2f288b7c1fa258970b3b8dc2fd24ff7780922720666eea3396646a2fc7428`  
		Last Modified: Wed, 21 Oct 2026 00:54:15 GMT  
		Size: 1.2 MB (1227001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bea63c092ca3f9711649f04153860b563e3bbb30190a3c87544b14546f9a69`  
		Last Modified: Wed, 21 Oct 2026 00:54:16 GMT  
		Size: 30.8 MB (30845812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa92fb35df8fb29ce40bc1b2c585fbc29fde777f516ee8931c6abb2d77142d3`  
		Last Modified: Wed, 21 Oct 2026 01:38:54 GMT  
		Size: 5.9 MB (5907477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-pypy3.12` - unknown; unknown

```console
$ docker pull hylang@sha256:54b393ca0931ce60a204b0e6b4b809712bc1b3fea4ea45fb42649e0ec17d46a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2260970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a05b53e8209fa3f7db9ab3cfda6f140962fa046202d228491a514bee38914f`

```dockerfile
```

-	Layers:
	-	`sha256:6895b855dbda5159e25c12c18152e306c216ef7718b0db6911559eebb657af6d`  
		Last Modified: Wed, 21 Oct 2026 01:38:54 GMT  
		Size: 2.3 MB (2252189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:344cac6634e04e9dd510189b29f88afee446cbdb2930ee57224cae5e04c52acc`  
		Last Modified: Wed, 21 Oct 2026 01:38:54 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-pypy3.12` - windows version 10.0.26100.33674; amd64

```console
$ docker pull hylang@sha256:380195bd3339a4dafeaa6df422af4a68792a2e15dfaf220ce9b98226c9aa919a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2444858764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28e8c5e1870e6411a19f25c281e3a4bae1c36d91e21aee26c6066feeab50050`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:00:39 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:00:48 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:00:48 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 27 Oct 2026 18:01:16 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '225aa62deed1a624c86d5ffd03cc34615ff927b095d8508ad82593ee23ddce91'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:01:17 GMT
CMD ["pypy"]
# Tue, 27 Oct 2026 18:42:11 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 18:42:12 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 18:43:01 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 27 Oct 2026 18:43:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deac8411208c7be4087f6269cdff958ca4539894d5540fbed510906417fdf4c5`  
		Last Modified: Tue, 27 Oct 2026 17:50:06 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec2966608cca3f1e5a8da550b60b173e1cace916f124f91467760aee49418f`  
		Last Modified: Tue, 27 Oct 2026 18:01:22 GMT  
		Size: 354.0 KB (354029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed5ef28fcb4d04717cf725b9d9a0fb57ea31bde6b9210ebe8ed21d4446bf1a6`  
		Last Modified: Tue, 27 Oct 2026 18:01:24 GMT  
		Size: 15.5 MB (15532860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63b46bd3c74e6b56095408744aa8ad0436c2ae1505ec2e5c807e0ace105e424`  
		Last Modified: Tue, 27 Oct 2026 18:01:21 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca903e85d9927d8a8c681f691cfdd33712ce465de158583c9261c69014724041`  
		Last Modified: Tue, 27 Oct 2026 18:01:26 GMT  
		Size: 30.3 MB (30329507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a18477f793579b8df70255eb785f08c46837c14620c96b4b83fca87385c1c98`  
		Last Modified: Tue, 27 Oct 2026 18:01:21 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4ed43eebfcf908bde408d78cd80826c0c0273019fcdb721fc385aa56dd293f`  
		Last Modified: Tue, 27 Oct 2026 18:43:06 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e80fcb2103af340aaa0cb4de749a28b33aa9f828d42321652f1e89f6bef594`  
		Last Modified: Tue, 27 Oct 2026 18:43:06 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e7461b9ca85e853ffbfab1c88d07e3badaa4ca1983c04e4ab039310a379ead`  
		Last Modified: Tue, 27 Oct 2026 18:43:07 GMT  
		Size: 6.6 MB (6585600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d393a000b2e0a5471ed1d6e85926a6c8c532cdc20cceedd97a7792ef0daca854`  
		Last Modified: Tue, 27 Oct 2026 18:43:06 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:1-pypy3.12` - windows version 10.0.20348.5773; amd64

```console
$ docker pull hylang@sha256:34c8379f9c0b6f5d1d882ad479ff7bc4380424b5d1bec145a6bf3ef1d9dbe6ef
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2279807030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55eb4cef6d8dba4f65f42df2d96a0a615851377ffb87f69c540be94f69f0ed6`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:09:35 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:09:45 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:09:45 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 27 Oct 2026 18:10:15 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '225aa62deed1a624c86d5ffd03cc34615ff927b095d8508ad82593ee23ddce91'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:10:16 GMT
CMD ["pypy"]
# Tue, 27 Oct 2026 19:20:09 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 19:20:09 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 19:20:54 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 27 Oct 2026 19:20:54 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595092004383b652eb9dd6a9e61984c52d5b546af386f4d8e34bb346c0f86dd0`  
		Last Modified: Tue, 27 Oct 2026 17:50:41 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bf719628fdf6a415eb2dd5ae1c86c963336a5287001ee3d106ed5fe702259d`  
		Last Modified: Tue, 27 Oct 2026 18:10:22 GMT  
		Size: 338.5 KB (338547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5489eefe6077fef96834bc4b6727503d8215b9d678443bd1651bfaec7d6f10e7`  
		Last Modified: Tue, 27 Oct 2026 18:10:23 GMT  
		Size: 15.5 MB (15516649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7140cb91c140f20be528c14d8c761cb51a7c83be9c5aecd8840376c83127dd`  
		Last Modified: Tue, 27 Oct 2026 18:10:22 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6257d8f780e2b632105c7b28ac1b6b201d8708892df52dfa9088bc13d381a`  
		Last Modified: Tue, 27 Oct 2026 18:10:25 GMT  
		Size: 30.3 MB (30315697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cf7647f24f491ecc77c915f430ed8e9242f8163812e43930d2577b29045b44`  
		Last Modified: Tue, 27 Oct 2026 18:10:21 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c26cbbbecfce2d7afe642fbeb238437b4f0a8748b1e6aff410e6cff005809b`  
		Last Modified: Tue, 27 Oct 2026 19:20:58 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea02967874dbe500fe9d2e8e40a3861bd2b8c37e1d65c5eb1a3eb6e728f118`  
		Last Modified: Tue, 27 Oct 2026 19:20:58 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e3a721cdfa6529c48ed8748039096ae4e1eb29ef9d17b4ce080be7358cc17e`  
		Last Modified: Tue, 27 Oct 2026 19:20:59 GMT  
		Size: 6.6 MB (6572138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60fc38a6fd7857b6e9b95486a5e4f7196ff88fd1312de2748d306d90a7139df`  
		Last Modified: Tue, 27 Oct 2026 19:20:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
