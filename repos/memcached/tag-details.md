<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:1-alpine3.24`](#memcached1-alpine324)
-	[`memcached:1-trixie`](#memcached1-trixie)
-	[`memcached:1.6`](#memcached16)
-	[`memcached:1.6-alpine`](#memcached16-alpine)
-	[`memcached:1.6-alpine3.24`](#memcached16-alpine324)
-	[`memcached:1.6-trixie`](#memcached16-trixie)
-	[`memcached:1.6.45`](#memcached1645)
-	[`memcached:1.6.45-alpine`](#memcached1645-alpine)
-	[`memcached:1.6.45-alpine3.24`](#memcached1645-alpine324)
-	[`memcached:1.6.45-trixie`](#memcached1645-trixie)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:alpine3.24`](#memcachedalpine324)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:trixie`](#memcachedtrixie)

## `memcached:1`

```console
$ docker pull memcached@sha256:deae07c1fce831887ffb24f5cc68cde691916c31782746bd994635b0ec3b90bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:4e4cc3df3e764aad4394ec7bedefe4b5dc758083f6ddbd2d40738ddb52f4fd5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801b5bd52c0373eb52f35af4717c91f69c64e8ba8432b2b9969673a3343951e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:51:31 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 17:51:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:20 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:20 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21031edcf54239f2eb53ee71b098daa7f542ca3924852e4bc60c211a27d2fe71`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbe1b9e141c299f97115783f06387912d621d234169327bb9375418949b0da2`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 136.7 KB (136705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f1221bb96a4bf1b5425418a7dc511cc509143b99be675de232b0172a9bfeb5`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 2.3 MB (2281337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe049733ac2e19f4708bfea14d9549981875112ed7c5c8967bfb0919cafcf7c`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922b6b4d7b1405c635ad711612cffd7f000f3d6fa988936a3bffeb52c430f934`  
		Last Modified: Tue, 07 Jul 2026 17:54:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:fe176f7071209af166d8670e8cdf0ea42a946f751ea6c83f2034e46a4c699020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31e0b24d9e891dc70bcefbd8f9e2cd5a681fdcd7386506ce4bf24a3ece46144`

```dockerfile
```

-	Layers:
	-	`sha256:67793084eb7ffe92a8a8189a9e113c187062ec7609a2b23f5d70d226317d5cf7`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a29dc9d7806a217a6d632026c133d740748378553c9a066f27f05cf733ee6513`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:dfcb5968c4b1ff3c90621846441144ff19987817595de9402a87f33de71b00aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30318032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce3f7f7098bba9fe18fb1da50fd6388ed09587ab56ba4650c228e7ff5b04cb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:25:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:25:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:28:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:28:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:28:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:28:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:28:37 GMT
USER memcache
# Tue, 07 Jul 2026 18:28:37 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:28:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67126efbfb02dc31f2fcfe60cb28774368f9ea86f4c91c216156868ccb81a7e`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c9a95a8baa5d7fe67d8681b27f9a94a4dd43b8b79d4c5d426c9eae60a8ee6f`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 144.2 KB (144174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9141dcdca51ee6e1a632ddf67887bceafa9a546698eb093569e2c2720ce2080`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 2.2 MB (2213121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651dd903cb94ec5cc92bda71ae178441da11317a3c3a68ce3e5cc7091b93241a`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ce5f0a5ad8d4fe577dd04541c886b6278d0074b793c5ed7a5bb7c5bfdfd732`  
		Last Modified: Tue, 07 Jul 2026 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:decb811a0a880ce42d9d79173e6ef5ae52e63cd2a59c558dbfde16153a6b1be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565106087a71c440688fd774fe59362de0f1fff98a1c5d66d0b89fbc6860a4a3`

```dockerfile
```

-	Layers:
	-	`sha256:addc528a2faeeed733f070e84dbfdd2d025aa756a560bc3c58334087aa4db0cd`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acfefd2a0811c20c5c36c8bca650c9026e05322fe7cd75c766c27305ad9b02e4`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:d6ea6f3f892154799f49d5ef81e52b591f814b8be46594ea01094852cf325a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28515261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce01e9f369e244a16162d126d1d65abfa6c32a1c6113ca65a2b564a09456ae0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:33:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:33:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:37:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:37:00 GMT
USER memcache
# Tue, 07 Jul 2026 18:37:00 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:37:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd8ce52aaf0f37e18c9cdac7b3f3b414f826fc4cb88f6fb1f69658cf5be3077`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba997fd282413d55bcbcaedb9314c99c9852eb66a20d6390802fa505cf7cea9`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 135.4 KB (135381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa741cee931dba27b03915519d699ab937e8510ec23c4c7a9f006f5754d0c2be`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 2.2 MB (2167312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a518663ad3cb76336bfb9d88e3fa2ca35ea9e384c550e215c4a6919956fc0432`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ee24042a0c0690125b0247825d4464ad4106ffc01ed7ee31c1deaed0df48a6`  
		Last Modified: Tue, 07 Jul 2026 18:37:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:0f0ad618bc698eb20f010e4f2bc79cb6b7a1db56bd78cabb5bdc00543f72866e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40c23d10e011ebf3e20085ba74696cc73ee9409d922ce6728a3f0e3435b031f`

```dockerfile
```

-	Layers:
	-	`sha256:b33bb326cb2bb9a654cb80e1b1f735101d99721aae9b971155bd8bb7651bc05b`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:617fea10f51adf2afefff992138cec9602e6377ee5aa71a7c6c2352d7cb497a6`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c1954dd5465568bb8c8c69976b1d770d87e5c1a24278361c69adf2bbbd7bb759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32567111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126e9a459abb2e754848faa0c03a993cdcf7cba8fe03642ba79e428e96b859fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:51:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 17:51:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:27 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604d99e4caaf587bf0d7974a971d4d0c6388c47af3aaf0e0809cc890dfc216ae`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632c800122a4857d34ea9018a86d17c131d6854b7bb93fdf1f9d9331a00c2283`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 153.5 KB (153504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40632567f6500b9d84fbd5e2da6e5a2988282cf3806986e3aaf091e71d5561ba`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 2.3 MB (2263541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5fa2d0483db96d306e66820493c054e7a31d7885398c237f084c57136843cdc`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b9df7bbbffbba997a793a1d9150edb87362ec1fc51f13b359bf6fc4086eab8`  
		Last Modified: Tue, 07 Jul 2026 17:54:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:675b4521416528459edf11eb293956e29ba6d67fb823736d6c8dae24f8f592f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e5fb5de7074dcd0f6a276ca63f478917e1e491eb842932082a32a390e168cc`

```dockerfile
```

-	Layers:
	-	`sha256:083f9633a280cca824d0583ab3c021e2f99ce7bcf78e7bd86c428119888d82be`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:101323382da78c85d259f95a8bac89555f6aa3c578276f83b0c373f7467f1b62`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:9ba8e737493510f7e51cd8e2efb05cb506bc4cb49234a392ab402a087f451914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f3d9de28b136197f5b216fcae268d02d8bb2332737f2f28e255f694a83323b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:08:03 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:11:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:11:07 GMT
USER memcache
# Tue, 07 Jul 2026 18:11:07 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:11:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146e2060380361a51cbb9710d253786b2f6d0181686093b119e859ff6a9f42ba`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5440a42d8c073786f4e19a425c2862787ffd4a0f248eeab811b69a56b7fbe6d3`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 147.5 KB (147526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ee3d00a4cefccec481dd19900b741c13cc9152ab221bd6da94ab6661150410`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 2.2 MB (2226060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1380c174cf2742616ac236e2072382102e7ed297269441a859ffaeeabb6dc40f`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774851faf922f91eed59e73259a54f301581a1dcdca11e2fbe8066b390578521`  
		Last Modified: Tue, 07 Jul 2026 18:11:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:2363cd9ed9f5f47c27310f74da1ef640cbedf7ab3de07f1c364da9aa80529ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe370dc29776b6676d8abe9dc987d0c96783aeff228e5b78a95992b77f1dac6`

```dockerfile
```

-	Layers:
	-	`sha256:56f466203b94cc2473a40ca334d9d093ff42bc6f8ef4da3078e740e3ff1ea0c3`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b7e7fd4e6fadbaab554e59aa74f90f85a4a91dc21d594e5bdee950543ef8373`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:73dac8f029eb0b81d121f3bb73fb72d81979e4cb01b8e6ebe2711128ef651441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36174293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b74a31a663472305d39c0058f4e8009de9999e83a299c1ec5cb186e77e42a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:50:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:50:10 GMT
USER memcache
# Tue, 07 Jul 2026 18:50:10 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:50:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb94829698f34745d5f5661c13962c6f3c0a317c89305195441290fa9d69befc`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 2.4 MB (2396017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b8c981b6aa04b36992e9ae3da795bf1b611bcc86a92a999110b1a6f57e9182`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9277c52647cb68bca423348087fac908060eebb122259f4ace09cfde29725a8`  
		Last Modified: Tue, 07 Jul 2026 18:50:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:11977db85cfdbc4d4b69ef3b8771f8708c0889b5570ae11920213dc6b45aa43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa83df8f4b01f2e49bb16f9fd6cd98b7c2be5ee10acca030395f0bfb4c067d4f`

```dockerfile
```

-	Layers:
	-	`sha256:e8e169095d7827333dbfeb01b6abd21d157005a13e4111604bc35190b51c3f6c`  
		Last Modified: Tue, 07 Jul 2026 18:50:21 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f83dd39f4ecc41fd4ed93579fd1a6bdf5975e76587154a52645011615e586caa`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 22.2 KB (22224 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; riscv64

```console
$ docker pull memcached@sha256:35995ecc1bdbf7b9c0f1952e81f50f64c5f3a5e3b36bc26d18a7f0e151b2bd56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30627437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6ce375987461acf4659cc0361be8d29961bfc9d2702c96b04f8ecc75879104`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_VERSION=1.6.44
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Wed, 08 Jul 2026 01:35:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 08 Jul 2026 01:35:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 01:35:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 08 Jul 2026 01:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 01:35:21 GMT
USER memcache
# Wed, 08 Jul 2026 01:35:21 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 08 Jul 2026 01:35:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb7a88a05ac2eb6266c41c2322affac58071843709f2384e7a7552581853d78`  
		Last Modified: Tue, 07 Jul 2026 15:23:07 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9824dca37fe76f400ed6cc9604f1253f8ff58ecaf94208b0ad1af29248af11a9`  
		Last Modified: Tue, 07 Jul 2026 15:23:07 GMT  
		Size: 133.1 KB (133064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34688dbd012f83568bcd7a751cfac7eb6d8f4cef64719b05c460cd7f5f3ea142`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 2.2 MB (2210480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80794ee201a8b9ff7b14d8fe25c33849f5eb861354021aa055a5cd87079eb6b`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3506ea788bf1ef68093e63f26d8e2d71b32607b0442dd45594f9304bb35450e9`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:098025c748258f6085a0a48ec223253bcf2e31195e1428da5c07086f9fca5eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf551a72a4555cf8c11f9497d082270c631435e51207f529c8707d16ae1fc97d`

```dockerfile
```

-	Layers:
	-	`sha256:7655d0f9b3c0012ce2b7532928e0ff8574a23d4f18a9ffd3a42eba9b8290a26e`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7d586c618ffeb5f44ba16c05b2698c5274a64888cdf5a801519e3e3c912874`  
		Last Modified: Wed, 08 Jul 2026 01:36:06 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:2bb86721eb481469ec98b921bb3f93e41de5081e133edaa8223b468460c54d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fd8b39d12f4385c99a6c3fc554a8204b68f263216a8f738e1f591eebb3d8df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 20:23:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 20:23:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 20:45:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:45:58 GMT
USER memcache
# Tue, 07 Jul 2026 20:45:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 20:45:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad1193e58306c0282ce34e45f0024c881813b7d1971e7079bc6067c894ca9aa`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c58ddfcc69c2d0d1b095504de8cdf49d98b64256a7144ac301cdcd717af4cdf`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 140.5 KB (140531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b68ea9be4244366b9dbec4579d8f90af695054a7291d6532a2246f1384087f`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 2.3 MB (2299455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fac116dd75a5774f843b887d798a8cc6858f58f0bf45387d4f34cef12c377b8`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d63f4f4f084883f788b3888e4af8943c8ca99ac1c02f2ce9c9e69c2d40936a`  
		Last Modified: Tue, 07 Jul 2026 20:46:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:3d76c4916699b1a5dd03a3a75f22eb48fd080693b5b7152c3836ba9fabb2482b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2296c5dd4d7b5b375ced621090e8e36c25e5881301ecd61931d5b47f932b6bd`

```dockerfile
```

-	Layers:
	-	`sha256:ebaa297afdc5ff0989ad25de9a3ef75514a7605b5a94dae012a8ff9995e879b5`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c74a69a7f51445b984bfc705ff0acbd392af3444b4bb2267b3ed40c39f44885`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:dfacdbd93e7a6f1ad63801753a1fc959dc678a5a1d2141ff438d57e6d8793fc3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:e00aa689329ac3c25dd94c21b29e7652f58889eba61241b27deeb12d8af2c9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0d5953b259ea47611c590bf8690878ba0fc8a6d554206f2386326acdee5f68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:51:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 17:51:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:07 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:07 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a30e6f843727d7086dd44c0f1d78e4e794fc70ab8336724c2f7caf2ad94d70`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11465b0f27c1479582acdb07e77a6e5f1c57185a051db0f6399c7db1f0e068f`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f61f8ef2ecf86776aa13edbd142247655c873a14262229760a2c34ec9f2f4c4`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 2.0 MB (1969075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866588e9331a626030c9f0f4d9ebe8437b21538577ea760e6fd5dc21260b25f3`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8857efc27e1a936e8b98df820d15d388a209a0e4ababe62467e80202ca2608`  
		Last Modified: Tue, 07 Jul 2026 17:54:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:57aa0157e345dad26c2ca146825a22b46d75125aa24ed9bc93eed34caac25691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea3ce357ad08cf1e5cc3dea4dc2bb9810f85503e58b2ac19cf68bc6430f8253`

```dockerfile
```

-	Layers:
	-	`sha256:5d673322e8ce596d726d8827743000f38e5e97b88ee78f135b67f4b16d4b63aa`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:004c4d426137cc37ef45d4723c00c88c50fdc95ec01d5195399e00708586e5d5`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:54cfa43d464ee54a0616fc4fef82ffa4657faebe2aad63e51ddedd0b27a1034f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0890c5e2f5c457f169f2e18c2c310ef820ee78df22a9faf8d7914fc4023f87d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:24:45 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:24:46 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:37:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:37:22 GMT
USER memcache
# Tue, 07 Jul 2026 18:37:22 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:37:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bfaa23277905a226c41af2a58a8bbe167d313c3f4a692d7f3e608b80c872e86`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e99cdeb30ad9e84622fff778eaa2b4495b15639fefd5538d17792435e7b386e`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 102.6 KB (102623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eacfa3bc54ac449d3442fc67dac74ddf8f1f851b9a6d560c89748e118e5de78`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 1.9 MB (1916527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721c693522839264b06fcb548505f6b21c8d53769961a5d270a1d28974756b14`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d915d899e47b23ab1a6af024331bf141b7c709e102265a9d67ce739c634fbd1`  
		Last Modified: Tue, 07 Jul 2026 18:37:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:025aed47356a32f0cffcf45687ff6d432b5e409c5b72076702cd2418215301fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb70c5a59f6d4af6f27e64fc4f13fc3cc0bd54a1c73053f23cd27606c2f10ad`

```dockerfile
```

-	Layers:
	-	`sha256:5dbd3fef436065ecf56a336335bae3756cd57b8b288e5fb30640c543a4dbb62b`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1a5761abcfc404c21822ff6ca85d80bc76c3a6052d160e0d36e8f1bb3a2d9fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b1c51ff60552296de96bef11150eebc5c7a25972ef40be59aa03c54fa11b8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:33:53 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:33:54 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:36:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:36:49 GMT
USER memcache
# Tue, 07 Jul 2026 18:36:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:36:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabbf96f416c97b0b6f4d05783d7917854f6cc6366992692540c933864b75a4e`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e345c0604fb799f73edc02de89adfea540608727aa289761bb68c55dfe80b68`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 92.4 KB (92366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206ae6a5eceddf4f4b6a3dc213fd2d869fdf5f354127f5fa2f1492aaa83ed84`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 1.9 MB (1876013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf3d18d09f034486db99de410dfa3ea0fac4a7de407b3ff4566da33a5a796c4`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fa438a06c5189a44428488d4d874a448adac2a6afd48c91160e1ff7eda353f`  
		Last Modified: Tue, 07 Jul 2026 18:36:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:7aa61658603c3fe4dd891a148bfc6d0583d64260526e5e5d08729fae715eea60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced81d37f937250df3ff094fc9d265c2a0d5204a4ca7af266e6117a0a735c37b`

```dockerfile
```

-	Layers:
	-	`sha256:0bc187ed4816e54ff1e6a3a4407e69479f3da3d49dc9cdb83e81aceec581aaa8`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:032532007c751d0d5071238081d4049a01e6ade4fb4bb753b68b6fb0c9bc7469`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a47711501a74e9103532fb8c432ef1e6450e1dc612098e139edc8aaed8ed6d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd279f4957e2a0db65ab4f734192083db4a56533ed4c3b0c74077f1fd3d63fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:51:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 17:51:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:18 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f75b7dca84a16b2a787daa3b05d50f52e3a66ad28d75373610123719cbdab5`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95fb2dd18cfae170e08e5b031571d5e174f3d5a267f7493afcd2cfb157a76d50`  
		Last Modified: Tue, 07 Jul 2026 17:54:23 GMT  
		Size: 121.8 KB (121848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7872cbdf0e178fb4969d5663edabdc5e800064bc70c8946a43e0a00c28c8543`  
		Last Modified: Tue, 07 Jul 2026 17:54:23 GMT  
		Size: 1.9 MB (1945593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f605c6ccdc6e744bc771d74375fddd9c82ba9ee9ae0728cb4d0b63f355acf9`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138b04536a7b5f2aeb8231f52e02cfbcf9f750fda9a581531144f8ab72865710`  
		Last Modified: Tue, 07 Jul 2026 17:54:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:e34c9a4da611035150437aac4dcea9c943efc98e61f795d26dec105bc55c246e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17328f28f43c4036d69b44a646a9212e472409019a388324caac01775d33030`

```dockerfile
```

-	Layers:
	-	`sha256:bc0d1667c7e65168c835a5af942d5e4b5fcc57780c4e963980be525970ac38fb`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3a34c974ee1e68267576cc46cf1a615b143aa5fa10040c3b373ed9d36b5a074`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:c98fe690ad071aa8dbb0523eaccd5ff6e1a6b6c1c10496100489abf0608be0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756f3aebffb9dcdef37606aaf9eb6ff40762e033201d7ac573bf53f79daed4ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:08:06 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:08:06 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:10:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:10:49 GMT
USER memcache
# Tue, 07 Jul 2026 18:10:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:10:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae5ce5a142423e2c3f5b1b304aa07dd506f279017c239ff9ab3efe9df7bcc58`  
		Last Modified: Tue, 07 Jul 2026 18:10:53 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4190655ab86d9448025b484beda8eda66ba062f9d7f713f7aa1d4a70b4654e20`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 110.7 KB (110730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eeef8d8c6b8441635e43dd77f942dccab5226280f6d865702916d505aff3dc2`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 1.9 MB (1922527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667bfea48f54a3c6e0cf7bff224242d00ad020f64c62c8c9a9e2503fa800f584`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7cc2c3e7109300bf89c38ed404f4c4a10e4c7e5b8f05ee60dd953da3edd22d`  
		Last Modified: Tue, 07 Jul 2026 18:10:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5419db01084f7e57e95b4a961a35c000061b631161cff3a25edbc6c44bf0970b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711c05c8eeb5d575b4b8b6c8c29c412abf33b61851dbec3410933a148a06e077`

```dockerfile
```

-	Layers:
	-	`sha256:6d5d59fe9ce4b41f385b8efd4900f81cc9d9fb7a349dbf17a3db45bc0f47079c`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea0941359e75961d14a28fe3eccd4b64330541e75296a11f8b35ed1608e55c6`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 20.5 KB (20472 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:490ce19d6f4a4a2b3fb153e99e17087e6ba54a368a436b8bf37ad42dc61bd542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb19be6667ed80705c3179f48e727c5e41520c3074da795493b828e984ee769`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:31:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:31:27 GMT
USER memcache
# Tue, 07 Jul 2026 18:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822fa96857bf92999c59f51b6673adb63e53280ff304f0dfda50a1f60c011997`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 2.1 MB (2059392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb63af0db3415911cd4b87a75885b5cf927e8b2f0a23d303444ac35ba8de310`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7beab280687944f1a3dbc347b436be8b5bcd339a2dd5f4bd794d039514d1e1ac`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:dff086fe7cee873e2a02863dcad2d0f4062097372ea87ee92386c6ec4faca5c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bba256e83e4a758fd6d7b68f5ef7e46c8690e1406b0ea8e0fd726ad528ca130`

```dockerfile
```

-	Layers:
	-	`sha256:f5bc41e8594a82bb90ccf065b961d6710fd43aa4253a2c66841d276be3cee171`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6389877b2cdf351df5857101637cca7404d34416c251fb13dcb411a1e4fcdb09`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:3dab8bf013c7eeb6d366ee5249c8acd5ef5a2516476c24703310ebe95e42ebf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5739202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf3026af0fb36b3c3f346a30b73251e9d52820b69cfeec6cf31cbf5f32bd83b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 15:23:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 15:23:54 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_VERSION=1.6.44
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Wed, 08 Jul 2026 02:09:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 02:09:41 GMT
USER memcache
# Wed, 08 Jul 2026 02:09:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 08 Jul 2026 02:09:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941235bbafd533700d0cc64f160a6e039681d628670d1459598da425f80a671f`  
		Last Modified: Tue, 07 Jul 2026 15:37:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5ceafabde54b0ee281c4c55e0fa52bc718b5f67e1cf01b2596ce139ce91689`  
		Last Modified: Tue, 07 Jul 2026 15:37:44 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f42818a95dd40c051c9a753b71f15150b23c4cb6e29dd6783ca056040c1ad9b`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 2.1 MB (2054591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5153ba2e22e5d9fd55a442ca899e749da8d360b0735248d97d2b7905b54094b0`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2e1f8899aa9bb01a2ac7b7cfab4e28527b6350859a2274487e243ff9e6640d`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:552fb752652139eb41e2fb09a95f9e44aa5411d4922e47265287d8d185fb2984
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90a784fdf44b8e4b73506c4a62f7eecdb8744a73d1c8748c0f922a1854584d6`

```dockerfile
```

-	Layers:
	-	`sha256:5509c8aff01ecf9e58a4abcfc2793665427e06a69438f9dc03653384f5b674ba`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:674b8eaf64fc35e2ab499151cdb42e8d94e8a1d6e653461f59dcee0e0afc73d3`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:3ba0548c1199a85afb045da26fc2d9085329902b472c101fd2f27c4d7bc6a3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8cb01a7cfcb67e54af00eb1f633b6e42522b7f271ed9cb2f73313d1405e514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 20:26:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:26:46 GMT
USER memcache
# Tue, 07 Jul 2026 20:26:46 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 20:26:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fa5804f7b10e87b751017fa3911374a7d0424d9db3025181ec03d7c0967ab`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 2.0 MB (2000275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38cc94dbeb577eb1dc581e5fe967f87326ce97bf8dabb714d3e016240393c8e`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52988d89b000a45ea4ee01f61111251668faa1ef85187a6542839e16ebf892a3`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:e33b9ac1601c880cdbd7ea1b8cbae5c385ae1ac4d211a47880d5e92486008783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e393793603386b29a5a088ec111a7fb7655009ddedd9102843c12db15b1ed10f`

```dockerfile
```

-	Layers:
	-	`sha256:e253826bb6bdeabe09858b17012a014500da7e731053508ef28b533baf4a4ba8`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91589d031d1edbdebde675569a744f22849ab4d8be59bb68206dabe51e062f15`  
		Last Modified: Tue, 07 Jul 2026 20:26:55 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine3.24`

```console
$ docker pull memcached@sha256:dfacdbd93e7a6f1ad63801753a1fc959dc678a5a1d2141ff438d57e6d8793fc3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `memcached:1-alpine3.24` - linux; amd64

```console
$ docker pull memcached@sha256:e00aa689329ac3c25dd94c21b29e7652f58889eba61241b27deeb12d8af2c9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0d5953b259ea47611c590bf8690878ba0fc8a6d554206f2386326acdee5f68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:51:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 17:51:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:07 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:07 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a30e6f843727d7086dd44c0f1d78e4e794fc70ab8336724c2f7caf2ad94d70`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11465b0f27c1479582acdb07e77a6e5f1c57185a051db0f6399c7db1f0e068f`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f61f8ef2ecf86776aa13edbd142247655c873a14262229760a2c34ec9f2f4c4`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 2.0 MB (1969075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866588e9331a626030c9f0f4d9ebe8437b21538577ea760e6fd5dc21260b25f3`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8857efc27e1a936e8b98df820d15d388a209a0e4ababe62467e80202ca2608`  
		Last Modified: Tue, 07 Jul 2026 17:54:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:57aa0157e345dad26c2ca146825a22b46d75125aa24ed9bc93eed34caac25691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea3ce357ad08cf1e5cc3dea4dc2bb9810f85503e58b2ac19cf68bc6430f8253`

```dockerfile
```

-	Layers:
	-	`sha256:5d673322e8ce596d726d8827743000f38e5e97b88ee78f135b67f4b16d4b63aa`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:004c4d426137cc37ef45d4723c00c88c50fdc95ec01d5195399e00708586e5d5`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:54cfa43d464ee54a0616fc4fef82ffa4657faebe2aad63e51ddedd0b27a1034f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0890c5e2f5c457f169f2e18c2c310ef820ee78df22a9faf8d7914fc4023f87d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:24:45 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:24:46 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:37:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:37:22 GMT
USER memcache
# Tue, 07 Jul 2026 18:37:22 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:37:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bfaa23277905a226c41af2a58a8bbe167d313c3f4a692d7f3e608b80c872e86`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e99cdeb30ad9e84622fff778eaa2b4495b15639fefd5538d17792435e7b386e`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 102.6 KB (102623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eacfa3bc54ac449d3442fc67dac74ddf8f1f851b9a6d560c89748e118e5de78`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 1.9 MB (1916527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721c693522839264b06fcb548505f6b21c8d53769961a5d270a1d28974756b14`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d915d899e47b23ab1a6af024331bf141b7c709e102265a9d67ce739c634fbd1`  
		Last Modified: Tue, 07 Jul 2026 18:37:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:025aed47356a32f0cffcf45687ff6d432b5e409c5b72076702cd2418215301fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb70c5a59f6d4af6f27e64fc4f13fc3cc0bd54a1c73053f23cd27606c2f10ad`

```dockerfile
```

-	Layers:
	-	`sha256:5dbd3fef436065ecf56a336335bae3756cd57b8b288e5fb30640c543a4dbb62b`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1a5761abcfc404c21822ff6ca85d80bc76c3a6052d160e0d36e8f1bb3a2d9fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b1c51ff60552296de96bef11150eebc5c7a25972ef40be59aa03c54fa11b8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:33:53 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:33:54 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:36:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:36:49 GMT
USER memcache
# Tue, 07 Jul 2026 18:36:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:36:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabbf96f416c97b0b6f4d05783d7917854f6cc6366992692540c933864b75a4e`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e345c0604fb799f73edc02de89adfea540608727aa289761bb68c55dfe80b68`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 92.4 KB (92366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206ae6a5eceddf4f4b6a3dc213fd2d869fdf5f354127f5fa2f1492aaa83ed84`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 1.9 MB (1876013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf3d18d09f034486db99de410dfa3ea0fac4a7de407b3ff4566da33a5a796c4`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fa438a06c5189a44428488d4d874a448adac2a6afd48c91160e1ff7eda353f`  
		Last Modified: Tue, 07 Jul 2026 18:36:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:7aa61658603c3fe4dd891a148bfc6d0583d64260526e5e5d08729fae715eea60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced81d37f937250df3ff094fc9d265c2a0d5204a4ca7af266e6117a0a735c37b`

```dockerfile
```

-	Layers:
	-	`sha256:0bc187ed4816e54ff1e6a3a4407e69479f3da3d49dc9cdb83e81aceec581aaa8`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:032532007c751d0d5071238081d4049a01e6ade4fb4bb753b68b6fb0c9bc7469`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a47711501a74e9103532fb8c432ef1e6450e1dc612098e139edc8aaed8ed6d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd279f4957e2a0db65ab4f734192083db4a56533ed4c3b0c74077f1fd3d63fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:51:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 17:51:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:18 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f75b7dca84a16b2a787daa3b05d50f52e3a66ad28d75373610123719cbdab5`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95fb2dd18cfae170e08e5b031571d5e174f3d5a267f7493afcd2cfb157a76d50`  
		Last Modified: Tue, 07 Jul 2026 17:54:23 GMT  
		Size: 121.8 KB (121848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7872cbdf0e178fb4969d5663edabdc5e800064bc70c8946a43e0a00c28c8543`  
		Last Modified: Tue, 07 Jul 2026 17:54:23 GMT  
		Size: 1.9 MB (1945593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f605c6ccdc6e744bc771d74375fddd9c82ba9ee9ae0728cb4d0b63f355acf9`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138b04536a7b5f2aeb8231f52e02cfbcf9f750fda9a581531144f8ab72865710`  
		Last Modified: Tue, 07 Jul 2026 17:54:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:e34c9a4da611035150437aac4dcea9c943efc98e61f795d26dec105bc55c246e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17328f28f43c4036d69b44a646a9212e472409019a388324caac01775d33030`

```dockerfile
```

-	Layers:
	-	`sha256:bc0d1667c7e65168c835a5af942d5e4b5fcc57780c4e963980be525970ac38fb`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3a34c974ee1e68267576cc46cf1a615b143aa5fa10040c3b373ed9d36b5a074`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:c98fe690ad071aa8dbb0523eaccd5ff6e1a6b6c1c10496100489abf0608be0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756f3aebffb9dcdef37606aaf9eb6ff40762e033201d7ac573bf53f79daed4ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:08:06 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:08:06 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:10:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:10:49 GMT
USER memcache
# Tue, 07 Jul 2026 18:10:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:10:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae5ce5a142423e2c3f5b1b304aa07dd506f279017c239ff9ab3efe9df7bcc58`  
		Last Modified: Tue, 07 Jul 2026 18:10:53 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4190655ab86d9448025b484beda8eda66ba062f9d7f713f7aa1d4a70b4654e20`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 110.7 KB (110730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eeef8d8c6b8441635e43dd77f942dccab5226280f6d865702916d505aff3dc2`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 1.9 MB (1922527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667bfea48f54a3c6e0cf7bff224242d00ad020f64c62c8c9a9e2503fa800f584`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7cc2c3e7109300bf89c38ed404f4c4a10e4c7e5b8f05ee60dd953da3edd22d`  
		Last Modified: Tue, 07 Jul 2026 18:10:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5419db01084f7e57e95b4a961a35c000061b631161cff3a25edbc6c44bf0970b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711c05c8eeb5d575b4b8b6c8c29c412abf33b61851dbec3410933a148a06e077`

```dockerfile
```

-	Layers:
	-	`sha256:6d5d59fe9ce4b41f385b8efd4900f81cc9d9fb7a349dbf17a3db45bc0f47079c`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea0941359e75961d14a28fe3eccd4b64330541e75296a11f8b35ed1608e55c6`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 20.5 KB (20472 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:490ce19d6f4a4a2b3fb153e99e17087e6ba54a368a436b8bf37ad42dc61bd542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb19be6667ed80705c3179f48e727c5e41520c3074da795493b828e984ee769`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:31:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:31:27 GMT
USER memcache
# Tue, 07 Jul 2026 18:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822fa96857bf92999c59f51b6673adb63e53280ff304f0dfda50a1f60c011997`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 2.1 MB (2059392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb63af0db3415911cd4b87a75885b5cf927e8b2f0a23d303444ac35ba8de310`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7beab280687944f1a3dbc347b436be8b5bcd339a2dd5f4bd794d039514d1e1ac`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:dff086fe7cee873e2a02863dcad2d0f4062097372ea87ee92386c6ec4faca5c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bba256e83e4a758fd6d7b68f5ef7e46c8690e1406b0ea8e0fd726ad528ca130`

```dockerfile
```

-	Layers:
	-	`sha256:f5bc41e8594a82bb90ccf065b961d6710fd43aa4253a2c66841d276be3cee171`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6389877b2cdf351df5857101637cca7404d34416c251fb13dcb411a1e4fcdb09`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:3dab8bf013c7eeb6d366ee5249c8acd5ef5a2516476c24703310ebe95e42ebf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5739202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf3026af0fb36b3c3f346a30b73251e9d52820b69cfeec6cf31cbf5f32bd83b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 15:23:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 15:23:54 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_VERSION=1.6.44
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Wed, 08 Jul 2026 02:09:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 02:09:41 GMT
USER memcache
# Wed, 08 Jul 2026 02:09:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 08 Jul 2026 02:09:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941235bbafd533700d0cc64f160a6e039681d628670d1459598da425f80a671f`  
		Last Modified: Tue, 07 Jul 2026 15:37:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5ceafabde54b0ee281c4c55e0fa52bc718b5f67e1cf01b2596ce139ce91689`  
		Last Modified: Tue, 07 Jul 2026 15:37:44 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f42818a95dd40c051c9a753b71f15150b23c4cb6e29dd6783ca056040c1ad9b`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 2.1 MB (2054591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5153ba2e22e5d9fd55a442ca899e749da8d360b0735248d97d2b7905b54094b0`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2e1f8899aa9bb01a2ac7b7cfab4e28527b6350859a2274487e243ff9e6640d`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:552fb752652139eb41e2fb09a95f9e44aa5411d4922e47265287d8d185fb2984
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90a784fdf44b8e4b73506c4a62f7eecdb8744a73d1c8748c0f922a1854584d6`

```dockerfile
```

-	Layers:
	-	`sha256:5509c8aff01ecf9e58a4abcfc2793665427e06a69438f9dc03653384f5b674ba`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:674b8eaf64fc35e2ab499151cdb42e8d94e8a1d6e653461f59dcee0e0afc73d3`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:3ba0548c1199a85afb045da26fc2d9085329902b472c101fd2f27c4d7bc6a3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8cb01a7cfcb67e54af00eb1f633b6e42522b7f271ed9cb2f73313d1405e514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 20:26:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:26:46 GMT
USER memcache
# Tue, 07 Jul 2026 20:26:46 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 20:26:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fa5804f7b10e87b751017fa3911374a7d0424d9db3025181ec03d7c0967ab`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 2.0 MB (2000275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38cc94dbeb577eb1dc581e5fe967f87326ce97bf8dabb714d3e016240393c8e`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52988d89b000a45ea4ee01f61111251668faa1ef85187a6542839e16ebf892a3`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:e33b9ac1601c880cdbd7ea1b8cbae5c385ae1ac4d211a47880d5e92486008783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e393793603386b29a5a088ec111a7fb7655009ddedd9102843c12db15b1ed10f`

```dockerfile
```

-	Layers:
	-	`sha256:e253826bb6bdeabe09858b17012a014500da7e731053508ef28b533baf4a4ba8`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91589d031d1edbdebde675569a744f22849ab4d8be59bb68206dabe51e062f15`  
		Last Modified: Tue, 07 Jul 2026 20:26:55 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-trixie`

```console
$ docker pull memcached@sha256:deae07c1fce831887ffb24f5cc68cde691916c31782746bd994635b0ec3b90bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `memcached:1-trixie` - linux; amd64

```console
$ docker pull memcached@sha256:4e4cc3df3e764aad4394ec7bedefe4b5dc758083f6ddbd2d40738ddb52f4fd5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801b5bd52c0373eb52f35af4717c91f69c64e8ba8432b2b9969673a3343951e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:51:31 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 17:51:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:20 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:20 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21031edcf54239f2eb53ee71b098daa7f542ca3924852e4bc60c211a27d2fe71`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbe1b9e141c299f97115783f06387912d621d234169327bb9375418949b0da2`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 136.7 KB (136705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f1221bb96a4bf1b5425418a7dc511cc509143b99be675de232b0172a9bfeb5`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 2.3 MB (2281337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe049733ac2e19f4708bfea14d9549981875112ed7c5c8967bfb0919cafcf7c`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922b6b4d7b1405c635ad711612cffd7f000f3d6fa988936a3bffeb52c430f934`  
		Last Modified: Tue, 07 Jul 2026 17:54:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:fe176f7071209af166d8670e8cdf0ea42a946f751ea6c83f2034e46a4c699020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31e0b24d9e891dc70bcefbd8f9e2cd5a681fdcd7386506ce4bf24a3ece46144`

```dockerfile
```

-	Layers:
	-	`sha256:67793084eb7ffe92a8a8189a9e113c187062ec7609a2b23f5d70d226317d5cf7`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a29dc9d7806a217a6d632026c133d740748378553c9a066f27f05cf733ee6513`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:dfcb5968c4b1ff3c90621846441144ff19987817595de9402a87f33de71b00aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30318032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce3f7f7098bba9fe18fb1da50fd6388ed09587ab56ba4650c228e7ff5b04cb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:25:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:25:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:28:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:28:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:28:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:28:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:28:37 GMT
USER memcache
# Tue, 07 Jul 2026 18:28:37 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:28:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67126efbfb02dc31f2fcfe60cb28774368f9ea86f4c91c216156868ccb81a7e`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c9a95a8baa5d7fe67d8681b27f9a94a4dd43b8b79d4c5d426c9eae60a8ee6f`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 144.2 KB (144174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9141dcdca51ee6e1a632ddf67887bceafa9a546698eb093569e2c2720ce2080`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 2.2 MB (2213121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651dd903cb94ec5cc92bda71ae178441da11317a3c3a68ce3e5cc7091b93241a`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ce5f0a5ad8d4fe577dd04541c886b6278d0074b793c5ed7a5bb7c5bfdfd732`  
		Last Modified: Tue, 07 Jul 2026 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:decb811a0a880ce42d9d79173e6ef5ae52e63cd2a59c558dbfde16153a6b1be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565106087a71c440688fd774fe59362de0f1fff98a1c5d66d0b89fbc6860a4a3`

```dockerfile
```

-	Layers:
	-	`sha256:addc528a2faeeed733f070e84dbfdd2d025aa756a560bc3c58334087aa4db0cd`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acfefd2a0811c20c5c36c8bca650c9026e05322fe7cd75c766c27305ad9b02e4`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:d6ea6f3f892154799f49d5ef81e52b591f814b8be46594ea01094852cf325a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28515261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce01e9f369e244a16162d126d1d65abfa6c32a1c6113ca65a2b564a09456ae0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:33:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:33:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:37:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:37:00 GMT
USER memcache
# Tue, 07 Jul 2026 18:37:00 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:37:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd8ce52aaf0f37e18c9cdac7b3f3b414f826fc4cb88f6fb1f69658cf5be3077`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba997fd282413d55bcbcaedb9314c99c9852eb66a20d6390802fa505cf7cea9`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 135.4 KB (135381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa741cee931dba27b03915519d699ab937e8510ec23c4c7a9f006f5754d0c2be`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 2.2 MB (2167312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a518663ad3cb76336bfb9d88e3fa2ca35ea9e384c550e215c4a6919956fc0432`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ee24042a0c0690125b0247825d4464ad4106ffc01ed7ee31c1deaed0df48a6`  
		Last Modified: Tue, 07 Jul 2026 18:37:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:0f0ad618bc698eb20f010e4f2bc79cb6b7a1db56bd78cabb5bdc00543f72866e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40c23d10e011ebf3e20085ba74696cc73ee9409d922ce6728a3f0e3435b031f`

```dockerfile
```

-	Layers:
	-	`sha256:b33bb326cb2bb9a654cb80e1b1f735101d99721aae9b971155bd8bb7651bc05b`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:617fea10f51adf2afefff992138cec9602e6377ee5aa71a7c6c2352d7cb497a6`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c1954dd5465568bb8c8c69976b1d770d87e5c1a24278361c69adf2bbbd7bb759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32567111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126e9a459abb2e754848faa0c03a993cdcf7cba8fe03642ba79e428e96b859fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:51:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 17:51:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:27 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604d99e4caaf587bf0d7974a971d4d0c6388c47af3aaf0e0809cc890dfc216ae`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632c800122a4857d34ea9018a86d17c131d6854b7bb93fdf1f9d9331a00c2283`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 153.5 KB (153504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40632567f6500b9d84fbd5e2da6e5a2988282cf3806986e3aaf091e71d5561ba`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 2.3 MB (2263541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5fa2d0483db96d306e66820493c054e7a31d7885398c237f084c57136843cdc`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b9df7bbbffbba997a793a1d9150edb87362ec1fc51f13b359bf6fc4086eab8`  
		Last Modified: Tue, 07 Jul 2026 17:54:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:675b4521416528459edf11eb293956e29ba6d67fb823736d6c8dae24f8f592f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e5fb5de7074dcd0f6a276ca63f478917e1e491eb842932082a32a390e168cc`

```dockerfile
```

-	Layers:
	-	`sha256:083f9633a280cca824d0583ab3c021e2f99ce7bcf78e7bd86c428119888d82be`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:101323382da78c85d259f95a8bac89555f6aa3c578276f83b0c373f7467f1b62`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; 386

```console
$ docker pull memcached@sha256:9ba8e737493510f7e51cd8e2efb05cb506bc4cb49234a392ab402a087f451914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f3d9de28b136197f5b216fcae268d02d8bb2332737f2f28e255f694a83323b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:08:03 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:11:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:11:07 GMT
USER memcache
# Tue, 07 Jul 2026 18:11:07 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:11:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146e2060380361a51cbb9710d253786b2f6d0181686093b119e859ff6a9f42ba`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5440a42d8c073786f4e19a425c2862787ffd4a0f248eeab811b69a56b7fbe6d3`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 147.5 KB (147526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ee3d00a4cefccec481dd19900b741c13cc9152ab221bd6da94ab6661150410`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 2.2 MB (2226060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1380c174cf2742616ac236e2072382102e7ed297269441a859ffaeeabb6dc40f`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774851faf922f91eed59e73259a54f301581a1dcdca11e2fbe8066b390578521`  
		Last Modified: Tue, 07 Jul 2026 18:11:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2363cd9ed9f5f47c27310f74da1ef640cbedf7ab3de07f1c364da9aa80529ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe370dc29776b6676d8abe9dc987d0c96783aeff228e5b78a95992b77f1dac6`

```dockerfile
```

-	Layers:
	-	`sha256:56f466203b94cc2473a40ca334d9d093ff42bc6f8ef4da3078e740e3ff1ea0c3`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b7e7fd4e6fadbaab554e59aa74f90f85a4a91dc21d594e5bdee950543ef8373`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:73dac8f029eb0b81d121f3bb73fb72d81979e4cb01b8e6ebe2711128ef651441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36174293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b74a31a663472305d39c0058f4e8009de9999e83a299c1ec5cb186e77e42a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:50:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:50:10 GMT
USER memcache
# Tue, 07 Jul 2026 18:50:10 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:50:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb94829698f34745d5f5661c13962c6f3c0a317c89305195441290fa9d69befc`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 2.4 MB (2396017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b8c981b6aa04b36992e9ae3da795bf1b611bcc86a92a999110b1a6f57e9182`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9277c52647cb68bca423348087fac908060eebb122259f4ace09cfde29725a8`  
		Last Modified: Tue, 07 Jul 2026 18:50:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:11977db85cfdbc4d4b69ef3b8771f8708c0889b5570ae11920213dc6b45aa43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa83df8f4b01f2e49bb16f9fd6cd98b7c2be5ee10acca030395f0bfb4c067d4f`

```dockerfile
```

-	Layers:
	-	`sha256:e8e169095d7827333dbfeb01b6abd21d157005a13e4111604bc35190b51c3f6c`  
		Last Modified: Tue, 07 Jul 2026 18:50:21 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f83dd39f4ecc41fd4ed93579fd1a6bdf5975e76587154a52645011615e586caa`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 22.2 KB (22224 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:35995ecc1bdbf7b9c0f1952e81f50f64c5f3a5e3b36bc26d18a7f0e151b2bd56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30627437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6ce375987461acf4659cc0361be8d29961bfc9d2702c96b04f8ecc75879104`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_VERSION=1.6.44
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Wed, 08 Jul 2026 01:35:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 08 Jul 2026 01:35:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 01:35:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 08 Jul 2026 01:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 01:35:21 GMT
USER memcache
# Wed, 08 Jul 2026 01:35:21 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 08 Jul 2026 01:35:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb7a88a05ac2eb6266c41c2322affac58071843709f2384e7a7552581853d78`  
		Last Modified: Tue, 07 Jul 2026 15:23:07 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9824dca37fe76f400ed6cc9604f1253f8ff58ecaf94208b0ad1af29248af11a9`  
		Last Modified: Tue, 07 Jul 2026 15:23:07 GMT  
		Size: 133.1 KB (133064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34688dbd012f83568bcd7a751cfac7eb6d8f4cef64719b05c460cd7f5f3ea142`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 2.2 MB (2210480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80794ee201a8b9ff7b14d8fe25c33849f5eb861354021aa055a5cd87079eb6b`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3506ea788bf1ef68093e63f26d8e2d71b32607b0442dd45594f9304bb35450e9`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:098025c748258f6085a0a48ec223253bcf2e31195e1428da5c07086f9fca5eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf551a72a4555cf8c11f9497d082270c631435e51207f529c8707d16ae1fc97d`

```dockerfile
```

-	Layers:
	-	`sha256:7655d0f9b3c0012ce2b7532928e0ff8574a23d4f18a9ffd3a42eba9b8290a26e`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7d586c618ffeb5f44ba16c05b2698c5274a64888cdf5a801519e3e3c912874`  
		Last Modified: Wed, 08 Jul 2026 01:36:06 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:2bb86721eb481469ec98b921bb3f93e41de5081e133edaa8223b468460c54d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fd8b39d12f4385c99a6c3fc554a8204b68f263216a8f738e1f591eebb3d8df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 20:23:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 20:23:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 20:45:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:45:58 GMT
USER memcache
# Tue, 07 Jul 2026 20:45:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 20:45:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad1193e58306c0282ce34e45f0024c881813b7d1971e7079bc6067c894ca9aa`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c58ddfcc69c2d0d1b095504de8cdf49d98b64256a7144ac301cdcd717af4cdf`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 140.5 KB (140531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b68ea9be4244366b9dbec4579d8f90af695054a7291d6532a2246f1384087f`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 2.3 MB (2299455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fac116dd75a5774f843b887d798a8cc6858f58f0bf45387d4f34cef12c377b8`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d63f4f4f084883f788b3888e4af8943c8ca99ac1c02f2ce9c9e69c2d40936a`  
		Last Modified: Tue, 07 Jul 2026 20:46:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3d76c4916699b1a5dd03a3a75f22eb48fd080693b5b7152c3836ba9fabb2482b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2296c5dd4d7b5b375ced621090e8e36c25e5881301ecd61931d5b47f932b6bd`

```dockerfile
```

-	Layers:
	-	`sha256:ebaa297afdc5ff0989ad25de9a3ef75514a7605b5a94dae012a8ff9995e879b5`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c74a69a7f51445b984bfc705ff0acbd392af3444b4bb2267b3ed40c39f44885`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6`

```console
$ docker pull memcached@sha256:deae07c1fce831887ffb24f5cc68cde691916c31782746bd994635b0ec3b90bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `memcached:1.6` - linux; amd64

```console
$ docker pull memcached@sha256:4e4cc3df3e764aad4394ec7bedefe4b5dc758083f6ddbd2d40738ddb52f4fd5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801b5bd52c0373eb52f35af4717c91f69c64e8ba8432b2b9969673a3343951e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:51:31 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 17:51:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:20 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:20 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21031edcf54239f2eb53ee71b098daa7f542ca3924852e4bc60c211a27d2fe71`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbe1b9e141c299f97115783f06387912d621d234169327bb9375418949b0da2`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 136.7 KB (136705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f1221bb96a4bf1b5425418a7dc511cc509143b99be675de232b0172a9bfeb5`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 2.3 MB (2281337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe049733ac2e19f4708bfea14d9549981875112ed7c5c8967bfb0919cafcf7c`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922b6b4d7b1405c635ad711612cffd7f000f3d6fa988936a3bffeb52c430f934`  
		Last Modified: Tue, 07 Jul 2026 17:54:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:fe176f7071209af166d8670e8cdf0ea42a946f751ea6c83f2034e46a4c699020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31e0b24d9e891dc70bcefbd8f9e2cd5a681fdcd7386506ce4bf24a3ece46144`

```dockerfile
```

-	Layers:
	-	`sha256:67793084eb7ffe92a8a8189a9e113c187062ec7609a2b23f5d70d226317d5cf7`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a29dc9d7806a217a6d632026c133d740748378553c9a066f27f05cf733ee6513`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v5

```console
$ docker pull memcached@sha256:dfcb5968c4b1ff3c90621846441144ff19987817595de9402a87f33de71b00aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30318032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce3f7f7098bba9fe18fb1da50fd6388ed09587ab56ba4650c228e7ff5b04cb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:25:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:25:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:28:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:28:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:28:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:28:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:28:37 GMT
USER memcache
# Tue, 07 Jul 2026 18:28:37 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:28:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67126efbfb02dc31f2fcfe60cb28774368f9ea86f4c91c216156868ccb81a7e`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c9a95a8baa5d7fe67d8681b27f9a94a4dd43b8b79d4c5d426c9eae60a8ee6f`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 144.2 KB (144174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9141dcdca51ee6e1a632ddf67887bceafa9a546698eb093569e2c2720ce2080`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 2.2 MB (2213121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651dd903cb94ec5cc92bda71ae178441da11317a3c3a68ce3e5cc7091b93241a`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ce5f0a5ad8d4fe577dd04541c886b6278d0074b793c5ed7a5bb7c5bfdfd732`  
		Last Modified: Tue, 07 Jul 2026 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:decb811a0a880ce42d9d79173e6ef5ae52e63cd2a59c558dbfde16153a6b1be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565106087a71c440688fd774fe59362de0f1fff98a1c5d66d0b89fbc6860a4a3`

```dockerfile
```

-	Layers:
	-	`sha256:addc528a2faeeed733f070e84dbfdd2d025aa756a560bc3c58334087aa4db0cd`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acfefd2a0811c20c5c36c8bca650c9026e05322fe7cd75c766c27305ad9b02e4`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v7

```console
$ docker pull memcached@sha256:d6ea6f3f892154799f49d5ef81e52b591f814b8be46594ea01094852cf325a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28515261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce01e9f369e244a16162d126d1d65abfa6c32a1c6113ca65a2b564a09456ae0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:33:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:33:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:37:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:37:00 GMT
USER memcache
# Tue, 07 Jul 2026 18:37:00 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:37:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd8ce52aaf0f37e18c9cdac7b3f3b414f826fc4cb88f6fb1f69658cf5be3077`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba997fd282413d55bcbcaedb9314c99c9852eb66a20d6390802fa505cf7cea9`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 135.4 KB (135381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa741cee931dba27b03915519d699ab937e8510ec23c4c7a9f006f5754d0c2be`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 2.2 MB (2167312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a518663ad3cb76336bfb9d88e3fa2ca35ea9e384c550e215c4a6919956fc0432`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ee24042a0c0690125b0247825d4464ad4106ffc01ed7ee31c1deaed0df48a6`  
		Last Modified: Tue, 07 Jul 2026 18:37:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:0f0ad618bc698eb20f010e4f2bc79cb6b7a1db56bd78cabb5bdc00543f72866e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40c23d10e011ebf3e20085ba74696cc73ee9409d922ce6728a3f0e3435b031f`

```dockerfile
```

-	Layers:
	-	`sha256:b33bb326cb2bb9a654cb80e1b1f735101d99721aae9b971155bd8bb7651bc05b`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:617fea10f51adf2afefff992138cec9602e6377ee5aa71a7c6c2352d7cb497a6`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c1954dd5465568bb8c8c69976b1d770d87e5c1a24278361c69adf2bbbd7bb759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32567111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126e9a459abb2e754848faa0c03a993cdcf7cba8fe03642ba79e428e96b859fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:51:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 17:51:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:27 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604d99e4caaf587bf0d7974a971d4d0c6388c47af3aaf0e0809cc890dfc216ae`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632c800122a4857d34ea9018a86d17c131d6854b7bb93fdf1f9d9331a00c2283`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 153.5 KB (153504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40632567f6500b9d84fbd5e2da6e5a2988282cf3806986e3aaf091e71d5561ba`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 2.3 MB (2263541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5fa2d0483db96d306e66820493c054e7a31d7885398c237f084c57136843cdc`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b9df7bbbffbba997a793a1d9150edb87362ec1fc51f13b359bf6fc4086eab8`  
		Last Modified: Tue, 07 Jul 2026 17:54:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:675b4521416528459edf11eb293956e29ba6d67fb823736d6c8dae24f8f592f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e5fb5de7074dcd0f6a276ca63f478917e1e491eb842932082a32a390e168cc`

```dockerfile
```

-	Layers:
	-	`sha256:083f9633a280cca824d0583ab3c021e2f99ce7bcf78e7bd86c428119888d82be`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:101323382da78c85d259f95a8bac89555f6aa3c578276f83b0c373f7467f1b62`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; 386

```console
$ docker pull memcached@sha256:9ba8e737493510f7e51cd8e2efb05cb506bc4cb49234a392ab402a087f451914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f3d9de28b136197f5b216fcae268d02d8bb2332737f2f28e255f694a83323b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:08:03 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:11:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:11:07 GMT
USER memcache
# Tue, 07 Jul 2026 18:11:07 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:11:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146e2060380361a51cbb9710d253786b2f6d0181686093b119e859ff6a9f42ba`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5440a42d8c073786f4e19a425c2862787ffd4a0f248eeab811b69a56b7fbe6d3`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 147.5 KB (147526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ee3d00a4cefccec481dd19900b741c13cc9152ab221bd6da94ab6661150410`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 2.2 MB (2226060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1380c174cf2742616ac236e2072382102e7ed297269441a859ffaeeabb6dc40f`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774851faf922f91eed59e73259a54f301581a1dcdca11e2fbe8066b390578521`  
		Last Modified: Tue, 07 Jul 2026 18:11:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:2363cd9ed9f5f47c27310f74da1ef640cbedf7ab3de07f1c364da9aa80529ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe370dc29776b6676d8abe9dc987d0c96783aeff228e5b78a95992b77f1dac6`

```dockerfile
```

-	Layers:
	-	`sha256:56f466203b94cc2473a40ca334d9d093ff42bc6f8ef4da3078e740e3ff1ea0c3`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b7e7fd4e6fadbaab554e59aa74f90f85a4a91dc21d594e5bdee950543ef8373`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; ppc64le

```console
$ docker pull memcached@sha256:73dac8f029eb0b81d121f3bb73fb72d81979e4cb01b8e6ebe2711128ef651441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36174293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b74a31a663472305d39c0058f4e8009de9999e83a299c1ec5cb186e77e42a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:50:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:50:10 GMT
USER memcache
# Tue, 07 Jul 2026 18:50:10 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:50:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb94829698f34745d5f5661c13962c6f3c0a317c89305195441290fa9d69befc`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 2.4 MB (2396017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b8c981b6aa04b36992e9ae3da795bf1b611bcc86a92a999110b1a6f57e9182`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9277c52647cb68bca423348087fac908060eebb122259f4ace09cfde29725a8`  
		Last Modified: Tue, 07 Jul 2026 18:50:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:11977db85cfdbc4d4b69ef3b8771f8708c0889b5570ae11920213dc6b45aa43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa83df8f4b01f2e49bb16f9fd6cd98b7c2be5ee10acca030395f0bfb4c067d4f`

```dockerfile
```

-	Layers:
	-	`sha256:e8e169095d7827333dbfeb01b6abd21d157005a13e4111604bc35190b51c3f6c`  
		Last Modified: Tue, 07 Jul 2026 18:50:21 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f83dd39f4ecc41fd4ed93579fd1a6bdf5975e76587154a52645011615e586caa`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 22.2 KB (22224 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; riscv64

```console
$ docker pull memcached@sha256:35995ecc1bdbf7b9c0f1952e81f50f64c5f3a5e3b36bc26d18a7f0e151b2bd56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30627437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6ce375987461acf4659cc0361be8d29961bfc9d2702c96b04f8ecc75879104`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_VERSION=1.6.44
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Wed, 08 Jul 2026 01:35:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 08 Jul 2026 01:35:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 01:35:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 08 Jul 2026 01:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 01:35:21 GMT
USER memcache
# Wed, 08 Jul 2026 01:35:21 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 08 Jul 2026 01:35:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb7a88a05ac2eb6266c41c2322affac58071843709f2384e7a7552581853d78`  
		Last Modified: Tue, 07 Jul 2026 15:23:07 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9824dca37fe76f400ed6cc9604f1253f8ff58ecaf94208b0ad1af29248af11a9`  
		Last Modified: Tue, 07 Jul 2026 15:23:07 GMT  
		Size: 133.1 KB (133064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34688dbd012f83568bcd7a751cfac7eb6d8f4cef64719b05c460cd7f5f3ea142`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 2.2 MB (2210480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80794ee201a8b9ff7b14d8fe25c33849f5eb861354021aa055a5cd87079eb6b`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3506ea788bf1ef68093e63f26d8e2d71b32607b0442dd45594f9304bb35450e9`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:098025c748258f6085a0a48ec223253bcf2e31195e1428da5c07086f9fca5eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf551a72a4555cf8c11f9497d082270c631435e51207f529c8707d16ae1fc97d`

```dockerfile
```

-	Layers:
	-	`sha256:7655d0f9b3c0012ce2b7532928e0ff8574a23d4f18a9ffd3a42eba9b8290a26e`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7d586c618ffeb5f44ba16c05b2698c5274a64888cdf5a801519e3e3c912874`  
		Last Modified: Wed, 08 Jul 2026 01:36:06 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; s390x

```console
$ docker pull memcached@sha256:2bb86721eb481469ec98b921bb3f93e41de5081e133edaa8223b468460c54d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fd8b39d12f4385c99a6c3fc554a8204b68f263216a8f738e1f591eebb3d8df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 20:23:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 20:23:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 20:45:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:45:58 GMT
USER memcache
# Tue, 07 Jul 2026 20:45:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 20:45:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad1193e58306c0282ce34e45f0024c881813b7d1971e7079bc6067c894ca9aa`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c58ddfcc69c2d0d1b095504de8cdf49d98b64256a7144ac301cdcd717af4cdf`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 140.5 KB (140531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b68ea9be4244366b9dbec4579d8f90af695054a7291d6532a2246f1384087f`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 2.3 MB (2299455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fac116dd75a5774f843b887d798a8cc6858f58f0bf45387d4f34cef12c377b8`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d63f4f4f084883f788b3888e4af8943c8ca99ac1c02f2ce9c9e69c2d40936a`  
		Last Modified: Tue, 07 Jul 2026 20:46:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:3d76c4916699b1a5dd03a3a75f22eb48fd080693b5b7152c3836ba9fabb2482b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2296c5dd4d7b5b375ced621090e8e36c25e5881301ecd61931d5b47f932b6bd`

```dockerfile
```

-	Layers:
	-	`sha256:ebaa297afdc5ff0989ad25de9a3ef75514a7605b5a94dae012a8ff9995e879b5`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c74a69a7f51445b984bfc705ff0acbd392af3444b4bb2267b3ed40c39f44885`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine`

```console
$ docker pull memcached@sha256:dfacdbd93e7a6f1ad63801753a1fc959dc678a5a1d2141ff438d57e6d8793fc3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `memcached:1.6-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:e00aa689329ac3c25dd94c21b29e7652f58889eba61241b27deeb12d8af2c9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0d5953b259ea47611c590bf8690878ba0fc8a6d554206f2386326acdee5f68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:51:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 17:51:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:07 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:07 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a30e6f843727d7086dd44c0f1d78e4e794fc70ab8336724c2f7caf2ad94d70`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11465b0f27c1479582acdb07e77a6e5f1c57185a051db0f6399c7db1f0e068f`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f61f8ef2ecf86776aa13edbd142247655c873a14262229760a2c34ec9f2f4c4`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 2.0 MB (1969075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866588e9331a626030c9f0f4d9ebe8437b21538577ea760e6fd5dc21260b25f3`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8857efc27e1a936e8b98df820d15d388a209a0e4ababe62467e80202ca2608`  
		Last Modified: Tue, 07 Jul 2026 17:54:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:57aa0157e345dad26c2ca146825a22b46d75125aa24ed9bc93eed34caac25691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea3ce357ad08cf1e5cc3dea4dc2bb9810f85503e58b2ac19cf68bc6430f8253`

```dockerfile
```

-	Layers:
	-	`sha256:5d673322e8ce596d726d8827743000f38e5e97b88ee78f135b67f4b16d4b63aa`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:004c4d426137cc37ef45d4723c00c88c50fdc95ec01d5195399e00708586e5d5`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:54cfa43d464ee54a0616fc4fef82ffa4657faebe2aad63e51ddedd0b27a1034f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0890c5e2f5c457f169f2e18c2c310ef820ee78df22a9faf8d7914fc4023f87d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:24:45 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:24:46 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:37:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:37:22 GMT
USER memcache
# Tue, 07 Jul 2026 18:37:22 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:37:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bfaa23277905a226c41af2a58a8bbe167d313c3f4a692d7f3e608b80c872e86`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e99cdeb30ad9e84622fff778eaa2b4495b15639fefd5538d17792435e7b386e`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 102.6 KB (102623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eacfa3bc54ac449d3442fc67dac74ddf8f1f851b9a6d560c89748e118e5de78`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 1.9 MB (1916527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721c693522839264b06fcb548505f6b21c8d53769961a5d270a1d28974756b14`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d915d899e47b23ab1a6af024331bf141b7c709e102265a9d67ce739c634fbd1`  
		Last Modified: Tue, 07 Jul 2026 18:37:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:025aed47356a32f0cffcf45687ff6d432b5e409c5b72076702cd2418215301fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb70c5a59f6d4af6f27e64fc4f13fc3cc0bd54a1c73053f23cd27606c2f10ad`

```dockerfile
```

-	Layers:
	-	`sha256:5dbd3fef436065ecf56a336335bae3756cd57b8b288e5fb30640c543a4dbb62b`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1a5761abcfc404c21822ff6ca85d80bc76c3a6052d160e0d36e8f1bb3a2d9fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b1c51ff60552296de96bef11150eebc5c7a25972ef40be59aa03c54fa11b8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:33:53 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:33:54 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:36:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:36:49 GMT
USER memcache
# Tue, 07 Jul 2026 18:36:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:36:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabbf96f416c97b0b6f4d05783d7917854f6cc6366992692540c933864b75a4e`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e345c0604fb799f73edc02de89adfea540608727aa289761bb68c55dfe80b68`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 92.4 KB (92366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206ae6a5eceddf4f4b6a3dc213fd2d869fdf5f354127f5fa2f1492aaa83ed84`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 1.9 MB (1876013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf3d18d09f034486db99de410dfa3ea0fac4a7de407b3ff4566da33a5a796c4`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fa438a06c5189a44428488d4d874a448adac2a6afd48c91160e1ff7eda353f`  
		Last Modified: Tue, 07 Jul 2026 18:36:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:7aa61658603c3fe4dd891a148bfc6d0583d64260526e5e5d08729fae715eea60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced81d37f937250df3ff094fc9d265c2a0d5204a4ca7af266e6117a0a735c37b`

```dockerfile
```

-	Layers:
	-	`sha256:0bc187ed4816e54ff1e6a3a4407e69479f3da3d49dc9cdb83e81aceec581aaa8`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:032532007c751d0d5071238081d4049a01e6ade4fb4bb753b68b6fb0c9bc7469`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a47711501a74e9103532fb8c432ef1e6450e1dc612098e139edc8aaed8ed6d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd279f4957e2a0db65ab4f734192083db4a56533ed4c3b0c74077f1fd3d63fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:51:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 17:51:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:18 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f75b7dca84a16b2a787daa3b05d50f52e3a66ad28d75373610123719cbdab5`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95fb2dd18cfae170e08e5b031571d5e174f3d5a267f7493afcd2cfb157a76d50`  
		Last Modified: Tue, 07 Jul 2026 17:54:23 GMT  
		Size: 121.8 KB (121848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7872cbdf0e178fb4969d5663edabdc5e800064bc70c8946a43e0a00c28c8543`  
		Last Modified: Tue, 07 Jul 2026 17:54:23 GMT  
		Size: 1.9 MB (1945593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f605c6ccdc6e744bc771d74375fddd9c82ba9ee9ae0728cb4d0b63f355acf9`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138b04536a7b5f2aeb8231f52e02cfbcf9f750fda9a581531144f8ab72865710`  
		Last Modified: Tue, 07 Jul 2026 17:54:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:e34c9a4da611035150437aac4dcea9c943efc98e61f795d26dec105bc55c246e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17328f28f43c4036d69b44a646a9212e472409019a388324caac01775d33030`

```dockerfile
```

-	Layers:
	-	`sha256:bc0d1667c7e65168c835a5af942d5e4b5fcc57780c4e963980be525970ac38fb`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3a34c974ee1e68267576cc46cf1a615b143aa5fa10040c3b373ed9d36b5a074`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; 386

```console
$ docker pull memcached@sha256:c98fe690ad071aa8dbb0523eaccd5ff6e1a6b6c1c10496100489abf0608be0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756f3aebffb9dcdef37606aaf9eb6ff40762e033201d7ac573bf53f79daed4ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:08:06 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:08:06 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:10:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:10:49 GMT
USER memcache
# Tue, 07 Jul 2026 18:10:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:10:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae5ce5a142423e2c3f5b1b304aa07dd506f279017c239ff9ab3efe9df7bcc58`  
		Last Modified: Tue, 07 Jul 2026 18:10:53 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4190655ab86d9448025b484beda8eda66ba062f9d7f713f7aa1d4a70b4654e20`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 110.7 KB (110730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eeef8d8c6b8441635e43dd77f942dccab5226280f6d865702916d505aff3dc2`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 1.9 MB (1922527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667bfea48f54a3c6e0cf7bff224242d00ad020f64c62c8c9a9e2503fa800f584`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7cc2c3e7109300bf89c38ed404f4c4a10e4c7e5b8f05ee60dd953da3edd22d`  
		Last Modified: Tue, 07 Jul 2026 18:10:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5419db01084f7e57e95b4a961a35c000061b631161cff3a25edbc6c44bf0970b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711c05c8eeb5d575b4b8b6c8c29c412abf33b61851dbec3410933a148a06e077`

```dockerfile
```

-	Layers:
	-	`sha256:6d5d59fe9ce4b41f385b8efd4900f81cc9d9fb7a349dbf17a3db45bc0f47079c`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea0941359e75961d14a28fe3eccd4b64330541e75296a11f8b35ed1608e55c6`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 20.5 KB (20472 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:490ce19d6f4a4a2b3fb153e99e17087e6ba54a368a436b8bf37ad42dc61bd542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb19be6667ed80705c3179f48e727c5e41520c3074da795493b828e984ee769`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:31:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:31:27 GMT
USER memcache
# Tue, 07 Jul 2026 18:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822fa96857bf92999c59f51b6673adb63e53280ff304f0dfda50a1f60c011997`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 2.1 MB (2059392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb63af0db3415911cd4b87a75885b5cf927e8b2f0a23d303444ac35ba8de310`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7beab280687944f1a3dbc347b436be8b5bcd339a2dd5f4bd794d039514d1e1ac`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:dff086fe7cee873e2a02863dcad2d0f4062097372ea87ee92386c6ec4faca5c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bba256e83e4a758fd6d7b68f5ef7e46c8690e1406b0ea8e0fd726ad528ca130`

```dockerfile
```

-	Layers:
	-	`sha256:f5bc41e8594a82bb90ccf065b961d6710fd43aa4253a2c66841d276be3cee171`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6389877b2cdf351df5857101637cca7404d34416c251fb13dcb411a1e4fcdb09`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:3dab8bf013c7eeb6d366ee5249c8acd5ef5a2516476c24703310ebe95e42ebf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5739202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf3026af0fb36b3c3f346a30b73251e9d52820b69cfeec6cf31cbf5f32bd83b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 15:23:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 15:23:54 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_VERSION=1.6.44
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Wed, 08 Jul 2026 02:09:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 02:09:41 GMT
USER memcache
# Wed, 08 Jul 2026 02:09:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 08 Jul 2026 02:09:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941235bbafd533700d0cc64f160a6e039681d628670d1459598da425f80a671f`  
		Last Modified: Tue, 07 Jul 2026 15:37:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5ceafabde54b0ee281c4c55e0fa52bc718b5f67e1cf01b2596ce139ce91689`  
		Last Modified: Tue, 07 Jul 2026 15:37:44 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f42818a95dd40c051c9a753b71f15150b23c4cb6e29dd6783ca056040c1ad9b`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 2.1 MB (2054591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5153ba2e22e5d9fd55a442ca899e749da8d360b0735248d97d2b7905b54094b0`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2e1f8899aa9bb01a2ac7b7cfab4e28527b6350859a2274487e243ff9e6640d`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:552fb752652139eb41e2fb09a95f9e44aa5411d4922e47265287d8d185fb2984
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90a784fdf44b8e4b73506c4a62f7eecdb8744a73d1c8748c0f922a1854584d6`

```dockerfile
```

-	Layers:
	-	`sha256:5509c8aff01ecf9e58a4abcfc2793665427e06a69438f9dc03653384f5b674ba`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:674b8eaf64fc35e2ab499151cdb42e8d94e8a1d6e653461f59dcee0e0afc73d3`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:3ba0548c1199a85afb045da26fc2d9085329902b472c101fd2f27c4d7bc6a3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8cb01a7cfcb67e54af00eb1f633b6e42522b7f271ed9cb2f73313d1405e514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 20:26:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:26:46 GMT
USER memcache
# Tue, 07 Jul 2026 20:26:46 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 20:26:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fa5804f7b10e87b751017fa3911374a7d0424d9db3025181ec03d7c0967ab`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 2.0 MB (2000275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38cc94dbeb577eb1dc581e5fe967f87326ce97bf8dabb714d3e016240393c8e`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52988d89b000a45ea4ee01f61111251668faa1ef85187a6542839e16ebf892a3`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:e33b9ac1601c880cdbd7ea1b8cbae5c385ae1ac4d211a47880d5e92486008783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e393793603386b29a5a088ec111a7fb7655009ddedd9102843c12db15b1ed10f`

```dockerfile
```

-	Layers:
	-	`sha256:e253826bb6bdeabe09858b17012a014500da7e731053508ef28b533baf4a4ba8`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91589d031d1edbdebde675569a744f22849ab4d8be59bb68206dabe51e062f15`  
		Last Modified: Tue, 07 Jul 2026 20:26:55 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine3.24`

```console
$ docker pull memcached@sha256:dfacdbd93e7a6f1ad63801753a1fc959dc678a5a1d2141ff438d57e6d8793fc3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `memcached:1.6-alpine3.24` - linux; amd64

```console
$ docker pull memcached@sha256:e00aa689329ac3c25dd94c21b29e7652f58889eba61241b27deeb12d8af2c9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0d5953b259ea47611c590bf8690878ba0fc8a6d554206f2386326acdee5f68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:51:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 17:51:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:07 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:07 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a30e6f843727d7086dd44c0f1d78e4e794fc70ab8336724c2f7caf2ad94d70`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11465b0f27c1479582acdb07e77a6e5f1c57185a051db0f6399c7db1f0e068f`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f61f8ef2ecf86776aa13edbd142247655c873a14262229760a2c34ec9f2f4c4`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 2.0 MB (1969075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866588e9331a626030c9f0f4d9ebe8437b21538577ea760e6fd5dc21260b25f3`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8857efc27e1a936e8b98df820d15d388a209a0e4ababe62467e80202ca2608`  
		Last Modified: Tue, 07 Jul 2026 17:54:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:57aa0157e345dad26c2ca146825a22b46d75125aa24ed9bc93eed34caac25691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea3ce357ad08cf1e5cc3dea4dc2bb9810f85503e58b2ac19cf68bc6430f8253`

```dockerfile
```

-	Layers:
	-	`sha256:5d673322e8ce596d726d8827743000f38e5e97b88ee78f135b67f4b16d4b63aa`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:004c4d426137cc37ef45d4723c00c88c50fdc95ec01d5195399e00708586e5d5`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:54cfa43d464ee54a0616fc4fef82ffa4657faebe2aad63e51ddedd0b27a1034f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0890c5e2f5c457f169f2e18c2c310ef820ee78df22a9faf8d7914fc4023f87d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:24:45 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:24:46 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:37:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:37:22 GMT
USER memcache
# Tue, 07 Jul 2026 18:37:22 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:37:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bfaa23277905a226c41af2a58a8bbe167d313c3f4a692d7f3e608b80c872e86`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e99cdeb30ad9e84622fff778eaa2b4495b15639fefd5538d17792435e7b386e`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 102.6 KB (102623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eacfa3bc54ac449d3442fc67dac74ddf8f1f851b9a6d560c89748e118e5de78`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 1.9 MB (1916527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721c693522839264b06fcb548505f6b21c8d53769961a5d270a1d28974756b14`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d915d899e47b23ab1a6af024331bf141b7c709e102265a9d67ce739c634fbd1`  
		Last Modified: Tue, 07 Jul 2026 18:37:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:025aed47356a32f0cffcf45687ff6d432b5e409c5b72076702cd2418215301fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb70c5a59f6d4af6f27e64fc4f13fc3cc0bd54a1c73053f23cd27606c2f10ad`

```dockerfile
```

-	Layers:
	-	`sha256:5dbd3fef436065ecf56a336335bae3756cd57b8b288e5fb30640c543a4dbb62b`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1a5761abcfc404c21822ff6ca85d80bc76c3a6052d160e0d36e8f1bb3a2d9fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b1c51ff60552296de96bef11150eebc5c7a25972ef40be59aa03c54fa11b8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:33:53 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:33:54 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:36:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:36:49 GMT
USER memcache
# Tue, 07 Jul 2026 18:36:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:36:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabbf96f416c97b0b6f4d05783d7917854f6cc6366992692540c933864b75a4e`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e345c0604fb799f73edc02de89adfea540608727aa289761bb68c55dfe80b68`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 92.4 KB (92366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206ae6a5eceddf4f4b6a3dc213fd2d869fdf5f354127f5fa2f1492aaa83ed84`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 1.9 MB (1876013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf3d18d09f034486db99de410dfa3ea0fac4a7de407b3ff4566da33a5a796c4`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fa438a06c5189a44428488d4d874a448adac2a6afd48c91160e1ff7eda353f`  
		Last Modified: Tue, 07 Jul 2026 18:36:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:7aa61658603c3fe4dd891a148bfc6d0583d64260526e5e5d08729fae715eea60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced81d37f937250df3ff094fc9d265c2a0d5204a4ca7af266e6117a0a735c37b`

```dockerfile
```

-	Layers:
	-	`sha256:0bc187ed4816e54ff1e6a3a4407e69479f3da3d49dc9cdb83e81aceec581aaa8`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:032532007c751d0d5071238081d4049a01e6ade4fb4bb753b68b6fb0c9bc7469`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a47711501a74e9103532fb8c432ef1e6450e1dc612098e139edc8aaed8ed6d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd279f4957e2a0db65ab4f734192083db4a56533ed4c3b0c74077f1fd3d63fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:51:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 17:51:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:18 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f75b7dca84a16b2a787daa3b05d50f52e3a66ad28d75373610123719cbdab5`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95fb2dd18cfae170e08e5b031571d5e174f3d5a267f7493afcd2cfb157a76d50`  
		Last Modified: Tue, 07 Jul 2026 17:54:23 GMT  
		Size: 121.8 KB (121848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7872cbdf0e178fb4969d5663edabdc5e800064bc70c8946a43e0a00c28c8543`  
		Last Modified: Tue, 07 Jul 2026 17:54:23 GMT  
		Size: 1.9 MB (1945593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f605c6ccdc6e744bc771d74375fddd9c82ba9ee9ae0728cb4d0b63f355acf9`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138b04536a7b5f2aeb8231f52e02cfbcf9f750fda9a581531144f8ab72865710`  
		Last Modified: Tue, 07 Jul 2026 17:54:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:e34c9a4da611035150437aac4dcea9c943efc98e61f795d26dec105bc55c246e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17328f28f43c4036d69b44a646a9212e472409019a388324caac01775d33030`

```dockerfile
```

-	Layers:
	-	`sha256:bc0d1667c7e65168c835a5af942d5e4b5fcc57780c4e963980be525970ac38fb`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3a34c974ee1e68267576cc46cf1a615b143aa5fa10040c3b373ed9d36b5a074`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:c98fe690ad071aa8dbb0523eaccd5ff6e1a6b6c1c10496100489abf0608be0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756f3aebffb9dcdef37606aaf9eb6ff40762e033201d7ac573bf53f79daed4ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:08:06 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:08:06 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:10:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:10:49 GMT
USER memcache
# Tue, 07 Jul 2026 18:10:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:10:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae5ce5a142423e2c3f5b1b304aa07dd506f279017c239ff9ab3efe9df7bcc58`  
		Last Modified: Tue, 07 Jul 2026 18:10:53 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4190655ab86d9448025b484beda8eda66ba062f9d7f713f7aa1d4a70b4654e20`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 110.7 KB (110730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eeef8d8c6b8441635e43dd77f942dccab5226280f6d865702916d505aff3dc2`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 1.9 MB (1922527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667bfea48f54a3c6e0cf7bff224242d00ad020f64c62c8c9a9e2503fa800f584`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7cc2c3e7109300bf89c38ed404f4c4a10e4c7e5b8f05ee60dd953da3edd22d`  
		Last Modified: Tue, 07 Jul 2026 18:10:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5419db01084f7e57e95b4a961a35c000061b631161cff3a25edbc6c44bf0970b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711c05c8eeb5d575b4b8b6c8c29c412abf33b61851dbec3410933a148a06e077`

```dockerfile
```

-	Layers:
	-	`sha256:6d5d59fe9ce4b41f385b8efd4900f81cc9d9fb7a349dbf17a3db45bc0f47079c`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea0941359e75961d14a28fe3eccd4b64330541e75296a11f8b35ed1608e55c6`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 20.5 KB (20472 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:490ce19d6f4a4a2b3fb153e99e17087e6ba54a368a436b8bf37ad42dc61bd542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb19be6667ed80705c3179f48e727c5e41520c3074da795493b828e984ee769`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:31:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:31:27 GMT
USER memcache
# Tue, 07 Jul 2026 18:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822fa96857bf92999c59f51b6673adb63e53280ff304f0dfda50a1f60c011997`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 2.1 MB (2059392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb63af0db3415911cd4b87a75885b5cf927e8b2f0a23d303444ac35ba8de310`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7beab280687944f1a3dbc347b436be8b5bcd339a2dd5f4bd794d039514d1e1ac`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:dff086fe7cee873e2a02863dcad2d0f4062097372ea87ee92386c6ec4faca5c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bba256e83e4a758fd6d7b68f5ef7e46c8690e1406b0ea8e0fd726ad528ca130`

```dockerfile
```

-	Layers:
	-	`sha256:f5bc41e8594a82bb90ccf065b961d6710fd43aa4253a2c66841d276be3cee171`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6389877b2cdf351df5857101637cca7404d34416c251fb13dcb411a1e4fcdb09`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:3dab8bf013c7eeb6d366ee5249c8acd5ef5a2516476c24703310ebe95e42ebf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5739202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf3026af0fb36b3c3f346a30b73251e9d52820b69cfeec6cf31cbf5f32bd83b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 15:23:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 15:23:54 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_VERSION=1.6.44
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Wed, 08 Jul 2026 02:09:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 02:09:41 GMT
USER memcache
# Wed, 08 Jul 2026 02:09:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 08 Jul 2026 02:09:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941235bbafd533700d0cc64f160a6e039681d628670d1459598da425f80a671f`  
		Last Modified: Tue, 07 Jul 2026 15:37:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5ceafabde54b0ee281c4c55e0fa52bc718b5f67e1cf01b2596ce139ce91689`  
		Last Modified: Tue, 07 Jul 2026 15:37:44 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f42818a95dd40c051c9a753b71f15150b23c4cb6e29dd6783ca056040c1ad9b`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 2.1 MB (2054591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5153ba2e22e5d9fd55a442ca899e749da8d360b0735248d97d2b7905b54094b0`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2e1f8899aa9bb01a2ac7b7cfab4e28527b6350859a2274487e243ff9e6640d`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:552fb752652139eb41e2fb09a95f9e44aa5411d4922e47265287d8d185fb2984
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90a784fdf44b8e4b73506c4a62f7eecdb8744a73d1c8748c0f922a1854584d6`

```dockerfile
```

-	Layers:
	-	`sha256:5509c8aff01ecf9e58a4abcfc2793665427e06a69438f9dc03653384f5b674ba`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:674b8eaf64fc35e2ab499151cdb42e8d94e8a1d6e653461f59dcee0e0afc73d3`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:3ba0548c1199a85afb045da26fc2d9085329902b472c101fd2f27c4d7bc6a3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8cb01a7cfcb67e54af00eb1f633b6e42522b7f271ed9cb2f73313d1405e514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 20:26:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:26:46 GMT
USER memcache
# Tue, 07 Jul 2026 20:26:46 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 20:26:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fa5804f7b10e87b751017fa3911374a7d0424d9db3025181ec03d7c0967ab`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 2.0 MB (2000275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38cc94dbeb577eb1dc581e5fe967f87326ce97bf8dabb714d3e016240393c8e`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52988d89b000a45ea4ee01f61111251668faa1ef85187a6542839e16ebf892a3`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:e33b9ac1601c880cdbd7ea1b8cbae5c385ae1ac4d211a47880d5e92486008783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e393793603386b29a5a088ec111a7fb7655009ddedd9102843c12db15b1ed10f`

```dockerfile
```

-	Layers:
	-	`sha256:e253826bb6bdeabe09858b17012a014500da7e731053508ef28b533baf4a4ba8`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91589d031d1edbdebde675569a744f22849ab4d8be59bb68206dabe51e062f15`  
		Last Modified: Tue, 07 Jul 2026 20:26:55 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-trixie`

```console
$ docker pull memcached@sha256:deae07c1fce831887ffb24f5cc68cde691916c31782746bd994635b0ec3b90bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `memcached:1.6-trixie` - linux; amd64

```console
$ docker pull memcached@sha256:4e4cc3df3e764aad4394ec7bedefe4b5dc758083f6ddbd2d40738ddb52f4fd5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801b5bd52c0373eb52f35af4717c91f69c64e8ba8432b2b9969673a3343951e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:51:31 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 17:51:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:20 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:20 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21031edcf54239f2eb53ee71b098daa7f542ca3924852e4bc60c211a27d2fe71`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbe1b9e141c299f97115783f06387912d621d234169327bb9375418949b0da2`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 136.7 KB (136705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f1221bb96a4bf1b5425418a7dc511cc509143b99be675de232b0172a9bfeb5`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 2.3 MB (2281337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe049733ac2e19f4708bfea14d9549981875112ed7c5c8967bfb0919cafcf7c`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922b6b4d7b1405c635ad711612cffd7f000f3d6fa988936a3bffeb52c430f934`  
		Last Modified: Tue, 07 Jul 2026 17:54:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:fe176f7071209af166d8670e8cdf0ea42a946f751ea6c83f2034e46a4c699020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31e0b24d9e891dc70bcefbd8f9e2cd5a681fdcd7386506ce4bf24a3ece46144`

```dockerfile
```

-	Layers:
	-	`sha256:67793084eb7ffe92a8a8189a9e113c187062ec7609a2b23f5d70d226317d5cf7`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a29dc9d7806a217a6d632026c133d740748378553c9a066f27f05cf733ee6513`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:dfcb5968c4b1ff3c90621846441144ff19987817595de9402a87f33de71b00aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30318032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce3f7f7098bba9fe18fb1da50fd6388ed09587ab56ba4650c228e7ff5b04cb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:25:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:25:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:28:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:28:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:28:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:28:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:28:37 GMT
USER memcache
# Tue, 07 Jul 2026 18:28:37 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:28:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67126efbfb02dc31f2fcfe60cb28774368f9ea86f4c91c216156868ccb81a7e`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c9a95a8baa5d7fe67d8681b27f9a94a4dd43b8b79d4c5d426c9eae60a8ee6f`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 144.2 KB (144174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9141dcdca51ee6e1a632ddf67887bceafa9a546698eb093569e2c2720ce2080`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 2.2 MB (2213121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651dd903cb94ec5cc92bda71ae178441da11317a3c3a68ce3e5cc7091b93241a`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ce5f0a5ad8d4fe577dd04541c886b6278d0074b793c5ed7a5bb7c5bfdfd732`  
		Last Modified: Tue, 07 Jul 2026 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:decb811a0a880ce42d9d79173e6ef5ae52e63cd2a59c558dbfde16153a6b1be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565106087a71c440688fd774fe59362de0f1fff98a1c5d66d0b89fbc6860a4a3`

```dockerfile
```

-	Layers:
	-	`sha256:addc528a2faeeed733f070e84dbfdd2d025aa756a560bc3c58334087aa4db0cd`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acfefd2a0811c20c5c36c8bca650c9026e05322fe7cd75c766c27305ad9b02e4`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:d6ea6f3f892154799f49d5ef81e52b591f814b8be46594ea01094852cf325a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28515261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce01e9f369e244a16162d126d1d65abfa6c32a1c6113ca65a2b564a09456ae0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:33:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:33:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:37:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:37:00 GMT
USER memcache
# Tue, 07 Jul 2026 18:37:00 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:37:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd8ce52aaf0f37e18c9cdac7b3f3b414f826fc4cb88f6fb1f69658cf5be3077`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba997fd282413d55bcbcaedb9314c99c9852eb66a20d6390802fa505cf7cea9`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 135.4 KB (135381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa741cee931dba27b03915519d699ab937e8510ec23c4c7a9f006f5754d0c2be`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 2.2 MB (2167312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a518663ad3cb76336bfb9d88e3fa2ca35ea9e384c550e215c4a6919956fc0432`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ee24042a0c0690125b0247825d4464ad4106ffc01ed7ee31c1deaed0df48a6`  
		Last Modified: Tue, 07 Jul 2026 18:37:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:0f0ad618bc698eb20f010e4f2bc79cb6b7a1db56bd78cabb5bdc00543f72866e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40c23d10e011ebf3e20085ba74696cc73ee9409d922ce6728a3f0e3435b031f`

```dockerfile
```

-	Layers:
	-	`sha256:b33bb326cb2bb9a654cb80e1b1f735101d99721aae9b971155bd8bb7651bc05b`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:617fea10f51adf2afefff992138cec9602e6377ee5aa71a7c6c2352d7cb497a6`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c1954dd5465568bb8c8c69976b1d770d87e5c1a24278361c69adf2bbbd7bb759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32567111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126e9a459abb2e754848faa0c03a993cdcf7cba8fe03642ba79e428e96b859fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:51:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 17:51:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:27 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604d99e4caaf587bf0d7974a971d4d0c6388c47af3aaf0e0809cc890dfc216ae`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632c800122a4857d34ea9018a86d17c131d6854b7bb93fdf1f9d9331a00c2283`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 153.5 KB (153504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40632567f6500b9d84fbd5e2da6e5a2988282cf3806986e3aaf091e71d5561ba`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 2.3 MB (2263541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5fa2d0483db96d306e66820493c054e7a31d7885398c237f084c57136843cdc`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b9df7bbbffbba997a793a1d9150edb87362ec1fc51f13b359bf6fc4086eab8`  
		Last Modified: Tue, 07 Jul 2026 17:54:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:675b4521416528459edf11eb293956e29ba6d67fb823736d6c8dae24f8f592f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e5fb5de7074dcd0f6a276ca63f478917e1e491eb842932082a32a390e168cc`

```dockerfile
```

-	Layers:
	-	`sha256:083f9633a280cca824d0583ab3c021e2f99ce7bcf78e7bd86c428119888d82be`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:101323382da78c85d259f95a8bac89555f6aa3c578276f83b0c373f7467f1b62`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; 386

```console
$ docker pull memcached@sha256:9ba8e737493510f7e51cd8e2efb05cb506bc4cb49234a392ab402a087f451914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f3d9de28b136197f5b216fcae268d02d8bb2332737f2f28e255f694a83323b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:08:03 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:11:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:11:07 GMT
USER memcache
# Tue, 07 Jul 2026 18:11:07 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:11:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146e2060380361a51cbb9710d253786b2f6d0181686093b119e859ff6a9f42ba`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5440a42d8c073786f4e19a425c2862787ffd4a0f248eeab811b69a56b7fbe6d3`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 147.5 KB (147526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ee3d00a4cefccec481dd19900b741c13cc9152ab221bd6da94ab6661150410`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 2.2 MB (2226060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1380c174cf2742616ac236e2072382102e7ed297269441a859ffaeeabb6dc40f`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774851faf922f91eed59e73259a54f301581a1dcdca11e2fbe8066b390578521`  
		Last Modified: Tue, 07 Jul 2026 18:11:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2363cd9ed9f5f47c27310f74da1ef640cbedf7ab3de07f1c364da9aa80529ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe370dc29776b6676d8abe9dc987d0c96783aeff228e5b78a95992b77f1dac6`

```dockerfile
```

-	Layers:
	-	`sha256:56f466203b94cc2473a40ca334d9d093ff42bc6f8ef4da3078e740e3ff1ea0c3`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b7e7fd4e6fadbaab554e59aa74f90f85a4a91dc21d594e5bdee950543ef8373`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:73dac8f029eb0b81d121f3bb73fb72d81979e4cb01b8e6ebe2711128ef651441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36174293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b74a31a663472305d39c0058f4e8009de9999e83a299c1ec5cb186e77e42a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:50:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:50:10 GMT
USER memcache
# Tue, 07 Jul 2026 18:50:10 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:50:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb94829698f34745d5f5661c13962c6f3c0a317c89305195441290fa9d69befc`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 2.4 MB (2396017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b8c981b6aa04b36992e9ae3da795bf1b611bcc86a92a999110b1a6f57e9182`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9277c52647cb68bca423348087fac908060eebb122259f4ace09cfde29725a8`  
		Last Modified: Tue, 07 Jul 2026 18:50:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:11977db85cfdbc4d4b69ef3b8771f8708c0889b5570ae11920213dc6b45aa43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa83df8f4b01f2e49bb16f9fd6cd98b7c2be5ee10acca030395f0bfb4c067d4f`

```dockerfile
```

-	Layers:
	-	`sha256:e8e169095d7827333dbfeb01b6abd21d157005a13e4111604bc35190b51c3f6c`  
		Last Modified: Tue, 07 Jul 2026 18:50:21 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f83dd39f4ecc41fd4ed93579fd1a6bdf5975e76587154a52645011615e586caa`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 22.2 KB (22224 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:35995ecc1bdbf7b9c0f1952e81f50f64c5f3a5e3b36bc26d18a7f0e151b2bd56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30627437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6ce375987461acf4659cc0361be8d29961bfc9d2702c96b04f8ecc75879104`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_VERSION=1.6.44
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Wed, 08 Jul 2026 01:35:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 08 Jul 2026 01:35:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 01:35:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 08 Jul 2026 01:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 01:35:21 GMT
USER memcache
# Wed, 08 Jul 2026 01:35:21 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 08 Jul 2026 01:35:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb7a88a05ac2eb6266c41c2322affac58071843709f2384e7a7552581853d78`  
		Last Modified: Tue, 07 Jul 2026 15:23:07 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9824dca37fe76f400ed6cc9604f1253f8ff58ecaf94208b0ad1af29248af11a9`  
		Last Modified: Tue, 07 Jul 2026 15:23:07 GMT  
		Size: 133.1 KB (133064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34688dbd012f83568bcd7a751cfac7eb6d8f4cef64719b05c460cd7f5f3ea142`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 2.2 MB (2210480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80794ee201a8b9ff7b14d8fe25c33849f5eb861354021aa055a5cd87079eb6b`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3506ea788bf1ef68093e63f26d8e2d71b32607b0442dd45594f9304bb35450e9`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:098025c748258f6085a0a48ec223253bcf2e31195e1428da5c07086f9fca5eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf551a72a4555cf8c11f9497d082270c631435e51207f529c8707d16ae1fc97d`

```dockerfile
```

-	Layers:
	-	`sha256:7655d0f9b3c0012ce2b7532928e0ff8574a23d4f18a9ffd3a42eba9b8290a26e`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7d586c618ffeb5f44ba16c05b2698c5274a64888cdf5a801519e3e3c912874`  
		Last Modified: Wed, 08 Jul 2026 01:36:06 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:2bb86721eb481469ec98b921bb3f93e41de5081e133edaa8223b468460c54d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fd8b39d12f4385c99a6c3fc554a8204b68f263216a8f738e1f591eebb3d8df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 20:23:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 20:23:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 20:45:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:45:58 GMT
USER memcache
# Tue, 07 Jul 2026 20:45:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 20:45:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad1193e58306c0282ce34e45f0024c881813b7d1971e7079bc6067c894ca9aa`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c58ddfcc69c2d0d1b095504de8cdf49d98b64256a7144ac301cdcd717af4cdf`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 140.5 KB (140531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b68ea9be4244366b9dbec4579d8f90af695054a7291d6532a2246f1384087f`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 2.3 MB (2299455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fac116dd75a5774f843b887d798a8cc6858f58f0bf45387d4f34cef12c377b8`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d63f4f4f084883f788b3888e4af8943c8ca99ac1c02f2ce9c9e69c2d40936a`  
		Last Modified: Tue, 07 Jul 2026 20:46:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3d76c4916699b1a5dd03a3a75f22eb48fd080693b5b7152c3836ba9fabb2482b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2296c5dd4d7b5b375ced621090e8e36c25e5881301ecd61931d5b47f932b6bd`

```dockerfile
```

-	Layers:
	-	`sha256:ebaa297afdc5ff0989ad25de9a3ef75514a7605b5a94dae012a8ff9995e879b5`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c74a69a7f51445b984bfc705ff0acbd392af3444b4bb2267b3ed40c39f44885`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45`

```console
$ docker pull memcached@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `memcached:1.6.45-alpine`

```console
$ docker pull memcached@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `memcached:1.6.45-alpine3.24`

```console
$ docker pull memcached@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `memcached:1.6.45-trixie`

```console
$ docker pull memcached@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `memcached:alpine`

```console
$ docker pull memcached@sha256:dfacdbd93e7a6f1ad63801753a1fc959dc678a5a1d2141ff438d57e6d8793fc3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:e00aa689329ac3c25dd94c21b29e7652f58889eba61241b27deeb12d8af2c9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0d5953b259ea47611c590bf8690878ba0fc8a6d554206f2386326acdee5f68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:51:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 17:51:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:07 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:07 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a30e6f843727d7086dd44c0f1d78e4e794fc70ab8336724c2f7caf2ad94d70`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11465b0f27c1479582acdb07e77a6e5f1c57185a051db0f6399c7db1f0e068f`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f61f8ef2ecf86776aa13edbd142247655c873a14262229760a2c34ec9f2f4c4`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 2.0 MB (1969075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866588e9331a626030c9f0f4d9ebe8437b21538577ea760e6fd5dc21260b25f3`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8857efc27e1a936e8b98df820d15d388a209a0e4ababe62467e80202ca2608`  
		Last Modified: Tue, 07 Jul 2026 17:54:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:57aa0157e345dad26c2ca146825a22b46d75125aa24ed9bc93eed34caac25691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea3ce357ad08cf1e5cc3dea4dc2bb9810f85503e58b2ac19cf68bc6430f8253`

```dockerfile
```

-	Layers:
	-	`sha256:5d673322e8ce596d726d8827743000f38e5e97b88ee78f135b67f4b16d4b63aa`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:004c4d426137cc37ef45d4723c00c88c50fdc95ec01d5195399e00708586e5d5`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:54cfa43d464ee54a0616fc4fef82ffa4657faebe2aad63e51ddedd0b27a1034f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0890c5e2f5c457f169f2e18c2c310ef820ee78df22a9faf8d7914fc4023f87d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:24:45 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:24:46 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:37:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:37:22 GMT
USER memcache
# Tue, 07 Jul 2026 18:37:22 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:37:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bfaa23277905a226c41af2a58a8bbe167d313c3f4a692d7f3e608b80c872e86`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e99cdeb30ad9e84622fff778eaa2b4495b15639fefd5538d17792435e7b386e`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 102.6 KB (102623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eacfa3bc54ac449d3442fc67dac74ddf8f1f851b9a6d560c89748e118e5de78`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 1.9 MB (1916527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721c693522839264b06fcb548505f6b21c8d53769961a5d270a1d28974756b14`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d915d899e47b23ab1a6af024331bf141b7c709e102265a9d67ce739c634fbd1`  
		Last Modified: Tue, 07 Jul 2026 18:37:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:025aed47356a32f0cffcf45687ff6d432b5e409c5b72076702cd2418215301fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb70c5a59f6d4af6f27e64fc4f13fc3cc0bd54a1c73053f23cd27606c2f10ad`

```dockerfile
```

-	Layers:
	-	`sha256:5dbd3fef436065ecf56a336335bae3756cd57b8b288e5fb30640c543a4dbb62b`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1a5761abcfc404c21822ff6ca85d80bc76c3a6052d160e0d36e8f1bb3a2d9fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b1c51ff60552296de96bef11150eebc5c7a25972ef40be59aa03c54fa11b8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:33:53 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:33:54 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:36:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:36:49 GMT
USER memcache
# Tue, 07 Jul 2026 18:36:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:36:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabbf96f416c97b0b6f4d05783d7917854f6cc6366992692540c933864b75a4e`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e345c0604fb799f73edc02de89adfea540608727aa289761bb68c55dfe80b68`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 92.4 KB (92366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206ae6a5eceddf4f4b6a3dc213fd2d869fdf5f354127f5fa2f1492aaa83ed84`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 1.9 MB (1876013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf3d18d09f034486db99de410dfa3ea0fac4a7de407b3ff4566da33a5a796c4`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fa438a06c5189a44428488d4d874a448adac2a6afd48c91160e1ff7eda353f`  
		Last Modified: Tue, 07 Jul 2026 18:36:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:7aa61658603c3fe4dd891a148bfc6d0583d64260526e5e5d08729fae715eea60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced81d37f937250df3ff094fc9d265c2a0d5204a4ca7af266e6117a0a735c37b`

```dockerfile
```

-	Layers:
	-	`sha256:0bc187ed4816e54ff1e6a3a4407e69479f3da3d49dc9cdb83e81aceec581aaa8`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:032532007c751d0d5071238081d4049a01e6ade4fb4bb753b68b6fb0c9bc7469`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a47711501a74e9103532fb8c432ef1e6450e1dc612098e139edc8aaed8ed6d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd279f4957e2a0db65ab4f734192083db4a56533ed4c3b0c74077f1fd3d63fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:51:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 17:51:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:18 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f75b7dca84a16b2a787daa3b05d50f52e3a66ad28d75373610123719cbdab5`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95fb2dd18cfae170e08e5b031571d5e174f3d5a267f7493afcd2cfb157a76d50`  
		Last Modified: Tue, 07 Jul 2026 17:54:23 GMT  
		Size: 121.8 KB (121848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7872cbdf0e178fb4969d5663edabdc5e800064bc70c8946a43e0a00c28c8543`  
		Last Modified: Tue, 07 Jul 2026 17:54:23 GMT  
		Size: 1.9 MB (1945593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f605c6ccdc6e744bc771d74375fddd9c82ba9ee9ae0728cb4d0b63f355acf9`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138b04536a7b5f2aeb8231f52e02cfbcf9f750fda9a581531144f8ab72865710`  
		Last Modified: Tue, 07 Jul 2026 17:54:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:e34c9a4da611035150437aac4dcea9c943efc98e61f795d26dec105bc55c246e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17328f28f43c4036d69b44a646a9212e472409019a388324caac01775d33030`

```dockerfile
```

-	Layers:
	-	`sha256:bc0d1667c7e65168c835a5af942d5e4b5fcc57780c4e963980be525970ac38fb`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3a34c974ee1e68267576cc46cf1a615b143aa5fa10040c3b373ed9d36b5a074`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:c98fe690ad071aa8dbb0523eaccd5ff6e1a6b6c1c10496100489abf0608be0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756f3aebffb9dcdef37606aaf9eb6ff40762e033201d7ac573bf53f79daed4ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:08:06 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:08:06 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:10:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:10:49 GMT
USER memcache
# Tue, 07 Jul 2026 18:10:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:10:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae5ce5a142423e2c3f5b1b304aa07dd506f279017c239ff9ab3efe9df7bcc58`  
		Last Modified: Tue, 07 Jul 2026 18:10:53 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4190655ab86d9448025b484beda8eda66ba062f9d7f713f7aa1d4a70b4654e20`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 110.7 KB (110730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eeef8d8c6b8441635e43dd77f942dccab5226280f6d865702916d505aff3dc2`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 1.9 MB (1922527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667bfea48f54a3c6e0cf7bff224242d00ad020f64c62c8c9a9e2503fa800f584`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7cc2c3e7109300bf89c38ed404f4c4a10e4c7e5b8f05ee60dd953da3edd22d`  
		Last Modified: Tue, 07 Jul 2026 18:10:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5419db01084f7e57e95b4a961a35c000061b631161cff3a25edbc6c44bf0970b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711c05c8eeb5d575b4b8b6c8c29c412abf33b61851dbec3410933a148a06e077`

```dockerfile
```

-	Layers:
	-	`sha256:6d5d59fe9ce4b41f385b8efd4900f81cc9d9fb7a349dbf17a3db45bc0f47079c`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea0941359e75961d14a28fe3eccd4b64330541e75296a11f8b35ed1608e55c6`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 20.5 KB (20472 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:490ce19d6f4a4a2b3fb153e99e17087e6ba54a368a436b8bf37ad42dc61bd542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb19be6667ed80705c3179f48e727c5e41520c3074da795493b828e984ee769`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:31:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:31:27 GMT
USER memcache
# Tue, 07 Jul 2026 18:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822fa96857bf92999c59f51b6673adb63e53280ff304f0dfda50a1f60c011997`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 2.1 MB (2059392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb63af0db3415911cd4b87a75885b5cf927e8b2f0a23d303444ac35ba8de310`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7beab280687944f1a3dbc347b436be8b5bcd339a2dd5f4bd794d039514d1e1ac`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:dff086fe7cee873e2a02863dcad2d0f4062097372ea87ee92386c6ec4faca5c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bba256e83e4a758fd6d7b68f5ef7e46c8690e1406b0ea8e0fd726ad528ca130`

```dockerfile
```

-	Layers:
	-	`sha256:f5bc41e8594a82bb90ccf065b961d6710fd43aa4253a2c66841d276be3cee171`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6389877b2cdf351df5857101637cca7404d34416c251fb13dcb411a1e4fcdb09`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:3dab8bf013c7eeb6d366ee5249c8acd5ef5a2516476c24703310ebe95e42ebf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5739202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf3026af0fb36b3c3f346a30b73251e9d52820b69cfeec6cf31cbf5f32bd83b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 15:23:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 15:23:54 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_VERSION=1.6.44
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Wed, 08 Jul 2026 02:09:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 02:09:41 GMT
USER memcache
# Wed, 08 Jul 2026 02:09:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 08 Jul 2026 02:09:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941235bbafd533700d0cc64f160a6e039681d628670d1459598da425f80a671f`  
		Last Modified: Tue, 07 Jul 2026 15:37:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5ceafabde54b0ee281c4c55e0fa52bc718b5f67e1cf01b2596ce139ce91689`  
		Last Modified: Tue, 07 Jul 2026 15:37:44 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f42818a95dd40c051c9a753b71f15150b23c4cb6e29dd6783ca056040c1ad9b`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 2.1 MB (2054591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5153ba2e22e5d9fd55a442ca899e749da8d360b0735248d97d2b7905b54094b0`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2e1f8899aa9bb01a2ac7b7cfab4e28527b6350859a2274487e243ff9e6640d`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:552fb752652139eb41e2fb09a95f9e44aa5411d4922e47265287d8d185fb2984
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90a784fdf44b8e4b73506c4a62f7eecdb8744a73d1c8748c0f922a1854584d6`

```dockerfile
```

-	Layers:
	-	`sha256:5509c8aff01ecf9e58a4abcfc2793665427e06a69438f9dc03653384f5b674ba`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:674b8eaf64fc35e2ab499151cdb42e8d94e8a1d6e653461f59dcee0e0afc73d3`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:3ba0548c1199a85afb045da26fc2d9085329902b472c101fd2f27c4d7bc6a3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8cb01a7cfcb67e54af00eb1f633b6e42522b7f271ed9cb2f73313d1405e514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 20:26:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:26:46 GMT
USER memcache
# Tue, 07 Jul 2026 20:26:46 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 20:26:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fa5804f7b10e87b751017fa3911374a7d0424d9db3025181ec03d7c0967ab`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 2.0 MB (2000275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38cc94dbeb577eb1dc581e5fe967f87326ce97bf8dabb714d3e016240393c8e`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52988d89b000a45ea4ee01f61111251668faa1ef85187a6542839e16ebf892a3`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:e33b9ac1601c880cdbd7ea1b8cbae5c385ae1ac4d211a47880d5e92486008783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e393793603386b29a5a088ec111a7fb7655009ddedd9102843c12db15b1ed10f`

```dockerfile
```

-	Layers:
	-	`sha256:e253826bb6bdeabe09858b17012a014500da7e731053508ef28b533baf4a4ba8`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91589d031d1edbdebde675569a744f22849ab4d8be59bb68206dabe51e062f15`  
		Last Modified: Tue, 07 Jul 2026 20:26:55 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:alpine3.24`

```console
$ docker pull memcached@sha256:dfacdbd93e7a6f1ad63801753a1fc959dc678a5a1d2141ff438d57e6d8793fc3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `memcached:alpine3.24` - linux; amd64

```console
$ docker pull memcached@sha256:e00aa689329ac3c25dd94c21b29e7652f58889eba61241b27deeb12d8af2c9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0d5953b259ea47611c590bf8690878ba0fc8a6d554206f2386326acdee5f68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:51:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 17:51:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:07 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:07 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:07 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a30e6f843727d7086dd44c0f1d78e4e794fc70ab8336724c2f7caf2ad94d70`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11465b0f27c1479582acdb07e77a6e5f1c57185a051db0f6399c7db1f0e068f`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f61f8ef2ecf86776aa13edbd142247655c873a14262229760a2c34ec9f2f4c4`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 2.0 MB (1969075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866588e9331a626030c9f0f4d9ebe8437b21538577ea760e6fd5dc21260b25f3`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8857efc27e1a936e8b98df820d15d388a209a0e4ababe62467e80202ca2608`  
		Last Modified: Tue, 07 Jul 2026 17:54:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:57aa0157e345dad26c2ca146825a22b46d75125aa24ed9bc93eed34caac25691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea3ce357ad08cf1e5cc3dea4dc2bb9810f85503e58b2ac19cf68bc6430f8253`

```dockerfile
```

-	Layers:
	-	`sha256:5d673322e8ce596d726d8827743000f38e5e97b88ee78f135b67f4b16d4b63aa`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:004c4d426137cc37ef45d4723c00c88c50fdc95ec01d5195399e00708586e5d5`  
		Last Modified: Tue, 07 Jul 2026 17:54:12 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:54cfa43d464ee54a0616fc4fef82ffa4657faebe2aad63e51ddedd0b27a1034f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0890c5e2f5c457f169f2e18c2c310ef820ee78df22a9faf8d7914fc4023f87d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:24:45 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:24:46 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:37:22 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:37:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:37:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:37:22 GMT
USER memcache
# Tue, 07 Jul 2026 18:37:22 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:37:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bfaa23277905a226c41af2a58a8bbe167d313c3f4a692d7f3e608b80c872e86`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e99cdeb30ad9e84622fff778eaa2b4495b15639fefd5538d17792435e7b386e`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 102.6 KB (102623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eacfa3bc54ac449d3442fc67dac74ddf8f1f851b9a6d560c89748e118e5de78`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 1.9 MB (1916527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721c693522839264b06fcb548505f6b21c8d53769961a5d270a1d28974756b14`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d915d899e47b23ab1a6af024331bf141b7c709e102265a9d67ce739c634fbd1`  
		Last Modified: Tue, 07 Jul 2026 18:37:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:025aed47356a32f0cffcf45687ff6d432b5e409c5b72076702cd2418215301fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb70c5a59f6d4af6f27e64fc4f13fc3cc0bd54a1c73053f23cd27606c2f10ad`

```dockerfile
```

-	Layers:
	-	`sha256:5dbd3fef436065ecf56a336335bae3756cd57b8b288e5fb30640c543a4dbb62b`  
		Last Modified: Tue, 07 Jul 2026 18:37:26 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1a5761abcfc404c21822ff6ca85d80bc76c3a6052d160e0d36e8f1bb3a2d9fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b1c51ff60552296de96bef11150eebc5c7a25972ef40be59aa03c54fa11b8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:33:53 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:33:54 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:36:49 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:36:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:36:49 GMT
USER memcache
# Tue, 07 Jul 2026 18:36:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:36:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabbf96f416c97b0b6f4d05783d7917854f6cc6366992692540c933864b75a4e`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e345c0604fb799f73edc02de89adfea540608727aa289761bb68c55dfe80b68`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 92.4 KB (92366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206ae6a5eceddf4f4b6a3dc213fd2d869fdf5f354127f5fa2f1492aaa83ed84`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 1.9 MB (1876013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf3d18d09f034486db99de410dfa3ea0fac4a7de407b3ff4566da33a5a796c4`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fa438a06c5189a44428488d4d874a448adac2a6afd48c91160e1ff7eda353f`  
		Last Modified: Tue, 07 Jul 2026 18:36:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:7aa61658603c3fe4dd891a148bfc6d0583d64260526e5e5d08729fae715eea60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced81d37f937250df3ff094fc9d265c2a0d5204a4ca7af266e6117a0a735c37b`

```dockerfile
```

-	Layers:
	-	`sha256:0bc187ed4816e54ff1e6a3a4407e69479f3da3d49dc9cdb83e81aceec581aaa8`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:032532007c751d0d5071238081d4049a01e6ade4fb4bb753b68b6fb0c9bc7469`  
		Last Modified: Tue, 07 Jul 2026 18:36:54 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a47711501a74e9103532fb8c432ef1e6450e1dc612098e139edc8aaed8ed6d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd279f4957e2a0db65ab4f734192083db4a56533ed4c3b0c74077f1fd3d63fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:51:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 17:51:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:18 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:18 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f75b7dca84a16b2a787daa3b05d50f52e3a66ad28d75373610123719cbdab5`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95fb2dd18cfae170e08e5b031571d5e174f3d5a267f7493afcd2cfb157a76d50`  
		Last Modified: Tue, 07 Jul 2026 17:54:23 GMT  
		Size: 121.8 KB (121848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7872cbdf0e178fb4969d5663edabdc5e800064bc70c8946a43e0a00c28c8543`  
		Last Modified: Tue, 07 Jul 2026 17:54:23 GMT  
		Size: 1.9 MB (1945593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f605c6ccdc6e744bc771d74375fddd9c82ba9ee9ae0728cb4d0b63f355acf9`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138b04536a7b5f2aeb8231f52e02cfbcf9f750fda9a581531144f8ab72865710`  
		Last Modified: Tue, 07 Jul 2026 17:54:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:e34c9a4da611035150437aac4dcea9c943efc98e61f795d26dec105bc55c246e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17328f28f43c4036d69b44a646a9212e472409019a388324caac01775d33030`

```dockerfile
```

-	Layers:
	-	`sha256:bc0d1667c7e65168c835a5af942d5e4b5fcc57780c4e963980be525970ac38fb`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3a34c974ee1e68267576cc46cf1a615b143aa5fa10040c3b373ed9d36b5a074`  
		Last Modified: Tue, 07 Jul 2026 17:54:22 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:c98fe690ad071aa8dbb0523eaccd5ff6e1a6b6c1c10496100489abf0608be0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756f3aebffb9dcdef37606aaf9eb6ff40762e033201d7ac573bf53f79daed4ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:08:06 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 18:08:06 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:10:49 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:10:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:10:49 GMT
USER memcache
# Tue, 07 Jul 2026 18:10:49 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:10:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae5ce5a142423e2c3f5b1b304aa07dd506f279017c239ff9ab3efe9df7bcc58`  
		Last Modified: Tue, 07 Jul 2026 18:10:53 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4190655ab86d9448025b484beda8eda66ba062f9d7f713f7aa1d4a70b4654e20`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 110.7 KB (110730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eeef8d8c6b8441635e43dd77f942dccab5226280f6d865702916d505aff3dc2`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 1.9 MB (1922527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667bfea48f54a3c6e0cf7bff224242d00ad020f64c62c8c9a9e2503fa800f584`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7cc2c3e7109300bf89c38ed404f4c4a10e4c7e5b8f05ee60dd953da3edd22d`  
		Last Modified: Tue, 07 Jul 2026 18:10:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5419db01084f7e57e95b4a961a35c000061b631161cff3a25edbc6c44bf0970b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711c05c8eeb5d575b4b8b6c8c29c412abf33b61851dbec3410933a148a06e077`

```dockerfile
```

-	Layers:
	-	`sha256:6d5d59fe9ce4b41f385b8efd4900f81cc9d9fb7a349dbf17a3db45bc0f47079c`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea0941359e75961d14a28fe3eccd4b64330541e75296a11f8b35ed1608e55c6`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 20.5 KB (20472 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:490ce19d6f4a4a2b3fb153e99e17087e6ba54a368a436b8bf37ad42dc61bd542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb19be6667ed80705c3179f48e727c5e41520c3074da795493b828e984ee769`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:42:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:31:23 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:31:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:31:27 GMT
USER memcache
# Tue, 07 Jul 2026 18:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ab42e9fa209561ea35daa341e0c8b7840004d01353cc66a0fc8ebfba557a81`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 956.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ad51dfd812c83d08ee5e405f4aa86ae6e735e02525178ce71feae27365c2a0`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 126.3 KB (126251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822fa96857bf92999c59f51b6673adb63e53280ff304f0dfda50a1f60c011997`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 2.1 MB (2059392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb63af0db3415911cd4b87a75885b5cf927e8b2f0a23d303444ac35ba8de310`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7beab280687944f1a3dbc347b436be8b5bcd339a2dd5f4bd794d039514d1e1ac`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:dff086fe7cee873e2a02863dcad2d0f4062097372ea87ee92386c6ec4faca5c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bba256e83e4a758fd6d7b68f5ef7e46c8690e1406b0ea8e0fd726ad528ca130`

```dockerfile
```

-	Layers:
	-	`sha256:f5bc41e8594a82bb90ccf065b961d6710fd43aa4253a2c66841d276be3cee171`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6389877b2cdf351df5857101637cca7404d34416c251fb13dcb411a1e4fcdb09`  
		Last Modified: Tue, 07 Jul 2026 18:31:35 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:3dab8bf013c7eeb6d366ee5249c8acd5ef5a2516476c24703310ebe95e42ebf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5739202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf3026af0fb36b3c3f346a30b73251e9d52820b69cfeec6cf31cbf5f32bd83b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 15:23:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 07 Jul 2026 15:23:54 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_VERSION=1.6.44
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Wed, 08 Jul 2026 02:09:40 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Wed, 08 Jul 2026 02:09:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 08 Jul 2026 02:09:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 02:09:41 GMT
USER memcache
# Wed, 08 Jul 2026 02:09:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 08 Jul 2026 02:09:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941235bbafd533700d0cc64f160a6e039681d628670d1459598da425f80a671f`  
		Last Modified: Tue, 07 Jul 2026 15:37:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5ceafabde54b0ee281c4c55e0fa52bc718b5f67e1cf01b2596ce139ce91689`  
		Last Modified: Tue, 07 Jul 2026 15:37:44 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f42818a95dd40c051c9a753b71f15150b23c4cb6e29dd6783ca056040c1ad9b`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 2.1 MB (2054591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5153ba2e22e5d9fd55a442ca899e749da8d360b0735248d97d2b7905b54094b0`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2e1f8899aa9bb01a2ac7b7cfab4e28527b6350859a2274487e243ff9e6640d`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:552fb752652139eb41e2fb09a95f9e44aa5411d4922e47265287d8d185fb2984
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90a784fdf44b8e4b73506c4a62f7eecdb8744a73d1c8748c0f922a1854584d6`

```dockerfile
```

-	Layers:
	-	`sha256:5509c8aff01ecf9e58a4abcfc2793665427e06a69438f9dc03653384f5b674ba`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:674b8eaf64fc35e2ab499151cdb42e8d94e8a1d6e653461f59dcee0e0afc73d3`  
		Last Modified: Wed, 08 Jul 2026 02:10:04 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:3ba0548c1199a85afb045da26fc2d9085329902b472c101fd2f27c4d7bc6a3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8cb01a7cfcb67e54af00eb1f633b6e42522b7f271ed9cb2f73313d1405e514`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 20:26:46 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 20:26:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 20:26:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:26:46 GMT
USER memcache
# Tue, 07 Jul 2026 20:26:46 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 20:26:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30370c595c056e472723b791337c26580ebbea923bded312d0d4eb296b2db741`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564d2d22cc556ef61fe24d9da38570eac3ba29e020c7a6cb600c63402ef1c04f`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 114.3 KB (114290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fa5804f7b10e87b751017fa3911374a7d0424d9db3025181ec03d7c0967ab`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 2.0 MB (2000275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38cc94dbeb577eb1dc581e5fe967f87326ce97bf8dabb714d3e016240393c8e`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52988d89b000a45ea4ee01f61111251668faa1ef85187a6542839e16ebf892a3`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:e33b9ac1601c880cdbd7ea1b8cbae5c385ae1ac4d211a47880d5e92486008783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e393793603386b29a5a088ec111a7fb7655009ddedd9102843c12db15b1ed10f`

```dockerfile
```

-	Layers:
	-	`sha256:e253826bb6bdeabe09858b17012a014500da7e731053508ef28b533baf4a4ba8`  
		Last Modified: Tue, 07 Jul 2026 20:26:56 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91589d031d1edbdebde675569a744f22849ab4d8be59bb68206dabe51e062f15`  
		Last Modified: Tue, 07 Jul 2026 20:26:55 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:latest`

```console
$ docker pull memcached@sha256:deae07c1fce831887ffb24f5cc68cde691916c31782746bd994635b0ec3b90bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:4e4cc3df3e764aad4394ec7bedefe4b5dc758083f6ddbd2d40738ddb52f4fd5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801b5bd52c0373eb52f35af4717c91f69c64e8ba8432b2b9969673a3343951e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:51:31 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 17:51:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:20 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:20 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21031edcf54239f2eb53ee71b098daa7f542ca3924852e4bc60c211a27d2fe71`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbe1b9e141c299f97115783f06387912d621d234169327bb9375418949b0da2`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 136.7 KB (136705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f1221bb96a4bf1b5425418a7dc511cc509143b99be675de232b0172a9bfeb5`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 2.3 MB (2281337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe049733ac2e19f4708bfea14d9549981875112ed7c5c8967bfb0919cafcf7c`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922b6b4d7b1405c635ad711612cffd7f000f3d6fa988936a3bffeb52c430f934`  
		Last Modified: Tue, 07 Jul 2026 17:54:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:fe176f7071209af166d8670e8cdf0ea42a946f751ea6c83f2034e46a4c699020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31e0b24d9e891dc70bcefbd8f9e2cd5a681fdcd7386506ce4bf24a3ece46144`

```dockerfile
```

-	Layers:
	-	`sha256:67793084eb7ffe92a8a8189a9e113c187062ec7609a2b23f5d70d226317d5cf7`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a29dc9d7806a217a6d632026c133d740748378553c9a066f27f05cf733ee6513`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:dfcb5968c4b1ff3c90621846441144ff19987817595de9402a87f33de71b00aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30318032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce3f7f7098bba9fe18fb1da50fd6388ed09587ab56ba4650c228e7ff5b04cb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:25:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:25:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:28:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:28:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:28:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:28:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:28:37 GMT
USER memcache
# Tue, 07 Jul 2026 18:28:37 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:28:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67126efbfb02dc31f2fcfe60cb28774368f9ea86f4c91c216156868ccb81a7e`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c9a95a8baa5d7fe67d8681b27f9a94a4dd43b8b79d4c5d426c9eae60a8ee6f`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 144.2 KB (144174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9141dcdca51ee6e1a632ddf67887bceafa9a546698eb093569e2c2720ce2080`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 2.2 MB (2213121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651dd903cb94ec5cc92bda71ae178441da11317a3c3a68ce3e5cc7091b93241a`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ce5f0a5ad8d4fe577dd04541c886b6278d0074b793c5ed7a5bb7c5bfdfd732`  
		Last Modified: Tue, 07 Jul 2026 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:decb811a0a880ce42d9d79173e6ef5ae52e63cd2a59c558dbfde16153a6b1be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565106087a71c440688fd774fe59362de0f1fff98a1c5d66d0b89fbc6860a4a3`

```dockerfile
```

-	Layers:
	-	`sha256:addc528a2faeeed733f070e84dbfdd2d025aa756a560bc3c58334087aa4db0cd`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acfefd2a0811c20c5c36c8bca650c9026e05322fe7cd75c766c27305ad9b02e4`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:d6ea6f3f892154799f49d5ef81e52b591f814b8be46594ea01094852cf325a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28515261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce01e9f369e244a16162d126d1d65abfa6c32a1c6113ca65a2b564a09456ae0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:33:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:33:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:37:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:37:00 GMT
USER memcache
# Tue, 07 Jul 2026 18:37:00 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:37:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd8ce52aaf0f37e18c9cdac7b3f3b414f826fc4cb88f6fb1f69658cf5be3077`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba997fd282413d55bcbcaedb9314c99c9852eb66a20d6390802fa505cf7cea9`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 135.4 KB (135381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa741cee931dba27b03915519d699ab937e8510ec23c4c7a9f006f5754d0c2be`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 2.2 MB (2167312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a518663ad3cb76336bfb9d88e3fa2ca35ea9e384c550e215c4a6919956fc0432`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ee24042a0c0690125b0247825d4464ad4106ffc01ed7ee31c1deaed0df48a6`  
		Last Modified: Tue, 07 Jul 2026 18:37:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:0f0ad618bc698eb20f010e4f2bc79cb6b7a1db56bd78cabb5bdc00543f72866e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40c23d10e011ebf3e20085ba74696cc73ee9409d922ce6728a3f0e3435b031f`

```dockerfile
```

-	Layers:
	-	`sha256:b33bb326cb2bb9a654cb80e1b1f735101d99721aae9b971155bd8bb7651bc05b`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:617fea10f51adf2afefff992138cec9602e6377ee5aa71a7c6c2352d7cb497a6`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c1954dd5465568bb8c8c69976b1d770d87e5c1a24278361c69adf2bbbd7bb759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32567111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126e9a459abb2e754848faa0c03a993cdcf7cba8fe03642ba79e428e96b859fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:51:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 17:51:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:27 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604d99e4caaf587bf0d7974a971d4d0c6388c47af3aaf0e0809cc890dfc216ae`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632c800122a4857d34ea9018a86d17c131d6854b7bb93fdf1f9d9331a00c2283`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 153.5 KB (153504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40632567f6500b9d84fbd5e2da6e5a2988282cf3806986e3aaf091e71d5561ba`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 2.3 MB (2263541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5fa2d0483db96d306e66820493c054e7a31d7885398c237f084c57136843cdc`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b9df7bbbffbba997a793a1d9150edb87362ec1fc51f13b359bf6fc4086eab8`  
		Last Modified: Tue, 07 Jul 2026 17:54:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:675b4521416528459edf11eb293956e29ba6d67fb823736d6c8dae24f8f592f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e5fb5de7074dcd0f6a276ca63f478917e1e491eb842932082a32a390e168cc`

```dockerfile
```

-	Layers:
	-	`sha256:083f9633a280cca824d0583ab3c021e2f99ce7bcf78e7bd86c428119888d82be`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:101323382da78c85d259f95a8bac89555f6aa3c578276f83b0c373f7467f1b62`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:9ba8e737493510f7e51cd8e2efb05cb506bc4cb49234a392ab402a087f451914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f3d9de28b136197f5b216fcae268d02d8bb2332737f2f28e255f694a83323b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:08:03 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:11:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:11:07 GMT
USER memcache
# Tue, 07 Jul 2026 18:11:07 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:11:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146e2060380361a51cbb9710d253786b2f6d0181686093b119e859ff6a9f42ba`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5440a42d8c073786f4e19a425c2862787ffd4a0f248eeab811b69a56b7fbe6d3`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 147.5 KB (147526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ee3d00a4cefccec481dd19900b741c13cc9152ab221bd6da94ab6661150410`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 2.2 MB (2226060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1380c174cf2742616ac236e2072382102e7ed297269441a859ffaeeabb6dc40f`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774851faf922f91eed59e73259a54f301581a1dcdca11e2fbe8066b390578521`  
		Last Modified: Tue, 07 Jul 2026 18:11:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:2363cd9ed9f5f47c27310f74da1ef640cbedf7ab3de07f1c364da9aa80529ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe370dc29776b6676d8abe9dc987d0c96783aeff228e5b78a95992b77f1dac6`

```dockerfile
```

-	Layers:
	-	`sha256:56f466203b94cc2473a40ca334d9d093ff42bc6f8ef4da3078e740e3ff1ea0c3`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b7e7fd4e6fadbaab554e59aa74f90f85a4a91dc21d594e5bdee950543ef8373`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:73dac8f029eb0b81d121f3bb73fb72d81979e4cb01b8e6ebe2711128ef651441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36174293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b74a31a663472305d39c0058f4e8009de9999e83a299c1ec5cb186e77e42a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:50:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:50:10 GMT
USER memcache
# Tue, 07 Jul 2026 18:50:10 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:50:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb94829698f34745d5f5661c13962c6f3c0a317c89305195441290fa9d69befc`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 2.4 MB (2396017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b8c981b6aa04b36992e9ae3da795bf1b611bcc86a92a999110b1a6f57e9182`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9277c52647cb68bca423348087fac908060eebb122259f4ace09cfde29725a8`  
		Last Modified: Tue, 07 Jul 2026 18:50:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:11977db85cfdbc4d4b69ef3b8771f8708c0889b5570ae11920213dc6b45aa43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa83df8f4b01f2e49bb16f9fd6cd98b7c2be5ee10acca030395f0bfb4c067d4f`

```dockerfile
```

-	Layers:
	-	`sha256:e8e169095d7827333dbfeb01b6abd21d157005a13e4111604bc35190b51c3f6c`  
		Last Modified: Tue, 07 Jul 2026 18:50:21 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f83dd39f4ecc41fd4ed93579fd1a6bdf5975e76587154a52645011615e586caa`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 22.2 KB (22224 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; riscv64

```console
$ docker pull memcached@sha256:35995ecc1bdbf7b9c0f1952e81f50f64c5f3a5e3b36bc26d18a7f0e151b2bd56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30627437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6ce375987461acf4659cc0361be8d29961bfc9d2702c96b04f8ecc75879104`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_VERSION=1.6.44
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Wed, 08 Jul 2026 01:35:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 08 Jul 2026 01:35:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 01:35:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 08 Jul 2026 01:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 01:35:21 GMT
USER memcache
# Wed, 08 Jul 2026 01:35:21 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 08 Jul 2026 01:35:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb7a88a05ac2eb6266c41c2322affac58071843709f2384e7a7552581853d78`  
		Last Modified: Tue, 07 Jul 2026 15:23:07 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9824dca37fe76f400ed6cc9604f1253f8ff58ecaf94208b0ad1af29248af11a9`  
		Last Modified: Tue, 07 Jul 2026 15:23:07 GMT  
		Size: 133.1 KB (133064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34688dbd012f83568bcd7a751cfac7eb6d8f4cef64719b05c460cd7f5f3ea142`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 2.2 MB (2210480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80794ee201a8b9ff7b14d8fe25c33849f5eb861354021aa055a5cd87079eb6b`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3506ea788bf1ef68093e63f26d8e2d71b32607b0442dd45594f9304bb35450e9`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:098025c748258f6085a0a48ec223253bcf2e31195e1428da5c07086f9fca5eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf551a72a4555cf8c11f9497d082270c631435e51207f529c8707d16ae1fc97d`

```dockerfile
```

-	Layers:
	-	`sha256:7655d0f9b3c0012ce2b7532928e0ff8574a23d4f18a9ffd3a42eba9b8290a26e`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7d586c618ffeb5f44ba16c05b2698c5274a64888cdf5a801519e3e3c912874`  
		Last Modified: Wed, 08 Jul 2026 01:36:06 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:2bb86721eb481469ec98b921bb3f93e41de5081e133edaa8223b468460c54d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fd8b39d12f4385c99a6c3fc554a8204b68f263216a8f738e1f591eebb3d8df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 20:23:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 20:23:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 20:45:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:45:58 GMT
USER memcache
# Tue, 07 Jul 2026 20:45:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 20:45:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad1193e58306c0282ce34e45f0024c881813b7d1971e7079bc6067c894ca9aa`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c58ddfcc69c2d0d1b095504de8cdf49d98b64256a7144ac301cdcd717af4cdf`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 140.5 KB (140531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b68ea9be4244366b9dbec4579d8f90af695054a7291d6532a2246f1384087f`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 2.3 MB (2299455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fac116dd75a5774f843b887d798a8cc6858f58f0bf45387d4f34cef12c377b8`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d63f4f4f084883f788b3888e4af8943c8ca99ac1c02f2ce9c9e69c2d40936a`  
		Last Modified: Tue, 07 Jul 2026 20:46:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:3d76c4916699b1a5dd03a3a75f22eb48fd080693b5b7152c3836ba9fabb2482b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2296c5dd4d7b5b375ced621090e8e36c25e5881301ecd61931d5b47f932b6bd`

```dockerfile
```

-	Layers:
	-	`sha256:ebaa297afdc5ff0989ad25de9a3ef75514a7605b5a94dae012a8ff9995e879b5`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c74a69a7f51445b984bfc705ff0acbd392af3444b4bb2267b3ed40c39f44885`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:trixie`

```console
$ docker pull memcached@sha256:deae07c1fce831887ffb24f5cc68cde691916c31782746bd994635b0ec3b90bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `memcached:trixie` - linux; amd64

```console
$ docker pull memcached@sha256:4e4cc3df3e764aad4394ec7bedefe4b5dc758083f6ddbd2d40738ddb52f4fd5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801b5bd52c0373eb52f35af4717c91f69c64e8ba8432b2b9969673a3343951e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:51:31 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 17:51:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:20 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:20 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:20 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21031edcf54239f2eb53ee71b098daa7f542ca3924852e4bc60c211a27d2fe71`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbe1b9e141c299f97115783f06387912d621d234169327bb9375418949b0da2`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 136.7 KB (136705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f1221bb96a4bf1b5425418a7dc511cc509143b99be675de232b0172a9bfeb5`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 2.3 MB (2281337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe049733ac2e19f4708bfea14d9549981875112ed7c5c8967bfb0919cafcf7c`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922b6b4d7b1405c635ad711612cffd7f000f3d6fa988936a3bffeb52c430f934`  
		Last Modified: Tue, 07 Jul 2026 17:54:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:fe176f7071209af166d8670e8cdf0ea42a946f751ea6c83f2034e46a4c699020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31e0b24d9e891dc70bcefbd8f9e2cd5a681fdcd7386506ce4bf24a3ece46144`

```dockerfile
```

-	Layers:
	-	`sha256:67793084eb7ffe92a8a8189a9e113c187062ec7609a2b23f5d70d226317d5cf7`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a29dc9d7806a217a6d632026c133d740748378553c9a066f27f05cf733ee6513`  
		Last Modified: Tue, 07 Jul 2026 17:54:26 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:dfcb5968c4b1ff3c90621846441144ff19987817595de9402a87f33de71b00aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30318032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce3f7f7098bba9fe18fb1da50fd6388ed09587ab56ba4650c228e7ff5b04cb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:25:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:25:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:28:36 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:28:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:28:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:28:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:28:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:28:37 GMT
USER memcache
# Tue, 07 Jul 2026 18:28:37 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:28:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67126efbfb02dc31f2fcfe60cb28774368f9ea86f4c91c216156868ccb81a7e`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c9a95a8baa5d7fe67d8681b27f9a94a4dd43b8b79d4c5d426c9eae60a8ee6f`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 144.2 KB (144174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9141dcdca51ee6e1a632ddf67887bceafa9a546698eb093569e2c2720ce2080`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 2.2 MB (2213121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651dd903cb94ec5cc92bda71ae178441da11317a3c3a68ce3e5cc7091b93241a`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ce5f0a5ad8d4fe577dd04541c886b6278d0074b793c5ed7a5bb7c5bfdfd732`  
		Last Modified: Tue, 07 Jul 2026 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:decb811a0a880ce42d9d79173e6ef5ae52e63cd2a59c558dbfde16153a6b1be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565106087a71c440688fd774fe59362de0f1fff98a1c5d66d0b89fbc6860a4a3`

```dockerfile
```

-	Layers:
	-	`sha256:addc528a2faeeed733f070e84dbfdd2d025aa756a560bc3c58334087aa4db0cd`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acfefd2a0811c20c5c36c8bca650c9026e05322fe7cd75c766c27305ad9b02e4`  
		Last Modified: Tue, 07 Jul 2026 18:28:43 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:d6ea6f3f892154799f49d5ef81e52b591f814b8be46594ea01094852cf325a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28515261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce01e9f369e244a16162d126d1d65abfa6c32a1c6113ca65a2b564a09456ae0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:33:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:33:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:37:00 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:37:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:37:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:37:00 GMT
USER memcache
# Tue, 07 Jul 2026 18:37:00 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:37:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd8ce52aaf0f37e18c9cdac7b3f3b414f826fc4cb88f6fb1f69658cf5be3077`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba997fd282413d55bcbcaedb9314c99c9852eb66a20d6390802fa505cf7cea9`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 135.4 KB (135381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa741cee931dba27b03915519d699ab937e8510ec23c4c7a9f006f5754d0c2be`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 2.2 MB (2167312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a518663ad3cb76336bfb9d88e3fa2ca35ea9e384c550e215c4a6919956fc0432`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ee24042a0c0690125b0247825d4464ad4106ffc01ed7ee31c1deaed0df48a6`  
		Last Modified: Tue, 07 Jul 2026 18:37:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:0f0ad618bc698eb20f010e4f2bc79cb6b7a1db56bd78cabb5bdc00543f72866e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40c23d10e011ebf3e20085ba74696cc73ee9409d922ce6728a3f0e3435b031f`

```dockerfile
```

-	Layers:
	-	`sha256:b33bb326cb2bb9a654cb80e1b1f735101d99721aae9b971155bd8bb7651bc05b`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:617fea10f51adf2afefff992138cec9602e6377ee5aa71a7c6c2352d7cb497a6`  
		Last Modified: Tue, 07 Jul 2026 18:37:06 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c1954dd5465568bb8c8c69976b1d770d87e5c1a24278361c69adf2bbbd7bb759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32567111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126e9a459abb2e754848faa0c03a993cdcf7cba8fe03642ba79e428e96b859fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:51:26 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 17:51:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 17:54:27 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 17:54:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 17:54:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:27 GMT
USER memcache
# Tue, 07 Jul 2026 17:54:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 17:54:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604d99e4caaf587bf0d7974a971d4d0c6388c47af3aaf0e0809cc890dfc216ae`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632c800122a4857d34ea9018a86d17c131d6854b7bb93fdf1f9d9331a00c2283`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 153.5 KB (153504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40632567f6500b9d84fbd5e2da6e5a2988282cf3806986e3aaf091e71d5561ba`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 2.3 MB (2263541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5fa2d0483db96d306e66820493c054e7a31d7885398c237f084c57136843cdc`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b9df7bbbffbba997a793a1d9150edb87362ec1fc51f13b359bf6fc4086eab8`  
		Last Modified: Tue, 07 Jul 2026 17:54:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:675b4521416528459edf11eb293956e29ba6d67fb823736d6c8dae24f8f592f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e5fb5de7074dcd0f6a276ca63f478917e1e491eb842932082a32a390e168cc`

```dockerfile
```

-	Layers:
	-	`sha256:083f9633a280cca824d0583ab3c021e2f99ce7bcf78e7bd86c428119888d82be`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:101323382da78c85d259f95a8bac89555f6aa3c578276f83b0c373f7467f1b62`  
		Last Modified: Tue, 07 Jul 2026 17:54:34 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; 386

```console
$ docker pull memcached@sha256:9ba8e737493510f7e51cd8e2efb05cb506bc4cb49234a392ab402a087f451914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33676313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f3d9de28b136197f5b216fcae268d02d8bb2332737f2f28e255f694a83323b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:08:03 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 18:08:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:11:07 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:11:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:11:07 GMT
USER memcache
# Tue, 07 Jul 2026 18:11:07 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:11:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146e2060380361a51cbb9710d253786b2f6d0181686093b119e859ff6a9f42ba`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5440a42d8c073786f4e19a425c2862787ffd4a0f248eeab811b69a56b7fbe6d3`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 147.5 KB (147526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ee3d00a4cefccec481dd19900b741c13cc9152ab221bd6da94ab6661150410`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 2.2 MB (2226060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1380c174cf2742616ac236e2072382102e7ed297269441a859ffaeeabb6dc40f`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774851faf922f91eed59e73259a54f301581a1dcdca11e2fbe8066b390578521`  
		Last Modified: Tue, 07 Jul 2026 18:11:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2363cd9ed9f5f47c27310f74da1ef640cbedf7ab3de07f1c364da9aa80529ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe370dc29776b6676d8abe9dc987d0c96783aeff228e5b78a95992b77f1dac6`

```dockerfile
```

-	Layers:
	-	`sha256:56f466203b94cc2473a40ca334d9d093ff42bc6f8ef4da3078e740e3ff1ea0c3`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b7e7fd4e6fadbaab554e59aa74f90f85a4a91dc21d594e5bdee950543ef8373`  
		Last Modified: Tue, 07 Jul 2026 18:11:14 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:73dac8f029eb0b81d121f3bb73fb72d81979e4cb01b8e6ebe2711128ef651441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36174293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b74a31a663472305d39c0058f4e8009de9999e83a299c1ec5cb186e77e42a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 18:50:10 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 18:50:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 18:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:50:10 GMT
USER memcache
# Tue, 07 Jul 2026 18:50:10 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 18:50:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c28d0960fd8ccb8d0d804cad9b7ac5adde1950d50a041fa6d9667b7574818b`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e8cde463d54b5d9ccc864b2a22a3fb1cb6d32662e187d2161215ccf3fae998`  
		Last Modified: Mon, 06 Jul 2026 22:05:23 GMT  
		Size: 170.4 KB (170371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb94829698f34745d5f5661c13962c6f3c0a317c89305195441290fa9d69befc`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 2.4 MB (2396017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b8c981b6aa04b36992e9ae3da795bf1b611bcc86a92a999110b1a6f57e9182`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9277c52647cb68bca423348087fac908060eebb122259f4ace09cfde29725a8`  
		Last Modified: Tue, 07 Jul 2026 18:50:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:11977db85cfdbc4d4b69ef3b8771f8708c0889b5570ae11920213dc6b45aa43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa83df8f4b01f2e49bb16f9fd6cd98b7c2be5ee10acca030395f0bfb4c067d4f`

```dockerfile
```

-	Layers:
	-	`sha256:e8e169095d7827333dbfeb01b6abd21d157005a13e4111604bc35190b51c3f6c`  
		Last Modified: Tue, 07 Jul 2026 18:50:21 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f83dd39f4ecc41fd4ed93579fd1a6bdf5975e76587154a52645011615e586caa`  
		Last Modified: Tue, 07 Jul 2026 18:50:20 GMT  
		Size: 22.2 KB (22224 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:35995ecc1bdbf7b9c0f1952e81f50f64c5f3a5e3b36bc26d18a7f0e151b2bd56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30627437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6ce375987461acf4659cc0361be8d29961bfc9d2702c96b04f8ecc75879104`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_VERSION=1.6.44
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Wed, 08 Jul 2026 01:35:20 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Wed, 08 Jul 2026 01:35:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 08 Jul 2026 01:35:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 01:35:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 08 Jul 2026 01:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 01:35:21 GMT
USER memcache
# Wed, 08 Jul 2026 01:35:21 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 08 Jul 2026 01:35:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb7a88a05ac2eb6266c41c2322affac58071843709f2384e7a7552581853d78`  
		Last Modified: Tue, 07 Jul 2026 15:23:07 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9824dca37fe76f400ed6cc9604f1253f8ff58ecaf94208b0ad1af29248af11a9`  
		Last Modified: Tue, 07 Jul 2026 15:23:07 GMT  
		Size: 133.1 KB (133064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34688dbd012f83568bcd7a751cfac7eb6d8f4cef64719b05c460cd7f5f3ea142`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 2.2 MB (2210480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80794ee201a8b9ff7b14d8fe25c33849f5eb861354021aa055a5cd87079eb6b`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3506ea788bf1ef68093e63f26d8e2d71b32607b0442dd45594f9304bb35450e9`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:098025c748258f6085a0a48ec223253bcf2e31195e1428da5c07086f9fca5eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf551a72a4555cf8c11f9497d082270c631435e51207f529c8707d16ae1fc97d`

```dockerfile
```

-	Layers:
	-	`sha256:7655d0f9b3c0012ce2b7532928e0ff8574a23d4f18a9ffd3a42eba9b8290a26e`  
		Last Modified: Wed, 08 Jul 2026 01:36:07 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7d586c618ffeb5f44ba16c05b2698c5274a64888cdf5a801519e3e3c912874`  
		Last Modified: Wed, 08 Jul 2026 01:36:06 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; s390x

```console
$ docker pull memcached@sha256:2bb86721eb481469ec98b921bb3f93e41de5081e133edaa8223b468460c54d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32292883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fd8b39d12f4385c99a6c3fc554a8204b68f263216a8f738e1f591eebb3d8df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 20:23:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 20:23:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_VERSION=1.6.44
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.44.tar.gz
# Tue, 07 Jul 2026 20:45:58 GMT
ENV MEMCACHED_SHA1=35ce68d69d143fa6fc9f26b039a677772d62d1c3
# Tue, 07 Jul 2026 20:45:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 07 Jul 2026 20:45:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:45:58 GMT
USER memcache
# Tue, 07 Jul 2026 20:45:58 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 07 Jul 2026 20:45:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad1193e58306c0282ce34e45f0024c881813b7d1971e7079bc6067c894ca9aa`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c58ddfcc69c2d0d1b095504de8cdf49d98b64256a7144ac301cdcd717af4cdf`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 140.5 KB (140531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b68ea9be4244366b9dbec4579d8f90af695054a7291d6532a2246f1384087f`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 2.3 MB (2299455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fac116dd75a5774f843b887d798a8cc6858f58f0bf45387d4f34cef12c377b8`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d63f4f4f084883f788b3888e4af8943c8ca99ac1c02f2ce9c9e69c2d40936a`  
		Last Modified: Tue, 07 Jul 2026 20:46:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3d76c4916699b1a5dd03a3a75f22eb48fd080693b5b7152c3836ba9fabb2482b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2296c5dd4d7b5b375ced621090e8e36c25e5881301ecd61931d5b47f932b6bd`

```dockerfile
```

-	Layers:
	-	`sha256:ebaa297afdc5ff0989ad25de9a3ef75514a7605b5a94dae012a8ff9995e879b5`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c74a69a7f51445b984bfc705ff0acbd392af3444b4bb2267b3ed40c39f44885`  
		Last Modified: Tue, 07 Jul 2026 20:46:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json
