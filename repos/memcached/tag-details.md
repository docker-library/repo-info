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
$ docker pull memcached@sha256:9f213417a1c51d4c18c0ea9f38a917792ebf21c1b06a4168a04c5b7761494982
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
$ docker pull memcached@sha256:57f76c8133336936ad246cae500f07d07b3bf149485f005b515016bdd455be8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32216756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24406d1ca8939651827dd1775d10707a29ad7dcca1462ff80004be28e364cf30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:22:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b564688b1072131c84843b878def2a6b541f413dc4aa6e532feb411f6d87ad41`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6221ee17f50145599d26d40606ffbd086ba41531a59662518b98be8fab1a843e`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 136.7 KB (136706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfae3da9f7bfe557301344f0b132a9c12c7a75dbc6a7b91b62fa35144389552`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.3 MB (2285876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591a7e3cd179fa3da19cdc09f0f43810dbe1c794daf296de1aaa8a3aa488d413`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ff75ca70cd262763dabbdfdd63bb4b4bd93a47a2758aea5e08684e113f2989`  
		Last Modified: Tue, 25 Aug 2026 00:24:57 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:6df923c152c829adb9589458e4cec741b66999bf25a7d10ee7a81b667096507f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5088226ef66a41b85dc80fb80689ce7a73b6585850b0c6ab5f139c74f68155`

```dockerfile
```

-	Layers:
	-	`sha256:6a6c096c11dc72812aa322f5f9fb7404422dd3f5252b99c8da4d08ad2688b739`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.0 MB (2008602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:560518c79cf9146d94e2c448fa529bd862c219a8b904b62206843d44fc5ee12f`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:023b4f0c03c3d3ee4025c8cda685724750ee8efcd175a5c22cdd39c12712e860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28527134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a559724f872cfe18bf63409400cbae4e5ad5d720ba526cfe23d58b7eacbffd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:22:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:23 GMT
USER memcache
# Tue, 25 Aug 2026 00:22:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:22:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cac8b9d8ee7969044bdc968c3195bbbfea0bca546aad3b2979372fb26ac2d7`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4d89e07ba6e6ac865f406ec22b456a717c64ed0bf6f1a3bb952dd8acc88cd2`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 135.4 KB (135384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cef6a353a923552dcd4b4cc18ce5385c9584764369ae1c45e36aa868e3c3bbf`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.2 MB (2171096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17cbda3c12db206820a5605adc1251a200a136fb8b5db2fabf64d9bd21f9e10`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae51979329d8e99e076196c57a9b7e18677e6433533bd3131d1712a0638f235c`  
		Last Modified: Tue, 25 Aug 2026 00:22:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:99c7b85509d64820a8951462fdd1d275493b873b68b40f0d1c3311b52c631ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bea1d035420a77877a7ae40015e4d7295cde8b861b6f9a3edab4e6c82b0daf7`

```dockerfile
```

-	Layers:
	-	`sha256:67e2cc4c93dbd46d68ef41fe7607981152db4042cedb3d106a4ce3ab15d9156f`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.0 MB (2010062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfaf9ca44bc5de1133db90c11fb1290ecc6330fe2c0f1ab725e93a21fad5a8d6`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c30c690b1ab3dc91cf88cbb89de4432d09dc707413099ae2a53b7367e080bc74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32581267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8773e605e382948669649e57b54cbc6607f17590cca57b71c9015767d83a806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:21:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:38 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:38 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b00431edb4e1c12b51fd7165d4f63e87369724b542ad660179c2d3bc428559`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a780b2d9f8338429d5c52e7e8e65fc7eca8dd6d68753b20cb2a0193bf372c077`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 153.5 KB (153528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea9b2dd393308e27d1f13384b644f7ac598a3dee8d36a5942ea2c9e0d4000ea`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.3 MB (2266640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7f80341faaf10b909fc4ee59501127649ba5369393910e072ebb6608fa4630`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a7662ec240484373771668128166d8174dd59e2d48a15486d58eab9e779fb6`  
		Last Modified: Tue, 25 Aug 2026 00:24:46 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:b749b02b6cac91cb05f31d939087ffba0138cc186ebf911558ca2199ece5c665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232b0d6a4c9762f1d86e39e9a645897d1e3a98c0c4552531b52cb042b3085d88`

```dockerfile
```

-	Layers:
	-	`sha256:cd21e3e0826071a3ea1da5bbb6c7de865c2f9b8def7fe6edbfc932dcea8d8de2`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.0 MB (2008910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba53650a9aed2dc57f592bd4cc9fb6ee6004bfcc343d9acd5361cd4f45023450`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; riscv64

```console
$ docker pull memcached@sha256:a38bfb324503e9daabef54e1d7a8d646add2c13fa2e0ab81371bf86328a50921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7885454e9209cead8bfa1bb3415c8a823c2cdb72698daabe057e4cfcbf32513a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 12:00:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 12:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 12:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 12:14:49 GMT
USER memcache
# Wed, 05 Aug 2026 12:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 12:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf4bbf03e17f5cab312e778aa64c1074a8caa390b65b8b7f3233cdb6663aa90`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e8cdbdba8d030cf76c9e1d44cafeadc8e37f6d0cd557dcbb986a30b6fc6caf`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 133.1 KB (133144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d857cf682d6b5c6c5c47e45f425d8add7cb2632fb75fbfd38fdf310d4375b9`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.2 MB (2212873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143c0a64f607a70937e7e57ed8ac7b267ad0c9d47305698042e5a4861088493`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d053f677518d7f0d3034377cff19aff0f906d6a7c65bfd003459f3e334e6eb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:4721f3a32118218b8d05c3d7264de3c4bfc78e2d5fd0808fde28bee90f25ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d701afbb34c09537c774107be3a26f6479334d13288ffd2f9e8fd80b0ecdfd`

```dockerfile
```

-	Layers:
	-	`sha256:b2e40a1504aa03787c5c7f30cf3ef9906f5459f12b86546e60546e710c216efb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab2d0ab186583e060eb3f57cf95ea6f53892b0c9f498343133f953b234148d4`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:00ee6fb4e4ef0f2b51f78ab7c193565796c1dd1d13aa26b5186841664207621d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32311250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31602bb9e085ba1211e06ac8e05cbc8e5e213e337ee4a9133f285cfa43d75e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:42:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:42:01 GMT
USER memcache
# Tue, 25 Aug 2026 00:42:01 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:42:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d8218e1c671cd45cc6e31820e9e221d1c52c96ee506057d62aa385888bc248`  
		Last Modified: Tue, 25 Aug 2026 00:42:11 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df83c18be84787fcfe1bd04adf97dd13c178bed33c3204c48324e6b6c23d8eee`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 140.5 KB (140545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b264b6a40dd78478350e9ec8045d9436f3db4f35236353620b01fe43edfd36d5`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.3 MB (2301470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60640ad1bb62b53d0176a51c31eb329d5b9b52a9cdd0683c8769948d144bb23`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7117dfe1b0c6883a5dc879b8559ceb672dd66d939d0f89c717d0a2cc57e7c04`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:b29cc7009dbe96ab29a03479c51ae2408731d4107786c3342417564d6b9bbccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7490349b39de8ac753baa0ec7d54bef0d7d67781afc3a66976127cebe11367`

```dockerfile
```

-	Layers:
	-	`sha256:7f152040eb62456deccfae205e54ce50723ecb7d4bc188a2c99e68ecf0224fab`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.0 MB (2010039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d5b581d01c33770b7cb868777ada87ce158056cb6a7c29e8ac42cb89c2e5766`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:c29847751abb41f4c268c84fb3087fee05d4edcbda44409ccb5086e26148e8a7
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
$ docker pull memcached@sha256:fb019eacc7baefab28dd9424a093181f9be578785ff820acfc223cca7d196eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5925683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0830b42059af384dcca1bbbdab5862fc1c6323f885967999d379859ba549594a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:02 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30537f894bef5b46746336c3f041dc6795e8ecc97b9292ae247b66036dd5c67`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d21aa1f5d5e69c701ce24de32e1146319696c0f27a53fc1071dfdbb1db835a4`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c78e5fe358666fa7c60fd82883fa14be78948330a03816dad1d4d5c344de613`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 2.0 MB (1971871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5169cfbcf8c6077d8c56ea32ca8a2111c70c962292078156dc0dfd13003dae`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2867a9b9bc08210b05bbb39ce6524c67aae53eeac22ec837a46048462914a320`  
		Last Modified: Fri, 10 Jul 2026 17:14:48 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:fe04e0ef9a8e3e439388815d469625ca78a4a35e59f5cc9de4f5f5db5cb4d641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c27b7d4bcb94d0f429931b29a65e16c64f720245153e5974f420993ed76dc8c`

```dockerfile
```

-	Layers:
	-	`sha256:bde0eb081740918cd7c2ba1f2880c56d42ae6f84c1b309e633eddca70f44bf70`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7674e16e0fabd9b80fffa1e0524b4e1d5433973f285279363c174978747e56b`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:fb6536c6ff6be675875a0e9058a21cb01429d7fea472911b157925599078b793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff99274cd2ae9a12540461f7d271257b2dcb39a7fe841e30ee12d6118a2b3620`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:58 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:10:59 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:01 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:01 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87742bed7ba15c80771525da3c973241c15057e2e1c208334a48a5e6ac0227e1`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2caf4ea40e42d6914610fc632e2a0622b052c9f4ba441a61c4127f1978922a5`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 102.6 KB (102635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54c3c9546ae919bd51b70cd67be4110dcdf4fce207e30e8a682ea753b84b5c4`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 1.9 MB (1919996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accf55e04cbb6065732d0695c7af9397d6210442810183aea8a10104beffdf92`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a21955ac570df30e5245468c555d187918240b2e55a8f968a1c63cc712b28a`  
		Last Modified: Fri, 10 Jul 2026 17:14:06 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:3ce649bbc88016374f2fedd7a3a6282acb086f35beb378072515db6f4548882a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0897be4d2621cbe9fd74e4aec07f9bd6e8ed4b8539ca7d9e2c6e8b810fa5bc02`

```dockerfile
```

-	Layers:
	-	`sha256:6ee0d00e67e904e3e64b4d167c720519ecfb467699fb18b569854e4f5b1fe6dc`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:065f61ec993786802487788eebdf5b4c6c3e326d12b6574ea897ea1e51c6b933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c0d5f0e58661e882030be0f4cd2c902f47c1b2f5f93e5d87841d1123efbabe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:00 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:57 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:57 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ab9fc66207e8b3c6d27de378c990e1ecdad5abf472f309f0a75a5690dd3d34`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500ccb570e966ec606c735939fc5e3725ae717e18fb33f7f70e0bbec3f26ebfe`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629877caf8b70fc341b804e1ee0d6f13c8e508ec2c0f35640783d6f9de86e97d`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 1.9 MB (1879484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5dc5afffcba19bbc164b433c2d8aa77a001fe3a203d883e6695bba627f4e63`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942dacfd6a09ac673f34e02d66d909d0827204734321a96446e8d26e2a8e3f0f`  
		Last Modified: Fri, 10 Jul 2026 17:14:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:c96c7fceae2e42126799ee9fab80a8abd26d161c400655de8bb3a35ee285ebd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b275b410c1039288a2a348ca496e1ceb36e4759d45fce525c463c093cf0150`

```dockerfile
```

-	Layers:
	-	`sha256:66e157426e5075f50c0de6a20593e341c7ee59506d2b596eda3e44c455f60de0`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2082312b15a7c193cf1025d6d221124dc4929f5993e39111484a8c6b8a8c3c87`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 20.7 KB (20677 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:473bc6e0328b8c46b2b460f48c28c841e89d6394a139cb1f33b26f4bb6d3d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303f30aa9b9680e31a5c226e7fc751f881c58d33a4750db24cb3b8fd69e92dfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:11:49 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52ad1db85493a296c7511781136a99a225e4e27bdbe75e5dfa86c4746872ddb`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d51ffb6ef225790732ccf7ed312e27b0330c7a7cdf6396901873e7b6080a64`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 121.8 KB (121844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0cfcbdec09e1fea3b1fd04db1b5778a6adc5ac25f583318b0d6577180d64c3`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 1.9 MB (1949339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b14c331bde3984dedbe104abcecfa492926eb9cfadef54fca8b6d94017819ee`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f4c5478c9d47600fd7de72bbc89bbf9cb940422d7e769d4b0c3810d8d79da9`  
		Last Modified: Fri, 10 Jul 2026 17:14:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:129b5ab2a677ae3c8c9535f820f20b8109943c31455171258b978980081bada1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db04db28da1799b3a161bdaf8be482db6fb26098666c447b8ab8c0ad6e2d8ee3`

```dockerfile
```

-	Layers:
	-	`sha256:6a02dc47d1088cf12676c61a5d57939f1134494f35de9890ecff1224f5e9f00a`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97f807742aba1073c82ae789ed40324dc9d3b7f3ed1551021d5a19edb66412d0`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:ea3586ffa52d2d45fc770c0d6bb9acc938059ce4043178d904e0068df6f0fd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5708492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181faa0096b17b6d7154732a3200ec4a4311c3b8a83ea31dd5ed15c35ecfda94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:15:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:15:22 GMT
USER memcache
# Fri, 10 Jul 2026 17:15:22 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:15:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81df1d20c0eee21a359b722a21e794764b7951ecb8faf3a0d0e0c81f2ffa3d0a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627d7c2ccb877b2a1ee4aca91955ff03d03b148f292eec21eee5fa7979fbabd5`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe79c417bd4c20f80deddc7a490f4ada04448659ae32a28dfc39579c94c532a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 1.9 MB (1926270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a723bad69306f7075f02ce9abb8abc4f0cae3c182d907b95e0c1806cdb132879`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716b9a082ae94cfaa02287d294c4445ed12cfe132a49ae55d4f4567298c822ce`  
		Last Modified: Fri, 10 Jul 2026 17:15:28 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:e13a8f7723825b56a10c17b8fab193220043c24a53cef71b8c68932907b0c9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0ab906e6188fa1ef1ea6f07f736fe5d938c337b4275e5e011ec70fd4b7ed78`

```dockerfile
```

-	Layers:
	-	`sha256:974a2c36fe4450e13c8bb229e35c7f4f607f96b4636c3272dedab90a9e087c11`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:046eab04b512f1ec3bfdcb659254e16a8af365ef2e4e180416d88309f8181f5a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:44fffe9dbe2ce32e7e7e934e63b646bf2d09e26e064cb292424127f37a7494e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070297f68a61aa86c9903c3a442022089b167534ca6ea3458fbc53edc544ef99`
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
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:12:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:12:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:12:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:12:42 GMT
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
	-	`sha256:4293070d44f81cd4f403c5639873cafdb11a98b869e5e1d480688921dfdfc3ed`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 2.1 MB (2063831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2229725e4bb0544f8266e338055cb9017ea9ddce2c2507292e5c048aef184d`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbd62f05889955669f5596736fd71172d92d536bac47c6ac21ff6b9ba6b1144`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a8166a2bf2c49e9819b9ab206c4f601b447cc5e274e1aae1ef114dc5f20e969a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e5bee8c7ff23b0735c30afbdf52ff7eddf087ede41da87f5eedf3713c8fbbb`

```dockerfile
```

-	Layers:
	-	`sha256:cc0fc4b74de1fd8e69d3f9b50f41ef5cb89ea23b90c7f63f8682e8f103d52b9b`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b55265717bc7f9264f9cee04f4c96e8ff381460971e5d4b590e305ddedf4622a`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:f6503d027a3102edc399de42008e6de6b523702df436fd74be6c6837a0882c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5742697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9200c9ee0cd3682e447f0071af9c2edff3b87a15688bbb8e4b3360b97a75dd22`
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
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 18:17:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 18:17:54 GMT
USER memcache
# Fri, 10 Jul 2026 18:17:54 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 18:17:54 GMT
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
	-	`sha256:a6cc49b0ef8ea996fd966c0929e48cc1b3e4c976fd3f5318322e48ebc3c742cf`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 2.1 MB (2058088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc547d2752adfd06887e58e4938230be78719712f64613173fdbf15322296cd`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28702830c4f44b0abd3826454a1ce8fff39a742c980a4cc715c11d6b2a3735d2`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5f3dca65e175b723b9be05a830b290629d08dc7dfee38b614716144e532f766b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6abb5cabee5aa9238e08e76ddf612911ed9189bcb374b335d7f638d087707b`

```dockerfile
```

-	Layers:
	-	`sha256:65e49063062422d01a294e89ecd5dbd733e014683e3a7467d189fa0bd4e4bc6e`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38c3fe116a56893dd7290547344a3c341309b11d85ad3be36dfe73a2020e64c9`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:0d3ba968a8dadfaf2746f61d68812d39af76a14d58e42a647f976c2cb9ff096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5829422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e26b528c1c9aa9b791cbbdec8b9913fdc6471ee6f2d09158aeb75450a903fe1`
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
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:30 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:30 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:30 GMT
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
	-	`sha256:d6237c99ed479fc16f1ca6c375f504247f1a8a6f9da3d81c350e285a858a8d2c`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 2.0 MB (2004462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1b7f127e35ec4a4d8cc5b3be6701d4c45704a7621453e6d24ee002177f8cf9`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d4a09dbf45713c9201b29b3d48506093fe9fe408a775ff3f7b765021ef367`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:27190e318ed67ca9fd9eb7a16415c0bd02f67e657c6821d242f5f918639230c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dada849fcb88d4a37f6ad534099485d1ba5b80ad42eb0dcd7d9af7abb0c7854a`

```dockerfile
```

-	Layers:
	-	`sha256:a024a47e61c0f51bbbe2e680151af1ff723475dac33760ed6612c057ca5677d8`  
		Last Modified: Fri, 10 Jul 2026 17:13:41 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2caa9a6c5fe1b43c960b7edb2bd94baa86af2a73898972b1cc30732e19011b`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine3.24`

```console
$ docker pull memcached@sha256:c29847751abb41f4c268c84fb3087fee05d4edcbda44409ccb5086e26148e8a7
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
$ docker pull memcached@sha256:fb019eacc7baefab28dd9424a093181f9be578785ff820acfc223cca7d196eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5925683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0830b42059af384dcca1bbbdab5862fc1c6323f885967999d379859ba549594a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:02 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30537f894bef5b46746336c3f041dc6795e8ecc97b9292ae247b66036dd5c67`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d21aa1f5d5e69c701ce24de32e1146319696c0f27a53fc1071dfdbb1db835a4`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c78e5fe358666fa7c60fd82883fa14be78948330a03816dad1d4d5c344de613`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 2.0 MB (1971871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5169cfbcf8c6077d8c56ea32ca8a2111c70c962292078156dc0dfd13003dae`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2867a9b9bc08210b05bbb39ce6524c67aae53eeac22ec837a46048462914a320`  
		Last Modified: Fri, 10 Jul 2026 17:14:48 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:fe04e0ef9a8e3e439388815d469625ca78a4a35e59f5cc9de4f5f5db5cb4d641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c27b7d4bcb94d0f429931b29a65e16c64f720245153e5974f420993ed76dc8c`

```dockerfile
```

-	Layers:
	-	`sha256:bde0eb081740918cd7c2ba1f2880c56d42ae6f84c1b309e633eddca70f44bf70`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7674e16e0fabd9b80fffa1e0524b4e1d5433973f285279363c174978747e56b`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:fb6536c6ff6be675875a0e9058a21cb01429d7fea472911b157925599078b793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff99274cd2ae9a12540461f7d271257b2dcb39a7fe841e30ee12d6118a2b3620`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:58 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:10:59 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:01 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:01 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87742bed7ba15c80771525da3c973241c15057e2e1c208334a48a5e6ac0227e1`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2caf4ea40e42d6914610fc632e2a0622b052c9f4ba441a61c4127f1978922a5`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 102.6 KB (102635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54c3c9546ae919bd51b70cd67be4110dcdf4fce207e30e8a682ea753b84b5c4`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 1.9 MB (1919996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accf55e04cbb6065732d0695c7af9397d6210442810183aea8a10104beffdf92`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a21955ac570df30e5245468c555d187918240b2e55a8f968a1c63cc712b28a`  
		Last Modified: Fri, 10 Jul 2026 17:14:06 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:3ce649bbc88016374f2fedd7a3a6282acb086f35beb378072515db6f4548882a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0897be4d2621cbe9fd74e4aec07f9bd6e8ed4b8539ca7d9e2c6e8b810fa5bc02`

```dockerfile
```

-	Layers:
	-	`sha256:6ee0d00e67e904e3e64b4d167c720519ecfb467699fb18b569854e4f5b1fe6dc`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:065f61ec993786802487788eebdf5b4c6c3e326d12b6574ea897ea1e51c6b933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c0d5f0e58661e882030be0f4cd2c902f47c1b2f5f93e5d87841d1123efbabe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:00 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:57 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:57 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ab9fc66207e8b3c6d27de378c990e1ecdad5abf472f309f0a75a5690dd3d34`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500ccb570e966ec606c735939fc5e3725ae717e18fb33f7f70e0bbec3f26ebfe`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629877caf8b70fc341b804e1ee0d6f13c8e508ec2c0f35640783d6f9de86e97d`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 1.9 MB (1879484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5dc5afffcba19bbc164b433c2d8aa77a001fe3a203d883e6695bba627f4e63`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942dacfd6a09ac673f34e02d66d909d0827204734321a96446e8d26e2a8e3f0f`  
		Last Modified: Fri, 10 Jul 2026 17:14:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:c96c7fceae2e42126799ee9fab80a8abd26d161c400655de8bb3a35ee285ebd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b275b410c1039288a2a348ca496e1ceb36e4759d45fce525c463c093cf0150`

```dockerfile
```

-	Layers:
	-	`sha256:66e157426e5075f50c0de6a20593e341c7ee59506d2b596eda3e44c455f60de0`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2082312b15a7c193cf1025d6d221124dc4929f5993e39111484a8c6b8a8c3c87`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 20.7 KB (20677 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:473bc6e0328b8c46b2b460f48c28c841e89d6394a139cb1f33b26f4bb6d3d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303f30aa9b9680e31a5c226e7fc751f881c58d33a4750db24cb3b8fd69e92dfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:11:49 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52ad1db85493a296c7511781136a99a225e4e27bdbe75e5dfa86c4746872ddb`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d51ffb6ef225790732ccf7ed312e27b0330c7a7cdf6396901873e7b6080a64`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 121.8 KB (121844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0cfcbdec09e1fea3b1fd04db1b5778a6adc5ac25f583318b0d6577180d64c3`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 1.9 MB (1949339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b14c331bde3984dedbe104abcecfa492926eb9cfadef54fca8b6d94017819ee`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f4c5478c9d47600fd7de72bbc89bbf9cb940422d7e769d4b0c3810d8d79da9`  
		Last Modified: Fri, 10 Jul 2026 17:14:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:129b5ab2a677ae3c8c9535f820f20b8109943c31455171258b978980081bada1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db04db28da1799b3a161bdaf8be482db6fb26098666c447b8ab8c0ad6e2d8ee3`

```dockerfile
```

-	Layers:
	-	`sha256:6a02dc47d1088cf12676c61a5d57939f1134494f35de9890ecff1224f5e9f00a`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97f807742aba1073c82ae789ed40324dc9d3b7f3ed1551021d5a19edb66412d0`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:ea3586ffa52d2d45fc770c0d6bb9acc938059ce4043178d904e0068df6f0fd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5708492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181faa0096b17b6d7154732a3200ec4a4311c3b8a83ea31dd5ed15c35ecfda94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:15:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:15:22 GMT
USER memcache
# Fri, 10 Jul 2026 17:15:22 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:15:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81df1d20c0eee21a359b722a21e794764b7951ecb8faf3a0d0e0c81f2ffa3d0a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627d7c2ccb877b2a1ee4aca91955ff03d03b148f292eec21eee5fa7979fbabd5`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe79c417bd4c20f80deddc7a490f4ada04448659ae32a28dfc39579c94c532a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 1.9 MB (1926270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a723bad69306f7075f02ce9abb8abc4f0cae3c182d907b95e0c1806cdb132879`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716b9a082ae94cfaa02287d294c4445ed12cfe132a49ae55d4f4567298c822ce`  
		Last Modified: Fri, 10 Jul 2026 17:15:28 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:e13a8f7723825b56a10c17b8fab193220043c24a53cef71b8c68932907b0c9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0ab906e6188fa1ef1ea6f07f736fe5d938c337b4275e5e011ec70fd4b7ed78`

```dockerfile
```

-	Layers:
	-	`sha256:974a2c36fe4450e13c8bb229e35c7f4f607f96b4636c3272dedab90a9e087c11`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:046eab04b512f1ec3bfdcb659254e16a8af365ef2e4e180416d88309f8181f5a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:44fffe9dbe2ce32e7e7e934e63b646bf2d09e26e064cb292424127f37a7494e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070297f68a61aa86c9903c3a442022089b167534ca6ea3458fbc53edc544ef99`
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
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:12:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:12:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:12:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:12:42 GMT
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
	-	`sha256:4293070d44f81cd4f403c5639873cafdb11a98b869e5e1d480688921dfdfc3ed`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 2.1 MB (2063831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2229725e4bb0544f8266e338055cb9017ea9ddce2c2507292e5c048aef184d`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbd62f05889955669f5596736fd71172d92d536bac47c6ac21ff6b9ba6b1144`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a8166a2bf2c49e9819b9ab206c4f601b447cc5e274e1aae1ef114dc5f20e969a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e5bee8c7ff23b0735c30afbdf52ff7eddf087ede41da87f5eedf3713c8fbbb`

```dockerfile
```

-	Layers:
	-	`sha256:cc0fc4b74de1fd8e69d3f9b50f41ef5cb89ea23b90c7f63f8682e8f103d52b9b`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b55265717bc7f9264f9cee04f4c96e8ff381460971e5d4b590e305ddedf4622a`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:f6503d027a3102edc399de42008e6de6b523702df436fd74be6c6837a0882c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5742697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9200c9ee0cd3682e447f0071af9c2edff3b87a15688bbb8e4b3360b97a75dd22`
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
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 18:17:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 18:17:54 GMT
USER memcache
# Fri, 10 Jul 2026 18:17:54 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 18:17:54 GMT
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
	-	`sha256:a6cc49b0ef8ea996fd966c0929e48cc1b3e4c976fd3f5318322e48ebc3c742cf`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 2.1 MB (2058088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc547d2752adfd06887e58e4938230be78719712f64613173fdbf15322296cd`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28702830c4f44b0abd3826454a1ce8fff39a742c980a4cc715c11d6b2a3735d2`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5f3dca65e175b723b9be05a830b290629d08dc7dfee38b614716144e532f766b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6abb5cabee5aa9238e08e76ddf612911ed9189bcb374b335d7f638d087707b`

```dockerfile
```

-	Layers:
	-	`sha256:65e49063062422d01a294e89ecd5dbd733e014683e3a7467d189fa0bd4e4bc6e`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38c3fe116a56893dd7290547344a3c341309b11d85ad3be36dfe73a2020e64c9`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:0d3ba968a8dadfaf2746f61d68812d39af76a14d58e42a647f976c2cb9ff096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5829422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e26b528c1c9aa9b791cbbdec8b9913fdc6471ee6f2d09158aeb75450a903fe1`
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
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:30 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:30 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:30 GMT
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
	-	`sha256:d6237c99ed479fc16f1ca6c375f504247f1a8a6f9da3d81c350e285a858a8d2c`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 2.0 MB (2004462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1b7f127e35ec4a4d8cc5b3be6701d4c45704a7621453e6d24ee002177f8cf9`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d4a09dbf45713c9201b29b3d48506093fe9fe408a775ff3f7b765021ef367`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:27190e318ed67ca9fd9eb7a16415c0bd02f67e657c6821d242f5f918639230c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dada849fcb88d4a37f6ad534099485d1ba5b80ad42eb0dcd7d9af7abb0c7854a`

```dockerfile
```

-	Layers:
	-	`sha256:a024a47e61c0f51bbbe2e680151af1ff723475dac33760ed6612c057ca5677d8`  
		Last Modified: Fri, 10 Jul 2026 17:13:41 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2caa9a6c5fe1b43c960b7edb2bd94baa86af2a73898972b1cc30732e19011b`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-trixie`

```console
$ docker pull memcached@sha256:9f213417a1c51d4c18c0ea9f38a917792ebf21c1b06a4168a04c5b7761494982
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
$ docker pull memcached@sha256:57f76c8133336936ad246cae500f07d07b3bf149485f005b515016bdd455be8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32216756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24406d1ca8939651827dd1775d10707a29ad7dcca1462ff80004be28e364cf30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:22:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b564688b1072131c84843b878def2a6b541f413dc4aa6e532feb411f6d87ad41`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6221ee17f50145599d26d40606ffbd086ba41531a59662518b98be8fab1a843e`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 136.7 KB (136706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfae3da9f7bfe557301344f0b132a9c12c7a75dbc6a7b91b62fa35144389552`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.3 MB (2285876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591a7e3cd179fa3da19cdc09f0f43810dbe1c794daf296de1aaa8a3aa488d413`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ff75ca70cd262763dabbdfdd63bb4b4bd93a47a2758aea5e08684e113f2989`  
		Last Modified: Tue, 25 Aug 2026 00:24:57 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6df923c152c829adb9589458e4cec741b66999bf25a7d10ee7a81b667096507f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5088226ef66a41b85dc80fb80689ce7a73b6585850b0c6ab5f139c74f68155`

```dockerfile
```

-	Layers:
	-	`sha256:6a6c096c11dc72812aa322f5f9fb7404422dd3f5252b99c8da4d08ad2688b739`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.0 MB (2008602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:560518c79cf9146d94e2c448fa529bd862c219a8b904b62206843d44fc5ee12f`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:023b4f0c03c3d3ee4025c8cda685724750ee8efcd175a5c22cdd39c12712e860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28527134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a559724f872cfe18bf63409400cbae4e5ad5d720ba526cfe23d58b7eacbffd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:22:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:23 GMT
USER memcache
# Tue, 25 Aug 2026 00:22:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:22:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cac8b9d8ee7969044bdc968c3195bbbfea0bca546aad3b2979372fb26ac2d7`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4d89e07ba6e6ac865f406ec22b456a717c64ed0bf6f1a3bb952dd8acc88cd2`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 135.4 KB (135384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cef6a353a923552dcd4b4cc18ce5385c9584764369ae1c45e36aa868e3c3bbf`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.2 MB (2171096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17cbda3c12db206820a5605adc1251a200a136fb8b5db2fabf64d9bd21f9e10`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae51979329d8e99e076196c57a9b7e18677e6433533bd3131d1712a0638f235c`  
		Last Modified: Tue, 25 Aug 2026 00:22:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:99c7b85509d64820a8951462fdd1d275493b873b68b40f0d1c3311b52c631ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bea1d035420a77877a7ae40015e4d7295cde8b861b6f9a3edab4e6c82b0daf7`

```dockerfile
```

-	Layers:
	-	`sha256:67e2cc4c93dbd46d68ef41fe7607981152db4042cedb3d106a4ce3ab15d9156f`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.0 MB (2010062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfaf9ca44bc5de1133db90c11fb1290ecc6330fe2c0f1ab725e93a21fad5a8d6`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c30c690b1ab3dc91cf88cbb89de4432d09dc707413099ae2a53b7367e080bc74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32581267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8773e605e382948669649e57b54cbc6607f17590cca57b71c9015767d83a806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:21:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:38 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:38 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b00431edb4e1c12b51fd7165d4f63e87369724b542ad660179c2d3bc428559`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a780b2d9f8338429d5c52e7e8e65fc7eca8dd6d68753b20cb2a0193bf372c077`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 153.5 KB (153528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea9b2dd393308e27d1f13384b644f7ac598a3dee8d36a5942ea2c9e0d4000ea`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.3 MB (2266640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7f80341faaf10b909fc4ee59501127649ba5369393910e072ebb6608fa4630`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a7662ec240484373771668128166d8174dd59e2d48a15486d58eab9e779fb6`  
		Last Modified: Tue, 25 Aug 2026 00:24:46 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:b749b02b6cac91cb05f31d939087ffba0138cc186ebf911558ca2199ece5c665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232b0d6a4c9762f1d86e39e9a645897d1e3a98c0c4552531b52cb042b3085d88`

```dockerfile
```

-	Layers:
	-	`sha256:cd21e3e0826071a3ea1da5bbb6c7de865c2f9b8def7fe6edbfc932dcea8d8de2`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.0 MB (2008910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba53650a9aed2dc57f592bd4cc9fb6ee6004bfcc343d9acd5361cd4f45023450`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:a38bfb324503e9daabef54e1d7a8d646add2c13fa2e0ab81371bf86328a50921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7885454e9209cead8bfa1bb3415c8a823c2cdb72698daabe057e4cfcbf32513a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 12:00:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 12:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 12:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 12:14:49 GMT
USER memcache
# Wed, 05 Aug 2026 12:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 12:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf4bbf03e17f5cab312e778aa64c1074a8caa390b65b8b7f3233cdb6663aa90`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e8cdbdba8d030cf76c9e1d44cafeadc8e37f6d0cd557dcbb986a30b6fc6caf`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 133.1 KB (133144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d857cf682d6b5c6c5c47e45f425d8add7cb2632fb75fbfd38fdf310d4375b9`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.2 MB (2212873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143c0a64f607a70937e7e57ed8ac7b267ad0c9d47305698042e5a4861088493`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d053f677518d7f0d3034377cff19aff0f906d6a7c65bfd003459f3e334e6eb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:4721f3a32118218b8d05c3d7264de3c4bfc78e2d5fd0808fde28bee90f25ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d701afbb34c09537c774107be3a26f6479334d13288ffd2f9e8fd80b0ecdfd`

```dockerfile
```

-	Layers:
	-	`sha256:b2e40a1504aa03787c5c7f30cf3ef9906f5459f12b86546e60546e710c216efb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab2d0ab186583e060eb3f57cf95ea6f53892b0c9f498343133f953b234148d4`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:00ee6fb4e4ef0f2b51f78ab7c193565796c1dd1d13aa26b5186841664207621d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32311250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31602bb9e085ba1211e06ac8e05cbc8e5e213e337ee4a9133f285cfa43d75e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:42:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:42:01 GMT
USER memcache
# Tue, 25 Aug 2026 00:42:01 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:42:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d8218e1c671cd45cc6e31820e9e221d1c52c96ee506057d62aa385888bc248`  
		Last Modified: Tue, 25 Aug 2026 00:42:11 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df83c18be84787fcfe1bd04adf97dd13c178bed33c3204c48324e6b6c23d8eee`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 140.5 KB (140545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b264b6a40dd78478350e9ec8045d9436f3db4f35236353620b01fe43edfd36d5`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.3 MB (2301470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60640ad1bb62b53d0176a51c31eb329d5b9b52a9cdd0683c8769948d144bb23`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7117dfe1b0c6883a5dc879b8559ceb672dd66d939d0f89c717d0a2cc57e7c04`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:b29cc7009dbe96ab29a03479c51ae2408731d4107786c3342417564d6b9bbccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7490349b39de8ac753baa0ec7d54bef0d7d67781afc3a66976127cebe11367`

```dockerfile
```

-	Layers:
	-	`sha256:7f152040eb62456deccfae205e54ce50723ecb7d4bc188a2c99e68ecf0224fab`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.0 MB (2010039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d5b581d01c33770b7cb868777ada87ce158056cb6a7c29e8ac42cb89c2e5766`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6`

```console
$ docker pull memcached@sha256:9f213417a1c51d4c18c0ea9f38a917792ebf21c1b06a4168a04c5b7761494982
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
$ docker pull memcached@sha256:57f76c8133336936ad246cae500f07d07b3bf149485f005b515016bdd455be8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32216756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24406d1ca8939651827dd1775d10707a29ad7dcca1462ff80004be28e364cf30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:22:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b564688b1072131c84843b878def2a6b541f413dc4aa6e532feb411f6d87ad41`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6221ee17f50145599d26d40606ffbd086ba41531a59662518b98be8fab1a843e`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 136.7 KB (136706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfae3da9f7bfe557301344f0b132a9c12c7a75dbc6a7b91b62fa35144389552`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.3 MB (2285876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591a7e3cd179fa3da19cdc09f0f43810dbe1c794daf296de1aaa8a3aa488d413`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ff75ca70cd262763dabbdfdd63bb4b4bd93a47a2758aea5e08684e113f2989`  
		Last Modified: Tue, 25 Aug 2026 00:24:57 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:6df923c152c829adb9589458e4cec741b66999bf25a7d10ee7a81b667096507f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5088226ef66a41b85dc80fb80689ce7a73b6585850b0c6ab5f139c74f68155`

```dockerfile
```

-	Layers:
	-	`sha256:6a6c096c11dc72812aa322f5f9fb7404422dd3f5252b99c8da4d08ad2688b739`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.0 MB (2008602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:560518c79cf9146d94e2c448fa529bd862c219a8b904b62206843d44fc5ee12f`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v7

```console
$ docker pull memcached@sha256:023b4f0c03c3d3ee4025c8cda685724750ee8efcd175a5c22cdd39c12712e860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28527134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a559724f872cfe18bf63409400cbae4e5ad5d720ba526cfe23d58b7eacbffd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:22:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:23 GMT
USER memcache
# Tue, 25 Aug 2026 00:22:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:22:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cac8b9d8ee7969044bdc968c3195bbbfea0bca546aad3b2979372fb26ac2d7`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4d89e07ba6e6ac865f406ec22b456a717c64ed0bf6f1a3bb952dd8acc88cd2`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 135.4 KB (135384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cef6a353a923552dcd4b4cc18ce5385c9584764369ae1c45e36aa868e3c3bbf`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.2 MB (2171096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17cbda3c12db206820a5605adc1251a200a136fb8b5db2fabf64d9bd21f9e10`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae51979329d8e99e076196c57a9b7e18677e6433533bd3131d1712a0638f235c`  
		Last Modified: Tue, 25 Aug 2026 00:22:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:99c7b85509d64820a8951462fdd1d275493b873b68b40f0d1c3311b52c631ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bea1d035420a77877a7ae40015e4d7295cde8b861b6f9a3edab4e6c82b0daf7`

```dockerfile
```

-	Layers:
	-	`sha256:67e2cc4c93dbd46d68ef41fe7607981152db4042cedb3d106a4ce3ab15d9156f`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.0 MB (2010062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfaf9ca44bc5de1133db90c11fb1290ecc6330fe2c0f1ab725e93a21fad5a8d6`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c30c690b1ab3dc91cf88cbb89de4432d09dc707413099ae2a53b7367e080bc74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32581267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8773e605e382948669649e57b54cbc6607f17590cca57b71c9015767d83a806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:21:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:38 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:38 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b00431edb4e1c12b51fd7165d4f63e87369724b542ad660179c2d3bc428559`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a780b2d9f8338429d5c52e7e8e65fc7eca8dd6d68753b20cb2a0193bf372c077`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 153.5 KB (153528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea9b2dd393308e27d1f13384b644f7ac598a3dee8d36a5942ea2c9e0d4000ea`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.3 MB (2266640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7f80341faaf10b909fc4ee59501127649ba5369393910e072ebb6608fa4630`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a7662ec240484373771668128166d8174dd59e2d48a15486d58eab9e779fb6`  
		Last Modified: Tue, 25 Aug 2026 00:24:46 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:b749b02b6cac91cb05f31d939087ffba0138cc186ebf911558ca2199ece5c665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232b0d6a4c9762f1d86e39e9a645897d1e3a98c0c4552531b52cb042b3085d88`

```dockerfile
```

-	Layers:
	-	`sha256:cd21e3e0826071a3ea1da5bbb6c7de865c2f9b8def7fe6edbfc932dcea8d8de2`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.0 MB (2008910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba53650a9aed2dc57f592bd4cc9fb6ee6004bfcc343d9acd5361cd4f45023450`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; riscv64

```console
$ docker pull memcached@sha256:a38bfb324503e9daabef54e1d7a8d646add2c13fa2e0ab81371bf86328a50921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7885454e9209cead8bfa1bb3415c8a823c2cdb72698daabe057e4cfcbf32513a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 12:00:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 12:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 12:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 12:14:49 GMT
USER memcache
# Wed, 05 Aug 2026 12:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 12:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf4bbf03e17f5cab312e778aa64c1074a8caa390b65b8b7f3233cdb6663aa90`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e8cdbdba8d030cf76c9e1d44cafeadc8e37f6d0cd557dcbb986a30b6fc6caf`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 133.1 KB (133144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d857cf682d6b5c6c5c47e45f425d8add7cb2632fb75fbfd38fdf310d4375b9`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.2 MB (2212873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143c0a64f607a70937e7e57ed8ac7b267ad0c9d47305698042e5a4861088493`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d053f677518d7f0d3034377cff19aff0f906d6a7c65bfd003459f3e334e6eb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:4721f3a32118218b8d05c3d7264de3c4bfc78e2d5fd0808fde28bee90f25ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d701afbb34c09537c774107be3a26f6479334d13288ffd2f9e8fd80b0ecdfd`

```dockerfile
```

-	Layers:
	-	`sha256:b2e40a1504aa03787c5c7f30cf3ef9906f5459f12b86546e60546e710c216efb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab2d0ab186583e060eb3f57cf95ea6f53892b0c9f498343133f953b234148d4`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; s390x

```console
$ docker pull memcached@sha256:00ee6fb4e4ef0f2b51f78ab7c193565796c1dd1d13aa26b5186841664207621d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32311250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31602bb9e085ba1211e06ac8e05cbc8e5e213e337ee4a9133f285cfa43d75e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:42:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:42:01 GMT
USER memcache
# Tue, 25 Aug 2026 00:42:01 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:42:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d8218e1c671cd45cc6e31820e9e221d1c52c96ee506057d62aa385888bc248`  
		Last Modified: Tue, 25 Aug 2026 00:42:11 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df83c18be84787fcfe1bd04adf97dd13c178bed33c3204c48324e6b6c23d8eee`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 140.5 KB (140545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b264b6a40dd78478350e9ec8045d9436f3db4f35236353620b01fe43edfd36d5`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.3 MB (2301470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60640ad1bb62b53d0176a51c31eb329d5b9b52a9cdd0683c8769948d144bb23`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7117dfe1b0c6883a5dc879b8559ceb672dd66d939d0f89c717d0a2cc57e7c04`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:b29cc7009dbe96ab29a03479c51ae2408731d4107786c3342417564d6b9bbccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7490349b39de8ac753baa0ec7d54bef0d7d67781afc3a66976127cebe11367`

```dockerfile
```

-	Layers:
	-	`sha256:7f152040eb62456deccfae205e54ce50723ecb7d4bc188a2c99e68ecf0224fab`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.0 MB (2010039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d5b581d01c33770b7cb868777ada87ce158056cb6a7c29e8ac42cb89c2e5766`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine`

```console
$ docker pull memcached@sha256:c29847751abb41f4c268c84fb3087fee05d4edcbda44409ccb5086e26148e8a7
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
$ docker pull memcached@sha256:fb019eacc7baefab28dd9424a093181f9be578785ff820acfc223cca7d196eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5925683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0830b42059af384dcca1bbbdab5862fc1c6323f885967999d379859ba549594a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:02 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30537f894bef5b46746336c3f041dc6795e8ecc97b9292ae247b66036dd5c67`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d21aa1f5d5e69c701ce24de32e1146319696c0f27a53fc1071dfdbb1db835a4`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c78e5fe358666fa7c60fd82883fa14be78948330a03816dad1d4d5c344de613`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 2.0 MB (1971871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5169cfbcf8c6077d8c56ea32ca8a2111c70c962292078156dc0dfd13003dae`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2867a9b9bc08210b05bbb39ce6524c67aae53eeac22ec837a46048462914a320`  
		Last Modified: Fri, 10 Jul 2026 17:14:48 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:fe04e0ef9a8e3e439388815d469625ca78a4a35e59f5cc9de4f5f5db5cb4d641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c27b7d4bcb94d0f429931b29a65e16c64f720245153e5974f420993ed76dc8c`

```dockerfile
```

-	Layers:
	-	`sha256:bde0eb081740918cd7c2ba1f2880c56d42ae6f84c1b309e633eddca70f44bf70`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7674e16e0fabd9b80fffa1e0524b4e1d5433973f285279363c174978747e56b`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:fb6536c6ff6be675875a0e9058a21cb01429d7fea472911b157925599078b793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff99274cd2ae9a12540461f7d271257b2dcb39a7fe841e30ee12d6118a2b3620`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:58 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:10:59 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:01 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:01 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87742bed7ba15c80771525da3c973241c15057e2e1c208334a48a5e6ac0227e1`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2caf4ea40e42d6914610fc632e2a0622b052c9f4ba441a61c4127f1978922a5`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 102.6 KB (102635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54c3c9546ae919bd51b70cd67be4110dcdf4fce207e30e8a682ea753b84b5c4`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 1.9 MB (1919996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accf55e04cbb6065732d0695c7af9397d6210442810183aea8a10104beffdf92`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a21955ac570df30e5245468c555d187918240b2e55a8f968a1c63cc712b28a`  
		Last Modified: Fri, 10 Jul 2026 17:14:06 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:3ce649bbc88016374f2fedd7a3a6282acb086f35beb378072515db6f4548882a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0897be4d2621cbe9fd74e4aec07f9bd6e8ed4b8539ca7d9e2c6e8b810fa5bc02`

```dockerfile
```

-	Layers:
	-	`sha256:6ee0d00e67e904e3e64b4d167c720519ecfb467699fb18b569854e4f5b1fe6dc`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:065f61ec993786802487788eebdf5b4c6c3e326d12b6574ea897ea1e51c6b933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c0d5f0e58661e882030be0f4cd2c902f47c1b2f5f93e5d87841d1123efbabe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:00 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:57 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:57 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ab9fc66207e8b3c6d27de378c990e1ecdad5abf472f309f0a75a5690dd3d34`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500ccb570e966ec606c735939fc5e3725ae717e18fb33f7f70e0bbec3f26ebfe`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629877caf8b70fc341b804e1ee0d6f13c8e508ec2c0f35640783d6f9de86e97d`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 1.9 MB (1879484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5dc5afffcba19bbc164b433c2d8aa77a001fe3a203d883e6695bba627f4e63`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942dacfd6a09ac673f34e02d66d909d0827204734321a96446e8d26e2a8e3f0f`  
		Last Modified: Fri, 10 Jul 2026 17:14:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:c96c7fceae2e42126799ee9fab80a8abd26d161c400655de8bb3a35ee285ebd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b275b410c1039288a2a348ca496e1ceb36e4759d45fce525c463c093cf0150`

```dockerfile
```

-	Layers:
	-	`sha256:66e157426e5075f50c0de6a20593e341c7ee59506d2b596eda3e44c455f60de0`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2082312b15a7c193cf1025d6d221124dc4929f5993e39111484a8c6b8a8c3c87`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 20.7 KB (20677 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:473bc6e0328b8c46b2b460f48c28c841e89d6394a139cb1f33b26f4bb6d3d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303f30aa9b9680e31a5c226e7fc751f881c58d33a4750db24cb3b8fd69e92dfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:11:49 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52ad1db85493a296c7511781136a99a225e4e27bdbe75e5dfa86c4746872ddb`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d51ffb6ef225790732ccf7ed312e27b0330c7a7cdf6396901873e7b6080a64`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 121.8 KB (121844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0cfcbdec09e1fea3b1fd04db1b5778a6adc5ac25f583318b0d6577180d64c3`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 1.9 MB (1949339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b14c331bde3984dedbe104abcecfa492926eb9cfadef54fca8b6d94017819ee`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f4c5478c9d47600fd7de72bbc89bbf9cb940422d7e769d4b0c3810d8d79da9`  
		Last Modified: Fri, 10 Jul 2026 17:14:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:129b5ab2a677ae3c8c9535f820f20b8109943c31455171258b978980081bada1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db04db28da1799b3a161bdaf8be482db6fb26098666c447b8ab8c0ad6e2d8ee3`

```dockerfile
```

-	Layers:
	-	`sha256:6a02dc47d1088cf12676c61a5d57939f1134494f35de9890ecff1224f5e9f00a`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97f807742aba1073c82ae789ed40324dc9d3b7f3ed1551021d5a19edb66412d0`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; 386

```console
$ docker pull memcached@sha256:ea3586ffa52d2d45fc770c0d6bb9acc938059ce4043178d904e0068df6f0fd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5708492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181faa0096b17b6d7154732a3200ec4a4311c3b8a83ea31dd5ed15c35ecfda94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:15:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:15:22 GMT
USER memcache
# Fri, 10 Jul 2026 17:15:22 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:15:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81df1d20c0eee21a359b722a21e794764b7951ecb8faf3a0d0e0c81f2ffa3d0a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627d7c2ccb877b2a1ee4aca91955ff03d03b148f292eec21eee5fa7979fbabd5`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe79c417bd4c20f80deddc7a490f4ada04448659ae32a28dfc39579c94c532a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 1.9 MB (1926270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a723bad69306f7075f02ce9abb8abc4f0cae3c182d907b95e0c1806cdb132879`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716b9a082ae94cfaa02287d294c4445ed12cfe132a49ae55d4f4567298c822ce`  
		Last Modified: Fri, 10 Jul 2026 17:15:28 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:e13a8f7723825b56a10c17b8fab193220043c24a53cef71b8c68932907b0c9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0ab906e6188fa1ef1ea6f07f736fe5d938c337b4275e5e011ec70fd4b7ed78`

```dockerfile
```

-	Layers:
	-	`sha256:974a2c36fe4450e13c8bb229e35c7f4f607f96b4636c3272dedab90a9e087c11`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:046eab04b512f1ec3bfdcb659254e16a8af365ef2e4e180416d88309f8181f5a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:44fffe9dbe2ce32e7e7e934e63b646bf2d09e26e064cb292424127f37a7494e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070297f68a61aa86c9903c3a442022089b167534ca6ea3458fbc53edc544ef99`
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
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:12:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:12:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:12:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:12:42 GMT
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
	-	`sha256:4293070d44f81cd4f403c5639873cafdb11a98b869e5e1d480688921dfdfc3ed`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 2.1 MB (2063831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2229725e4bb0544f8266e338055cb9017ea9ddce2c2507292e5c048aef184d`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbd62f05889955669f5596736fd71172d92d536bac47c6ac21ff6b9ba6b1144`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a8166a2bf2c49e9819b9ab206c4f601b447cc5e274e1aae1ef114dc5f20e969a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e5bee8c7ff23b0735c30afbdf52ff7eddf087ede41da87f5eedf3713c8fbbb`

```dockerfile
```

-	Layers:
	-	`sha256:cc0fc4b74de1fd8e69d3f9b50f41ef5cb89ea23b90c7f63f8682e8f103d52b9b`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b55265717bc7f9264f9cee04f4c96e8ff381460971e5d4b590e305ddedf4622a`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:f6503d027a3102edc399de42008e6de6b523702df436fd74be6c6837a0882c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5742697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9200c9ee0cd3682e447f0071af9c2edff3b87a15688bbb8e4b3360b97a75dd22`
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
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 18:17:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 18:17:54 GMT
USER memcache
# Fri, 10 Jul 2026 18:17:54 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 18:17:54 GMT
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
	-	`sha256:a6cc49b0ef8ea996fd966c0929e48cc1b3e4c976fd3f5318322e48ebc3c742cf`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 2.1 MB (2058088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc547d2752adfd06887e58e4938230be78719712f64613173fdbf15322296cd`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28702830c4f44b0abd3826454a1ce8fff39a742c980a4cc715c11d6b2a3735d2`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5f3dca65e175b723b9be05a830b290629d08dc7dfee38b614716144e532f766b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6abb5cabee5aa9238e08e76ddf612911ed9189bcb374b335d7f638d087707b`

```dockerfile
```

-	Layers:
	-	`sha256:65e49063062422d01a294e89ecd5dbd733e014683e3a7467d189fa0bd4e4bc6e`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38c3fe116a56893dd7290547344a3c341309b11d85ad3be36dfe73a2020e64c9`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:0d3ba968a8dadfaf2746f61d68812d39af76a14d58e42a647f976c2cb9ff096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5829422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e26b528c1c9aa9b791cbbdec8b9913fdc6471ee6f2d09158aeb75450a903fe1`
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
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:30 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:30 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:30 GMT
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
	-	`sha256:d6237c99ed479fc16f1ca6c375f504247f1a8a6f9da3d81c350e285a858a8d2c`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 2.0 MB (2004462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1b7f127e35ec4a4d8cc5b3be6701d4c45704a7621453e6d24ee002177f8cf9`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d4a09dbf45713c9201b29b3d48506093fe9fe408a775ff3f7b765021ef367`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:27190e318ed67ca9fd9eb7a16415c0bd02f67e657c6821d242f5f918639230c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dada849fcb88d4a37f6ad534099485d1ba5b80ad42eb0dcd7d9af7abb0c7854a`

```dockerfile
```

-	Layers:
	-	`sha256:a024a47e61c0f51bbbe2e680151af1ff723475dac33760ed6612c057ca5677d8`  
		Last Modified: Fri, 10 Jul 2026 17:13:41 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2caa9a6c5fe1b43c960b7edb2bd94baa86af2a73898972b1cc30732e19011b`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine3.24`

```console
$ docker pull memcached@sha256:c29847751abb41f4c268c84fb3087fee05d4edcbda44409ccb5086e26148e8a7
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
$ docker pull memcached@sha256:fb019eacc7baefab28dd9424a093181f9be578785ff820acfc223cca7d196eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5925683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0830b42059af384dcca1bbbdab5862fc1c6323f885967999d379859ba549594a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:02 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30537f894bef5b46746336c3f041dc6795e8ecc97b9292ae247b66036dd5c67`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d21aa1f5d5e69c701ce24de32e1146319696c0f27a53fc1071dfdbb1db835a4`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c78e5fe358666fa7c60fd82883fa14be78948330a03816dad1d4d5c344de613`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 2.0 MB (1971871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5169cfbcf8c6077d8c56ea32ca8a2111c70c962292078156dc0dfd13003dae`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2867a9b9bc08210b05bbb39ce6524c67aae53eeac22ec837a46048462914a320`  
		Last Modified: Fri, 10 Jul 2026 17:14:48 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:fe04e0ef9a8e3e439388815d469625ca78a4a35e59f5cc9de4f5f5db5cb4d641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c27b7d4bcb94d0f429931b29a65e16c64f720245153e5974f420993ed76dc8c`

```dockerfile
```

-	Layers:
	-	`sha256:bde0eb081740918cd7c2ba1f2880c56d42ae6f84c1b309e633eddca70f44bf70`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7674e16e0fabd9b80fffa1e0524b4e1d5433973f285279363c174978747e56b`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:fb6536c6ff6be675875a0e9058a21cb01429d7fea472911b157925599078b793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff99274cd2ae9a12540461f7d271257b2dcb39a7fe841e30ee12d6118a2b3620`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:58 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:10:59 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:01 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:01 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87742bed7ba15c80771525da3c973241c15057e2e1c208334a48a5e6ac0227e1`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2caf4ea40e42d6914610fc632e2a0622b052c9f4ba441a61c4127f1978922a5`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 102.6 KB (102635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54c3c9546ae919bd51b70cd67be4110dcdf4fce207e30e8a682ea753b84b5c4`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 1.9 MB (1919996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accf55e04cbb6065732d0695c7af9397d6210442810183aea8a10104beffdf92`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a21955ac570df30e5245468c555d187918240b2e55a8f968a1c63cc712b28a`  
		Last Modified: Fri, 10 Jul 2026 17:14:06 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:3ce649bbc88016374f2fedd7a3a6282acb086f35beb378072515db6f4548882a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0897be4d2621cbe9fd74e4aec07f9bd6e8ed4b8539ca7d9e2c6e8b810fa5bc02`

```dockerfile
```

-	Layers:
	-	`sha256:6ee0d00e67e904e3e64b4d167c720519ecfb467699fb18b569854e4f5b1fe6dc`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:065f61ec993786802487788eebdf5b4c6c3e326d12b6574ea897ea1e51c6b933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c0d5f0e58661e882030be0f4cd2c902f47c1b2f5f93e5d87841d1123efbabe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:00 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:57 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:57 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ab9fc66207e8b3c6d27de378c990e1ecdad5abf472f309f0a75a5690dd3d34`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500ccb570e966ec606c735939fc5e3725ae717e18fb33f7f70e0bbec3f26ebfe`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629877caf8b70fc341b804e1ee0d6f13c8e508ec2c0f35640783d6f9de86e97d`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 1.9 MB (1879484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5dc5afffcba19bbc164b433c2d8aa77a001fe3a203d883e6695bba627f4e63`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942dacfd6a09ac673f34e02d66d909d0827204734321a96446e8d26e2a8e3f0f`  
		Last Modified: Fri, 10 Jul 2026 17:14:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:c96c7fceae2e42126799ee9fab80a8abd26d161c400655de8bb3a35ee285ebd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b275b410c1039288a2a348ca496e1ceb36e4759d45fce525c463c093cf0150`

```dockerfile
```

-	Layers:
	-	`sha256:66e157426e5075f50c0de6a20593e341c7ee59506d2b596eda3e44c455f60de0`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2082312b15a7c193cf1025d6d221124dc4929f5993e39111484a8c6b8a8c3c87`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 20.7 KB (20677 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:473bc6e0328b8c46b2b460f48c28c841e89d6394a139cb1f33b26f4bb6d3d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303f30aa9b9680e31a5c226e7fc751f881c58d33a4750db24cb3b8fd69e92dfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:11:49 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52ad1db85493a296c7511781136a99a225e4e27bdbe75e5dfa86c4746872ddb`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d51ffb6ef225790732ccf7ed312e27b0330c7a7cdf6396901873e7b6080a64`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 121.8 KB (121844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0cfcbdec09e1fea3b1fd04db1b5778a6adc5ac25f583318b0d6577180d64c3`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 1.9 MB (1949339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b14c331bde3984dedbe104abcecfa492926eb9cfadef54fca8b6d94017819ee`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f4c5478c9d47600fd7de72bbc89bbf9cb940422d7e769d4b0c3810d8d79da9`  
		Last Modified: Fri, 10 Jul 2026 17:14:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:129b5ab2a677ae3c8c9535f820f20b8109943c31455171258b978980081bada1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db04db28da1799b3a161bdaf8be482db6fb26098666c447b8ab8c0ad6e2d8ee3`

```dockerfile
```

-	Layers:
	-	`sha256:6a02dc47d1088cf12676c61a5d57939f1134494f35de9890ecff1224f5e9f00a`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97f807742aba1073c82ae789ed40324dc9d3b7f3ed1551021d5a19edb66412d0`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:ea3586ffa52d2d45fc770c0d6bb9acc938059ce4043178d904e0068df6f0fd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5708492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181faa0096b17b6d7154732a3200ec4a4311c3b8a83ea31dd5ed15c35ecfda94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:15:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:15:22 GMT
USER memcache
# Fri, 10 Jul 2026 17:15:22 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:15:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81df1d20c0eee21a359b722a21e794764b7951ecb8faf3a0d0e0c81f2ffa3d0a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627d7c2ccb877b2a1ee4aca91955ff03d03b148f292eec21eee5fa7979fbabd5`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe79c417bd4c20f80deddc7a490f4ada04448659ae32a28dfc39579c94c532a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 1.9 MB (1926270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a723bad69306f7075f02ce9abb8abc4f0cae3c182d907b95e0c1806cdb132879`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716b9a082ae94cfaa02287d294c4445ed12cfe132a49ae55d4f4567298c822ce`  
		Last Modified: Fri, 10 Jul 2026 17:15:28 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:e13a8f7723825b56a10c17b8fab193220043c24a53cef71b8c68932907b0c9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0ab906e6188fa1ef1ea6f07f736fe5d938c337b4275e5e011ec70fd4b7ed78`

```dockerfile
```

-	Layers:
	-	`sha256:974a2c36fe4450e13c8bb229e35c7f4f607f96b4636c3272dedab90a9e087c11`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:046eab04b512f1ec3bfdcb659254e16a8af365ef2e4e180416d88309f8181f5a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:44fffe9dbe2ce32e7e7e934e63b646bf2d09e26e064cb292424127f37a7494e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070297f68a61aa86c9903c3a442022089b167534ca6ea3458fbc53edc544ef99`
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
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:12:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:12:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:12:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:12:42 GMT
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
	-	`sha256:4293070d44f81cd4f403c5639873cafdb11a98b869e5e1d480688921dfdfc3ed`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 2.1 MB (2063831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2229725e4bb0544f8266e338055cb9017ea9ddce2c2507292e5c048aef184d`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbd62f05889955669f5596736fd71172d92d536bac47c6ac21ff6b9ba6b1144`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a8166a2bf2c49e9819b9ab206c4f601b447cc5e274e1aae1ef114dc5f20e969a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e5bee8c7ff23b0735c30afbdf52ff7eddf087ede41da87f5eedf3713c8fbbb`

```dockerfile
```

-	Layers:
	-	`sha256:cc0fc4b74de1fd8e69d3f9b50f41ef5cb89ea23b90c7f63f8682e8f103d52b9b`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b55265717bc7f9264f9cee04f4c96e8ff381460971e5d4b590e305ddedf4622a`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:f6503d027a3102edc399de42008e6de6b523702df436fd74be6c6837a0882c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5742697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9200c9ee0cd3682e447f0071af9c2edff3b87a15688bbb8e4b3360b97a75dd22`
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
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 18:17:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 18:17:54 GMT
USER memcache
# Fri, 10 Jul 2026 18:17:54 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 18:17:54 GMT
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
	-	`sha256:a6cc49b0ef8ea996fd966c0929e48cc1b3e4c976fd3f5318322e48ebc3c742cf`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 2.1 MB (2058088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc547d2752adfd06887e58e4938230be78719712f64613173fdbf15322296cd`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28702830c4f44b0abd3826454a1ce8fff39a742c980a4cc715c11d6b2a3735d2`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5f3dca65e175b723b9be05a830b290629d08dc7dfee38b614716144e532f766b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6abb5cabee5aa9238e08e76ddf612911ed9189bcb374b335d7f638d087707b`

```dockerfile
```

-	Layers:
	-	`sha256:65e49063062422d01a294e89ecd5dbd733e014683e3a7467d189fa0bd4e4bc6e`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38c3fe116a56893dd7290547344a3c341309b11d85ad3be36dfe73a2020e64c9`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:0d3ba968a8dadfaf2746f61d68812d39af76a14d58e42a647f976c2cb9ff096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5829422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e26b528c1c9aa9b791cbbdec8b9913fdc6471ee6f2d09158aeb75450a903fe1`
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
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:30 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:30 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:30 GMT
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
	-	`sha256:d6237c99ed479fc16f1ca6c375f504247f1a8a6f9da3d81c350e285a858a8d2c`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 2.0 MB (2004462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1b7f127e35ec4a4d8cc5b3be6701d4c45704a7621453e6d24ee002177f8cf9`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d4a09dbf45713c9201b29b3d48506093fe9fe408a775ff3f7b765021ef367`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:27190e318ed67ca9fd9eb7a16415c0bd02f67e657c6821d242f5f918639230c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dada849fcb88d4a37f6ad534099485d1ba5b80ad42eb0dcd7d9af7abb0c7854a`

```dockerfile
```

-	Layers:
	-	`sha256:a024a47e61c0f51bbbe2e680151af1ff723475dac33760ed6612c057ca5677d8`  
		Last Modified: Fri, 10 Jul 2026 17:13:41 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2caa9a6c5fe1b43c960b7edb2bd94baa86af2a73898972b1cc30732e19011b`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-trixie`

```console
$ docker pull memcached@sha256:9f213417a1c51d4c18c0ea9f38a917792ebf21c1b06a4168a04c5b7761494982
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
$ docker pull memcached@sha256:57f76c8133336936ad246cae500f07d07b3bf149485f005b515016bdd455be8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32216756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24406d1ca8939651827dd1775d10707a29ad7dcca1462ff80004be28e364cf30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:22:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b564688b1072131c84843b878def2a6b541f413dc4aa6e532feb411f6d87ad41`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6221ee17f50145599d26d40606ffbd086ba41531a59662518b98be8fab1a843e`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 136.7 KB (136706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfae3da9f7bfe557301344f0b132a9c12c7a75dbc6a7b91b62fa35144389552`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.3 MB (2285876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591a7e3cd179fa3da19cdc09f0f43810dbe1c794daf296de1aaa8a3aa488d413`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ff75ca70cd262763dabbdfdd63bb4b4bd93a47a2758aea5e08684e113f2989`  
		Last Modified: Tue, 25 Aug 2026 00:24:57 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6df923c152c829adb9589458e4cec741b66999bf25a7d10ee7a81b667096507f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5088226ef66a41b85dc80fb80689ce7a73b6585850b0c6ab5f139c74f68155`

```dockerfile
```

-	Layers:
	-	`sha256:6a6c096c11dc72812aa322f5f9fb7404422dd3f5252b99c8da4d08ad2688b739`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.0 MB (2008602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:560518c79cf9146d94e2c448fa529bd862c219a8b904b62206843d44fc5ee12f`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:023b4f0c03c3d3ee4025c8cda685724750ee8efcd175a5c22cdd39c12712e860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28527134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a559724f872cfe18bf63409400cbae4e5ad5d720ba526cfe23d58b7eacbffd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:22:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:23 GMT
USER memcache
# Tue, 25 Aug 2026 00:22:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:22:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cac8b9d8ee7969044bdc968c3195bbbfea0bca546aad3b2979372fb26ac2d7`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4d89e07ba6e6ac865f406ec22b456a717c64ed0bf6f1a3bb952dd8acc88cd2`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 135.4 KB (135384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cef6a353a923552dcd4b4cc18ce5385c9584764369ae1c45e36aa868e3c3bbf`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.2 MB (2171096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17cbda3c12db206820a5605adc1251a200a136fb8b5db2fabf64d9bd21f9e10`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae51979329d8e99e076196c57a9b7e18677e6433533bd3131d1712a0638f235c`  
		Last Modified: Tue, 25 Aug 2026 00:22:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:99c7b85509d64820a8951462fdd1d275493b873b68b40f0d1c3311b52c631ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bea1d035420a77877a7ae40015e4d7295cde8b861b6f9a3edab4e6c82b0daf7`

```dockerfile
```

-	Layers:
	-	`sha256:67e2cc4c93dbd46d68ef41fe7607981152db4042cedb3d106a4ce3ab15d9156f`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.0 MB (2010062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfaf9ca44bc5de1133db90c11fb1290ecc6330fe2c0f1ab725e93a21fad5a8d6`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c30c690b1ab3dc91cf88cbb89de4432d09dc707413099ae2a53b7367e080bc74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32581267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8773e605e382948669649e57b54cbc6607f17590cca57b71c9015767d83a806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:21:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:38 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:38 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b00431edb4e1c12b51fd7165d4f63e87369724b542ad660179c2d3bc428559`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a780b2d9f8338429d5c52e7e8e65fc7eca8dd6d68753b20cb2a0193bf372c077`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 153.5 KB (153528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea9b2dd393308e27d1f13384b644f7ac598a3dee8d36a5942ea2c9e0d4000ea`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.3 MB (2266640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7f80341faaf10b909fc4ee59501127649ba5369393910e072ebb6608fa4630`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a7662ec240484373771668128166d8174dd59e2d48a15486d58eab9e779fb6`  
		Last Modified: Tue, 25 Aug 2026 00:24:46 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:b749b02b6cac91cb05f31d939087ffba0138cc186ebf911558ca2199ece5c665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232b0d6a4c9762f1d86e39e9a645897d1e3a98c0c4552531b52cb042b3085d88`

```dockerfile
```

-	Layers:
	-	`sha256:cd21e3e0826071a3ea1da5bbb6c7de865c2f9b8def7fe6edbfc932dcea8d8de2`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.0 MB (2008910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba53650a9aed2dc57f592bd4cc9fb6ee6004bfcc343d9acd5361cd4f45023450`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:a38bfb324503e9daabef54e1d7a8d646add2c13fa2e0ab81371bf86328a50921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7885454e9209cead8bfa1bb3415c8a823c2cdb72698daabe057e4cfcbf32513a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 12:00:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 12:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 12:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 12:14:49 GMT
USER memcache
# Wed, 05 Aug 2026 12:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 12:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf4bbf03e17f5cab312e778aa64c1074a8caa390b65b8b7f3233cdb6663aa90`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e8cdbdba8d030cf76c9e1d44cafeadc8e37f6d0cd557dcbb986a30b6fc6caf`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 133.1 KB (133144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d857cf682d6b5c6c5c47e45f425d8add7cb2632fb75fbfd38fdf310d4375b9`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.2 MB (2212873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143c0a64f607a70937e7e57ed8ac7b267ad0c9d47305698042e5a4861088493`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d053f677518d7f0d3034377cff19aff0f906d6a7c65bfd003459f3e334e6eb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:4721f3a32118218b8d05c3d7264de3c4bfc78e2d5fd0808fde28bee90f25ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d701afbb34c09537c774107be3a26f6479334d13288ffd2f9e8fd80b0ecdfd`

```dockerfile
```

-	Layers:
	-	`sha256:b2e40a1504aa03787c5c7f30cf3ef9906f5459f12b86546e60546e710c216efb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab2d0ab186583e060eb3f57cf95ea6f53892b0c9f498343133f953b234148d4`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:00ee6fb4e4ef0f2b51f78ab7c193565796c1dd1d13aa26b5186841664207621d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32311250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31602bb9e085ba1211e06ac8e05cbc8e5e213e337ee4a9133f285cfa43d75e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:42:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:42:01 GMT
USER memcache
# Tue, 25 Aug 2026 00:42:01 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:42:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d8218e1c671cd45cc6e31820e9e221d1c52c96ee506057d62aa385888bc248`  
		Last Modified: Tue, 25 Aug 2026 00:42:11 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df83c18be84787fcfe1bd04adf97dd13c178bed33c3204c48324e6b6c23d8eee`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 140.5 KB (140545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b264b6a40dd78478350e9ec8045d9436f3db4f35236353620b01fe43edfd36d5`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.3 MB (2301470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60640ad1bb62b53d0176a51c31eb329d5b9b52a9cdd0683c8769948d144bb23`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7117dfe1b0c6883a5dc879b8559ceb672dd66d939d0f89c717d0a2cc57e7c04`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:b29cc7009dbe96ab29a03479c51ae2408731d4107786c3342417564d6b9bbccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7490349b39de8ac753baa0ec7d54bef0d7d67781afc3a66976127cebe11367`

```dockerfile
```

-	Layers:
	-	`sha256:7f152040eb62456deccfae205e54ce50723ecb7d4bc188a2c99e68ecf0224fab`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.0 MB (2010039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d5b581d01c33770b7cb868777ada87ce158056cb6a7c29e8ac42cb89c2e5766`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45`

```console
$ docker pull memcached@sha256:9f213417a1c51d4c18c0ea9f38a917792ebf21c1b06a4168a04c5b7761494982
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

### `memcached:1.6.45` - linux; amd64

```console
$ docker pull memcached@sha256:57f76c8133336936ad246cae500f07d07b3bf149485f005b515016bdd455be8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32216756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24406d1ca8939651827dd1775d10707a29ad7dcca1462ff80004be28e364cf30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:22:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b564688b1072131c84843b878def2a6b541f413dc4aa6e532feb411f6d87ad41`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6221ee17f50145599d26d40606ffbd086ba41531a59662518b98be8fab1a843e`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 136.7 KB (136706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfae3da9f7bfe557301344f0b132a9c12c7a75dbc6a7b91b62fa35144389552`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.3 MB (2285876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591a7e3cd179fa3da19cdc09f0f43810dbe1c794daf296de1aaa8a3aa488d413`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ff75ca70cd262763dabbdfdd63bb4b4bd93a47a2758aea5e08684e113f2989`  
		Last Modified: Tue, 25 Aug 2026 00:24:57 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:6df923c152c829adb9589458e4cec741b66999bf25a7d10ee7a81b667096507f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5088226ef66a41b85dc80fb80689ce7a73b6585850b0c6ab5f139c74f68155`

```dockerfile
```

-	Layers:
	-	`sha256:6a6c096c11dc72812aa322f5f9fb7404422dd3f5252b99c8da4d08ad2688b739`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.0 MB (2008602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:560518c79cf9146d94e2c448fa529bd862c219a8b904b62206843d44fc5ee12f`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v7

```console
$ docker pull memcached@sha256:023b4f0c03c3d3ee4025c8cda685724750ee8efcd175a5c22cdd39c12712e860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28527134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a559724f872cfe18bf63409400cbae4e5ad5d720ba526cfe23d58b7eacbffd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:22:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:23 GMT
USER memcache
# Tue, 25 Aug 2026 00:22:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:22:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cac8b9d8ee7969044bdc968c3195bbbfea0bca546aad3b2979372fb26ac2d7`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4d89e07ba6e6ac865f406ec22b456a717c64ed0bf6f1a3bb952dd8acc88cd2`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 135.4 KB (135384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cef6a353a923552dcd4b4cc18ce5385c9584764369ae1c45e36aa868e3c3bbf`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.2 MB (2171096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17cbda3c12db206820a5605adc1251a200a136fb8b5db2fabf64d9bd21f9e10`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae51979329d8e99e076196c57a9b7e18677e6433533bd3131d1712a0638f235c`  
		Last Modified: Tue, 25 Aug 2026 00:22:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:99c7b85509d64820a8951462fdd1d275493b873b68b40f0d1c3311b52c631ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bea1d035420a77877a7ae40015e4d7295cde8b861b6f9a3edab4e6c82b0daf7`

```dockerfile
```

-	Layers:
	-	`sha256:67e2cc4c93dbd46d68ef41fe7607981152db4042cedb3d106a4ce3ab15d9156f`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.0 MB (2010062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfaf9ca44bc5de1133db90c11fb1290ecc6330fe2c0f1ab725e93a21fad5a8d6`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c30c690b1ab3dc91cf88cbb89de4432d09dc707413099ae2a53b7367e080bc74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32581267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8773e605e382948669649e57b54cbc6607f17590cca57b71c9015767d83a806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:21:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:38 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:38 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b00431edb4e1c12b51fd7165d4f63e87369724b542ad660179c2d3bc428559`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a780b2d9f8338429d5c52e7e8e65fc7eca8dd6d68753b20cb2a0193bf372c077`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 153.5 KB (153528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea9b2dd393308e27d1f13384b644f7ac598a3dee8d36a5942ea2c9e0d4000ea`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.3 MB (2266640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7f80341faaf10b909fc4ee59501127649ba5369393910e072ebb6608fa4630`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a7662ec240484373771668128166d8174dd59e2d48a15486d58eab9e779fb6`  
		Last Modified: Tue, 25 Aug 2026 00:24:46 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:b749b02b6cac91cb05f31d939087ffba0138cc186ebf911558ca2199ece5c665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232b0d6a4c9762f1d86e39e9a645897d1e3a98c0c4552531b52cb042b3085d88`

```dockerfile
```

-	Layers:
	-	`sha256:cd21e3e0826071a3ea1da5bbb6c7de865c2f9b8def7fe6edbfc932dcea8d8de2`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.0 MB (2008910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba53650a9aed2dc57f592bd4cc9fb6ee6004bfcc343d9acd5361cd4f45023450`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; riscv64

```console
$ docker pull memcached@sha256:a38bfb324503e9daabef54e1d7a8d646add2c13fa2e0ab81371bf86328a50921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7885454e9209cead8bfa1bb3415c8a823c2cdb72698daabe057e4cfcbf32513a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 12:00:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 12:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 12:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 12:14:49 GMT
USER memcache
# Wed, 05 Aug 2026 12:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 12:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf4bbf03e17f5cab312e778aa64c1074a8caa390b65b8b7f3233cdb6663aa90`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e8cdbdba8d030cf76c9e1d44cafeadc8e37f6d0cd557dcbb986a30b6fc6caf`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 133.1 KB (133144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d857cf682d6b5c6c5c47e45f425d8add7cb2632fb75fbfd38fdf310d4375b9`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.2 MB (2212873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143c0a64f607a70937e7e57ed8ac7b267ad0c9d47305698042e5a4861088493`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d053f677518d7f0d3034377cff19aff0f906d6a7c65bfd003459f3e334e6eb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:4721f3a32118218b8d05c3d7264de3c4bfc78e2d5fd0808fde28bee90f25ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d701afbb34c09537c774107be3a26f6479334d13288ffd2f9e8fd80b0ecdfd`

```dockerfile
```

-	Layers:
	-	`sha256:b2e40a1504aa03787c5c7f30cf3ef9906f5459f12b86546e60546e710c216efb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab2d0ab186583e060eb3f57cf95ea6f53892b0c9f498343133f953b234148d4`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; s390x

```console
$ docker pull memcached@sha256:00ee6fb4e4ef0f2b51f78ab7c193565796c1dd1d13aa26b5186841664207621d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32311250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31602bb9e085ba1211e06ac8e05cbc8e5e213e337ee4a9133f285cfa43d75e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:42:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:42:01 GMT
USER memcache
# Tue, 25 Aug 2026 00:42:01 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:42:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d8218e1c671cd45cc6e31820e9e221d1c52c96ee506057d62aa385888bc248`  
		Last Modified: Tue, 25 Aug 2026 00:42:11 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df83c18be84787fcfe1bd04adf97dd13c178bed33c3204c48324e6b6c23d8eee`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 140.5 KB (140545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b264b6a40dd78478350e9ec8045d9436f3db4f35236353620b01fe43edfd36d5`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.3 MB (2301470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60640ad1bb62b53d0176a51c31eb329d5b9b52a9cdd0683c8769948d144bb23`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7117dfe1b0c6883a5dc879b8559ceb672dd66d939d0f89c717d0a2cc57e7c04`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:b29cc7009dbe96ab29a03479c51ae2408731d4107786c3342417564d6b9bbccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7490349b39de8ac753baa0ec7d54bef0d7d67781afc3a66976127cebe11367`

```dockerfile
```

-	Layers:
	-	`sha256:7f152040eb62456deccfae205e54ce50723ecb7d4bc188a2c99e68ecf0224fab`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.0 MB (2010039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d5b581d01c33770b7cb868777ada87ce158056cb6a7c29e8ac42cb89c2e5766`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-alpine`

```console
$ docker pull memcached@sha256:c29847751abb41f4c268c84fb3087fee05d4edcbda44409ccb5086e26148e8a7
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

### `memcached:1.6.45-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:fb019eacc7baefab28dd9424a093181f9be578785ff820acfc223cca7d196eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5925683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0830b42059af384dcca1bbbdab5862fc1c6323f885967999d379859ba549594a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:02 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30537f894bef5b46746336c3f041dc6795e8ecc97b9292ae247b66036dd5c67`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d21aa1f5d5e69c701ce24de32e1146319696c0f27a53fc1071dfdbb1db835a4`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c78e5fe358666fa7c60fd82883fa14be78948330a03816dad1d4d5c344de613`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 2.0 MB (1971871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5169cfbcf8c6077d8c56ea32ca8a2111c70c962292078156dc0dfd13003dae`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2867a9b9bc08210b05bbb39ce6524c67aae53eeac22ec837a46048462914a320`  
		Last Modified: Fri, 10 Jul 2026 17:14:48 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:fe04e0ef9a8e3e439388815d469625ca78a4a35e59f5cc9de4f5f5db5cb4d641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c27b7d4bcb94d0f429931b29a65e16c64f720245153e5974f420993ed76dc8c`

```dockerfile
```

-	Layers:
	-	`sha256:bde0eb081740918cd7c2ba1f2880c56d42ae6f84c1b309e633eddca70f44bf70`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7674e16e0fabd9b80fffa1e0524b4e1d5433973f285279363c174978747e56b`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:fb6536c6ff6be675875a0e9058a21cb01429d7fea472911b157925599078b793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff99274cd2ae9a12540461f7d271257b2dcb39a7fe841e30ee12d6118a2b3620`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:58 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:10:59 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:01 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:01 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87742bed7ba15c80771525da3c973241c15057e2e1c208334a48a5e6ac0227e1`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2caf4ea40e42d6914610fc632e2a0622b052c9f4ba441a61c4127f1978922a5`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 102.6 KB (102635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54c3c9546ae919bd51b70cd67be4110dcdf4fce207e30e8a682ea753b84b5c4`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 1.9 MB (1919996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accf55e04cbb6065732d0695c7af9397d6210442810183aea8a10104beffdf92`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a21955ac570df30e5245468c555d187918240b2e55a8f968a1c63cc712b28a`  
		Last Modified: Fri, 10 Jul 2026 17:14:06 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:3ce649bbc88016374f2fedd7a3a6282acb086f35beb378072515db6f4548882a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0897be4d2621cbe9fd74e4aec07f9bd6e8ed4b8539ca7d9e2c6e8b810fa5bc02`

```dockerfile
```

-	Layers:
	-	`sha256:6ee0d00e67e904e3e64b4d167c720519ecfb467699fb18b569854e4f5b1fe6dc`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:065f61ec993786802487788eebdf5b4c6c3e326d12b6574ea897ea1e51c6b933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c0d5f0e58661e882030be0f4cd2c902f47c1b2f5f93e5d87841d1123efbabe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:00 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:57 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:57 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ab9fc66207e8b3c6d27de378c990e1ecdad5abf472f309f0a75a5690dd3d34`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500ccb570e966ec606c735939fc5e3725ae717e18fb33f7f70e0bbec3f26ebfe`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629877caf8b70fc341b804e1ee0d6f13c8e508ec2c0f35640783d6f9de86e97d`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 1.9 MB (1879484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5dc5afffcba19bbc164b433c2d8aa77a001fe3a203d883e6695bba627f4e63`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942dacfd6a09ac673f34e02d66d909d0827204734321a96446e8d26e2a8e3f0f`  
		Last Modified: Fri, 10 Jul 2026 17:14:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:c96c7fceae2e42126799ee9fab80a8abd26d161c400655de8bb3a35ee285ebd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b275b410c1039288a2a348ca496e1ceb36e4759d45fce525c463c093cf0150`

```dockerfile
```

-	Layers:
	-	`sha256:66e157426e5075f50c0de6a20593e341c7ee59506d2b596eda3e44c455f60de0`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2082312b15a7c193cf1025d6d221124dc4929f5993e39111484a8c6b8a8c3c87`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 20.7 KB (20677 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:473bc6e0328b8c46b2b460f48c28c841e89d6394a139cb1f33b26f4bb6d3d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303f30aa9b9680e31a5c226e7fc751f881c58d33a4750db24cb3b8fd69e92dfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:11:49 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52ad1db85493a296c7511781136a99a225e4e27bdbe75e5dfa86c4746872ddb`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d51ffb6ef225790732ccf7ed312e27b0330c7a7cdf6396901873e7b6080a64`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 121.8 KB (121844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0cfcbdec09e1fea3b1fd04db1b5778a6adc5ac25f583318b0d6577180d64c3`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 1.9 MB (1949339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b14c331bde3984dedbe104abcecfa492926eb9cfadef54fca8b6d94017819ee`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f4c5478c9d47600fd7de72bbc89bbf9cb940422d7e769d4b0c3810d8d79da9`  
		Last Modified: Fri, 10 Jul 2026 17:14:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:129b5ab2a677ae3c8c9535f820f20b8109943c31455171258b978980081bada1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db04db28da1799b3a161bdaf8be482db6fb26098666c447b8ab8c0ad6e2d8ee3`

```dockerfile
```

-	Layers:
	-	`sha256:6a02dc47d1088cf12676c61a5d57939f1134494f35de9890ecff1224f5e9f00a`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97f807742aba1073c82ae789ed40324dc9d3b7f3ed1551021d5a19edb66412d0`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; 386

```console
$ docker pull memcached@sha256:ea3586ffa52d2d45fc770c0d6bb9acc938059ce4043178d904e0068df6f0fd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5708492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181faa0096b17b6d7154732a3200ec4a4311c3b8a83ea31dd5ed15c35ecfda94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:15:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:15:22 GMT
USER memcache
# Fri, 10 Jul 2026 17:15:22 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:15:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81df1d20c0eee21a359b722a21e794764b7951ecb8faf3a0d0e0c81f2ffa3d0a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627d7c2ccb877b2a1ee4aca91955ff03d03b148f292eec21eee5fa7979fbabd5`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe79c417bd4c20f80deddc7a490f4ada04448659ae32a28dfc39579c94c532a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 1.9 MB (1926270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a723bad69306f7075f02ce9abb8abc4f0cae3c182d907b95e0c1806cdb132879`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716b9a082ae94cfaa02287d294c4445ed12cfe132a49ae55d4f4567298c822ce`  
		Last Modified: Fri, 10 Jul 2026 17:15:28 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:e13a8f7723825b56a10c17b8fab193220043c24a53cef71b8c68932907b0c9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0ab906e6188fa1ef1ea6f07f736fe5d938c337b4275e5e011ec70fd4b7ed78`

```dockerfile
```

-	Layers:
	-	`sha256:974a2c36fe4450e13c8bb229e35c7f4f607f96b4636c3272dedab90a9e087c11`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:046eab04b512f1ec3bfdcb659254e16a8af365ef2e4e180416d88309f8181f5a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:44fffe9dbe2ce32e7e7e934e63b646bf2d09e26e064cb292424127f37a7494e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070297f68a61aa86c9903c3a442022089b167534ca6ea3458fbc53edc544ef99`
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
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:12:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:12:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:12:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:12:42 GMT
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
	-	`sha256:4293070d44f81cd4f403c5639873cafdb11a98b869e5e1d480688921dfdfc3ed`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 2.1 MB (2063831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2229725e4bb0544f8266e338055cb9017ea9ddce2c2507292e5c048aef184d`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbd62f05889955669f5596736fd71172d92d536bac47c6ac21ff6b9ba6b1144`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a8166a2bf2c49e9819b9ab206c4f601b447cc5e274e1aae1ef114dc5f20e969a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e5bee8c7ff23b0735c30afbdf52ff7eddf087ede41da87f5eedf3713c8fbbb`

```dockerfile
```

-	Layers:
	-	`sha256:cc0fc4b74de1fd8e69d3f9b50f41ef5cb89ea23b90c7f63f8682e8f103d52b9b`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b55265717bc7f9264f9cee04f4c96e8ff381460971e5d4b590e305ddedf4622a`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:f6503d027a3102edc399de42008e6de6b523702df436fd74be6c6837a0882c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5742697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9200c9ee0cd3682e447f0071af9c2edff3b87a15688bbb8e4b3360b97a75dd22`
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
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 18:17:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 18:17:54 GMT
USER memcache
# Fri, 10 Jul 2026 18:17:54 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 18:17:54 GMT
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
	-	`sha256:a6cc49b0ef8ea996fd966c0929e48cc1b3e4c976fd3f5318322e48ebc3c742cf`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 2.1 MB (2058088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc547d2752adfd06887e58e4938230be78719712f64613173fdbf15322296cd`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28702830c4f44b0abd3826454a1ce8fff39a742c980a4cc715c11d6b2a3735d2`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5f3dca65e175b723b9be05a830b290629d08dc7dfee38b614716144e532f766b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6abb5cabee5aa9238e08e76ddf612911ed9189bcb374b335d7f638d087707b`

```dockerfile
```

-	Layers:
	-	`sha256:65e49063062422d01a294e89ecd5dbd733e014683e3a7467d189fa0bd4e4bc6e`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38c3fe116a56893dd7290547344a3c341309b11d85ad3be36dfe73a2020e64c9`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:0d3ba968a8dadfaf2746f61d68812d39af76a14d58e42a647f976c2cb9ff096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5829422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e26b528c1c9aa9b791cbbdec8b9913fdc6471ee6f2d09158aeb75450a903fe1`
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
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:30 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:30 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:30 GMT
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
	-	`sha256:d6237c99ed479fc16f1ca6c375f504247f1a8a6f9da3d81c350e285a858a8d2c`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 2.0 MB (2004462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1b7f127e35ec4a4d8cc5b3be6701d4c45704a7621453e6d24ee002177f8cf9`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d4a09dbf45713c9201b29b3d48506093fe9fe408a775ff3f7b765021ef367`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:27190e318ed67ca9fd9eb7a16415c0bd02f67e657c6821d242f5f918639230c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dada849fcb88d4a37f6ad534099485d1ba5b80ad42eb0dcd7d9af7abb0c7854a`

```dockerfile
```

-	Layers:
	-	`sha256:a024a47e61c0f51bbbe2e680151af1ff723475dac33760ed6612c057ca5677d8`  
		Last Modified: Fri, 10 Jul 2026 17:13:41 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2caa9a6c5fe1b43c960b7edb2bd94baa86af2a73898972b1cc30732e19011b`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-alpine3.24`

```console
$ docker pull memcached@sha256:c29847751abb41f4c268c84fb3087fee05d4edcbda44409ccb5086e26148e8a7
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

### `memcached:1.6.45-alpine3.24` - linux; amd64

```console
$ docker pull memcached@sha256:fb019eacc7baefab28dd9424a093181f9be578785ff820acfc223cca7d196eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5925683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0830b42059af384dcca1bbbdab5862fc1c6323f885967999d379859ba549594a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:02 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30537f894bef5b46746336c3f041dc6795e8ecc97b9292ae247b66036dd5c67`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d21aa1f5d5e69c701ce24de32e1146319696c0f27a53fc1071dfdbb1db835a4`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c78e5fe358666fa7c60fd82883fa14be78948330a03816dad1d4d5c344de613`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 2.0 MB (1971871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5169cfbcf8c6077d8c56ea32ca8a2111c70c962292078156dc0dfd13003dae`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2867a9b9bc08210b05bbb39ce6524c67aae53eeac22ec837a46048462914a320`  
		Last Modified: Fri, 10 Jul 2026 17:14:48 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:fe04e0ef9a8e3e439388815d469625ca78a4a35e59f5cc9de4f5f5db5cb4d641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c27b7d4bcb94d0f429931b29a65e16c64f720245153e5974f420993ed76dc8c`

```dockerfile
```

-	Layers:
	-	`sha256:bde0eb081740918cd7c2ba1f2880c56d42ae6f84c1b309e633eddca70f44bf70`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7674e16e0fabd9b80fffa1e0524b4e1d5433973f285279363c174978747e56b`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:fb6536c6ff6be675875a0e9058a21cb01429d7fea472911b157925599078b793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff99274cd2ae9a12540461f7d271257b2dcb39a7fe841e30ee12d6118a2b3620`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:58 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:10:59 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:01 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:01 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87742bed7ba15c80771525da3c973241c15057e2e1c208334a48a5e6ac0227e1`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2caf4ea40e42d6914610fc632e2a0622b052c9f4ba441a61c4127f1978922a5`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 102.6 KB (102635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54c3c9546ae919bd51b70cd67be4110dcdf4fce207e30e8a682ea753b84b5c4`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 1.9 MB (1919996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accf55e04cbb6065732d0695c7af9397d6210442810183aea8a10104beffdf92`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a21955ac570df30e5245468c555d187918240b2e55a8f968a1c63cc712b28a`  
		Last Modified: Fri, 10 Jul 2026 17:14:06 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:3ce649bbc88016374f2fedd7a3a6282acb086f35beb378072515db6f4548882a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0897be4d2621cbe9fd74e4aec07f9bd6e8ed4b8539ca7d9e2c6e8b810fa5bc02`

```dockerfile
```

-	Layers:
	-	`sha256:6ee0d00e67e904e3e64b4d167c720519ecfb467699fb18b569854e4f5b1fe6dc`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:065f61ec993786802487788eebdf5b4c6c3e326d12b6574ea897ea1e51c6b933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c0d5f0e58661e882030be0f4cd2c902f47c1b2f5f93e5d87841d1123efbabe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:00 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:57 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:57 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ab9fc66207e8b3c6d27de378c990e1ecdad5abf472f309f0a75a5690dd3d34`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500ccb570e966ec606c735939fc5e3725ae717e18fb33f7f70e0bbec3f26ebfe`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629877caf8b70fc341b804e1ee0d6f13c8e508ec2c0f35640783d6f9de86e97d`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 1.9 MB (1879484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5dc5afffcba19bbc164b433c2d8aa77a001fe3a203d883e6695bba627f4e63`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942dacfd6a09ac673f34e02d66d909d0827204734321a96446e8d26e2a8e3f0f`  
		Last Modified: Fri, 10 Jul 2026 17:14:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:c96c7fceae2e42126799ee9fab80a8abd26d161c400655de8bb3a35ee285ebd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b275b410c1039288a2a348ca496e1ceb36e4759d45fce525c463c093cf0150`

```dockerfile
```

-	Layers:
	-	`sha256:66e157426e5075f50c0de6a20593e341c7ee59506d2b596eda3e44c455f60de0`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2082312b15a7c193cf1025d6d221124dc4929f5993e39111484a8c6b8a8c3c87`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 20.7 KB (20677 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:473bc6e0328b8c46b2b460f48c28c841e89d6394a139cb1f33b26f4bb6d3d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303f30aa9b9680e31a5c226e7fc751f881c58d33a4750db24cb3b8fd69e92dfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:11:49 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52ad1db85493a296c7511781136a99a225e4e27bdbe75e5dfa86c4746872ddb`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d51ffb6ef225790732ccf7ed312e27b0330c7a7cdf6396901873e7b6080a64`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 121.8 KB (121844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0cfcbdec09e1fea3b1fd04db1b5778a6adc5ac25f583318b0d6577180d64c3`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 1.9 MB (1949339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b14c331bde3984dedbe104abcecfa492926eb9cfadef54fca8b6d94017819ee`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f4c5478c9d47600fd7de72bbc89bbf9cb940422d7e769d4b0c3810d8d79da9`  
		Last Modified: Fri, 10 Jul 2026 17:14:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:129b5ab2a677ae3c8c9535f820f20b8109943c31455171258b978980081bada1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db04db28da1799b3a161bdaf8be482db6fb26098666c447b8ab8c0ad6e2d8ee3`

```dockerfile
```

-	Layers:
	-	`sha256:6a02dc47d1088cf12676c61a5d57939f1134494f35de9890ecff1224f5e9f00a`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97f807742aba1073c82ae789ed40324dc9d3b7f3ed1551021d5a19edb66412d0`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:ea3586ffa52d2d45fc770c0d6bb9acc938059ce4043178d904e0068df6f0fd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5708492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181faa0096b17b6d7154732a3200ec4a4311c3b8a83ea31dd5ed15c35ecfda94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:15:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:15:22 GMT
USER memcache
# Fri, 10 Jul 2026 17:15:22 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:15:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81df1d20c0eee21a359b722a21e794764b7951ecb8faf3a0d0e0c81f2ffa3d0a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627d7c2ccb877b2a1ee4aca91955ff03d03b148f292eec21eee5fa7979fbabd5`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe79c417bd4c20f80deddc7a490f4ada04448659ae32a28dfc39579c94c532a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 1.9 MB (1926270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a723bad69306f7075f02ce9abb8abc4f0cae3c182d907b95e0c1806cdb132879`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716b9a082ae94cfaa02287d294c4445ed12cfe132a49ae55d4f4567298c822ce`  
		Last Modified: Fri, 10 Jul 2026 17:15:28 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:e13a8f7723825b56a10c17b8fab193220043c24a53cef71b8c68932907b0c9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0ab906e6188fa1ef1ea6f07f736fe5d938c337b4275e5e011ec70fd4b7ed78`

```dockerfile
```

-	Layers:
	-	`sha256:974a2c36fe4450e13c8bb229e35c7f4f607f96b4636c3272dedab90a9e087c11`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:046eab04b512f1ec3bfdcb659254e16a8af365ef2e4e180416d88309f8181f5a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:44fffe9dbe2ce32e7e7e934e63b646bf2d09e26e064cb292424127f37a7494e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070297f68a61aa86c9903c3a442022089b167534ca6ea3458fbc53edc544ef99`
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
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:12:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:12:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:12:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:12:42 GMT
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
	-	`sha256:4293070d44f81cd4f403c5639873cafdb11a98b869e5e1d480688921dfdfc3ed`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 2.1 MB (2063831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2229725e4bb0544f8266e338055cb9017ea9ddce2c2507292e5c048aef184d`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbd62f05889955669f5596736fd71172d92d536bac47c6ac21ff6b9ba6b1144`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a8166a2bf2c49e9819b9ab206c4f601b447cc5e274e1aae1ef114dc5f20e969a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e5bee8c7ff23b0735c30afbdf52ff7eddf087ede41da87f5eedf3713c8fbbb`

```dockerfile
```

-	Layers:
	-	`sha256:cc0fc4b74de1fd8e69d3f9b50f41ef5cb89ea23b90c7f63f8682e8f103d52b9b`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b55265717bc7f9264f9cee04f4c96e8ff381460971e5d4b590e305ddedf4622a`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:f6503d027a3102edc399de42008e6de6b523702df436fd74be6c6837a0882c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5742697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9200c9ee0cd3682e447f0071af9c2edff3b87a15688bbb8e4b3360b97a75dd22`
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
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 18:17:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 18:17:54 GMT
USER memcache
# Fri, 10 Jul 2026 18:17:54 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 18:17:54 GMT
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
	-	`sha256:a6cc49b0ef8ea996fd966c0929e48cc1b3e4c976fd3f5318322e48ebc3c742cf`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 2.1 MB (2058088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc547d2752adfd06887e58e4938230be78719712f64613173fdbf15322296cd`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28702830c4f44b0abd3826454a1ce8fff39a742c980a4cc715c11d6b2a3735d2`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5f3dca65e175b723b9be05a830b290629d08dc7dfee38b614716144e532f766b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6abb5cabee5aa9238e08e76ddf612911ed9189bcb374b335d7f638d087707b`

```dockerfile
```

-	Layers:
	-	`sha256:65e49063062422d01a294e89ecd5dbd733e014683e3a7467d189fa0bd4e4bc6e`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38c3fe116a56893dd7290547344a3c341309b11d85ad3be36dfe73a2020e64c9`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:0d3ba968a8dadfaf2746f61d68812d39af76a14d58e42a647f976c2cb9ff096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5829422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e26b528c1c9aa9b791cbbdec8b9913fdc6471ee6f2d09158aeb75450a903fe1`
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
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:30 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:30 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:30 GMT
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
	-	`sha256:d6237c99ed479fc16f1ca6c375f504247f1a8a6f9da3d81c350e285a858a8d2c`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 2.0 MB (2004462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1b7f127e35ec4a4d8cc5b3be6701d4c45704a7621453e6d24ee002177f8cf9`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d4a09dbf45713c9201b29b3d48506093fe9fe408a775ff3f7b765021ef367`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:27190e318ed67ca9fd9eb7a16415c0bd02f67e657c6821d242f5f918639230c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dada849fcb88d4a37f6ad534099485d1ba5b80ad42eb0dcd7d9af7abb0c7854a`

```dockerfile
```

-	Layers:
	-	`sha256:a024a47e61c0f51bbbe2e680151af1ff723475dac33760ed6612c057ca5677d8`  
		Last Modified: Fri, 10 Jul 2026 17:13:41 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2caa9a6c5fe1b43c960b7edb2bd94baa86af2a73898972b1cc30732e19011b`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-trixie`

```console
$ docker pull memcached@sha256:9f213417a1c51d4c18c0ea9f38a917792ebf21c1b06a4168a04c5b7761494982
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

### `memcached:1.6.45-trixie` - linux; amd64

```console
$ docker pull memcached@sha256:57f76c8133336936ad246cae500f07d07b3bf149485f005b515016bdd455be8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32216756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24406d1ca8939651827dd1775d10707a29ad7dcca1462ff80004be28e364cf30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:22:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b564688b1072131c84843b878def2a6b541f413dc4aa6e532feb411f6d87ad41`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6221ee17f50145599d26d40606ffbd086ba41531a59662518b98be8fab1a843e`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 136.7 KB (136706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfae3da9f7bfe557301344f0b132a9c12c7a75dbc6a7b91b62fa35144389552`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.3 MB (2285876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591a7e3cd179fa3da19cdc09f0f43810dbe1c794daf296de1aaa8a3aa488d413`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ff75ca70cd262763dabbdfdd63bb4b4bd93a47a2758aea5e08684e113f2989`  
		Last Modified: Tue, 25 Aug 2026 00:24:57 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6df923c152c829adb9589458e4cec741b66999bf25a7d10ee7a81b667096507f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5088226ef66a41b85dc80fb80689ce7a73b6585850b0c6ab5f139c74f68155`

```dockerfile
```

-	Layers:
	-	`sha256:6a6c096c11dc72812aa322f5f9fb7404422dd3f5252b99c8da4d08ad2688b739`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.0 MB (2008602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:560518c79cf9146d94e2c448fa529bd862c219a8b904b62206843d44fc5ee12f`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:023b4f0c03c3d3ee4025c8cda685724750ee8efcd175a5c22cdd39c12712e860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28527134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a559724f872cfe18bf63409400cbae4e5ad5d720ba526cfe23d58b7eacbffd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:22:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:23 GMT
USER memcache
# Tue, 25 Aug 2026 00:22:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:22:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cac8b9d8ee7969044bdc968c3195bbbfea0bca546aad3b2979372fb26ac2d7`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4d89e07ba6e6ac865f406ec22b456a717c64ed0bf6f1a3bb952dd8acc88cd2`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 135.4 KB (135384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cef6a353a923552dcd4b4cc18ce5385c9584764369ae1c45e36aa868e3c3bbf`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.2 MB (2171096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17cbda3c12db206820a5605adc1251a200a136fb8b5db2fabf64d9bd21f9e10`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae51979329d8e99e076196c57a9b7e18677e6433533bd3131d1712a0638f235c`  
		Last Modified: Tue, 25 Aug 2026 00:22:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:99c7b85509d64820a8951462fdd1d275493b873b68b40f0d1c3311b52c631ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bea1d035420a77877a7ae40015e4d7295cde8b861b6f9a3edab4e6c82b0daf7`

```dockerfile
```

-	Layers:
	-	`sha256:67e2cc4c93dbd46d68ef41fe7607981152db4042cedb3d106a4ce3ab15d9156f`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.0 MB (2010062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfaf9ca44bc5de1133db90c11fb1290ecc6330fe2c0f1ab725e93a21fad5a8d6`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c30c690b1ab3dc91cf88cbb89de4432d09dc707413099ae2a53b7367e080bc74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32581267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8773e605e382948669649e57b54cbc6607f17590cca57b71c9015767d83a806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:21:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:38 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:38 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b00431edb4e1c12b51fd7165d4f63e87369724b542ad660179c2d3bc428559`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a780b2d9f8338429d5c52e7e8e65fc7eca8dd6d68753b20cb2a0193bf372c077`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 153.5 KB (153528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea9b2dd393308e27d1f13384b644f7ac598a3dee8d36a5942ea2c9e0d4000ea`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.3 MB (2266640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7f80341faaf10b909fc4ee59501127649ba5369393910e072ebb6608fa4630`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a7662ec240484373771668128166d8174dd59e2d48a15486d58eab9e779fb6`  
		Last Modified: Tue, 25 Aug 2026 00:24:46 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:b749b02b6cac91cb05f31d939087ffba0138cc186ebf911558ca2199ece5c665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232b0d6a4c9762f1d86e39e9a645897d1e3a98c0c4552531b52cb042b3085d88`

```dockerfile
```

-	Layers:
	-	`sha256:cd21e3e0826071a3ea1da5bbb6c7de865c2f9b8def7fe6edbfc932dcea8d8de2`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.0 MB (2008910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba53650a9aed2dc57f592bd4cc9fb6ee6004bfcc343d9acd5361cd4f45023450`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:a38bfb324503e9daabef54e1d7a8d646add2c13fa2e0ab81371bf86328a50921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7885454e9209cead8bfa1bb3415c8a823c2cdb72698daabe057e4cfcbf32513a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 12:00:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 12:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 12:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 12:14:49 GMT
USER memcache
# Wed, 05 Aug 2026 12:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 12:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf4bbf03e17f5cab312e778aa64c1074a8caa390b65b8b7f3233cdb6663aa90`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e8cdbdba8d030cf76c9e1d44cafeadc8e37f6d0cd557dcbb986a30b6fc6caf`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 133.1 KB (133144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d857cf682d6b5c6c5c47e45f425d8add7cb2632fb75fbfd38fdf310d4375b9`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.2 MB (2212873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143c0a64f607a70937e7e57ed8ac7b267ad0c9d47305698042e5a4861088493`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d053f677518d7f0d3034377cff19aff0f906d6a7c65bfd003459f3e334e6eb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:4721f3a32118218b8d05c3d7264de3c4bfc78e2d5fd0808fde28bee90f25ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d701afbb34c09537c774107be3a26f6479334d13288ffd2f9e8fd80b0ecdfd`

```dockerfile
```

-	Layers:
	-	`sha256:b2e40a1504aa03787c5c7f30cf3ef9906f5459f12b86546e60546e710c216efb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab2d0ab186583e060eb3f57cf95ea6f53892b0c9f498343133f953b234148d4`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:00ee6fb4e4ef0f2b51f78ab7c193565796c1dd1d13aa26b5186841664207621d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32311250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31602bb9e085ba1211e06ac8e05cbc8e5e213e337ee4a9133f285cfa43d75e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:42:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:42:01 GMT
USER memcache
# Tue, 25 Aug 2026 00:42:01 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:42:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d8218e1c671cd45cc6e31820e9e221d1c52c96ee506057d62aa385888bc248`  
		Last Modified: Tue, 25 Aug 2026 00:42:11 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df83c18be84787fcfe1bd04adf97dd13c178bed33c3204c48324e6b6c23d8eee`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 140.5 KB (140545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b264b6a40dd78478350e9ec8045d9436f3db4f35236353620b01fe43edfd36d5`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.3 MB (2301470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60640ad1bb62b53d0176a51c31eb329d5b9b52a9cdd0683c8769948d144bb23`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7117dfe1b0c6883a5dc879b8559ceb672dd66d939d0f89c717d0a2cc57e7c04`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:b29cc7009dbe96ab29a03479c51ae2408731d4107786c3342417564d6b9bbccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7490349b39de8ac753baa0ec7d54bef0d7d67781afc3a66976127cebe11367`

```dockerfile
```

-	Layers:
	-	`sha256:7f152040eb62456deccfae205e54ce50723ecb7d4bc188a2c99e68ecf0224fab`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.0 MB (2010039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d5b581d01c33770b7cb868777ada87ce158056cb6a7c29e8ac42cb89c2e5766`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:alpine`

```console
$ docker pull memcached@sha256:c29847751abb41f4c268c84fb3087fee05d4edcbda44409ccb5086e26148e8a7
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
$ docker pull memcached@sha256:fb019eacc7baefab28dd9424a093181f9be578785ff820acfc223cca7d196eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5925683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0830b42059af384dcca1bbbdab5862fc1c6323f885967999d379859ba549594a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:02 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30537f894bef5b46746336c3f041dc6795e8ecc97b9292ae247b66036dd5c67`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d21aa1f5d5e69c701ce24de32e1146319696c0f27a53fc1071dfdbb1db835a4`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c78e5fe358666fa7c60fd82883fa14be78948330a03816dad1d4d5c344de613`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 2.0 MB (1971871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5169cfbcf8c6077d8c56ea32ca8a2111c70c962292078156dc0dfd13003dae`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2867a9b9bc08210b05bbb39ce6524c67aae53eeac22ec837a46048462914a320`  
		Last Modified: Fri, 10 Jul 2026 17:14:48 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:fe04e0ef9a8e3e439388815d469625ca78a4a35e59f5cc9de4f5f5db5cb4d641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c27b7d4bcb94d0f429931b29a65e16c64f720245153e5974f420993ed76dc8c`

```dockerfile
```

-	Layers:
	-	`sha256:bde0eb081740918cd7c2ba1f2880c56d42ae6f84c1b309e633eddca70f44bf70`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7674e16e0fabd9b80fffa1e0524b4e1d5433973f285279363c174978747e56b`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:fb6536c6ff6be675875a0e9058a21cb01429d7fea472911b157925599078b793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff99274cd2ae9a12540461f7d271257b2dcb39a7fe841e30ee12d6118a2b3620`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:58 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:10:59 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:01 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:01 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87742bed7ba15c80771525da3c973241c15057e2e1c208334a48a5e6ac0227e1`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2caf4ea40e42d6914610fc632e2a0622b052c9f4ba441a61c4127f1978922a5`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 102.6 KB (102635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54c3c9546ae919bd51b70cd67be4110dcdf4fce207e30e8a682ea753b84b5c4`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 1.9 MB (1919996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accf55e04cbb6065732d0695c7af9397d6210442810183aea8a10104beffdf92`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a21955ac570df30e5245468c555d187918240b2e55a8f968a1c63cc712b28a`  
		Last Modified: Fri, 10 Jul 2026 17:14:06 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:3ce649bbc88016374f2fedd7a3a6282acb086f35beb378072515db6f4548882a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0897be4d2621cbe9fd74e4aec07f9bd6e8ed4b8539ca7d9e2c6e8b810fa5bc02`

```dockerfile
```

-	Layers:
	-	`sha256:6ee0d00e67e904e3e64b4d167c720519ecfb467699fb18b569854e4f5b1fe6dc`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:065f61ec993786802487788eebdf5b4c6c3e326d12b6574ea897ea1e51c6b933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c0d5f0e58661e882030be0f4cd2c902f47c1b2f5f93e5d87841d1123efbabe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:00 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:57 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:57 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ab9fc66207e8b3c6d27de378c990e1ecdad5abf472f309f0a75a5690dd3d34`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500ccb570e966ec606c735939fc5e3725ae717e18fb33f7f70e0bbec3f26ebfe`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629877caf8b70fc341b804e1ee0d6f13c8e508ec2c0f35640783d6f9de86e97d`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 1.9 MB (1879484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5dc5afffcba19bbc164b433c2d8aa77a001fe3a203d883e6695bba627f4e63`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942dacfd6a09ac673f34e02d66d909d0827204734321a96446e8d26e2a8e3f0f`  
		Last Modified: Fri, 10 Jul 2026 17:14:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:c96c7fceae2e42126799ee9fab80a8abd26d161c400655de8bb3a35ee285ebd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b275b410c1039288a2a348ca496e1ceb36e4759d45fce525c463c093cf0150`

```dockerfile
```

-	Layers:
	-	`sha256:66e157426e5075f50c0de6a20593e341c7ee59506d2b596eda3e44c455f60de0`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2082312b15a7c193cf1025d6d221124dc4929f5993e39111484a8c6b8a8c3c87`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 20.7 KB (20677 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:473bc6e0328b8c46b2b460f48c28c841e89d6394a139cb1f33b26f4bb6d3d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303f30aa9b9680e31a5c226e7fc751f881c58d33a4750db24cb3b8fd69e92dfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:11:49 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52ad1db85493a296c7511781136a99a225e4e27bdbe75e5dfa86c4746872ddb`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d51ffb6ef225790732ccf7ed312e27b0330c7a7cdf6396901873e7b6080a64`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 121.8 KB (121844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0cfcbdec09e1fea3b1fd04db1b5778a6adc5ac25f583318b0d6577180d64c3`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 1.9 MB (1949339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b14c331bde3984dedbe104abcecfa492926eb9cfadef54fca8b6d94017819ee`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f4c5478c9d47600fd7de72bbc89bbf9cb940422d7e769d4b0c3810d8d79da9`  
		Last Modified: Fri, 10 Jul 2026 17:14:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:129b5ab2a677ae3c8c9535f820f20b8109943c31455171258b978980081bada1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db04db28da1799b3a161bdaf8be482db6fb26098666c447b8ab8c0ad6e2d8ee3`

```dockerfile
```

-	Layers:
	-	`sha256:6a02dc47d1088cf12676c61a5d57939f1134494f35de9890ecff1224f5e9f00a`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97f807742aba1073c82ae789ed40324dc9d3b7f3ed1551021d5a19edb66412d0`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:ea3586ffa52d2d45fc770c0d6bb9acc938059ce4043178d904e0068df6f0fd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5708492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181faa0096b17b6d7154732a3200ec4a4311c3b8a83ea31dd5ed15c35ecfda94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:15:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:15:22 GMT
USER memcache
# Fri, 10 Jul 2026 17:15:22 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:15:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81df1d20c0eee21a359b722a21e794764b7951ecb8faf3a0d0e0c81f2ffa3d0a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627d7c2ccb877b2a1ee4aca91955ff03d03b148f292eec21eee5fa7979fbabd5`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe79c417bd4c20f80deddc7a490f4ada04448659ae32a28dfc39579c94c532a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 1.9 MB (1926270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a723bad69306f7075f02ce9abb8abc4f0cae3c182d907b95e0c1806cdb132879`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716b9a082ae94cfaa02287d294c4445ed12cfe132a49ae55d4f4567298c822ce`  
		Last Modified: Fri, 10 Jul 2026 17:15:28 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:e13a8f7723825b56a10c17b8fab193220043c24a53cef71b8c68932907b0c9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0ab906e6188fa1ef1ea6f07f736fe5d938c337b4275e5e011ec70fd4b7ed78`

```dockerfile
```

-	Layers:
	-	`sha256:974a2c36fe4450e13c8bb229e35c7f4f607f96b4636c3272dedab90a9e087c11`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:046eab04b512f1ec3bfdcb659254e16a8af365ef2e4e180416d88309f8181f5a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:44fffe9dbe2ce32e7e7e934e63b646bf2d09e26e064cb292424127f37a7494e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070297f68a61aa86c9903c3a442022089b167534ca6ea3458fbc53edc544ef99`
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
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:12:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:12:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:12:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:12:42 GMT
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
	-	`sha256:4293070d44f81cd4f403c5639873cafdb11a98b869e5e1d480688921dfdfc3ed`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 2.1 MB (2063831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2229725e4bb0544f8266e338055cb9017ea9ddce2c2507292e5c048aef184d`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbd62f05889955669f5596736fd71172d92d536bac47c6ac21ff6b9ba6b1144`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a8166a2bf2c49e9819b9ab206c4f601b447cc5e274e1aae1ef114dc5f20e969a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e5bee8c7ff23b0735c30afbdf52ff7eddf087ede41da87f5eedf3713c8fbbb`

```dockerfile
```

-	Layers:
	-	`sha256:cc0fc4b74de1fd8e69d3f9b50f41ef5cb89ea23b90c7f63f8682e8f103d52b9b`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b55265717bc7f9264f9cee04f4c96e8ff381460971e5d4b590e305ddedf4622a`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:f6503d027a3102edc399de42008e6de6b523702df436fd74be6c6837a0882c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5742697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9200c9ee0cd3682e447f0071af9c2edff3b87a15688bbb8e4b3360b97a75dd22`
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
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 18:17:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 18:17:54 GMT
USER memcache
# Fri, 10 Jul 2026 18:17:54 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 18:17:54 GMT
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
	-	`sha256:a6cc49b0ef8ea996fd966c0929e48cc1b3e4c976fd3f5318322e48ebc3c742cf`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 2.1 MB (2058088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc547d2752adfd06887e58e4938230be78719712f64613173fdbf15322296cd`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28702830c4f44b0abd3826454a1ce8fff39a742c980a4cc715c11d6b2a3735d2`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5f3dca65e175b723b9be05a830b290629d08dc7dfee38b614716144e532f766b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6abb5cabee5aa9238e08e76ddf612911ed9189bcb374b335d7f638d087707b`

```dockerfile
```

-	Layers:
	-	`sha256:65e49063062422d01a294e89ecd5dbd733e014683e3a7467d189fa0bd4e4bc6e`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38c3fe116a56893dd7290547344a3c341309b11d85ad3be36dfe73a2020e64c9`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:0d3ba968a8dadfaf2746f61d68812d39af76a14d58e42a647f976c2cb9ff096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5829422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e26b528c1c9aa9b791cbbdec8b9913fdc6471ee6f2d09158aeb75450a903fe1`
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
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:30 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:30 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:30 GMT
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
	-	`sha256:d6237c99ed479fc16f1ca6c375f504247f1a8a6f9da3d81c350e285a858a8d2c`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 2.0 MB (2004462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1b7f127e35ec4a4d8cc5b3be6701d4c45704a7621453e6d24ee002177f8cf9`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d4a09dbf45713c9201b29b3d48506093fe9fe408a775ff3f7b765021ef367`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:27190e318ed67ca9fd9eb7a16415c0bd02f67e657c6821d242f5f918639230c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dada849fcb88d4a37f6ad534099485d1ba5b80ad42eb0dcd7d9af7abb0c7854a`

```dockerfile
```

-	Layers:
	-	`sha256:a024a47e61c0f51bbbe2e680151af1ff723475dac33760ed6612c057ca5677d8`  
		Last Modified: Fri, 10 Jul 2026 17:13:41 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2caa9a6c5fe1b43c960b7edb2bd94baa86af2a73898972b1cc30732e19011b`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:alpine3.24`

```console
$ docker pull memcached@sha256:c29847751abb41f4c268c84fb3087fee05d4edcbda44409ccb5086e26148e8a7
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
$ docker pull memcached@sha256:fb019eacc7baefab28dd9424a093181f9be578785ff820acfc223cca7d196eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5925683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0830b42059af384dcca1bbbdab5862fc1c6323f885967999d379859ba549594a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:02 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30537f894bef5b46746336c3f041dc6795e8ecc97b9292ae247b66036dd5c67`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d21aa1f5d5e69c701ce24de32e1146319696c0f27a53fc1071dfdbb1db835a4`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c78e5fe358666fa7c60fd82883fa14be78948330a03816dad1d4d5c344de613`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 2.0 MB (1971871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5169cfbcf8c6077d8c56ea32ca8a2111c70c962292078156dc0dfd13003dae`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2867a9b9bc08210b05bbb39ce6524c67aae53eeac22ec837a46048462914a320`  
		Last Modified: Fri, 10 Jul 2026 17:14:48 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:fe04e0ef9a8e3e439388815d469625ca78a4a35e59f5cc9de4f5f5db5cb4d641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c27b7d4bcb94d0f429931b29a65e16c64f720245153e5974f420993ed76dc8c`

```dockerfile
```

-	Layers:
	-	`sha256:bde0eb081740918cd7c2ba1f2880c56d42ae6f84c1b309e633eddca70f44bf70`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7674e16e0fabd9b80fffa1e0524b4e1d5433973f285279363c174978747e56b`  
		Last Modified: Fri, 10 Jul 2026 17:14:46 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:fb6536c6ff6be675875a0e9058a21cb01429d7fea472911b157925599078b793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff99274cd2ae9a12540461f7d271257b2dcb39a7fe841e30ee12d6118a2b3620`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:58 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:10:59 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:01 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:01 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87742bed7ba15c80771525da3c973241c15057e2e1c208334a48a5e6ac0227e1`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2caf4ea40e42d6914610fc632e2a0622b052c9f4ba441a61c4127f1978922a5`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 102.6 KB (102635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54c3c9546ae919bd51b70cd67be4110dcdf4fce207e30e8a682ea753b84b5c4`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 1.9 MB (1919996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accf55e04cbb6065732d0695c7af9397d6210442810183aea8a10104beffdf92`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a21955ac570df30e5245468c555d187918240b2e55a8f968a1c63cc712b28a`  
		Last Modified: Fri, 10 Jul 2026 17:14:06 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:3ce649bbc88016374f2fedd7a3a6282acb086f35beb378072515db6f4548882a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0897be4d2621cbe9fd74e4aec07f9bd6e8ed4b8539ca7d9e2c6e8b810fa5bc02`

```dockerfile
```

-	Layers:
	-	`sha256:6ee0d00e67e904e3e64b4d167c720519ecfb467699fb18b569854e4f5b1fe6dc`  
		Last Modified: Fri, 10 Jul 2026 17:14:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:065f61ec993786802487788eebdf5b4c6c3e326d12b6574ea897ea1e51c6b933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c0d5f0e58661e882030be0f4cd2c902f47c1b2f5f93e5d87841d1123efbabe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:00 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:57 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:57 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ab9fc66207e8b3c6d27de378c990e1ecdad5abf472f309f0a75a5690dd3d34`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500ccb570e966ec606c735939fc5e3725ae717e18fb33f7f70e0bbec3f26ebfe`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629877caf8b70fc341b804e1ee0d6f13c8e508ec2c0f35640783d6f9de86e97d`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 1.9 MB (1879484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5dc5afffcba19bbc164b433c2d8aa77a001fe3a203d883e6695bba627f4e63`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942dacfd6a09ac673f34e02d66d909d0827204734321a96446e8d26e2a8e3f0f`  
		Last Modified: Fri, 10 Jul 2026 17:14:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:c96c7fceae2e42126799ee9fab80a8abd26d161c400655de8bb3a35ee285ebd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b275b410c1039288a2a348ca496e1ceb36e4759d45fce525c463c093cf0150`

```dockerfile
```

-	Layers:
	-	`sha256:66e157426e5075f50c0de6a20593e341c7ee59506d2b596eda3e44c455f60de0`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2082312b15a7c193cf1025d6d221124dc4929f5993e39111484a8c6b8a8c3c87`  
		Last Modified: Fri, 10 Jul 2026 17:14:02 GMT  
		Size: 20.7 KB (20677 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:473bc6e0328b8c46b2b460f48c28c841e89d6394a139cb1f33b26f4bb6d3d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303f30aa9b9680e31a5c226e7fc751f881c58d33a4750db24cb3b8fd69e92dfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:11:49 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:11:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52ad1db85493a296c7511781136a99a225e4e27bdbe75e5dfa86c4746872ddb`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d51ffb6ef225790732ccf7ed312e27b0330c7a7cdf6396901873e7b6080a64`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 121.8 KB (121844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0cfcbdec09e1fea3b1fd04db1b5778a6adc5ac25f583318b0d6577180d64c3`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 1.9 MB (1949339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b14c331bde3984dedbe104abcecfa492926eb9cfadef54fca8b6d94017819ee`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f4c5478c9d47600fd7de72bbc89bbf9cb940422d7e769d4b0c3810d8d79da9`  
		Last Modified: Fri, 10 Jul 2026 17:14:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:129b5ab2a677ae3c8c9535f820f20b8109943c31455171258b978980081bada1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db04db28da1799b3a161bdaf8be482db6fb26098666c447b8ab8c0ad6e2d8ee3`

```dockerfile
```

-	Layers:
	-	`sha256:6a02dc47d1088cf12676c61a5d57939f1134494f35de9890ecff1224f5e9f00a`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97f807742aba1073c82ae789ed40324dc9d3b7f3ed1551021d5a19edb66412d0`  
		Last Modified: Fri, 10 Jul 2026 17:14:42 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:ea3586ffa52d2d45fc770c0d6bb9acc938059ce4043178d904e0068df6f0fd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5708492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181faa0096b17b6d7154732a3200ec4a4311c3b8a83ea31dd5ed15c35ecfda94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Fri, 10 Jul 2026 17:12:32 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 10 Jul 2026 17:12:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:15:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:15:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:15:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:15:22 GMT
USER memcache
# Fri, 10 Jul 2026 17:15:22 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:15:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81df1d20c0eee21a359b722a21e794764b7951ecb8faf3a0d0e0c81f2ffa3d0a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627d7c2ccb877b2a1ee4aca91955ff03d03b148f292eec21eee5fa7979fbabd5`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe79c417bd4c20f80deddc7a490f4ada04448659ae32a28dfc39579c94c532a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 1.9 MB (1926270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a723bad69306f7075f02ce9abb8abc4f0cae3c182d907b95e0c1806cdb132879`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716b9a082ae94cfaa02287d294c4445ed12cfe132a49ae55d4f4567298c822ce`  
		Last Modified: Fri, 10 Jul 2026 17:15:28 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:e13a8f7723825b56a10c17b8fab193220043c24a53cef71b8c68932907b0c9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0ab906e6188fa1ef1ea6f07f736fe5d938c337b4275e5e011ec70fd4b7ed78`

```dockerfile
```

-	Layers:
	-	`sha256:974a2c36fe4450e13c8bb229e35c7f4f607f96b4636c3272dedab90a9e087c11`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:046eab04b512f1ec3bfdcb659254e16a8af365ef2e4e180416d88309f8181f5a`  
		Last Modified: Fri, 10 Jul 2026 17:15:27 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:44fffe9dbe2ce32e7e7e934e63b646bf2d09e26e064cb292424127f37a7494e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070297f68a61aa86c9903c3a442022089b167534ca6ea3458fbc53edc544ef99`
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
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:12:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:12:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:12:42 GMT
USER memcache
# Fri, 10 Jul 2026 17:12:42 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:12:42 GMT
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
	-	`sha256:4293070d44f81cd4f403c5639873cafdb11a98b869e5e1d480688921dfdfc3ed`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 2.1 MB (2063831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2229725e4bb0544f8266e338055cb9017ea9ddce2c2507292e5c048aef184d`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbd62f05889955669f5596736fd71172d92d536bac47c6ac21ff6b9ba6b1144`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a8166a2bf2c49e9819b9ab206c4f601b447cc5e274e1aae1ef114dc5f20e969a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e5bee8c7ff23b0735c30afbdf52ff7eddf087ede41da87f5eedf3713c8fbbb`

```dockerfile
```

-	Layers:
	-	`sha256:cc0fc4b74de1fd8e69d3f9b50f41ef5cb89ea23b90c7f63f8682e8f103d52b9b`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b55265717bc7f9264f9cee04f4c96e8ff381460971e5d4b590e305ddedf4622a`  
		Last Modified: Fri, 10 Jul 2026 17:12:52 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:f6503d027a3102edc399de42008e6de6b523702df436fd74be6c6837a0882c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5742697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9200c9ee0cd3682e447f0071af9c2edff3b87a15688bbb8e4b3360b97a75dd22`
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
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 18:17:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 18:17:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 18:17:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 18:17:54 GMT
USER memcache
# Fri, 10 Jul 2026 18:17:54 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 18:17:54 GMT
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
	-	`sha256:a6cc49b0ef8ea996fd966c0929e48cc1b3e4c976fd3f5318322e48ebc3c742cf`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 2.1 MB (2058088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc547d2752adfd06887e58e4938230be78719712f64613173fdbf15322296cd`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28702830c4f44b0abd3826454a1ce8fff39a742c980a4cc715c11d6b2a3735d2`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5f3dca65e175b723b9be05a830b290629d08dc7dfee38b614716144e532f766b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6abb5cabee5aa9238e08e76ddf612911ed9189bcb374b335d7f638d087707b`

```dockerfile
```

-	Layers:
	-	`sha256:65e49063062422d01a294e89ecd5dbd733e014683e3a7467d189fa0bd4e4bc6e`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38c3fe116a56893dd7290547344a3c341309b11d85ad3be36dfe73a2020e64c9`  
		Last Modified: Fri, 10 Jul 2026 18:18:18 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:0d3ba968a8dadfaf2746f61d68812d39af76a14d58e42a647f976c2cb9ff096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5829422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e26b528c1c9aa9b791cbbdec8b9913fdc6471ee6f2d09158aeb75450a903fe1`
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
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:30 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:30 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:30 GMT
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
	-	`sha256:d6237c99ed479fc16f1ca6c375f504247f1a8a6f9da3d81c350e285a858a8d2c`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 2.0 MB (2004462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1b7f127e35ec4a4d8cc5b3be6701d4c45704a7621453e6d24ee002177f8cf9`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d4a09dbf45713c9201b29b3d48506093fe9fe408a775ff3f7b765021ef367`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:27190e318ed67ca9fd9eb7a16415c0bd02f67e657c6821d242f5f918639230c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dada849fcb88d4a37f6ad534099485d1ba5b80ad42eb0dcd7d9af7abb0c7854a`

```dockerfile
```

-	Layers:
	-	`sha256:a024a47e61c0f51bbbe2e680151af1ff723475dac33760ed6612c057ca5677d8`  
		Last Modified: Fri, 10 Jul 2026 17:13:41 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2caa9a6c5fe1b43c960b7edb2bd94baa86af2a73898972b1cc30732e19011b`  
		Last Modified: Fri, 10 Jul 2026 17:13:40 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:latest`

```console
$ docker pull memcached@sha256:9f213417a1c51d4c18c0ea9f38a917792ebf21c1b06a4168a04c5b7761494982
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
$ docker pull memcached@sha256:57f76c8133336936ad246cae500f07d07b3bf149485f005b515016bdd455be8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32216756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24406d1ca8939651827dd1775d10707a29ad7dcca1462ff80004be28e364cf30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:22:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b564688b1072131c84843b878def2a6b541f413dc4aa6e532feb411f6d87ad41`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6221ee17f50145599d26d40606ffbd086ba41531a59662518b98be8fab1a843e`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 136.7 KB (136706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfae3da9f7bfe557301344f0b132a9c12c7a75dbc6a7b91b62fa35144389552`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.3 MB (2285876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591a7e3cd179fa3da19cdc09f0f43810dbe1c794daf296de1aaa8a3aa488d413`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ff75ca70cd262763dabbdfdd63bb4b4bd93a47a2758aea5e08684e113f2989`  
		Last Modified: Tue, 25 Aug 2026 00:24:57 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:6df923c152c829adb9589458e4cec741b66999bf25a7d10ee7a81b667096507f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5088226ef66a41b85dc80fb80689ce7a73b6585850b0c6ab5f139c74f68155`

```dockerfile
```

-	Layers:
	-	`sha256:6a6c096c11dc72812aa322f5f9fb7404422dd3f5252b99c8da4d08ad2688b739`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.0 MB (2008602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:560518c79cf9146d94e2c448fa529bd862c219a8b904b62206843d44fc5ee12f`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:023b4f0c03c3d3ee4025c8cda685724750ee8efcd175a5c22cdd39c12712e860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28527134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a559724f872cfe18bf63409400cbae4e5ad5d720ba526cfe23d58b7eacbffd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:22:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:23 GMT
USER memcache
# Tue, 25 Aug 2026 00:22:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:22:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cac8b9d8ee7969044bdc968c3195bbbfea0bca546aad3b2979372fb26ac2d7`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4d89e07ba6e6ac865f406ec22b456a717c64ed0bf6f1a3bb952dd8acc88cd2`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 135.4 KB (135384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cef6a353a923552dcd4b4cc18ce5385c9584764369ae1c45e36aa868e3c3bbf`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.2 MB (2171096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17cbda3c12db206820a5605adc1251a200a136fb8b5db2fabf64d9bd21f9e10`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae51979329d8e99e076196c57a9b7e18677e6433533bd3131d1712a0638f235c`  
		Last Modified: Tue, 25 Aug 2026 00:22:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:99c7b85509d64820a8951462fdd1d275493b873b68b40f0d1c3311b52c631ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bea1d035420a77877a7ae40015e4d7295cde8b861b6f9a3edab4e6c82b0daf7`

```dockerfile
```

-	Layers:
	-	`sha256:67e2cc4c93dbd46d68ef41fe7607981152db4042cedb3d106a4ce3ab15d9156f`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.0 MB (2010062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfaf9ca44bc5de1133db90c11fb1290ecc6330fe2c0f1ab725e93a21fad5a8d6`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c30c690b1ab3dc91cf88cbb89de4432d09dc707413099ae2a53b7367e080bc74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32581267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8773e605e382948669649e57b54cbc6607f17590cca57b71c9015767d83a806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:21:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:38 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:38 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b00431edb4e1c12b51fd7165d4f63e87369724b542ad660179c2d3bc428559`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a780b2d9f8338429d5c52e7e8e65fc7eca8dd6d68753b20cb2a0193bf372c077`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 153.5 KB (153528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea9b2dd393308e27d1f13384b644f7ac598a3dee8d36a5942ea2c9e0d4000ea`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.3 MB (2266640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7f80341faaf10b909fc4ee59501127649ba5369393910e072ebb6608fa4630`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a7662ec240484373771668128166d8174dd59e2d48a15486d58eab9e779fb6`  
		Last Modified: Tue, 25 Aug 2026 00:24:46 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:b749b02b6cac91cb05f31d939087ffba0138cc186ebf911558ca2199ece5c665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232b0d6a4c9762f1d86e39e9a645897d1e3a98c0c4552531b52cb042b3085d88`

```dockerfile
```

-	Layers:
	-	`sha256:cd21e3e0826071a3ea1da5bbb6c7de865c2f9b8def7fe6edbfc932dcea8d8de2`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.0 MB (2008910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba53650a9aed2dc57f592bd4cc9fb6ee6004bfcc343d9acd5361cd4f45023450`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; riscv64

```console
$ docker pull memcached@sha256:a38bfb324503e9daabef54e1d7a8d646add2c13fa2e0ab81371bf86328a50921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7885454e9209cead8bfa1bb3415c8a823c2cdb72698daabe057e4cfcbf32513a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 12:00:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 12:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 12:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 12:14:49 GMT
USER memcache
# Wed, 05 Aug 2026 12:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 12:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf4bbf03e17f5cab312e778aa64c1074a8caa390b65b8b7f3233cdb6663aa90`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e8cdbdba8d030cf76c9e1d44cafeadc8e37f6d0cd557dcbb986a30b6fc6caf`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 133.1 KB (133144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d857cf682d6b5c6c5c47e45f425d8add7cb2632fb75fbfd38fdf310d4375b9`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.2 MB (2212873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143c0a64f607a70937e7e57ed8ac7b267ad0c9d47305698042e5a4861088493`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d053f677518d7f0d3034377cff19aff0f906d6a7c65bfd003459f3e334e6eb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:4721f3a32118218b8d05c3d7264de3c4bfc78e2d5fd0808fde28bee90f25ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d701afbb34c09537c774107be3a26f6479334d13288ffd2f9e8fd80b0ecdfd`

```dockerfile
```

-	Layers:
	-	`sha256:b2e40a1504aa03787c5c7f30cf3ef9906f5459f12b86546e60546e710c216efb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab2d0ab186583e060eb3f57cf95ea6f53892b0c9f498343133f953b234148d4`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:00ee6fb4e4ef0f2b51f78ab7c193565796c1dd1d13aa26b5186841664207621d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32311250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31602bb9e085ba1211e06ac8e05cbc8e5e213e337ee4a9133f285cfa43d75e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:42:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:42:01 GMT
USER memcache
# Tue, 25 Aug 2026 00:42:01 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:42:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d8218e1c671cd45cc6e31820e9e221d1c52c96ee506057d62aa385888bc248`  
		Last Modified: Tue, 25 Aug 2026 00:42:11 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df83c18be84787fcfe1bd04adf97dd13c178bed33c3204c48324e6b6c23d8eee`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 140.5 KB (140545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b264b6a40dd78478350e9ec8045d9436f3db4f35236353620b01fe43edfd36d5`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.3 MB (2301470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60640ad1bb62b53d0176a51c31eb329d5b9b52a9cdd0683c8769948d144bb23`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7117dfe1b0c6883a5dc879b8559ceb672dd66d939d0f89c717d0a2cc57e7c04`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:b29cc7009dbe96ab29a03479c51ae2408731d4107786c3342417564d6b9bbccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7490349b39de8ac753baa0ec7d54bef0d7d67781afc3a66976127cebe11367`

```dockerfile
```

-	Layers:
	-	`sha256:7f152040eb62456deccfae205e54ce50723ecb7d4bc188a2c99e68ecf0224fab`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.0 MB (2010039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d5b581d01c33770b7cb868777ada87ce158056cb6a7c29e8ac42cb89c2e5766`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:trixie`

```console
$ docker pull memcached@sha256:9f213417a1c51d4c18c0ea9f38a917792ebf21c1b06a4168a04c5b7761494982
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
$ docker pull memcached@sha256:57f76c8133336936ad246cae500f07d07b3bf149485f005b515016bdd455be8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32216756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24406d1ca8939651827dd1775d10707a29ad7dcca1462ff80004be28e364cf30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:22:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b564688b1072131c84843b878def2a6b541f413dc4aa6e532feb411f6d87ad41`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6221ee17f50145599d26d40606ffbd086ba41531a59662518b98be8fab1a843e`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 136.7 KB (136706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfae3da9f7bfe557301344f0b132a9c12c7a75dbc6a7b91b62fa35144389552`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.3 MB (2285876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591a7e3cd179fa3da19cdc09f0f43810dbe1c794daf296de1aaa8a3aa488d413`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ff75ca70cd262763dabbdfdd63bb4b4bd93a47a2758aea5e08684e113f2989`  
		Last Modified: Tue, 25 Aug 2026 00:24:57 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6df923c152c829adb9589458e4cec741b66999bf25a7d10ee7a81b667096507f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5088226ef66a41b85dc80fb80689ce7a73b6585850b0c6ab5f139c74f68155`

```dockerfile
```

-	Layers:
	-	`sha256:6a6c096c11dc72812aa322f5f9fb7404422dd3f5252b99c8da4d08ad2688b739`  
		Last Modified: Tue, 25 Aug 2026 00:24:56 GMT  
		Size: 2.0 MB (2008602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:560518c79cf9146d94e2c448fa529bd862c219a8b904b62206843d44fc5ee12f`  
		Last Modified: Tue, 25 Aug 2026 00:24:55 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:023b4f0c03c3d3ee4025c8cda685724750ee8efcd175a5c22cdd39c12712e860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28527134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a559724f872cfe18bf63409400cbae4e5ad5d720ba526cfe23d58b7eacbffd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:22:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:22:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:22:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:22:23 GMT
USER memcache
# Tue, 25 Aug 2026 00:22:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:22:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cac8b9d8ee7969044bdc968c3195bbbfea0bca546aad3b2979372fb26ac2d7`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4d89e07ba6e6ac865f406ec22b456a717c64ed0bf6f1a3bb952dd8acc88cd2`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 135.4 KB (135384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cef6a353a923552dcd4b4cc18ce5385c9584764369ae1c45e36aa868e3c3bbf`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.2 MB (2171096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17cbda3c12db206820a5605adc1251a200a136fb8b5db2fabf64d9bd21f9e10`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae51979329d8e99e076196c57a9b7e18677e6433533bd3131d1712a0638f235c`  
		Last Modified: Tue, 25 Aug 2026 00:22:30 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:99c7b85509d64820a8951462fdd1d275493b873b68b40f0d1c3311b52c631ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bea1d035420a77877a7ae40015e4d7295cde8b861b6f9a3edab4e6c82b0daf7`

```dockerfile
```

-	Layers:
	-	`sha256:67e2cc4c93dbd46d68ef41fe7607981152db4042cedb3d106a4ce3ab15d9156f`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 2.0 MB (2010062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfaf9ca44bc5de1133db90c11fb1290ecc6330fe2c0f1ab725e93a21fad5a8d6`  
		Last Modified: Tue, 25 Aug 2026 00:22:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c30c690b1ab3dc91cf88cbb89de4432d09dc707413099ae2a53b7367e080bc74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32581267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8773e605e382948669649e57b54cbc6607f17590cca57b71c9015767d83a806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:21:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:24:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:24:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:24:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:24:38 GMT
USER memcache
# Tue, 25 Aug 2026 00:24:38 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:24:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b00431edb4e1c12b51fd7165d4f63e87369724b542ad660179c2d3bc428559`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a780b2d9f8338429d5c52e7e8e65fc7eca8dd6d68753b20cb2a0193bf372c077`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 153.5 KB (153528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea9b2dd393308e27d1f13384b644f7ac598a3dee8d36a5942ea2c9e0d4000ea`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.3 MB (2266640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7f80341faaf10b909fc4ee59501127649ba5369393910e072ebb6608fa4630`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a7662ec240484373771668128166d8174dd59e2d48a15486d58eab9e779fb6`  
		Last Modified: Tue, 25 Aug 2026 00:24:46 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:b749b02b6cac91cb05f31d939087ffba0138cc186ebf911558ca2199ece5c665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232b0d6a4c9762f1d86e39e9a645897d1e3a98c0c4552531b52cb042b3085d88`

```dockerfile
```

-	Layers:
	-	`sha256:cd21e3e0826071a3ea1da5bbb6c7de865c2f9b8def7fe6edbfc932dcea8d8de2`  
		Last Modified: Tue, 25 Aug 2026 00:24:45 GMT  
		Size: 2.0 MB (2008910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba53650a9aed2dc57f592bd4cc9fb6ee6004bfcc343d9acd5361cd4f45023450`  
		Last Modified: Tue, 25 Aug 2026 00:24:44 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:a38bfb324503e9daabef54e1d7a8d646add2c13fa2e0ab81371bf86328a50921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7885454e9209cead8bfa1bb3415c8a823c2cdb72698daabe057e4cfcbf32513a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 12:00:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 12:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 12:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 12:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 12:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 12:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 12:14:49 GMT
USER memcache
# Wed, 05 Aug 2026 12:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 12:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf4bbf03e17f5cab312e778aa64c1074a8caa390b65b8b7f3233cdb6663aa90`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e8cdbdba8d030cf76c9e1d44cafeadc8e37f6d0cd557dcbb986a30b6fc6caf`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 133.1 KB (133144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d857cf682d6b5c6c5c47e45f425d8add7cb2632fb75fbfd38fdf310d4375b9`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.2 MB (2212873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143c0a64f607a70937e7e57ed8ac7b267ad0c9d47305698042e5a4861088493`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d053f677518d7f0d3034377cff19aff0f906d6a7c65bfd003459f3e334e6eb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:4721f3a32118218b8d05c3d7264de3c4bfc78e2d5fd0808fde28bee90f25ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d701afbb34c09537c774107be3a26f6479334d13288ffd2f9e8fd80b0ecdfd`

```dockerfile
```

-	Layers:
	-	`sha256:b2e40a1504aa03787c5c7f30cf3ef9906f5459f12b86546e60546e710c216efb`  
		Last Modified: Wed, 05 Aug 2026 12:15:35 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ab2d0ab186583e060eb3f57cf95ea6f53892b0c9f498343133f953b234148d4`  
		Last Modified: Wed, 05 Aug 2026 12:15:34 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; s390x

```console
$ docker pull memcached@sha256:00ee6fb4e4ef0f2b51f78ab7c193565796c1dd1d13aa26b5186841664207621d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32311250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31602bb9e085ba1211e06ac8e05cbc8e5e213e337ee4a9133f285cfa43d75e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:19:02 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:42:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:42:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:42:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:42:01 GMT
USER memcache
# Tue, 25 Aug 2026 00:42:01 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:42:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d8218e1c671cd45cc6e31820e9e221d1c52c96ee506057d62aa385888bc248`  
		Last Modified: Tue, 25 Aug 2026 00:42:11 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df83c18be84787fcfe1bd04adf97dd13c178bed33c3204c48324e6b6c23d8eee`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 140.5 KB (140545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b264b6a40dd78478350e9ec8045d9436f3db4f35236353620b01fe43edfd36d5`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.3 MB (2301470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60640ad1bb62b53d0176a51c31eb329d5b9b52a9cdd0683c8769948d144bb23`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7117dfe1b0c6883a5dc879b8559ceb672dd66d939d0f89c717d0a2cc57e7c04`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:b29cc7009dbe96ab29a03479c51ae2408731d4107786c3342417564d6b9bbccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7490349b39de8ac753baa0ec7d54bef0d7d67781afc3a66976127cebe11367`

```dockerfile
```

-	Layers:
	-	`sha256:7f152040eb62456deccfae205e54ce50723ecb7d4bc188a2c99e68ecf0224fab`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 2.0 MB (2010039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d5b581d01c33770b7cb868777ada87ce158056cb6a7c29e8ac42cb89c2e5766`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json
