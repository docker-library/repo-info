## `hylang:1-pypy3.12-trixie`

```console
$ docker pull hylang@sha256:6195db82f8abb7928174b7e25b4516100bea0e75793ca941193200fc27647381
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `hylang:1-pypy3.12-trixie` - linux; amd64

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

### `hylang:1-pypy3.12-trixie` - unknown; unknown

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

### `hylang:1-pypy3.12-trixie` - linux; arm64 variant v8

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

### `hylang:1-pypy3.12-trixie` - unknown; unknown

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

### `hylang:1-pypy3.12-trixie` - linux; 386

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

### `hylang:1-pypy3.12-trixie` - unknown; unknown

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
