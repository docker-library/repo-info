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
