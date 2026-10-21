<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `satosa`

-	[`satosa:8`](#satosa8)
-	[`satosa:8-alpine`](#satosa8-alpine)
-	[`satosa:8-alpine3.24`](#satosa8-alpine324)
-	[`satosa:8-trixie`](#satosa8-trixie)
-	[`satosa:8.6`](#satosa86)
-	[`satosa:8.6-alpine`](#satosa86-alpine)
-	[`satosa:8.6-alpine3.24`](#satosa86-alpine324)
-	[`satosa:8.6-trixie`](#satosa86-trixie)
-	[`satosa:8.6.0`](#satosa860)
-	[`satosa:8.6.0-alpine`](#satosa860-alpine)
-	[`satosa:8.6.0-alpine3.24`](#satosa860-alpine324)
-	[`satosa:8.6.0-trixie`](#satosa860-trixie)
-	[`satosa:alpine`](#satosaalpine)
-	[`satosa:alpine3.24`](#satosaalpine324)
-	[`satosa:latest`](#satosalatest)
-	[`satosa:trixie`](#satosatrixie)

## `satosa:8`

```console
$ docker pull satosa@sha256:ce65caef9a500163e94beba9b93f8e8fa0522676136de14b620ef9f33ab72915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8` - linux; amd64

```console
$ docker pull satosa@sha256:a0ca883985fb2775aa79ffebbbc190f705a6ac7c304c903f022074842f2ba305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79424523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb5e52e3449f8a775eb8e0352a5cd90fc4001ff67c7bc86cfb7db3cfb7265eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:58:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:40:45 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:41:37 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:41:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:38 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:41:38 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:41:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be27415a1b86bed55ef3fa57f513ea022257a9735ba9e3298a458950c550df`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 1.3 MB (1291262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7730f4ce1f5cd2d16b14fbaf388ca4866df0aa707f3ae591dda9f5dc03b116`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 12.4 MB (12380655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a60621211feb7a3e8d5bb4a0b2885edb174e8c1a8402ca73e110c7ff021c48`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65b1a9ec68b08a2e58b9f48c136c163c98a86e1eff5fe9fa64a6e74765c8433`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 7.5 MB (7523902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa446a8f106e096a936fe552613767b7647907b5518068f80d39101dd2f207`  
		Last Modified: Wed, 21 Oct 2026 01:41:50 GMT  
		Size: 28.4 MB (28372308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f3bb455ce8e8fdb6e6cccc0cf0275d350f6bbc284f9526fc13447dd8c366c`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f36a6810effa0843744f6ab76652a3b19606a2a03591796bc1ae971a3b14a8d`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8` - unknown; unknown

```console
$ docker pull satosa@sha256:72e6eb2c18b5fe9c71be081ba357b828c70fefca5accc7d2acc8f108e80cf009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230fdef369c2f35d2477d2c194696bc16076baf944f8ceefa57e2d5d07b2099c`

```dockerfile
```

-	Layers:
	-	`sha256:f82cd7738c6edb42fd1a87f441de0b6bea1089302e7603fb1ff44570c13101a7`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.3 MB (2344758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c959041ab66af30296042bc600fd61ee7dfdb5b9b68542ded0520df2552153`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 22.1 KB (22081 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:533bde4798dc506244bb42b6ef2fd4905a5433b2cae18ce74774de4a649e4295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79365902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeef3c2dfc00dbdde61c1c0f3962a30e2e974a89c74b35a0b9338f5fc8f766e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:48:36 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:49:30 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:49:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:49:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:31 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:49:31 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:49:31 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf4184f3e0f9ec8621a107efcb29c493425a5336096fa47773db7549153ddf4`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 1.3 MB (1271638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3a8dd73f29f65757f52d48ccdd79bbb27378dcdc3fba89a82e2691fe0d851f`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 12.3 MB (12291833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9b1df100ea22036a46bc4a24b1c7039e3c486ef7fb045bd4564121f1dc28fe`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9e86598f515a0ae7eb16ae296bd1f72f44b4a4d40bd3a1fbb87286560ba645`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 7.3 MB (7333726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06d87d7523bbff3b6e501ae1ddcb2e29181662a74b1bd40e3aa3ee60a5b41fa`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 28.3 MB (28255414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683994c333f7e117a18241040bb69ddc5b906e475bb3cb646158867c272c781f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 10.5 KB (10455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1598b1141d27a3fc4265e841d92d7e5d3ee6bb033ada0e981d4f4548278354f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8` - unknown; unknown

```console
$ docker pull satosa@sha256:6a95f4c4c6a6e35fa64f07a5159ccb2757ec83caeceb222afc32341755a8d57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae14ff818562eb4e320afff1a8bc6efa8020a7477c95f7ccdbf0e3496bf2210`

```dockerfile
```

-	Layers:
	-	`sha256:2df72c18c8b9e1b96a0971df00696e03ab79425349eea504e5d079e1c3fdc042`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.3 MB (2345073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31dbce86869fec6dee741f8ce70607513f58eddde673f3c20d1c43c13c436f8`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 22.3 KB (22263 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8-alpine`

```console
$ docker pull satosa@sha256:03b413baf358c1e0ead563ca51f67a36673748d3ce9ee1178cdc3124c24f4ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8-alpine` - linux; amd64

```console
$ docker pull satosa@sha256:4405eb77cd4e54964d9e5277e016c576fd38eb8a57521d2da9c45d18fe431035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55690974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08893e81d71a9a9d763c52cb8e28ed23b0c9e2f8179883680d7b15adcd8039f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:09:36 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:09:57 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:09:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:09:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:09:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:09:58 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:09:58 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f6a258842734fe23e0e4c69db9996cbaefd41c1cde2372b95449f9fc5601eb`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 416.3 KB (416271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a22c5887fa227de1798e9b92a3692c3bb96fa108c1164afe00a928c35a0986c`  
		Last Modified: Thu, 01 Oct 2026 21:36:21 GMT  
		Size: 16.1 MB (16113890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d486488257d0aa8b040529bcab1337e849158dafb6f28c6d79df56cce8042b48`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4865f38a45c3fb6271650786a87383c1e6bdd3ed39c49b4f165a9038ff1a2a9c`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 7.2 MB (7232741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69abec817340723e51d84ed64ad8691a3e5ed5b2199bed9ec4c6229369ce299c`  
		Last Modified: Mon, 05 Oct 2026 19:10:08 GMT  
		Size: 28.1 MB (28065520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607546eb4d227613a16b11bc66eef90643b1392c1009d51cd76a72abf8f9b5a2`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 10.4 KB (10450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc3b5d08425494931f418c0bc5c7c0763e18a13c26b5ea564fff12e012251e6`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8-alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:5331fbfdfcb1ab65da636c99a9c751ffc7e94f40ceb8802aa6da11d53f3bb3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.3 KB (806258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341c17ae45698860824077fa87a8c736ee21c0f7825ed7af6a25e263fa979427`

```dockerfile
```

-	Layers:
	-	`sha256:452f03036ef742396fdffeb4e0074321900ecb13e853768e4f8e3968420d15bc`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 783.5 KB (783455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26d7d4db9f4b129c385f79cd9c3d1c33ecdb34bf9404fb0f4d2d3847b2b920f`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 22.8 KB (22803 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8-alpine` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:b3db21ee9beca38c4b559135ce76b96d4160fe2c224f804102c5c8bed0b9182a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56078228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756fcb4e203b999ed279d474298f1880d72021bfe328eb9cf26428247ec1a6c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:10:15 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:10:37 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:10:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:10:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:10:38 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:10:38 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:10:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541523bae70c3c87e617205994d485e5de248b99777a05d2389c7db109fdc852`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 419.1 KB (419110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9625030534d1a3b72c2d657e8ed9482c1547ed87aa2ab33ca53b81d57246c601`  
		Last Modified: Thu, 01 Oct 2026 21:36:26 GMT  
		Size: 16.5 MB (16498458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6af1da8f48cad1a6394dd794801f8b21caa9c4160ca65d6c56df5d28a901ba`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7211e62aa8d4fb610de764492e51e6ce661b9d7d98328251087d7ddaac67c33`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 7.2 MB (7227006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b91828b89266b8ba342a651bd82b6ca0eb4a705bc5398d6cb73eb7fe1a1a17`  
		Last Modified: Mon, 05 Oct 2026 19:10:48 GMT  
		Size: 27.7 MB (27733186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f400df13355047e171fa64e4ea91be6592600ce36b3b858e981721c885d0a5`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 10.4 KB (10448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22406a9da635cd1d8b4bf183a1bf3633aff959688644cc29b5d9cdf974532ebb`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8-alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:7d706e905f7e8c990cac30b517a7905b705998fb21894c0291837241db48b552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.9 KB (805902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b3bba1d1580b86f0b4325c458fd312592cbf84afcd96c70dbafaf15111a22a`

```dockerfile
```

-	Layers:
	-	`sha256:e53a9911c9d35e5b1b8bc1033fb47d1fc878bc4aa8bd8a2447b7b0127373a78b`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 782.9 KB (782916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83789a05c1324867875de510949743f3c2db6706da84ae133219d677a3933ecd`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 23.0 KB (22986 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8-alpine3.24`

```console
$ docker pull satosa@sha256:03b413baf358c1e0ead563ca51f67a36673748d3ce9ee1178cdc3124c24f4ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8-alpine3.24` - linux; amd64

```console
$ docker pull satosa@sha256:4405eb77cd4e54964d9e5277e016c576fd38eb8a57521d2da9c45d18fe431035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55690974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08893e81d71a9a9d763c52cb8e28ed23b0c9e2f8179883680d7b15adcd8039f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:09:36 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:09:57 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:09:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:09:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:09:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:09:58 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:09:58 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f6a258842734fe23e0e4c69db9996cbaefd41c1cde2372b95449f9fc5601eb`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 416.3 KB (416271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a22c5887fa227de1798e9b92a3692c3bb96fa108c1164afe00a928c35a0986c`  
		Last Modified: Thu, 01 Oct 2026 21:36:21 GMT  
		Size: 16.1 MB (16113890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d486488257d0aa8b040529bcab1337e849158dafb6f28c6d79df56cce8042b48`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4865f38a45c3fb6271650786a87383c1e6bdd3ed39c49b4f165a9038ff1a2a9c`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 7.2 MB (7232741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69abec817340723e51d84ed64ad8691a3e5ed5b2199bed9ec4c6229369ce299c`  
		Last Modified: Mon, 05 Oct 2026 19:10:08 GMT  
		Size: 28.1 MB (28065520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607546eb4d227613a16b11bc66eef90643b1392c1009d51cd76a72abf8f9b5a2`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 10.4 KB (10450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc3b5d08425494931f418c0bc5c7c0763e18a13c26b5ea564fff12e012251e6`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8-alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:5331fbfdfcb1ab65da636c99a9c751ffc7e94f40ceb8802aa6da11d53f3bb3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.3 KB (806258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341c17ae45698860824077fa87a8c736ee21c0f7825ed7af6a25e263fa979427`

```dockerfile
```

-	Layers:
	-	`sha256:452f03036ef742396fdffeb4e0074321900ecb13e853768e4f8e3968420d15bc`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 783.5 KB (783455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26d7d4db9f4b129c385f79cd9c3d1c33ecdb34bf9404fb0f4d2d3847b2b920f`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 22.8 KB (22803 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:b3db21ee9beca38c4b559135ce76b96d4160fe2c224f804102c5c8bed0b9182a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56078228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756fcb4e203b999ed279d474298f1880d72021bfe328eb9cf26428247ec1a6c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:10:15 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:10:37 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:10:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:10:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:10:38 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:10:38 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:10:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541523bae70c3c87e617205994d485e5de248b99777a05d2389c7db109fdc852`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 419.1 KB (419110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9625030534d1a3b72c2d657e8ed9482c1547ed87aa2ab33ca53b81d57246c601`  
		Last Modified: Thu, 01 Oct 2026 21:36:26 GMT  
		Size: 16.5 MB (16498458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6af1da8f48cad1a6394dd794801f8b21caa9c4160ca65d6c56df5d28a901ba`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7211e62aa8d4fb610de764492e51e6ce661b9d7d98328251087d7ddaac67c33`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 7.2 MB (7227006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b91828b89266b8ba342a651bd82b6ca0eb4a705bc5398d6cb73eb7fe1a1a17`  
		Last Modified: Mon, 05 Oct 2026 19:10:48 GMT  
		Size: 27.7 MB (27733186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f400df13355047e171fa64e4ea91be6592600ce36b3b858e981721c885d0a5`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 10.4 KB (10448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22406a9da635cd1d8b4bf183a1bf3633aff959688644cc29b5d9cdf974532ebb`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8-alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:7d706e905f7e8c990cac30b517a7905b705998fb21894c0291837241db48b552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.9 KB (805902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b3bba1d1580b86f0b4325c458fd312592cbf84afcd96c70dbafaf15111a22a`

```dockerfile
```

-	Layers:
	-	`sha256:e53a9911c9d35e5b1b8bc1033fb47d1fc878bc4aa8bd8a2447b7b0127373a78b`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 782.9 KB (782916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83789a05c1324867875de510949743f3c2db6706da84ae133219d677a3933ecd`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 23.0 KB (22986 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8-trixie`

```console
$ docker pull satosa@sha256:ce65caef9a500163e94beba9b93f8e8fa0522676136de14b620ef9f33ab72915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8-trixie` - linux; amd64

```console
$ docker pull satosa@sha256:a0ca883985fb2775aa79ffebbbc190f705a6ac7c304c903f022074842f2ba305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79424523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb5e52e3449f8a775eb8e0352a5cd90fc4001ff67c7bc86cfb7db3cfb7265eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:58:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:40:45 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:41:37 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:41:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:38 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:41:38 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:41:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be27415a1b86bed55ef3fa57f513ea022257a9735ba9e3298a458950c550df`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 1.3 MB (1291262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7730f4ce1f5cd2d16b14fbaf388ca4866df0aa707f3ae591dda9f5dc03b116`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 12.4 MB (12380655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a60621211feb7a3e8d5bb4a0b2885edb174e8c1a8402ca73e110c7ff021c48`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65b1a9ec68b08a2e58b9f48c136c163c98a86e1eff5fe9fa64a6e74765c8433`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 7.5 MB (7523902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa446a8f106e096a936fe552613767b7647907b5518068f80d39101dd2f207`  
		Last Modified: Wed, 21 Oct 2026 01:41:50 GMT  
		Size: 28.4 MB (28372308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f3bb455ce8e8fdb6e6cccc0cf0275d350f6bbc284f9526fc13447dd8c366c`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f36a6810effa0843744f6ab76652a3b19606a2a03591796bc1ae971a3b14a8d`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8-trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:72e6eb2c18b5fe9c71be081ba357b828c70fefca5accc7d2acc8f108e80cf009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230fdef369c2f35d2477d2c194696bc16076baf944f8ceefa57e2d5d07b2099c`

```dockerfile
```

-	Layers:
	-	`sha256:f82cd7738c6edb42fd1a87f441de0b6bea1089302e7603fb1ff44570c13101a7`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.3 MB (2344758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c959041ab66af30296042bc600fd61ee7dfdb5b9b68542ded0520df2552153`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 22.1 KB (22081 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8-trixie` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:533bde4798dc506244bb42b6ef2fd4905a5433b2cae18ce74774de4a649e4295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79365902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeef3c2dfc00dbdde61c1c0f3962a30e2e974a89c74b35a0b9338f5fc8f766e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:48:36 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:49:30 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:49:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:49:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:31 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:49:31 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:49:31 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf4184f3e0f9ec8621a107efcb29c493425a5336096fa47773db7549153ddf4`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 1.3 MB (1271638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3a8dd73f29f65757f52d48ccdd79bbb27378dcdc3fba89a82e2691fe0d851f`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 12.3 MB (12291833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9b1df100ea22036a46bc4a24b1c7039e3c486ef7fb045bd4564121f1dc28fe`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9e86598f515a0ae7eb16ae296bd1f72f44b4a4d40bd3a1fbb87286560ba645`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 7.3 MB (7333726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06d87d7523bbff3b6e501ae1ddcb2e29181662a74b1bd40e3aa3ee60a5b41fa`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 28.3 MB (28255414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683994c333f7e117a18241040bb69ddc5b906e475bb3cb646158867c272c781f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 10.5 KB (10455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1598b1141d27a3fc4265e841d92d7e5d3ee6bb033ada0e981d4f4548278354f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8-trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:6a95f4c4c6a6e35fa64f07a5159ccb2757ec83caeceb222afc32341755a8d57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae14ff818562eb4e320afff1a8bc6efa8020a7477c95f7ccdbf0e3496bf2210`

```dockerfile
```

-	Layers:
	-	`sha256:2df72c18c8b9e1b96a0971df00696e03ab79425349eea504e5d079e1c3fdc042`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.3 MB (2345073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31dbce86869fec6dee741f8ce70607513f58eddde673f3c20d1c43c13c436f8`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 22.3 KB (22263 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6`

```console
$ docker pull satosa@sha256:ce65caef9a500163e94beba9b93f8e8fa0522676136de14b620ef9f33ab72915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6` - linux; amd64

```console
$ docker pull satosa@sha256:a0ca883985fb2775aa79ffebbbc190f705a6ac7c304c903f022074842f2ba305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79424523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb5e52e3449f8a775eb8e0352a5cd90fc4001ff67c7bc86cfb7db3cfb7265eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:58:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:40:45 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:41:37 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:41:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:38 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:41:38 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:41:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be27415a1b86bed55ef3fa57f513ea022257a9735ba9e3298a458950c550df`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 1.3 MB (1291262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7730f4ce1f5cd2d16b14fbaf388ca4866df0aa707f3ae591dda9f5dc03b116`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 12.4 MB (12380655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a60621211feb7a3e8d5bb4a0b2885edb174e8c1a8402ca73e110c7ff021c48`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65b1a9ec68b08a2e58b9f48c136c163c98a86e1eff5fe9fa64a6e74765c8433`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 7.5 MB (7523902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa446a8f106e096a936fe552613767b7647907b5518068f80d39101dd2f207`  
		Last Modified: Wed, 21 Oct 2026 01:41:50 GMT  
		Size: 28.4 MB (28372308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f3bb455ce8e8fdb6e6cccc0cf0275d350f6bbc284f9526fc13447dd8c366c`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f36a6810effa0843744f6ab76652a3b19606a2a03591796bc1ae971a3b14a8d`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6` - unknown; unknown

```console
$ docker pull satosa@sha256:72e6eb2c18b5fe9c71be081ba357b828c70fefca5accc7d2acc8f108e80cf009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230fdef369c2f35d2477d2c194696bc16076baf944f8ceefa57e2d5d07b2099c`

```dockerfile
```

-	Layers:
	-	`sha256:f82cd7738c6edb42fd1a87f441de0b6bea1089302e7603fb1ff44570c13101a7`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.3 MB (2344758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c959041ab66af30296042bc600fd61ee7dfdb5b9b68542ded0520df2552153`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 22.1 KB (22081 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:533bde4798dc506244bb42b6ef2fd4905a5433b2cae18ce74774de4a649e4295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79365902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeef3c2dfc00dbdde61c1c0f3962a30e2e974a89c74b35a0b9338f5fc8f766e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:48:36 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:49:30 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:49:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:49:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:31 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:49:31 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:49:31 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf4184f3e0f9ec8621a107efcb29c493425a5336096fa47773db7549153ddf4`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 1.3 MB (1271638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3a8dd73f29f65757f52d48ccdd79bbb27378dcdc3fba89a82e2691fe0d851f`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 12.3 MB (12291833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9b1df100ea22036a46bc4a24b1c7039e3c486ef7fb045bd4564121f1dc28fe`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9e86598f515a0ae7eb16ae296bd1f72f44b4a4d40bd3a1fbb87286560ba645`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 7.3 MB (7333726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06d87d7523bbff3b6e501ae1ddcb2e29181662a74b1bd40e3aa3ee60a5b41fa`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 28.3 MB (28255414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683994c333f7e117a18241040bb69ddc5b906e475bb3cb646158867c272c781f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 10.5 KB (10455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1598b1141d27a3fc4265e841d92d7e5d3ee6bb033ada0e981d4f4548278354f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6` - unknown; unknown

```console
$ docker pull satosa@sha256:6a95f4c4c6a6e35fa64f07a5159ccb2757ec83caeceb222afc32341755a8d57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae14ff818562eb4e320afff1a8bc6efa8020a7477c95f7ccdbf0e3496bf2210`

```dockerfile
```

-	Layers:
	-	`sha256:2df72c18c8b9e1b96a0971df00696e03ab79425349eea504e5d079e1c3fdc042`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.3 MB (2345073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31dbce86869fec6dee741f8ce70607513f58eddde673f3c20d1c43c13c436f8`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 22.3 KB (22263 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6-alpine`

```console
$ docker pull satosa@sha256:03b413baf358c1e0ead563ca51f67a36673748d3ce9ee1178cdc3124c24f4ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6-alpine` - linux; amd64

```console
$ docker pull satosa@sha256:4405eb77cd4e54964d9e5277e016c576fd38eb8a57521d2da9c45d18fe431035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55690974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08893e81d71a9a9d763c52cb8e28ed23b0c9e2f8179883680d7b15adcd8039f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:09:36 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:09:57 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:09:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:09:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:09:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:09:58 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:09:58 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f6a258842734fe23e0e4c69db9996cbaefd41c1cde2372b95449f9fc5601eb`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 416.3 KB (416271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a22c5887fa227de1798e9b92a3692c3bb96fa108c1164afe00a928c35a0986c`  
		Last Modified: Thu, 01 Oct 2026 21:36:21 GMT  
		Size: 16.1 MB (16113890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d486488257d0aa8b040529bcab1337e849158dafb6f28c6d79df56cce8042b48`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4865f38a45c3fb6271650786a87383c1e6bdd3ed39c49b4f165a9038ff1a2a9c`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 7.2 MB (7232741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69abec817340723e51d84ed64ad8691a3e5ed5b2199bed9ec4c6229369ce299c`  
		Last Modified: Mon, 05 Oct 2026 19:10:08 GMT  
		Size: 28.1 MB (28065520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607546eb4d227613a16b11bc66eef90643b1392c1009d51cd76a72abf8f9b5a2`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 10.4 KB (10450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc3b5d08425494931f418c0bc5c7c0763e18a13c26b5ea564fff12e012251e6`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6-alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:5331fbfdfcb1ab65da636c99a9c751ffc7e94f40ceb8802aa6da11d53f3bb3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.3 KB (806258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341c17ae45698860824077fa87a8c736ee21c0f7825ed7af6a25e263fa979427`

```dockerfile
```

-	Layers:
	-	`sha256:452f03036ef742396fdffeb4e0074321900ecb13e853768e4f8e3968420d15bc`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 783.5 KB (783455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26d7d4db9f4b129c385f79cd9c3d1c33ecdb34bf9404fb0f4d2d3847b2b920f`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 22.8 KB (22803 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6-alpine` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:b3db21ee9beca38c4b559135ce76b96d4160fe2c224f804102c5c8bed0b9182a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56078228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756fcb4e203b999ed279d474298f1880d72021bfe328eb9cf26428247ec1a6c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:10:15 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:10:37 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:10:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:10:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:10:38 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:10:38 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:10:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541523bae70c3c87e617205994d485e5de248b99777a05d2389c7db109fdc852`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 419.1 KB (419110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9625030534d1a3b72c2d657e8ed9482c1547ed87aa2ab33ca53b81d57246c601`  
		Last Modified: Thu, 01 Oct 2026 21:36:26 GMT  
		Size: 16.5 MB (16498458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6af1da8f48cad1a6394dd794801f8b21caa9c4160ca65d6c56df5d28a901ba`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7211e62aa8d4fb610de764492e51e6ce661b9d7d98328251087d7ddaac67c33`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 7.2 MB (7227006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b91828b89266b8ba342a651bd82b6ca0eb4a705bc5398d6cb73eb7fe1a1a17`  
		Last Modified: Mon, 05 Oct 2026 19:10:48 GMT  
		Size: 27.7 MB (27733186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f400df13355047e171fa64e4ea91be6592600ce36b3b858e981721c885d0a5`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 10.4 KB (10448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22406a9da635cd1d8b4bf183a1bf3633aff959688644cc29b5d9cdf974532ebb`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6-alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:7d706e905f7e8c990cac30b517a7905b705998fb21894c0291837241db48b552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.9 KB (805902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b3bba1d1580b86f0b4325c458fd312592cbf84afcd96c70dbafaf15111a22a`

```dockerfile
```

-	Layers:
	-	`sha256:e53a9911c9d35e5b1b8bc1033fb47d1fc878bc4aa8bd8a2447b7b0127373a78b`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 782.9 KB (782916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83789a05c1324867875de510949743f3c2db6706da84ae133219d677a3933ecd`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 23.0 KB (22986 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6-alpine3.24`

```console
$ docker pull satosa@sha256:03b413baf358c1e0ead563ca51f67a36673748d3ce9ee1178cdc3124c24f4ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6-alpine3.24` - linux; amd64

```console
$ docker pull satosa@sha256:4405eb77cd4e54964d9e5277e016c576fd38eb8a57521d2da9c45d18fe431035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55690974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08893e81d71a9a9d763c52cb8e28ed23b0c9e2f8179883680d7b15adcd8039f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:09:36 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:09:57 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:09:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:09:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:09:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:09:58 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:09:58 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f6a258842734fe23e0e4c69db9996cbaefd41c1cde2372b95449f9fc5601eb`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 416.3 KB (416271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a22c5887fa227de1798e9b92a3692c3bb96fa108c1164afe00a928c35a0986c`  
		Last Modified: Thu, 01 Oct 2026 21:36:21 GMT  
		Size: 16.1 MB (16113890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d486488257d0aa8b040529bcab1337e849158dafb6f28c6d79df56cce8042b48`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4865f38a45c3fb6271650786a87383c1e6bdd3ed39c49b4f165a9038ff1a2a9c`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 7.2 MB (7232741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69abec817340723e51d84ed64ad8691a3e5ed5b2199bed9ec4c6229369ce299c`  
		Last Modified: Mon, 05 Oct 2026 19:10:08 GMT  
		Size: 28.1 MB (28065520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607546eb4d227613a16b11bc66eef90643b1392c1009d51cd76a72abf8f9b5a2`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 10.4 KB (10450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc3b5d08425494931f418c0bc5c7c0763e18a13c26b5ea564fff12e012251e6`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6-alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:5331fbfdfcb1ab65da636c99a9c751ffc7e94f40ceb8802aa6da11d53f3bb3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.3 KB (806258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341c17ae45698860824077fa87a8c736ee21c0f7825ed7af6a25e263fa979427`

```dockerfile
```

-	Layers:
	-	`sha256:452f03036ef742396fdffeb4e0074321900ecb13e853768e4f8e3968420d15bc`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 783.5 KB (783455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26d7d4db9f4b129c385f79cd9c3d1c33ecdb34bf9404fb0f4d2d3847b2b920f`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 22.8 KB (22803 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:b3db21ee9beca38c4b559135ce76b96d4160fe2c224f804102c5c8bed0b9182a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56078228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756fcb4e203b999ed279d474298f1880d72021bfe328eb9cf26428247ec1a6c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:10:15 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:10:37 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:10:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:10:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:10:38 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:10:38 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:10:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541523bae70c3c87e617205994d485e5de248b99777a05d2389c7db109fdc852`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 419.1 KB (419110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9625030534d1a3b72c2d657e8ed9482c1547ed87aa2ab33ca53b81d57246c601`  
		Last Modified: Thu, 01 Oct 2026 21:36:26 GMT  
		Size: 16.5 MB (16498458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6af1da8f48cad1a6394dd794801f8b21caa9c4160ca65d6c56df5d28a901ba`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7211e62aa8d4fb610de764492e51e6ce661b9d7d98328251087d7ddaac67c33`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 7.2 MB (7227006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b91828b89266b8ba342a651bd82b6ca0eb4a705bc5398d6cb73eb7fe1a1a17`  
		Last Modified: Mon, 05 Oct 2026 19:10:48 GMT  
		Size: 27.7 MB (27733186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f400df13355047e171fa64e4ea91be6592600ce36b3b858e981721c885d0a5`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 10.4 KB (10448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22406a9da635cd1d8b4bf183a1bf3633aff959688644cc29b5d9cdf974532ebb`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6-alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:7d706e905f7e8c990cac30b517a7905b705998fb21894c0291837241db48b552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.9 KB (805902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b3bba1d1580b86f0b4325c458fd312592cbf84afcd96c70dbafaf15111a22a`

```dockerfile
```

-	Layers:
	-	`sha256:e53a9911c9d35e5b1b8bc1033fb47d1fc878bc4aa8bd8a2447b7b0127373a78b`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 782.9 KB (782916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83789a05c1324867875de510949743f3c2db6706da84ae133219d677a3933ecd`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 23.0 KB (22986 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6-trixie`

```console
$ docker pull satosa@sha256:ce65caef9a500163e94beba9b93f8e8fa0522676136de14b620ef9f33ab72915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6-trixie` - linux; amd64

```console
$ docker pull satosa@sha256:a0ca883985fb2775aa79ffebbbc190f705a6ac7c304c903f022074842f2ba305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79424523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb5e52e3449f8a775eb8e0352a5cd90fc4001ff67c7bc86cfb7db3cfb7265eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:58:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:40:45 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:41:37 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:41:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:38 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:41:38 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:41:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be27415a1b86bed55ef3fa57f513ea022257a9735ba9e3298a458950c550df`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 1.3 MB (1291262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7730f4ce1f5cd2d16b14fbaf388ca4866df0aa707f3ae591dda9f5dc03b116`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 12.4 MB (12380655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a60621211feb7a3e8d5bb4a0b2885edb174e8c1a8402ca73e110c7ff021c48`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65b1a9ec68b08a2e58b9f48c136c163c98a86e1eff5fe9fa64a6e74765c8433`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 7.5 MB (7523902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa446a8f106e096a936fe552613767b7647907b5518068f80d39101dd2f207`  
		Last Modified: Wed, 21 Oct 2026 01:41:50 GMT  
		Size: 28.4 MB (28372308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f3bb455ce8e8fdb6e6cccc0cf0275d350f6bbc284f9526fc13447dd8c366c`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f36a6810effa0843744f6ab76652a3b19606a2a03591796bc1ae971a3b14a8d`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6-trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:72e6eb2c18b5fe9c71be081ba357b828c70fefca5accc7d2acc8f108e80cf009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230fdef369c2f35d2477d2c194696bc16076baf944f8ceefa57e2d5d07b2099c`

```dockerfile
```

-	Layers:
	-	`sha256:f82cd7738c6edb42fd1a87f441de0b6bea1089302e7603fb1ff44570c13101a7`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.3 MB (2344758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c959041ab66af30296042bc600fd61ee7dfdb5b9b68542ded0520df2552153`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 22.1 KB (22081 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6-trixie` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:533bde4798dc506244bb42b6ef2fd4905a5433b2cae18ce74774de4a649e4295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79365902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeef3c2dfc00dbdde61c1c0f3962a30e2e974a89c74b35a0b9338f5fc8f766e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:48:36 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:49:30 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:49:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:49:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:31 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:49:31 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:49:31 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf4184f3e0f9ec8621a107efcb29c493425a5336096fa47773db7549153ddf4`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 1.3 MB (1271638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3a8dd73f29f65757f52d48ccdd79bbb27378dcdc3fba89a82e2691fe0d851f`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 12.3 MB (12291833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9b1df100ea22036a46bc4a24b1c7039e3c486ef7fb045bd4564121f1dc28fe`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9e86598f515a0ae7eb16ae296bd1f72f44b4a4d40bd3a1fbb87286560ba645`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 7.3 MB (7333726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06d87d7523bbff3b6e501ae1ddcb2e29181662a74b1bd40e3aa3ee60a5b41fa`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 28.3 MB (28255414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683994c333f7e117a18241040bb69ddc5b906e475bb3cb646158867c272c781f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 10.5 KB (10455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1598b1141d27a3fc4265e841d92d7e5d3ee6bb033ada0e981d4f4548278354f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6-trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:6a95f4c4c6a6e35fa64f07a5159ccb2757ec83caeceb222afc32341755a8d57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae14ff818562eb4e320afff1a8bc6efa8020a7477c95f7ccdbf0e3496bf2210`

```dockerfile
```

-	Layers:
	-	`sha256:2df72c18c8b9e1b96a0971df00696e03ab79425349eea504e5d079e1c3fdc042`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.3 MB (2345073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31dbce86869fec6dee741f8ce70607513f58eddde673f3c20d1c43c13c436f8`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 22.3 KB (22263 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6.0`

```console
$ docker pull satosa@sha256:ce65caef9a500163e94beba9b93f8e8fa0522676136de14b620ef9f33ab72915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6.0` - linux; amd64

```console
$ docker pull satosa@sha256:a0ca883985fb2775aa79ffebbbc190f705a6ac7c304c903f022074842f2ba305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79424523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb5e52e3449f8a775eb8e0352a5cd90fc4001ff67c7bc86cfb7db3cfb7265eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:58:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:40:45 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:41:37 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:41:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:38 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:41:38 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:41:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be27415a1b86bed55ef3fa57f513ea022257a9735ba9e3298a458950c550df`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 1.3 MB (1291262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7730f4ce1f5cd2d16b14fbaf388ca4866df0aa707f3ae591dda9f5dc03b116`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 12.4 MB (12380655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a60621211feb7a3e8d5bb4a0b2885edb174e8c1a8402ca73e110c7ff021c48`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65b1a9ec68b08a2e58b9f48c136c163c98a86e1eff5fe9fa64a6e74765c8433`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 7.5 MB (7523902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa446a8f106e096a936fe552613767b7647907b5518068f80d39101dd2f207`  
		Last Modified: Wed, 21 Oct 2026 01:41:50 GMT  
		Size: 28.4 MB (28372308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f3bb455ce8e8fdb6e6cccc0cf0275d350f6bbc284f9526fc13447dd8c366c`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f36a6810effa0843744f6ab76652a3b19606a2a03591796bc1ae971a3b14a8d`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0` - unknown; unknown

```console
$ docker pull satosa@sha256:72e6eb2c18b5fe9c71be081ba357b828c70fefca5accc7d2acc8f108e80cf009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230fdef369c2f35d2477d2c194696bc16076baf944f8ceefa57e2d5d07b2099c`

```dockerfile
```

-	Layers:
	-	`sha256:f82cd7738c6edb42fd1a87f441de0b6bea1089302e7603fb1ff44570c13101a7`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.3 MB (2344758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c959041ab66af30296042bc600fd61ee7dfdb5b9b68542ded0520df2552153`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 22.1 KB (22081 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6.0` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:533bde4798dc506244bb42b6ef2fd4905a5433b2cae18ce74774de4a649e4295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79365902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeef3c2dfc00dbdde61c1c0f3962a30e2e974a89c74b35a0b9338f5fc8f766e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:48:36 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:49:30 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:49:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:49:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:31 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:49:31 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:49:31 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf4184f3e0f9ec8621a107efcb29c493425a5336096fa47773db7549153ddf4`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 1.3 MB (1271638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3a8dd73f29f65757f52d48ccdd79bbb27378dcdc3fba89a82e2691fe0d851f`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 12.3 MB (12291833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9b1df100ea22036a46bc4a24b1c7039e3c486ef7fb045bd4564121f1dc28fe`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9e86598f515a0ae7eb16ae296bd1f72f44b4a4d40bd3a1fbb87286560ba645`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 7.3 MB (7333726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06d87d7523bbff3b6e501ae1ddcb2e29181662a74b1bd40e3aa3ee60a5b41fa`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 28.3 MB (28255414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683994c333f7e117a18241040bb69ddc5b906e475bb3cb646158867c272c781f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 10.5 KB (10455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1598b1141d27a3fc4265e841d92d7e5d3ee6bb033ada0e981d4f4548278354f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0` - unknown; unknown

```console
$ docker pull satosa@sha256:6a95f4c4c6a6e35fa64f07a5159ccb2757ec83caeceb222afc32341755a8d57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae14ff818562eb4e320afff1a8bc6efa8020a7477c95f7ccdbf0e3496bf2210`

```dockerfile
```

-	Layers:
	-	`sha256:2df72c18c8b9e1b96a0971df00696e03ab79425349eea504e5d079e1c3fdc042`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.3 MB (2345073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31dbce86869fec6dee741f8ce70607513f58eddde673f3c20d1c43c13c436f8`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 22.3 KB (22263 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6.0-alpine`

```console
$ docker pull satosa@sha256:03b413baf358c1e0ead563ca51f67a36673748d3ce9ee1178cdc3124c24f4ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6.0-alpine` - linux; amd64

```console
$ docker pull satosa@sha256:4405eb77cd4e54964d9e5277e016c576fd38eb8a57521d2da9c45d18fe431035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55690974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08893e81d71a9a9d763c52cb8e28ed23b0c9e2f8179883680d7b15adcd8039f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:09:36 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:09:57 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:09:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:09:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:09:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:09:58 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:09:58 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f6a258842734fe23e0e4c69db9996cbaefd41c1cde2372b95449f9fc5601eb`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 416.3 KB (416271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a22c5887fa227de1798e9b92a3692c3bb96fa108c1164afe00a928c35a0986c`  
		Last Modified: Thu, 01 Oct 2026 21:36:21 GMT  
		Size: 16.1 MB (16113890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d486488257d0aa8b040529bcab1337e849158dafb6f28c6d79df56cce8042b48`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4865f38a45c3fb6271650786a87383c1e6bdd3ed39c49b4f165a9038ff1a2a9c`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 7.2 MB (7232741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69abec817340723e51d84ed64ad8691a3e5ed5b2199bed9ec4c6229369ce299c`  
		Last Modified: Mon, 05 Oct 2026 19:10:08 GMT  
		Size: 28.1 MB (28065520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607546eb4d227613a16b11bc66eef90643b1392c1009d51cd76a72abf8f9b5a2`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 10.4 KB (10450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc3b5d08425494931f418c0bc5c7c0763e18a13c26b5ea564fff12e012251e6`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0-alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:5331fbfdfcb1ab65da636c99a9c751ffc7e94f40ceb8802aa6da11d53f3bb3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.3 KB (806258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341c17ae45698860824077fa87a8c736ee21c0f7825ed7af6a25e263fa979427`

```dockerfile
```

-	Layers:
	-	`sha256:452f03036ef742396fdffeb4e0074321900ecb13e853768e4f8e3968420d15bc`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 783.5 KB (783455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26d7d4db9f4b129c385f79cd9c3d1c33ecdb34bf9404fb0f4d2d3847b2b920f`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 22.8 KB (22803 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6.0-alpine` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:b3db21ee9beca38c4b559135ce76b96d4160fe2c224f804102c5c8bed0b9182a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56078228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756fcb4e203b999ed279d474298f1880d72021bfe328eb9cf26428247ec1a6c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:10:15 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:10:37 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:10:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:10:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:10:38 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:10:38 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:10:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541523bae70c3c87e617205994d485e5de248b99777a05d2389c7db109fdc852`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 419.1 KB (419110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9625030534d1a3b72c2d657e8ed9482c1547ed87aa2ab33ca53b81d57246c601`  
		Last Modified: Thu, 01 Oct 2026 21:36:26 GMT  
		Size: 16.5 MB (16498458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6af1da8f48cad1a6394dd794801f8b21caa9c4160ca65d6c56df5d28a901ba`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7211e62aa8d4fb610de764492e51e6ce661b9d7d98328251087d7ddaac67c33`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 7.2 MB (7227006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b91828b89266b8ba342a651bd82b6ca0eb4a705bc5398d6cb73eb7fe1a1a17`  
		Last Modified: Mon, 05 Oct 2026 19:10:48 GMT  
		Size: 27.7 MB (27733186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f400df13355047e171fa64e4ea91be6592600ce36b3b858e981721c885d0a5`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 10.4 KB (10448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22406a9da635cd1d8b4bf183a1bf3633aff959688644cc29b5d9cdf974532ebb`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0-alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:7d706e905f7e8c990cac30b517a7905b705998fb21894c0291837241db48b552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.9 KB (805902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b3bba1d1580b86f0b4325c458fd312592cbf84afcd96c70dbafaf15111a22a`

```dockerfile
```

-	Layers:
	-	`sha256:e53a9911c9d35e5b1b8bc1033fb47d1fc878bc4aa8bd8a2447b7b0127373a78b`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 782.9 KB (782916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83789a05c1324867875de510949743f3c2db6706da84ae133219d677a3933ecd`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 23.0 KB (22986 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6.0-alpine3.24`

```console
$ docker pull satosa@sha256:03b413baf358c1e0ead563ca51f67a36673748d3ce9ee1178cdc3124c24f4ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6.0-alpine3.24` - linux; amd64

```console
$ docker pull satosa@sha256:4405eb77cd4e54964d9e5277e016c576fd38eb8a57521d2da9c45d18fe431035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55690974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08893e81d71a9a9d763c52cb8e28ed23b0c9e2f8179883680d7b15adcd8039f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:09:36 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:09:57 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:09:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:09:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:09:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:09:58 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:09:58 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f6a258842734fe23e0e4c69db9996cbaefd41c1cde2372b95449f9fc5601eb`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 416.3 KB (416271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a22c5887fa227de1798e9b92a3692c3bb96fa108c1164afe00a928c35a0986c`  
		Last Modified: Thu, 01 Oct 2026 21:36:21 GMT  
		Size: 16.1 MB (16113890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d486488257d0aa8b040529bcab1337e849158dafb6f28c6d79df56cce8042b48`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4865f38a45c3fb6271650786a87383c1e6bdd3ed39c49b4f165a9038ff1a2a9c`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 7.2 MB (7232741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69abec817340723e51d84ed64ad8691a3e5ed5b2199bed9ec4c6229369ce299c`  
		Last Modified: Mon, 05 Oct 2026 19:10:08 GMT  
		Size: 28.1 MB (28065520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607546eb4d227613a16b11bc66eef90643b1392c1009d51cd76a72abf8f9b5a2`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 10.4 KB (10450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc3b5d08425494931f418c0bc5c7c0763e18a13c26b5ea564fff12e012251e6`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0-alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:5331fbfdfcb1ab65da636c99a9c751ffc7e94f40ceb8802aa6da11d53f3bb3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.3 KB (806258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341c17ae45698860824077fa87a8c736ee21c0f7825ed7af6a25e263fa979427`

```dockerfile
```

-	Layers:
	-	`sha256:452f03036ef742396fdffeb4e0074321900ecb13e853768e4f8e3968420d15bc`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 783.5 KB (783455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26d7d4db9f4b129c385f79cd9c3d1c33ecdb34bf9404fb0f4d2d3847b2b920f`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 22.8 KB (22803 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6.0-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:b3db21ee9beca38c4b559135ce76b96d4160fe2c224f804102c5c8bed0b9182a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56078228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756fcb4e203b999ed279d474298f1880d72021bfe328eb9cf26428247ec1a6c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:10:15 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:10:37 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:10:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:10:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:10:38 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:10:38 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:10:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541523bae70c3c87e617205994d485e5de248b99777a05d2389c7db109fdc852`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 419.1 KB (419110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9625030534d1a3b72c2d657e8ed9482c1547ed87aa2ab33ca53b81d57246c601`  
		Last Modified: Thu, 01 Oct 2026 21:36:26 GMT  
		Size: 16.5 MB (16498458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6af1da8f48cad1a6394dd794801f8b21caa9c4160ca65d6c56df5d28a901ba`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7211e62aa8d4fb610de764492e51e6ce661b9d7d98328251087d7ddaac67c33`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 7.2 MB (7227006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b91828b89266b8ba342a651bd82b6ca0eb4a705bc5398d6cb73eb7fe1a1a17`  
		Last Modified: Mon, 05 Oct 2026 19:10:48 GMT  
		Size: 27.7 MB (27733186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f400df13355047e171fa64e4ea91be6592600ce36b3b858e981721c885d0a5`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 10.4 KB (10448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22406a9da635cd1d8b4bf183a1bf3633aff959688644cc29b5d9cdf974532ebb`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0-alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:7d706e905f7e8c990cac30b517a7905b705998fb21894c0291837241db48b552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.9 KB (805902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b3bba1d1580b86f0b4325c458fd312592cbf84afcd96c70dbafaf15111a22a`

```dockerfile
```

-	Layers:
	-	`sha256:e53a9911c9d35e5b1b8bc1033fb47d1fc878bc4aa8bd8a2447b7b0127373a78b`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 782.9 KB (782916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83789a05c1324867875de510949743f3c2db6706da84ae133219d677a3933ecd`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 23.0 KB (22986 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6.0-trixie`

```console
$ docker pull satosa@sha256:ce65caef9a500163e94beba9b93f8e8fa0522676136de14b620ef9f33ab72915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6.0-trixie` - linux; amd64

```console
$ docker pull satosa@sha256:a0ca883985fb2775aa79ffebbbc190f705a6ac7c304c903f022074842f2ba305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79424523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb5e52e3449f8a775eb8e0352a5cd90fc4001ff67c7bc86cfb7db3cfb7265eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:58:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:40:45 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:41:37 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:41:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:38 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:41:38 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:41:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be27415a1b86bed55ef3fa57f513ea022257a9735ba9e3298a458950c550df`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 1.3 MB (1291262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7730f4ce1f5cd2d16b14fbaf388ca4866df0aa707f3ae591dda9f5dc03b116`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 12.4 MB (12380655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a60621211feb7a3e8d5bb4a0b2885edb174e8c1a8402ca73e110c7ff021c48`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65b1a9ec68b08a2e58b9f48c136c163c98a86e1eff5fe9fa64a6e74765c8433`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 7.5 MB (7523902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa446a8f106e096a936fe552613767b7647907b5518068f80d39101dd2f207`  
		Last Modified: Wed, 21 Oct 2026 01:41:50 GMT  
		Size: 28.4 MB (28372308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f3bb455ce8e8fdb6e6cccc0cf0275d350f6bbc284f9526fc13447dd8c366c`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f36a6810effa0843744f6ab76652a3b19606a2a03591796bc1ae971a3b14a8d`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0-trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:72e6eb2c18b5fe9c71be081ba357b828c70fefca5accc7d2acc8f108e80cf009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230fdef369c2f35d2477d2c194696bc16076baf944f8ceefa57e2d5d07b2099c`

```dockerfile
```

-	Layers:
	-	`sha256:f82cd7738c6edb42fd1a87f441de0b6bea1089302e7603fb1ff44570c13101a7`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.3 MB (2344758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c959041ab66af30296042bc600fd61ee7dfdb5b9b68542ded0520df2552153`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 22.1 KB (22081 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6.0-trixie` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:533bde4798dc506244bb42b6ef2fd4905a5433b2cae18ce74774de4a649e4295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79365902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeef3c2dfc00dbdde61c1c0f3962a30e2e974a89c74b35a0b9338f5fc8f766e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:48:36 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:49:30 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:49:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:49:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:31 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:49:31 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:49:31 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf4184f3e0f9ec8621a107efcb29c493425a5336096fa47773db7549153ddf4`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 1.3 MB (1271638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3a8dd73f29f65757f52d48ccdd79bbb27378dcdc3fba89a82e2691fe0d851f`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 12.3 MB (12291833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9b1df100ea22036a46bc4a24b1c7039e3c486ef7fb045bd4564121f1dc28fe`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9e86598f515a0ae7eb16ae296bd1f72f44b4a4d40bd3a1fbb87286560ba645`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 7.3 MB (7333726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06d87d7523bbff3b6e501ae1ddcb2e29181662a74b1bd40e3aa3ee60a5b41fa`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 28.3 MB (28255414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683994c333f7e117a18241040bb69ddc5b906e475bb3cb646158867c272c781f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 10.5 KB (10455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1598b1141d27a3fc4265e841d92d7e5d3ee6bb033ada0e981d4f4548278354f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0-trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:6a95f4c4c6a6e35fa64f07a5159ccb2757ec83caeceb222afc32341755a8d57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae14ff818562eb4e320afff1a8bc6efa8020a7477c95f7ccdbf0e3496bf2210`

```dockerfile
```

-	Layers:
	-	`sha256:2df72c18c8b9e1b96a0971df00696e03ab79425349eea504e5d079e1c3fdc042`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.3 MB (2345073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31dbce86869fec6dee741f8ce70607513f58eddde673f3c20d1c43c13c436f8`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 22.3 KB (22263 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:alpine`

```console
$ docker pull satosa@sha256:03b413baf358c1e0ead563ca51f67a36673748d3ce9ee1178cdc3124c24f4ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:alpine` - linux; amd64

```console
$ docker pull satosa@sha256:4405eb77cd4e54964d9e5277e016c576fd38eb8a57521d2da9c45d18fe431035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55690974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08893e81d71a9a9d763c52cb8e28ed23b0c9e2f8179883680d7b15adcd8039f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:09:36 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:09:57 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:09:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:09:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:09:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:09:58 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:09:58 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f6a258842734fe23e0e4c69db9996cbaefd41c1cde2372b95449f9fc5601eb`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 416.3 KB (416271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a22c5887fa227de1798e9b92a3692c3bb96fa108c1164afe00a928c35a0986c`  
		Last Modified: Thu, 01 Oct 2026 21:36:21 GMT  
		Size: 16.1 MB (16113890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d486488257d0aa8b040529bcab1337e849158dafb6f28c6d79df56cce8042b48`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4865f38a45c3fb6271650786a87383c1e6bdd3ed39c49b4f165a9038ff1a2a9c`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 7.2 MB (7232741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69abec817340723e51d84ed64ad8691a3e5ed5b2199bed9ec4c6229369ce299c`  
		Last Modified: Mon, 05 Oct 2026 19:10:08 GMT  
		Size: 28.1 MB (28065520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607546eb4d227613a16b11bc66eef90643b1392c1009d51cd76a72abf8f9b5a2`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 10.4 KB (10450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc3b5d08425494931f418c0bc5c7c0763e18a13c26b5ea564fff12e012251e6`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:5331fbfdfcb1ab65da636c99a9c751ffc7e94f40ceb8802aa6da11d53f3bb3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.3 KB (806258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341c17ae45698860824077fa87a8c736ee21c0f7825ed7af6a25e263fa979427`

```dockerfile
```

-	Layers:
	-	`sha256:452f03036ef742396fdffeb4e0074321900ecb13e853768e4f8e3968420d15bc`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 783.5 KB (783455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26d7d4db9f4b129c385f79cd9c3d1c33ecdb34bf9404fb0f4d2d3847b2b920f`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 22.8 KB (22803 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:alpine` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:b3db21ee9beca38c4b559135ce76b96d4160fe2c224f804102c5c8bed0b9182a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56078228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756fcb4e203b999ed279d474298f1880d72021bfe328eb9cf26428247ec1a6c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:10:15 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:10:37 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:10:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:10:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:10:38 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:10:38 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:10:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541523bae70c3c87e617205994d485e5de248b99777a05d2389c7db109fdc852`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 419.1 KB (419110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9625030534d1a3b72c2d657e8ed9482c1547ed87aa2ab33ca53b81d57246c601`  
		Last Modified: Thu, 01 Oct 2026 21:36:26 GMT  
		Size: 16.5 MB (16498458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6af1da8f48cad1a6394dd794801f8b21caa9c4160ca65d6c56df5d28a901ba`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7211e62aa8d4fb610de764492e51e6ce661b9d7d98328251087d7ddaac67c33`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 7.2 MB (7227006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b91828b89266b8ba342a651bd82b6ca0eb4a705bc5398d6cb73eb7fe1a1a17`  
		Last Modified: Mon, 05 Oct 2026 19:10:48 GMT  
		Size: 27.7 MB (27733186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f400df13355047e171fa64e4ea91be6592600ce36b3b858e981721c885d0a5`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 10.4 KB (10448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22406a9da635cd1d8b4bf183a1bf3633aff959688644cc29b5d9cdf974532ebb`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:7d706e905f7e8c990cac30b517a7905b705998fb21894c0291837241db48b552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.9 KB (805902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b3bba1d1580b86f0b4325c458fd312592cbf84afcd96c70dbafaf15111a22a`

```dockerfile
```

-	Layers:
	-	`sha256:e53a9911c9d35e5b1b8bc1033fb47d1fc878bc4aa8bd8a2447b7b0127373a78b`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 782.9 KB (782916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83789a05c1324867875de510949743f3c2db6706da84ae133219d677a3933ecd`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 23.0 KB (22986 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:alpine3.24`

```console
$ docker pull satosa@sha256:03b413baf358c1e0ead563ca51f67a36673748d3ce9ee1178cdc3124c24f4ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:alpine3.24` - linux; amd64

```console
$ docker pull satosa@sha256:4405eb77cd4e54964d9e5277e016c576fd38eb8a57521d2da9c45d18fe431035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55690974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08893e81d71a9a9d763c52cb8e28ed23b0c9e2f8179883680d7b15adcd8039f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:47 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:13 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:09:36 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:09:57 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:09:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:09:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:09:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:09:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:09:58 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:09:58 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f6a258842734fe23e0e4c69db9996cbaefd41c1cde2372b95449f9fc5601eb`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 416.3 KB (416271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a22c5887fa227de1798e9b92a3692c3bb96fa108c1164afe00a928c35a0986c`  
		Last Modified: Thu, 01 Oct 2026 21:36:21 GMT  
		Size: 16.1 MB (16113890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d486488257d0aa8b040529bcab1337e849158dafb6f28c6d79df56cce8042b48`  
		Last Modified: Thu, 01 Oct 2026 21:36:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4865f38a45c3fb6271650786a87383c1e6bdd3ed39c49b4f165a9038ff1a2a9c`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 7.2 MB (7232741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69abec817340723e51d84ed64ad8691a3e5ed5b2199bed9ec4c6229369ce299c`  
		Last Modified: Mon, 05 Oct 2026 19:10:08 GMT  
		Size: 28.1 MB (28065520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607546eb4d227613a16b11bc66eef90643b1392c1009d51cd76a72abf8f9b5a2`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 10.4 KB (10450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc3b5d08425494931f418c0bc5c7c0763e18a13c26b5ea564fff12e012251e6`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:5331fbfdfcb1ab65da636c99a9c751ffc7e94f40ceb8802aa6da11d53f3bb3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.3 KB (806258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341c17ae45698860824077fa87a8c736ee21c0f7825ed7af6a25e263fa979427`

```dockerfile
```

-	Layers:
	-	`sha256:452f03036ef742396fdffeb4e0074321900ecb13e853768e4f8e3968420d15bc`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 783.5 KB (783455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26d7d4db9f4b129c385f79cd9c3d1c33ecdb34bf9404fb0f4d2d3847b2b920f`  
		Last Modified: Mon, 05 Oct 2026 19:10:07 GMT  
		Size: 22.8 KB (22803 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:b3db21ee9beca38c4b559135ce76b96d4160fe2c224f804102c5c8bed0b9182a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56078228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756fcb4e203b999ed279d474298f1880d72021bfe328eb9cf26428247ec1a6c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 19:10:15 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 05 Oct 2026 19:10:37 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 05 Oct 2026 19:10:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
WORKDIR /etc/satosa
# Mon, 05 Oct 2026 19:10:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 05 Oct 2026 19:10:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:10:38 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:10:38 GMT
USER satosa:satosa
# Mon, 05 Oct 2026 19:10:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541523bae70c3c87e617205994d485e5de248b99777a05d2389c7db109fdc852`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 419.1 KB (419110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9625030534d1a3b72c2d657e8ed9482c1547ed87aa2ab33ca53b81d57246c601`  
		Last Modified: Thu, 01 Oct 2026 21:36:26 GMT  
		Size: 16.5 MB (16498458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6af1da8f48cad1a6394dd794801f8b21caa9c4160ca65d6c56df5d28a901ba`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7211e62aa8d4fb610de764492e51e6ce661b9d7d98328251087d7ddaac67c33`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 7.2 MB (7227006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b91828b89266b8ba342a651bd82b6ca0eb4a705bc5398d6cb73eb7fe1a1a17`  
		Last Modified: Mon, 05 Oct 2026 19:10:48 GMT  
		Size: 27.7 MB (27733186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f400df13355047e171fa64e4ea91be6592600ce36b3b858e981721c885d0a5`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 10.4 KB (10448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22406a9da635cd1d8b4bf183a1bf3633aff959688644cc29b5d9cdf974532ebb`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:7d706e905f7e8c990cac30b517a7905b705998fb21894c0291837241db48b552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **805.9 KB (805902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b3bba1d1580b86f0b4325c458fd312592cbf84afcd96c70dbafaf15111a22a`

```dockerfile
```

-	Layers:
	-	`sha256:e53a9911c9d35e5b1b8bc1033fb47d1fc878bc4aa8bd8a2447b7b0127373a78b`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 782.9 KB (782916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83789a05c1324867875de510949743f3c2db6706da84ae133219d677a3933ecd`  
		Last Modified: Mon, 05 Oct 2026 19:10:47 GMT  
		Size: 23.0 KB (22986 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:latest`

```console
$ docker pull satosa@sha256:ce65caef9a500163e94beba9b93f8e8fa0522676136de14b620ef9f33ab72915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:latest` - linux; amd64

```console
$ docker pull satosa@sha256:a0ca883985fb2775aa79ffebbbc190f705a6ac7c304c903f022074842f2ba305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79424523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb5e52e3449f8a775eb8e0352a5cd90fc4001ff67c7bc86cfb7db3cfb7265eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:58:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:40:45 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:41:37 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:41:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:38 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:41:38 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:41:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be27415a1b86bed55ef3fa57f513ea022257a9735ba9e3298a458950c550df`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 1.3 MB (1291262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7730f4ce1f5cd2d16b14fbaf388ca4866df0aa707f3ae591dda9f5dc03b116`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 12.4 MB (12380655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a60621211feb7a3e8d5bb4a0b2885edb174e8c1a8402ca73e110c7ff021c48`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65b1a9ec68b08a2e58b9f48c136c163c98a86e1eff5fe9fa64a6e74765c8433`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 7.5 MB (7523902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa446a8f106e096a936fe552613767b7647907b5518068f80d39101dd2f207`  
		Last Modified: Wed, 21 Oct 2026 01:41:50 GMT  
		Size: 28.4 MB (28372308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f3bb455ce8e8fdb6e6cccc0cf0275d350f6bbc284f9526fc13447dd8c366c`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f36a6810effa0843744f6ab76652a3b19606a2a03591796bc1ae971a3b14a8d`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:latest` - unknown; unknown

```console
$ docker pull satosa@sha256:72e6eb2c18b5fe9c71be081ba357b828c70fefca5accc7d2acc8f108e80cf009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230fdef369c2f35d2477d2c194696bc16076baf944f8ceefa57e2d5d07b2099c`

```dockerfile
```

-	Layers:
	-	`sha256:f82cd7738c6edb42fd1a87f441de0b6bea1089302e7603fb1ff44570c13101a7`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.3 MB (2344758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c959041ab66af30296042bc600fd61ee7dfdb5b9b68542ded0520df2552153`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 22.1 KB (22081 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:latest` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:533bde4798dc506244bb42b6ef2fd4905a5433b2cae18ce74774de4a649e4295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79365902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeef3c2dfc00dbdde61c1c0f3962a30e2e974a89c74b35a0b9338f5fc8f766e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:48:36 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:49:30 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:49:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:49:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:31 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:49:31 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:49:31 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf4184f3e0f9ec8621a107efcb29c493425a5336096fa47773db7549153ddf4`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 1.3 MB (1271638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3a8dd73f29f65757f52d48ccdd79bbb27378dcdc3fba89a82e2691fe0d851f`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 12.3 MB (12291833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9b1df100ea22036a46bc4a24b1c7039e3c486ef7fb045bd4564121f1dc28fe`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9e86598f515a0ae7eb16ae296bd1f72f44b4a4d40bd3a1fbb87286560ba645`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 7.3 MB (7333726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06d87d7523bbff3b6e501ae1ddcb2e29181662a74b1bd40e3aa3ee60a5b41fa`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 28.3 MB (28255414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683994c333f7e117a18241040bb69ddc5b906e475bb3cb646158867c272c781f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 10.5 KB (10455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1598b1141d27a3fc4265e841d92d7e5d3ee6bb033ada0e981d4f4548278354f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:latest` - unknown; unknown

```console
$ docker pull satosa@sha256:6a95f4c4c6a6e35fa64f07a5159ccb2757ec83caeceb222afc32341755a8d57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae14ff818562eb4e320afff1a8bc6efa8020a7477c95f7ccdbf0e3496bf2210`

```dockerfile
```

-	Layers:
	-	`sha256:2df72c18c8b9e1b96a0971df00696e03ab79425349eea504e5d079e1c3fdc042`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.3 MB (2345073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31dbce86869fec6dee741f8ce70607513f58eddde673f3c20d1c43c13c436f8`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 22.3 KB (22263 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:trixie`

```console
$ docker pull satosa@sha256:ce65caef9a500163e94beba9b93f8e8fa0522676136de14b620ef9f33ab72915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:trixie` - linux; amd64

```console
$ docker pull satosa@sha256:a0ca883985fb2775aa79ffebbbc190f705a6ac7c304c903f022074842f2ba305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79424523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb5e52e3449f8a775eb8e0352a5cd90fc4001ff67c7bc86cfb7db3cfb7265eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:58:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 00:58:13 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:06:15 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:40:45 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:41:37 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:41:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:38 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:41:38 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:41:38 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77be27415a1b86bed55ef3fa57f513ea022257a9735ba9e3298a458950c550df`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 1.3 MB (1291262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7730f4ce1f5cd2d16b14fbaf388ca4866df0aa707f3ae591dda9f5dc03b116`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 12.4 MB (12380655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a60621211feb7a3e8d5bb4a0b2885edb174e8c1a8402ca73e110c7ff021c48`  
		Last Modified: Wed, 21 Oct 2026 01:06:23 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65b1a9ec68b08a2e58b9f48c136c163c98a86e1eff5fe9fa64a6e74765c8433`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 7.5 MB (7523902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fa446a8f106e096a936fe552613767b7647907b5518068f80d39101dd2f207`  
		Last Modified: Wed, 21 Oct 2026 01:41:50 GMT  
		Size: 28.4 MB (28372308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600f3bb455ce8e8fdb6e6cccc0cf0275d350f6bbc284f9526fc13447dd8c366c`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f36a6810effa0843744f6ab76652a3b19606a2a03591796bc1ae971a3b14a8d`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:72e6eb2c18b5fe9c71be081ba357b828c70fefca5accc7d2acc8f108e80cf009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230fdef369c2f35d2477d2c194696bc16076baf944f8ceefa57e2d5d07b2099c`

```dockerfile
```

-	Layers:
	-	`sha256:f82cd7738c6edb42fd1a87f441de0b6bea1089302e7603fb1ff44570c13101a7`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 2.3 MB (2344758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c959041ab66af30296042bc600fd61ee7dfdb5b9b68542ded0520df2552153`  
		Last Modified: Wed, 21 Oct 2026 01:41:49 GMT  
		Size: 22.1 KB (22081 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:trixie` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:533bde4798dc506244bb42b6ef2fd4905a5433b2cae18ce74774de4a649e4295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79365902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeef3c2dfc00dbdde61c1c0f3962a30e2e974a89c74b35a0b9338f5fc8f766e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_VERSION=3.14.8
# Wed, 21 Oct 2026 01:01:33 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 01:09:28 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 01:48:36 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Wed, 21 Oct 2026 01:49:30 GMT
ENV SATOSA_VERSION=8.6.0
# Wed, 21 Oct 2026 01:49:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
WORKDIR /etc/satosa
# Wed, 21 Oct 2026 01:49:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 01:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:31 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 01:49:31 GMT
USER satosa:satosa
# Wed, 21 Oct 2026 01:49:31 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf4184f3e0f9ec8621a107efcb29c493425a5336096fa47773db7549153ddf4`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 1.3 MB (1271638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3a8dd73f29f65757f52d48ccdd79bbb27378dcdc3fba89a82e2691fe0d851f`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 12.3 MB (12291833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9b1df100ea22036a46bc4a24b1c7039e3c486ef7fb045bd4564121f1dc28fe`  
		Last Modified: Wed, 21 Oct 2026 01:09:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9e86598f515a0ae7eb16ae296bd1f72f44b4a4d40bd3a1fbb87286560ba645`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 7.3 MB (7333726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06d87d7523bbff3b6e501ae1ddcb2e29181662a74b1bd40e3aa3ee60a5b41fa`  
		Last Modified: Wed, 21 Oct 2026 01:49:43 GMT  
		Size: 28.3 MB (28255414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683994c333f7e117a18241040bb69ddc5b906e475bb3cb646158867c272c781f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 10.5 KB (10455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1598b1141d27a3fc4265e841d92d7e5d3ee6bb033ada0e981d4f4548278354f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:6a95f4c4c6a6e35fa64f07a5159ccb2757ec83caeceb222afc32341755a8d57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae14ff818562eb4e320afff1a8bc6efa8020a7477c95f7ccdbf0e3496bf2210`

```dockerfile
```

-	Layers:
	-	`sha256:2df72c18c8b9e1b96a0971df00696e03ab79425349eea504e5d079e1c3fdc042`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 2.3 MB (2345073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31dbce86869fec6dee741f8ce70607513f58eddde673f3c20d1c43c13c436f8`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 22.3 KB (22263 bytes)  
		MIME: application/vnd.in-toto+json
