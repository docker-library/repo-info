## `pypy:2-7-slim-bullseye`

```console
$ docker pull pypy@sha256:884cb6b7d591ad7c9b04093c6113c74483747130b169db52608eae89bf04ba73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `pypy:2-7-slim-bullseye` - linux; amd64

```console
$ docker pull pypy@sha256:735af0a706c3825ba7df9779d3c95f3fdb3976f23b0c1f2c7a6ccc1041b4b2f5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65670078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce0404bff7383ffec9df58df1f1b45903f711c90a0633050537cb0442e635ac`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 09:00:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 09:00:01 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 09:00:01 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 09:00:01 GMT
ENV PYPY_VERSION=7.3.11
# Wed, 11 Jan 2023 09:05:54 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.11-linux64.tar.bz2'; 			sha256='ba8ed958a905c0735a4cfff2875c25089954dc020e087d982b0ffa5b9da316cd'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.11-aarch64.tar.bz2'; 			sha256='ea924da1defe9325ef760e288b04f984614e405580f5321eb6a5c8f539bd415a'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.11-linux32.tar.bz2'; 			sha256='30fd245fab7068c96a75b9ff1323ac55174c64fc8c4751cceb4b7a9bedc1851e'; 			;; 		's390x') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.11-s390x.tar.bz2'; 			sha256='8fe9481c473178e53266983678684a70fe0c42bafc95f1807bf3ef28770316d4'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libexpat1 		libncurses5 		libncursesw6 		libsqlite3-0 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +
# Wed, 11 Jan 2023 09:05:54 GMT
ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/3843bff3a0a61da5b63ea0b7d34794c5c51a2f11/get-pip.py
# Wed, 11 Jan 2023 09:05:54 GMT
ENV PYTHON_GET_PIP_SHA256=95c5ee602b2f3cc50ae053d716c3c89bea62c58568f64d7d25924d399b2d5218
# Wed, 11 Jan 2023 09:06:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py "$PYTHON_GET_PIP_URL"; 	echo "$PYTHON_GET_PIP_SHA256 *get-pip.py" | sha256sum --check --strict -; 		pipVersion="$(pypy -c 'import ensurepip; print(ensurepip._PIP_VERSION)')"; 	setuptoolsVersion="$(pypy -c 'import ensurepip; print(ensurepip._SETUPTOOLS_VERSION)')"; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip == $pipVersion" 		"setuptools == $setuptoolsVersion" 	; 	apt-get purge -y --auto-remove wget; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 11 Jan 2023 09:06:03 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1dbf6fc9279da1d625490021ed1754bd127e3c859d772b0837bcd4a2f63948`  
		Last Modified: Wed, 11 Jan 2023 09:09:11 GMT  
		Size: 1.1 MB (1066522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d2b5e94b32536f91aee5e44ef7fb11d5813b0122a284bddc3f0945c8f262bd`  
		Last Modified: Wed, 11 Jan 2023 09:12:48 GMT  
		Size: 31.0 MB (31035457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e0dc4c1bd09731f4c97d7cf2da471ca419e2799fbc730f55a01d59eab965b3`  
		Last Modified: Wed, 11 Jan 2023 09:12:43 GMT  
		Size: 2.2 MB (2171127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-7-slim-bullseye` - linux; arm64 variant v8

```console
$ docker pull pypy@sha256:7c920b49e7949885cf57b37f514e1aa5b8a57325d94b6ef0d1f9fbb07b0bf5e3
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62326638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237abffbbfdc63213ba98f60bf2108bbb42481ded43593f64bdfa9be7d32a133`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:16:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:16:52 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 13:16:52 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 13:16:52 GMT
ENV PYPY_VERSION=7.3.11
# Wed, 11 Jan 2023 13:21:46 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.11-linux64.tar.bz2'; 			sha256='ba8ed958a905c0735a4cfff2875c25089954dc020e087d982b0ffa5b9da316cd'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.11-aarch64.tar.bz2'; 			sha256='ea924da1defe9325ef760e288b04f984614e405580f5321eb6a5c8f539bd415a'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.11-linux32.tar.bz2'; 			sha256='30fd245fab7068c96a75b9ff1323ac55174c64fc8c4751cceb4b7a9bedc1851e'; 			;; 		's390x') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.11-s390x.tar.bz2'; 			sha256='8fe9481c473178e53266983678684a70fe0c42bafc95f1807bf3ef28770316d4'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libexpat1 		libncurses5 		libncursesw6 		libsqlite3-0 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +
# Wed, 11 Jan 2023 13:21:46 GMT
ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/3843bff3a0a61da5b63ea0b7d34794c5c51a2f11/get-pip.py
# Wed, 11 Jan 2023 13:21:46 GMT
ENV PYTHON_GET_PIP_SHA256=95c5ee602b2f3cc50ae053d716c3c89bea62c58568f64d7d25924d399b2d5218
# Wed, 11 Jan 2023 13:21:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py "$PYTHON_GET_PIP_URL"; 	echo "$PYTHON_GET_PIP_SHA256 *get-pip.py" | sha256sum --check --strict -; 		pipVersion="$(pypy -c 'import ensurepip; print(ensurepip._PIP_VERSION)')"; 	setuptoolsVersion="$(pypy -c 'import ensurepip; print(ensurepip._SETUPTOOLS_VERSION)')"; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip == $pipVersion" 		"setuptools == $setuptoolsVersion" 	; 	apt-get purge -y --auto-remove wget; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 11 Jan 2023 13:21:54 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724bbac2bd5c9053876c07264d4bd542ecbd6db207cc2a5dac319842511ebeaa`  
		Last Modified: Wed, 11 Jan 2023 13:25:06 GMT  
		Size: 1.1 MB (1054046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce167cacf3aa192725af53a6bacbf169165065baab74f2142438aae53a39d54`  
		Last Modified: Wed, 11 Jan 2023 13:28:29 GMT  
		Size: 29.1 MB (29056766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1105aa2c722f8bf8a9fabb353e13e3e623ba7c52ac537ea7444bb3e98f5df3b`  
		Last Modified: Wed, 11 Jan 2023 13:28:26 GMT  
		Size: 2.2 MB (2171012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-7-slim-bullseye` - linux; 386

```console
$ docker pull pypy@sha256:3520a6740c53f2fada514ef2fc48bd4455411baa80ec49eade3120a623aa824a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62294235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346b1115705cf89b4b64189588a72432384c71cb51b5d829655f5e3ec1b37538`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:08 GMT
ADD file:68afc7c49a947a9fb253ffeba9950cdc39e241f8a5cf0133043cfc612447f597 in / 
# Wed, 11 Jan 2023 03:16:08 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 12:02:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 12:02:11 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 12:02:12 GMT
ENV PATH=/opt/pypy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 12:02:13 GMT
ENV PYPY_VERSION=7.3.11
# Wed, 11 Jan 2023 12:09:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		'amd64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.11-linux64.tar.bz2'; 			sha256='ba8ed958a905c0735a4cfff2875c25089954dc020e087d982b0ffa5b9da316cd'; 			;; 		'arm64') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.11-aarch64.tar.bz2'; 			sha256='ea924da1defe9325ef760e288b04f984614e405580f5321eb6a5c8f539bd415a'; 			;; 		'i386') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.11-linux32.tar.bz2'; 			sha256='30fd245fab7068c96a75b9ff1323ac55174c64fc8c4751cceb4b7a9bedc1851e'; 			;; 		's390x') 			url='https://downloads.python.org/pypy/pypy2.7-v7.3.11-s390x.tar.bz2'; 			sha256='8fe9481c473178e53266983678684a70fe0c42bafc95f1807bf3ef28770316d4'; 			;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libexpat1 		libncurses5 		libncursesw6 		libsqlite3-0 	; 		wget -O pypy.tar.bz2 "$url" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum --check --strict -; 	mkdir /opt/pypy; 	tar -xjC /opt/pypy --strip-components=1 -f pypy.tar.bz2; 	find /opt/pypy/lib* -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		ln -sv '/opt/pypy/bin/pypy' /usr/local/bin/; 		pypy --version; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /opt/pypy -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +
# Wed, 11 Jan 2023 12:09:43 GMT
ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/3843bff3a0a61da5b63ea0b7d34794c5c51a2f11/get-pip.py
# Wed, 11 Jan 2023 12:09:44 GMT
ENV PYTHON_GET_PIP_SHA256=95c5ee602b2f3cc50ae053d716c3c89bea62c58568f64d7d25924d399b2d5218
# Wed, 11 Jan 2023 12:09:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py "$PYTHON_GET_PIP_URL"; 	echo "$PYTHON_GET_PIP_SHA256 *get-pip.py" | sha256sum --check --strict -; 		pipVersion="$(pypy -c 'import ensurepip; print(ensurepip._PIP_VERSION)')"; 	setuptoolsVersion="$(pypy -c 'import ensurepip; print(ensurepip._SETUPTOOLS_VERSION)')"; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip == $pipVersion" 		"setuptools == $setuptoolsVersion" 	; 	apt-get purge -y --auto-remove wget; 	pip --version; 		find /opt/pypy -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 11 Jan 2023 12:09:56 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:165165b78fad597abd0883f40adcaa0edcfe981a358deea181323680a07b7011`  
		Last Modified: Wed, 11 Jan 2023 03:22:01 GMT  
		Size: 32.4 MB (32375738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435d3cd1791ff564259c0272b3f25ff4baec8c2625b9f26edab8e6f00147461c`  
		Last Modified: Wed, 11 Jan 2023 12:15:31 GMT  
		Size: 1.1 MB (1078739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95cbc8983252fdf153b4725e704b28622c0073a01df9bfa7a543f6ec8ac5225`  
		Last Modified: Wed, 11 Jan 2023 12:19:44 GMT  
		Size: 26.9 MB (26885348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7575fb8f7fafe5e68c9757174efc150a1ada33e1583761a87244b0c07087a2e`  
		Last Modified: Wed, 11 Jan 2023 12:19:41 GMT  
		Size: 2.0 MB (1954410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
