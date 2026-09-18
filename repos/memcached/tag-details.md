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
$ docker pull memcached@sha256:75c93cc91e76853da7c029e74d6e8dbd44774dd3713c93be8cd1971ad26120a4
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
$ docker pull memcached@sha256:73005dba4b54586e43e12d232f30a03e4eb683ff7b7b842064c3c3b40439115a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30331622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8558e70af0cba86a172cd02ce2ed6ba341428a7a8c9280394b0c263ff1c52ee2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:16:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:12 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:12 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12993454e24ffd732680267285dc502b398e04f91c7dea5ab5856bbc012b22f2`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9553eb5010d4203f54518db91ed3149c1d51492fcfa09f93ec581e16897e1a`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 144.2 KB (144191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94f0d6ee2c3133c6587aedf7aed598f77c16a70bc6fb10edcacf0717f1bd79`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.2 MB (2216974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1166d1d3af21f92c4784467f3bc590d420e108b8b22a2c030f0d33c7f8ae8471`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf74b2aa29617b4560b841f3d2d34992f52240084da4398f0474a0c17f0e7b0`  
		Last Modified: Tue, 25 Aug 2026 00:20:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:7ae71f8ed6b1752f586010ca5013e3c9de51955df5463a2ba2c12591c4a9565c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a473bc11738d6b7d5b659b78f99de47035c1b0566db764b1a6acf15b0dd1855`

```dockerfile
```

-	Layers:
	-	`sha256:6ff4acd7e47eef5c622ce3ceabd460595d08cb30c9aaf69e8cd9b92bb46eb9dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.0 MB (2011605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:987f59f86f914ecf9e36e9c5435fce8156dd6bb03e2ace9582b5879d6d3ff7dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
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
$ docker pull memcached@sha256:b1a3c29c1cbd5bd297454bb97d00714e08eaa94e090827ab94ac6e5bc301c28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33682693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef21d0eb87ebcbefd48ed3eb1ab364db2279111f1cd80bfeabca16c25d0cd6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:56 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:17:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb1368ebf8c8e26555fbd7fcfb11b9c8e833fa7d902ae5a440afcc7451f2219`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9145641b1f95fa74f5391d47bb06859ad6a7ff53c29cd2b148164c17c6f266`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 147.5 KB (147525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f98d208a5f307db10cab63223c3fc0569f5dc13acfc59cb71abaec5a0be95`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.2 MB (2230253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98eb82511758fc770ed4bfc746c6c5b93d8143a6bcbfb40bc86d9292e6d050f`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b8d3bd38ad7d7731fe68452d0872f2f5fb7349512f8ab7c47edcd2f89d9809`  
		Last Modified: Tue, 25 Aug 2026 00:20:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:ed76be7bca8d6b147c5fb54aefd14a974e1b5f24bf61ad19655dfda6b7ec096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114aceb1cb514600514f28dc3c292a9afa0a4539f3adacfb46d3f54691cc172d`

```dockerfile
```

-	Layers:
	-	`sha256:35e4c462c82e88c4ac7bba48c798bf79bf36a5f0dbde0def3650abe28ecfd67d`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.0 MB (2005759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc980e1a15f93f1b7608added103b1716f194cfde89baa78dd5c4a3df9cdc11`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:309c571a57d17e17d9b0a227e2ce5e1ce0e63540cadfbc46c94b93580c6c45df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36186877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af2b40a9f0ec37a2d23596ad57a61c898d021a7e317e2753a0f92ace99a7417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:27:58 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:28:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:31:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:31:27 GMT
USER memcache
# Tue, 25 Aug 2026 00:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88eef7826e2201e4cf4deefccdae8db56c6df3f9e8b49c1119b6b5f0de64f9de`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd668a96c3f92c072ddf35574cd12edebbac96f8fb4b446f8ac3ff05b558c01`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 170.4 KB (170374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965ee40b9b0ecd13267646c0e9e4366a0eb36dae82e617d6089544822d34efb6`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.4 MB (2399526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7112b4f99c7a11bef40fe60f8a4965afd2bfa0725f01138a93efcb18055c2cc`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe68bd967bc5bf63aed8da4e63cbe32ae0f31bca136698f956ee7afa0ef533b`  
		Last Modified: Tue, 25 Aug 2026 00:31:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:ca434a2e9aee3651195bfbc62771b1f07495fef5540aaad0a135e8aad9401bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae65bcb724f256d1a1e44a7e36de0e648b2aa45bffaffe5ad0c4d2b7d07cb1d`

```dockerfile
```

-	Layers:
	-	`sha256:879c947bc9483790080ce3a6769a2615c51a0c853c875941b78a5e22adbe72b9`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.0 MB (2012203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e31eb04ca1131be17f50c448d6f914da0d1eaa62a3f66a9c29c9ee42e5621ff4`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; riscv64

```console
$ docker pull memcached@sha256:b0ab45fbd71066e2204935f16ea0b89d3c5001387625a764bd304b9add3fcad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30644016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7863b78393e52fdebe59f817156dff90d6d8c75df12586b911e44c4d7bc984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:42:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 02:43:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 03:14:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:14:35 GMT
USER memcache
# Tue, 25 Aug 2026 03:14:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 03:14:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b653919ba8cba57ec3e29ae599fde494684638acb2d46b4d20b8de77a8e4404`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e340114a6e7a6607b946662f2a400af833278cf9919fb32cc69eae665f76e`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 133.1 KB (133116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bf6e25398de10e8a4bb43d9c2bc88d46f0c08cf0455e6c7fe6924a553e3e1`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.2 MB (2212921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e37e2d2f788ac3c0c3ed883609430e7fe41d046845856648100b086ff2b5f3d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104ae55ad448105c7c9a1e73a179719d1f1330cd6a9cb6bf5be7f4f88cbdbd7b`  
		Last Modified: Tue, 25 Aug 2026 03:15:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:7d49f2ead8f76fb1e625a6a8e92b87dd4b98862156588100d9379cd937499722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f9bce43d0d2ee232a8bc0796dc1559b40b1edf8e796e944d2c5986c16da92d`

```dockerfile
```

-	Layers:
	-	`sha256:38c00dd8ae8d4846a2a0fd57a5009d80fcd875384edf155dc8202f951d232d30`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.0 MB (2002566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b0e925142e3dc0ea8eae6cd29643ba8cfcb431527a7d4ce980113a5097029d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
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
$ docker pull memcached@sha256:69ecd3c5701cebbe51f9fca15c1f9bd3b8773fd57cdb215adb6e1fa844bb0ea2
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
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
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
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine3.24`

```console
$ docker pull memcached@sha256:69ecd3c5701cebbe51f9fca15c1f9bd3b8773fd57cdb215adb6e1fa844bb0ea2
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
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
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
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-trixie`

```console
$ docker pull memcached@sha256:75c93cc91e76853da7c029e74d6e8dbd44774dd3713c93be8cd1971ad26120a4
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
$ docker pull memcached@sha256:73005dba4b54586e43e12d232f30a03e4eb683ff7b7b842064c3c3b40439115a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30331622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8558e70af0cba86a172cd02ce2ed6ba341428a7a8c9280394b0c263ff1c52ee2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:16:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:12 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:12 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12993454e24ffd732680267285dc502b398e04f91c7dea5ab5856bbc012b22f2`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9553eb5010d4203f54518db91ed3149c1d51492fcfa09f93ec581e16897e1a`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 144.2 KB (144191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94f0d6ee2c3133c6587aedf7aed598f77c16a70bc6fb10edcacf0717f1bd79`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.2 MB (2216974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1166d1d3af21f92c4784467f3bc590d420e108b8b22a2c030f0d33c7f8ae8471`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf74b2aa29617b4560b841f3d2d34992f52240084da4398f0474a0c17f0e7b0`  
		Last Modified: Tue, 25 Aug 2026 00:20:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:7ae71f8ed6b1752f586010ca5013e3c9de51955df5463a2ba2c12591c4a9565c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a473bc11738d6b7d5b659b78f99de47035c1b0566db764b1a6acf15b0dd1855`

```dockerfile
```

-	Layers:
	-	`sha256:6ff4acd7e47eef5c622ce3ceabd460595d08cb30c9aaf69e8cd9b92bb46eb9dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.0 MB (2011605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:987f59f86f914ecf9e36e9c5435fce8156dd6bb03e2ace9582b5879d6d3ff7dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
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
$ docker pull memcached@sha256:b1a3c29c1cbd5bd297454bb97d00714e08eaa94e090827ab94ac6e5bc301c28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33682693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef21d0eb87ebcbefd48ed3eb1ab364db2279111f1cd80bfeabca16c25d0cd6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:56 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:17:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb1368ebf8c8e26555fbd7fcfb11b9c8e833fa7d902ae5a440afcc7451f2219`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9145641b1f95fa74f5391d47bb06859ad6a7ff53c29cd2b148164c17c6f266`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 147.5 KB (147525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f98d208a5f307db10cab63223c3fc0569f5dc13acfc59cb71abaec5a0be95`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.2 MB (2230253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98eb82511758fc770ed4bfc746c6c5b93d8143a6bcbfb40bc86d9292e6d050f`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b8d3bd38ad7d7731fe68452d0872f2f5fb7349512f8ab7c47edcd2f89d9809`  
		Last Modified: Tue, 25 Aug 2026 00:20:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ed76be7bca8d6b147c5fb54aefd14a974e1b5f24bf61ad19655dfda6b7ec096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114aceb1cb514600514f28dc3c292a9afa0a4539f3adacfb46d3f54691cc172d`

```dockerfile
```

-	Layers:
	-	`sha256:35e4c462c82e88c4ac7bba48c798bf79bf36a5f0dbde0def3650abe28ecfd67d`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.0 MB (2005759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc980e1a15f93f1b7608added103b1716f194cfde89baa78dd5c4a3df9cdc11`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:309c571a57d17e17d9b0a227e2ce5e1ce0e63540cadfbc46c94b93580c6c45df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36186877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af2b40a9f0ec37a2d23596ad57a61c898d021a7e317e2753a0f92ace99a7417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:27:58 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:28:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:31:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:31:27 GMT
USER memcache
# Tue, 25 Aug 2026 00:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88eef7826e2201e4cf4deefccdae8db56c6df3f9e8b49c1119b6b5f0de64f9de`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd668a96c3f92c072ddf35574cd12edebbac96f8fb4b446f8ac3ff05b558c01`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 170.4 KB (170374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965ee40b9b0ecd13267646c0e9e4366a0eb36dae82e617d6089544822d34efb6`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.4 MB (2399526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7112b4f99c7a11bef40fe60f8a4965afd2bfa0725f01138a93efcb18055c2cc`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe68bd967bc5bf63aed8da4e63cbe32ae0f31bca136698f956ee7afa0ef533b`  
		Last Modified: Tue, 25 Aug 2026 00:31:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ca434a2e9aee3651195bfbc62771b1f07495fef5540aaad0a135e8aad9401bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae65bcb724f256d1a1e44a7e36de0e648b2aa45bffaffe5ad0c4d2b7d07cb1d`

```dockerfile
```

-	Layers:
	-	`sha256:879c947bc9483790080ce3a6769a2615c51a0c853c875941b78a5e22adbe72b9`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.0 MB (2012203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e31eb04ca1131be17f50c448d6f914da0d1eaa62a3f66a9c29c9ee42e5621ff4`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:b0ab45fbd71066e2204935f16ea0b89d3c5001387625a764bd304b9add3fcad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30644016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7863b78393e52fdebe59f817156dff90d6d8c75df12586b911e44c4d7bc984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:42:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 02:43:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 03:14:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:14:35 GMT
USER memcache
# Tue, 25 Aug 2026 03:14:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 03:14:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b653919ba8cba57ec3e29ae599fde494684638acb2d46b4d20b8de77a8e4404`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e340114a6e7a6607b946662f2a400af833278cf9919fb32cc69eae665f76e`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 133.1 KB (133116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bf6e25398de10e8a4bb43d9c2bc88d46f0c08cf0455e6c7fe6924a553e3e1`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.2 MB (2212921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e37e2d2f788ac3c0c3ed883609430e7fe41d046845856648100b086ff2b5f3d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104ae55ad448105c7c9a1e73a179719d1f1330cd6a9cb6bf5be7f4f88cbdbd7b`  
		Last Modified: Tue, 25 Aug 2026 03:15:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:7d49f2ead8f76fb1e625a6a8e92b87dd4b98862156588100d9379cd937499722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f9bce43d0d2ee232a8bc0796dc1559b40b1edf8e796e944d2c5986c16da92d`

```dockerfile
```

-	Layers:
	-	`sha256:38c00dd8ae8d4846a2a0fd57a5009d80fcd875384edf155dc8202f951d232d30`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.0 MB (2002566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b0e925142e3dc0ea8eae6cd29643ba8cfcb431527a7d4ce980113a5097029d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
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
$ docker pull memcached@sha256:75c93cc91e76853da7c029e74d6e8dbd44774dd3713c93be8cd1971ad26120a4
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
$ docker pull memcached@sha256:73005dba4b54586e43e12d232f30a03e4eb683ff7b7b842064c3c3b40439115a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30331622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8558e70af0cba86a172cd02ce2ed6ba341428a7a8c9280394b0c263ff1c52ee2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:16:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:12 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:12 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12993454e24ffd732680267285dc502b398e04f91c7dea5ab5856bbc012b22f2`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9553eb5010d4203f54518db91ed3149c1d51492fcfa09f93ec581e16897e1a`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 144.2 KB (144191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94f0d6ee2c3133c6587aedf7aed598f77c16a70bc6fb10edcacf0717f1bd79`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.2 MB (2216974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1166d1d3af21f92c4784467f3bc590d420e108b8b22a2c030f0d33c7f8ae8471`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf74b2aa29617b4560b841f3d2d34992f52240084da4398f0474a0c17f0e7b0`  
		Last Modified: Tue, 25 Aug 2026 00:20:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:7ae71f8ed6b1752f586010ca5013e3c9de51955df5463a2ba2c12591c4a9565c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a473bc11738d6b7d5b659b78f99de47035c1b0566db764b1a6acf15b0dd1855`

```dockerfile
```

-	Layers:
	-	`sha256:6ff4acd7e47eef5c622ce3ceabd460595d08cb30c9aaf69e8cd9b92bb46eb9dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.0 MB (2011605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:987f59f86f914ecf9e36e9c5435fce8156dd6bb03e2ace9582b5879d6d3ff7dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
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
$ docker pull memcached@sha256:b1a3c29c1cbd5bd297454bb97d00714e08eaa94e090827ab94ac6e5bc301c28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33682693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef21d0eb87ebcbefd48ed3eb1ab364db2279111f1cd80bfeabca16c25d0cd6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:56 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:17:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb1368ebf8c8e26555fbd7fcfb11b9c8e833fa7d902ae5a440afcc7451f2219`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9145641b1f95fa74f5391d47bb06859ad6a7ff53c29cd2b148164c17c6f266`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 147.5 KB (147525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f98d208a5f307db10cab63223c3fc0569f5dc13acfc59cb71abaec5a0be95`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.2 MB (2230253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98eb82511758fc770ed4bfc746c6c5b93d8143a6bcbfb40bc86d9292e6d050f`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b8d3bd38ad7d7731fe68452d0872f2f5fb7349512f8ab7c47edcd2f89d9809`  
		Last Modified: Tue, 25 Aug 2026 00:20:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:ed76be7bca8d6b147c5fb54aefd14a974e1b5f24bf61ad19655dfda6b7ec096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114aceb1cb514600514f28dc3c292a9afa0a4539f3adacfb46d3f54691cc172d`

```dockerfile
```

-	Layers:
	-	`sha256:35e4c462c82e88c4ac7bba48c798bf79bf36a5f0dbde0def3650abe28ecfd67d`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.0 MB (2005759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc980e1a15f93f1b7608added103b1716f194cfde89baa78dd5c4a3df9cdc11`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; ppc64le

```console
$ docker pull memcached@sha256:309c571a57d17e17d9b0a227e2ce5e1ce0e63540cadfbc46c94b93580c6c45df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36186877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af2b40a9f0ec37a2d23596ad57a61c898d021a7e317e2753a0f92ace99a7417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:27:58 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:28:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:31:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:31:27 GMT
USER memcache
# Tue, 25 Aug 2026 00:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88eef7826e2201e4cf4deefccdae8db56c6df3f9e8b49c1119b6b5f0de64f9de`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd668a96c3f92c072ddf35574cd12edebbac96f8fb4b446f8ac3ff05b558c01`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 170.4 KB (170374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965ee40b9b0ecd13267646c0e9e4366a0eb36dae82e617d6089544822d34efb6`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.4 MB (2399526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7112b4f99c7a11bef40fe60f8a4965afd2bfa0725f01138a93efcb18055c2cc`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe68bd967bc5bf63aed8da4e63cbe32ae0f31bca136698f956ee7afa0ef533b`  
		Last Modified: Tue, 25 Aug 2026 00:31:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:ca434a2e9aee3651195bfbc62771b1f07495fef5540aaad0a135e8aad9401bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae65bcb724f256d1a1e44a7e36de0e648b2aa45bffaffe5ad0c4d2b7d07cb1d`

```dockerfile
```

-	Layers:
	-	`sha256:879c947bc9483790080ce3a6769a2615c51a0c853c875941b78a5e22adbe72b9`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.0 MB (2012203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e31eb04ca1131be17f50c448d6f914da0d1eaa62a3f66a9c29c9ee42e5621ff4`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; riscv64

```console
$ docker pull memcached@sha256:b0ab45fbd71066e2204935f16ea0b89d3c5001387625a764bd304b9add3fcad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30644016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7863b78393e52fdebe59f817156dff90d6d8c75df12586b911e44c4d7bc984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:42:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 02:43:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 03:14:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:14:35 GMT
USER memcache
# Tue, 25 Aug 2026 03:14:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 03:14:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b653919ba8cba57ec3e29ae599fde494684638acb2d46b4d20b8de77a8e4404`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e340114a6e7a6607b946662f2a400af833278cf9919fb32cc69eae665f76e`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 133.1 KB (133116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bf6e25398de10e8a4bb43d9c2bc88d46f0c08cf0455e6c7fe6924a553e3e1`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.2 MB (2212921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e37e2d2f788ac3c0c3ed883609430e7fe41d046845856648100b086ff2b5f3d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104ae55ad448105c7c9a1e73a179719d1f1330cd6a9cb6bf5be7f4f88cbdbd7b`  
		Last Modified: Tue, 25 Aug 2026 03:15:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:7d49f2ead8f76fb1e625a6a8e92b87dd4b98862156588100d9379cd937499722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f9bce43d0d2ee232a8bc0796dc1559b40b1edf8e796e944d2c5986c16da92d`

```dockerfile
```

-	Layers:
	-	`sha256:38c00dd8ae8d4846a2a0fd57a5009d80fcd875384edf155dc8202f951d232d30`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.0 MB (2002566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b0e925142e3dc0ea8eae6cd29643ba8cfcb431527a7d4ce980113a5097029d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
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
$ docker pull memcached@sha256:69ecd3c5701cebbe51f9fca15c1f9bd3b8773fd57cdb215adb6e1fa844bb0ea2
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
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
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
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine3.24`

```console
$ docker pull memcached@sha256:69ecd3c5701cebbe51f9fca15c1f9bd3b8773fd57cdb215adb6e1fa844bb0ea2
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
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
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
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-trixie`

```console
$ docker pull memcached@sha256:75c93cc91e76853da7c029e74d6e8dbd44774dd3713c93be8cd1971ad26120a4
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
$ docker pull memcached@sha256:73005dba4b54586e43e12d232f30a03e4eb683ff7b7b842064c3c3b40439115a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30331622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8558e70af0cba86a172cd02ce2ed6ba341428a7a8c9280394b0c263ff1c52ee2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:16:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:12 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:12 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12993454e24ffd732680267285dc502b398e04f91c7dea5ab5856bbc012b22f2`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9553eb5010d4203f54518db91ed3149c1d51492fcfa09f93ec581e16897e1a`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 144.2 KB (144191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94f0d6ee2c3133c6587aedf7aed598f77c16a70bc6fb10edcacf0717f1bd79`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.2 MB (2216974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1166d1d3af21f92c4784467f3bc590d420e108b8b22a2c030f0d33c7f8ae8471`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf74b2aa29617b4560b841f3d2d34992f52240084da4398f0474a0c17f0e7b0`  
		Last Modified: Tue, 25 Aug 2026 00:20:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:7ae71f8ed6b1752f586010ca5013e3c9de51955df5463a2ba2c12591c4a9565c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a473bc11738d6b7d5b659b78f99de47035c1b0566db764b1a6acf15b0dd1855`

```dockerfile
```

-	Layers:
	-	`sha256:6ff4acd7e47eef5c622ce3ceabd460595d08cb30c9aaf69e8cd9b92bb46eb9dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.0 MB (2011605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:987f59f86f914ecf9e36e9c5435fce8156dd6bb03e2ace9582b5879d6d3ff7dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
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
$ docker pull memcached@sha256:b1a3c29c1cbd5bd297454bb97d00714e08eaa94e090827ab94ac6e5bc301c28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33682693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef21d0eb87ebcbefd48ed3eb1ab364db2279111f1cd80bfeabca16c25d0cd6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:56 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:17:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb1368ebf8c8e26555fbd7fcfb11b9c8e833fa7d902ae5a440afcc7451f2219`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9145641b1f95fa74f5391d47bb06859ad6a7ff53c29cd2b148164c17c6f266`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 147.5 KB (147525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f98d208a5f307db10cab63223c3fc0569f5dc13acfc59cb71abaec5a0be95`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.2 MB (2230253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98eb82511758fc770ed4bfc746c6c5b93d8143a6bcbfb40bc86d9292e6d050f`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b8d3bd38ad7d7731fe68452d0872f2f5fb7349512f8ab7c47edcd2f89d9809`  
		Last Modified: Tue, 25 Aug 2026 00:20:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ed76be7bca8d6b147c5fb54aefd14a974e1b5f24bf61ad19655dfda6b7ec096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114aceb1cb514600514f28dc3c292a9afa0a4539f3adacfb46d3f54691cc172d`

```dockerfile
```

-	Layers:
	-	`sha256:35e4c462c82e88c4ac7bba48c798bf79bf36a5f0dbde0def3650abe28ecfd67d`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.0 MB (2005759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc980e1a15f93f1b7608added103b1716f194cfde89baa78dd5c4a3df9cdc11`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:309c571a57d17e17d9b0a227e2ce5e1ce0e63540cadfbc46c94b93580c6c45df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36186877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af2b40a9f0ec37a2d23596ad57a61c898d021a7e317e2753a0f92ace99a7417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:27:58 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:28:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:31:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:31:27 GMT
USER memcache
# Tue, 25 Aug 2026 00:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88eef7826e2201e4cf4deefccdae8db56c6df3f9e8b49c1119b6b5f0de64f9de`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd668a96c3f92c072ddf35574cd12edebbac96f8fb4b446f8ac3ff05b558c01`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 170.4 KB (170374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965ee40b9b0ecd13267646c0e9e4366a0eb36dae82e617d6089544822d34efb6`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.4 MB (2399526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7112b4f99c7a11bef40fe60f8a4965afd2bfa0725f01138a93efcb18055c2cc`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe68bd967bc5bf63aed8da4e63cbe32ae0f31bca136698f956ee7afa0ef533b`  
		Last Modified: Tue, 25 Aug 2026 00:31:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ca434a2e9aee3651195bfbc62771b1f07495fef5540aaad0a135e8aad9401bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae65bcb724f256d1a1e44a7e36de0e648b2aa45bffaffe5ad0c4d2b7d07cb1d`

```dockerfile
```

-	Layers:
	-	`sha256:879c947bc9483790080ce3a6769a2615c51a0c853c875941b78a5e22adbe72b9`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.0 MB (2012203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e31eb04ca1131be17f50c448d6f914da0d1eaa62a3f66a9c29c9ee42e5621ff4`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:b0ab45fbd71066e2204935f16ea0b89d3c5001387625a764bd304b9add3fcad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30644016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7863b78393e52fdebe59f817156dff90d6d8c75df12586b911e44c4d7bc984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:42:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 02:43:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 03:14:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:14:35 GMT
USER memcache
# Tue, 25 Aug 2026 03:14:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 03:14:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b653919ba8cba57ec3e29ae599fde494684638acb2d46b4d20b8de77a8e4404`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e340114a6e7a6607b946662f2a400af833278cf9919fb32cc69eae665f76e`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 133.1 KB (133116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bf6e25398de10e8a4bb43d9c2bc88d46f0c08cf0455e6c7fe6924a553e3e1`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.2 MB (2212921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e37e2d2f788ac3c0c3ed883609430e7fe41d046845856648100b086ff2b5f3d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104ae55ad448105c7c9a1e73a179719d1f1330cd6a9cb6bf5be7f4f88cbdbd7b`  
		Last Modified: Tue, 25 Aug 2026 03:15:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:7d49f2ead8f76fb1e625a6a8e92b87dd4b98862156588100d9379cd937499722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f9bce43d0d2ee232a8bc0796dc1559b40b1edf8e796e944d2c5986c16da92d`

```dockerfile
```

-	Layers:
	-	`sha256:38c00dd8ae8d4846a2a0fd57a5009d80fcd875384edf155dc8202f951d232d30`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.0 MB (2002566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b0e925142e3dc0ea8eae6cd29643ba8cfcb431527a7d4ce980113a5097029d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
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
$ docker pull memcached@sha256:75c93cc91e76853da7c029e74d6e8dbd44774dd3713c93be8cd1971ad26120a4
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
$ docker pull memcached@sha256:73005dba4b54586e43e12d232f30a03e4eb683ff7b7b842064c3c3b40439115a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30331622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8558e70af0cba86a172cd02ce2ed6ba341428a7a8c9280394b0c263ff1c52ee2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:16:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:12 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:12 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12993454e24ffd732680267285dc502b398e04f91c7dea5ab5856bbc012b22f2`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9553eb5010d4203f54518db91ed3149c1d51492fcfa09f93ec581e16897e1a`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 144.2 KB (144191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94f0d6ee2c3133c6587aedf7aed598f77c16a70bc6fb10edcacf0717f1bd79`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.2 MB (2216974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1166d1d3af21f92c4784467f3bc590d420e108b8b22a2c030f0d33c7f8ae8471`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf74b2aa29617b4560b841f3d2d34992f52240084da4398f0474a0c17f0e7b0`  
		Last Modified: Tue, 25 Aug 2026 00:20:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:7ae71f8ed6b1752f586010ca5013e3c9de51955df5463a2ba2c12591c4a9565c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a473bc11738d6b7d5b659b78f99de47035c1b0566db764b1a6acf15b0dd1855`

```dockerfile
```

-	Layers:
	-	`sha256:6ff4acd7e47eef5c622ce3ceabd460595d08cb30c9aaf69e8cd9b92bb46eb9dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.0 MB (2011605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:987f59f86f914ecf9e36e9c5435fce8156dd6bb03e2ace9582b5879d6d3ff7dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
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
$ docker pull memcached@sha256:b1a3c29c1cbd5bd297454bb97d00714e08eaa94e090827ab94ac6e5bc301c28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33682693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef21d0eb87ebcbefd48ed3eb1ab364db2279111f1cd80bfeabca16c25d0cd6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:56 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:17:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb1368ebf8c8e26555fbd7fcfb11b9c8e833fa7d902ae5a440afcc7451f2219`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9145641b1f95fa74f5391d47bb06859ad6a7ff53c29cd2b148164c17c6f266`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 147.5 KB (147525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f98d208a5f307db10cab63223c3fc0569f5dc13acfc59cb71abaec5a0be95`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.2 MB (2230253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98eb82511758fc770ed4bfc746c6c5b93d8143a6bcbfb40bc86d9292e6d050f`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b8d3bd38ad7d7731fe68452d0872f2f5fb7349512f8ab7c47edcd2f89d9809`  
		Last Modified: Tue, 25 Aug 2026 00:20:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:ed76be7bca8d6b147c5fb54aefd14a974e1b5f24bf61ad19655dfda6b7ec096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114aceb1cb514600514f28dc3c292a9afa0a4539f3adacfb46d3f54691cc172d`

```dockerfile
```

-	Layers:
	-	`sha256:35e4c462c82e88c4ac7bba48c798bf79bf36a5f0dbde0def3650abe28ecfd67d`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.0 MB (2005759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc980e1a15f93f1b7608added103b1716f194cfde89baa78dd5c4a3df9cdc11`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; ppc64le

```console
$ docker pull memcached@sha256:309c571a57d17e17d9b0a227e2ce5e1ce0e63540cadfbc46c94b93580c6c45df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36186877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af2b40a9f0ec37a2d23596ad57a61c898d021a7e317e2753a0f92ace99a7417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:27:58 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:28:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:31:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:31:27 GMT
USER memcache
# Tue, 25 Aug 2026 00:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88eef7826e2201e4cf4deefccdae8db56c6df3f9e8b49c1119b6b5f0de64f9de`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd668a96c3f92c072ddf35574cd12edebbac96f8fb4b446f8ac3ff05b558c01`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 170.4 KB (170374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965ee40b9b0ecd13267646c0e9e4366a0eb36dae82e617d6089544822d34efb6`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.4 MB (2399526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7112b4f99c7a11bef40fe60f8a4965afd2bfa0725f01138a93efcb18055c2cc`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe68bd967bc5bf63aed8da4e63cbe32ae0f31bca136698f956ee7afa0ef533b`  
		Last Modified: Tue, 25 Aug 2026 00:31:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:ca434a2e9aee3651195bfbc62771b1f07495fef5540aaad0a135e8aad9401bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae65bcb724f256d1a1e44a7e36de0e648b2aa45bffaffe5ad0c4d2b7d07cb1d`

```dockerfile
```

-	Layers:
	-	`sha256:879c947bc9483790080ce3a6769a2615c51a0c853c875941b78a5e22adbe72b9`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.0 MB (2012203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e31eb04ca1131be17f50c448d6f914da0d1eaa62a3f66a9c29c9ee42e5621ff4`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; riscv64

```console
$ docker pull memcached@sha256:b0ab45fbd71066e2204935f16ea0b89d3c5001387625a764bd304b9add3fcad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30644016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7863b78393e52fdebe59f817156dff90d6d8c75df12586b911e44c4d7bc984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:42:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 02:43:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 03:14:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:14:35 GMT
USER memcache
# Tue, 25 Aug 2026 03:14:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 03:14:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b653919ba8cba57ec3e29ae599fde494684638acb2d46b4d20b8de77a8e4404`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e340114a6e7a6607b946662f2a400af833278cf9919fb32cc69eae665f76e`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 133.1 KB (133116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bf6e25398de10e8a4bb43d9c2bc88d46f0c08cf0455e6c7fe6924a553e3e1`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.2 MB (2212921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e37e2d2f788ac3c0c3ed883609430e7fe41d046845856648100b086ff2b5f3d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104ae55ad448105c7c9a1e73a179719d1f1330cd6a9cb6bf5be7f4f88cbdbd7b`  
		Last Modified: Tue, 25 Aug 2026 03:15:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:7d49f2ead8f76fb1e625a6a8e92b87dd4b98862156588100d9379cd937499722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f9bce43d0d2ee232a8bc0796dc1559b40b1edf8e796e944d2c5986c16da92d`

```dockerfile
```

-	Layers:
	-	`sha256:38c00dd8ae8d4846a2a0fd57a5009d80fcd875384edf155dc8202f951d232d30`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.0 MB (2002566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b0e925142e3dc0ea8eae6cd29643ba8cfcb431527a7d4ce980113a5097029d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
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
$ docker pull memcached@sha256:69ecd3c5701cebbe51f9fca15c1f9bd3b8773fd57cdb215adb6e1fa844bb0ea2
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
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
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
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-alpine3.24`

```console
$ docker pull memcached@sha256:69ecd3c5701cebbe51f9fca15c1f9bd3b8773fd57cdb215adb6e1fa844bb0ea2
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
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
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
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-trixie`

```console
$ docker pull memcached@sha256:75c93cc91e76853da7c029e74d6e8dbd44774dd3713c93be8cd1971ad26120a4
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
$ docker pull memcached@sha256:73005dba4b54586e43e12d232f30a03e4eb683ff7b7b842064c3c3b40439115a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30331622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8558e70af0cba86a172cd02ce2ed6ba341428a7a8c9280394b0c263ff1c52ee2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:16:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:12 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:12 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12993454e24ffd732680267285dc502b398e04f91c7dea5ab5856bbc012b22f2`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9553eb5010d4203f54518db91ed3149c1d51492fcfa09f93ec581e16897e1a`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 144.2 KB (144191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94f0d6ee2c3133c6587aedf7aed598f77c16a70bc6fb10edcacf0717f1bd79`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.2 MB (2216974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1166d1d3af21f92c4784467f3bc590d420e108b8b22a2c030f0d33c7f8ae8471`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf74b2aa29617b4560b841f3d2d34992f52240084da4398f0474a0c17f0e7b0`  
		Last Modified: Tue, 25 Aug 2026 00:20:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:7ae71f8ed6b1752f586010ca5013e3c9de51955df5463a2ba2c12591c4a9565c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a473bc11738d6b7d5b659b78f99de47035c1b0566db764b1a6acf15b0dd1855`

```dockerfile
```

-	Layers:
	-	`sha256:6ff4acd7e47eef5c622ce3ceabd460595d08cb30c9aaf69e8cd9b92bb46eb9dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.0 MB (2011605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:987f59f86f914ecf9e36e9c5435fce8156dd6bb03e2ace9582b5879d6d3ff7dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
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
$ docker pull memcached@sha256:b1a3c29c1cbd5bd297454bb97d00714e08eaa94e090827ab94ac6e5bc301c28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33682693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef21d0eb87ebcbefd48ed3eb1ab364db2279111f1cd80bfeabca16c25d0cd6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:56 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:17:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb1368ebf8c8e26555fbd7fcfb11b9c8e833fa7d902ae5a440afcc7451f2219`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9145641b1f95fa74f5391d47bb06859ad6a7ff53c29cd2b148164c17c6f266`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 147.5 KB (147525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f98d208a5f307db10cab63223c3fc0569f5dc13acfc59cb71abaec5a0be95`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.2 MB (2230253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98eb82511758fc770ed4bfc746c6c5b93d8143a6bcbfb40bc86d9292e6d050f`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b8d3bd38ad7d7731fe68452d0872f2f5fb7349512f8ab7c47edcd2f89d9809`  
		Last Modified: Tue, 25 Aug 2026 00:20:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ed76be7bca8d6b147c5fb54aefd14a974e1b5f24bf61ad19655dfda6b7ec096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114aceb1cb514600514f28dc3c292a9afa0a4539f3adacfb46d3f54691cc172d`

```dockerfile
```

-	Layers:
	-	`sha256:35e4c462c82e88c4ac7bba48c798bf79bf36a5f0dbde0def3650abe28ecfd67d`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.0 MB (2005759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc980e1a15f93f1b7608added103b1716f194cfde89baa78dd5c4a3df9cdc11`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:309c571a57d17e17d9b0a227e2ce5e1ce0e63540cadfbc46c94b93580c6c45df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36186877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af2b40a9f0ec37a2d23596ad57a61c898d021a7e317e2753a0f92ace99a7417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:27:58 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:28:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:31:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:31:27 GMT
USER memcache
# Tue, 25 Aug 2026 00:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88eef7826e2201e4cf4deefccdae8db56c6df3f9e8b49c1119b6b5f0de64f9de`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd668a96c3f92c072ddf35574cd12edebbac96f8fb4b446f8ac3ff05b558c01`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 170.4 KB (170374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965ee40b9b0ecd13267646c0e9e4366a0eb36dae82e617d6089544822d34efb6`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.4 MB (2399526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7112b4f99c7a11bef40fe60f8a4965afd2bfa0725f01138a93efcb18055c2cc`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe68bd967bc5bf63aed8da4e63cbe32ae0f31bca136698f956ee7afa0ef533b`  
		Last Modified: Tue, 25 Aug 2026 00:31:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ca434a2e9aee3651195bfbc62771b1f07495fef5540aaad0a135e8aad9401bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae65bcb724f256d1a1e44a7e36de0e648b2aa45bffaffe5ad0c4d2b7d07cb1d`

```dockerfile
```

-	Layers:
	-	`sha256:879c947bc9483790080ce3a6769a2615c51a0c853c875941b78a5e22adbe72b9`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.0 MB (2012203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e31eb04ca1131be17f50c448d6f914da0d1eaa62a3f66a9c29c9ee42e5621ff4`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:b0ab45fbd71066e2204935f16ea0b89d3c5001387625a764bd304b9add3fcad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30644016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7863b78393e52fdebe59f817156dff90d6d8c75df12586b911e44c4d7bc984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:42:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 02:43:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 03:14:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:14:35 GMT
USER memcache
# Tue, 25 Aug 2026 03:14:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 03:14:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b653919ba8cba57ec3e29ae599fde494684638acb2d46b4d20b8de77a8e4404`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e340114a6e7a6607b946662f2a400af833278cf9919fb32cc69eae665f76e`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 133.1 KB (133116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bf6e25398de10e8a4bb43d9c2bc88d46f0c08cf0455e6c7fe6924a553e3e1`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.2 MB (2212921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e37e2d2f788ac3c0c3ed883609430e7fe41d046845856648100b086ff2b5f3d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104ae55ad448105c7c9a1e73a179719d1f1330cd6a9cb6bf5be7f4f88cbdbd7b`  
		Last Modified: Tue, 25 Aug 2026 03:15:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:7d49f2ead8f76fb1e625a6a8e92b87dd4b98862156588100d9379cd937499722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f9bce43d0d2ee232a8bc0796dc1559b40b1edf8e796e944d2c5986c16da92d`

```dockerfile
```

-	Layers:
	-	`sha256:38c00dd8ae8d4846a2a0fd57a5009d80fcd875384edf155dc8202f951d232d30`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.0 MB (2002566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b0e925142e3dc0ea8eae6cd29643ba8cfcb431527a7d4ce980113a5097029d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
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
$ docker pull memcached@sha256:69ecd3c5701cebbe51f9fca15c1f9bd3b8773fd57cdb215adb6e1fa844bb0ea2
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
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
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
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:alpine3.24`

```console
$ docker pull memcached@sha256:69ecd3c5701cebbe51f9fca15c1f9bd3b8773fd57cdb215adb6e1fa844bb0ea2
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
$ docker pull memcached@sha256:aed6c14165dc0ca719495a86db396e4af335199e2bc509cf34197b8eb81e75db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5930141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3f45e091e88b03ec5a7365defcc1153365adefba32a94161d6faccc029383a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:19:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:19:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:05 GMT
USER memcache
# Thu, 17 Sep 2026 21:19:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fbbe0527a5a9d13613c8b22f2752a14b91b6092d0173800fb78cdbdf258428`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc38e6924e90cccdea0458ce3bad50a286b3f5d5e9c0305e4b92bdbcb0fc0b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 106.1 KB (106069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fb880294fac3007e7d5466cb68cdda8db6b8e867e5830f618ba59347084c48`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 2.0 MB (1972988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850056ad91a7eb14a58eb47cbf53170bd6c8cd07d782801b5291119ef8b5b196`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c150f54a299a0e5865f493673e27ba960bfe92b1934d5ca3f45495da216fc7`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:102f3093bc6e0dc03c870eefaa1d08375dec1dcaa029b7cdd28e8fc8b230735f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f039df7239fcf88279416238b99fd3f4265ddb7845dea2a532668642ace6dee7`

```dockerfile
```

-	Layers:
	-	`sha256:df58852b59ae3bbcc474c37fbbf4af35ed5328fac4a45547d6dfe1c745b5cf6b`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c13baa7fdc4605691a3816af63e761060d234a8f3c82fb584e5f2a994f607d`  
		Last Modified: Thu, 17 Sep 2026 21:19:10 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8973cb50b646592bc4b4db5c5ba5fafeaedc9a5cc14d4ee0e033501aad18d50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5580295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab89ee2938c40874ab847588a7bafedd064247be84b1f2ed13066b41aae89af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:24:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:24:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:24:01 GMT
USER memcache
# Thu, 17 Sep 2026 21:24:01 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:24:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a68700291779231aecfd220f9d88723f70443a7e53b3ee6cc7e50331769869`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cccdcfd4cc608994427c242b2392444f14c8d1b15a3c9573c9b579ec3f251b`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 102.6 KB (102640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c173cc650cff05287311d33f6a47867336f7ed1460693ea0df58ad80f4f904f`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 1.9 MB (1921196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9602a9760e8079674d25e1275b8b248dbd430166307fa22bce8f18e15615e`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8021c2cf11f0eabbe2f38ce25544bd0338d0d216e3a31cb4c67145e48a2884`  
		Last Modified: Thu, 17 Sep 2026 21:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a3dc4759b806fd595aedee968574f6d30b81786fae6f02a5ed5fd3de9a435ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6389c8a7a95dbe7874d26cc6d210d709d1d2d7918af74b99fbb9682526c8792`

```dockerfile
```

-	Layers:
	-	`sha256:b330c577900be61f94c9bdbc4264d33e0b1c8c4da085bad9165206c011cc083d`  
		Last Modified: Thu, 17 Sep 2026 21:24:05 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4698047b9c210750e16e07db091be4b5f72b595c820e6e846e7188ba0b386609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84a27cb8b2508b216332970f0618a4915ada956d79e6fa8d381247023423d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:19:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:22:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:22:30 GMT
USER memcache
# Thu, 17 Sep 2026 21:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995431fad1655fd0bda6213201e5a9a96951e71f4f86618d35615eec52332190`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4785d6c6095884eacbe5558dcdc121bca474e6125a08dfafa2cf70e87894ebd3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 92.4 KB (92374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41440d665d2ba596c0e09c2045809a58916edd2537e8f804e5a17764fb30af6b`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 1.9 MB (1880415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937240234e98ecd679cf903fc7c7aa62d14ae776d7eba3b2d8ee806456cb5825`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64428be47e9234c7141e9537d621fe415c0e0e6a11e600c188c8204de36af99e`  
		Last Modified: Thu, 17 Sep 2026 21:22:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f299ad7470f58ee154752703c7b7a09cfdeddcd1068ccbb69b7620a7f2cdb992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60f46873c9939d84f06a78729773d4cf55de1e87ac0e9a081e8febade8b26a2`

```dockerfile
```

-	Layers:
	-	`sha256:d77ba4f589d860c72847322877d5b8c550270a2389bd2850e29fc66026488ff3`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c142ee87947b5a89569925c281a9eb621090b0624c5864032bc312ed2afdc5`  
		Last Modified: Thu, 17 Sep 2026 21:22:35 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:31462f1ea73a0a29772ae6f32be7124da9c2a9683ae24d802bfcc54041550c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5bd4099e3cca31288437e2dd63d71878251e9a528afa6064a7fc061fd0d4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:17 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:16:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:16:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:08 GMT
USER memcache
# Thu, 17 Sep 2026 21:16:08 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:16:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1e88d48d205af89d0d9b1904c6e63a30e855a6f5412935835c74d59a3810f2`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7610f2b35dab65304108892242fdf929182879b48c7ec7e98ade8f72367602a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 121.9 KB (121854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44405d199511c9c938bef88955579ffc36f5d445db3314a38b68edacfd6f8148`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 2.0 MB (1951158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e6109934a7079c68103964d22c882f2bcbaa12b72eb28215df5a5a85da515c`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746a12191622835cb3173ad754db60d1b994fca18162459d7f747de35b65420e`  
		Last Modified: Thu, 17 Sep 2026 21:16:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d2a1e3c664b5a5358e65793068ee3a463b1e2fe9decf1756e18c2b3be7144999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7531bf2f8de67b5bb43c901a077c5edfd30a29cccf14c8c0529c7a6a7077358a`

```dockerfile
```

-	Layers:
	-	`sha256:7362abb71609190210ea3be48c0203576b7a05be93a91a20193a25f2518aa82e`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee7723224e4a1ff2a4c3dd74e9fc725ddcc2ceeb9a645ac99ce84a861893b52a`  
		Last Modified: Thu, 17 Sep 2026 21:16:13 GMT  
		Size: 20.7 KB (20727 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:4afb6580c24ce2632634356a9c937b496b8743e066378fc23d8913fcb200f432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be399c981a2a59830540f0047af1bc959ef8e8126c47fac9e18ea3faf37bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:15:36 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:18:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
USER memcache
# Thu, 17 Sep 2026 21:18:24 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:18:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a1555078fa5282f5a803b64f0e79189413537a752f4474488fd16413384bd`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7199937599d0cbc9b3195d82ef0b3d4de6c3e0cc321dec80d52c622beab351`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21a73ed462e36058c3afb00410805dbeac8749d3c7eba98d19fde8cac202d2e`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 1.9 MB (1928259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af84ae0a647f9eb5f6bdee46d460c064ef97e3238c053e9c78d3ffc1e5b9d87`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0965a9fe7f7f140845e67596ab02a4927d97bf25d44bbee1aaf6f10d370f8600`  
		Last Modified: Thu, 17 Sep 2026 21:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:d89f57316668a586ea578ed614cdc7ce13fff224c626ac06c9ac3dea42601a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b6ffba2b1dcfd03338d94840ba3fc7e43dc4ad9d16e97ab8c9297fb3fdb424`

```dockerfile
```

-	Layers:
	-	`sha256:4e8c5777c38b16385e0fa1aa5dc68e59b3f668641ffcf0e3f7daa467d10e60f7`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8caad469a2d8d8f1e6c35f144d71bcb8985515d1bd90eab44f60991c58a727`  
		Last Modified: Thu, 17 Sep 2026 21:18:29 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:9a0437672c246d127b1782f10a801ce0db757ac74f367b84553c96b2be7cb5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6010090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512f89eee8246394b1b5628094edf12aca1099208a7cae259a3eb56156e0693b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:30:23 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 21:30:24 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 21:53:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 21:53:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 21:53:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:53:31 GMT
USER memcache
# Thu, 17 Sep 2026 21:53:31 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 21:53:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9164e851bf437772ce842921040227ac7487b00f22d00cd6763636f330964202`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995f3b36f83b7959f49f1761f6c225138a2b065c268d83d0c3d0a87388bc617`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93a3f94f5c6d12261d3f31e57bad38b61e9ff3be47164a599318d71615f9a02`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 2.1 MB (2065002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc74b243580138ee3b28fd11e87cb70e99beb61a59b8dc49871b4d86a8706b5`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b494ff94eeffbb1f72c70e1b578480f7c72ad4a6bcc5bc42ba105b3e1278d3b`  
		Last Modified: Thu, 17 Sep 2026 21:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:f80e28a730a608ba861ca92c6a4227987495a1441e641cd1bf23b1b82144c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b415f70b85d9e9b283614528065ba6acee2673d8c7ce30c575ef4dc9e686258b`

```dockerfile
```

-	Layers:
	-	`sha256:03bc6ab3f08099a9ee4128175887a1c8577344a9bbaade3317621fbc2e51c40e`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc2ab6e0e8c7ae32bfe2026593c785e0b1175d0468ba31e9b9c736478a378917`  
		Last Modified: Thu, 17 Sep 2026 21:53:39 GMT  
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
$ docker pull memcached@sha256:91488a004e9f64eab2de7981c01b0ef3d2a1ebdd1d8ea3083e271daedb930899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5836268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d0499cbde3582cbe42af5f573a3d87f870eaf9e73ab35ba83a1fb00f4a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:50 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 17 Sep 2026 22:24:50 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 17 Sep 2026 22:27:56 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 17 Sep 2026 22:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 17 Sep 2026 22:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:56 GMT
USER memcache
# Thu, 17 Sep 2026 22:27:56 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 17 Sep 2026 22:27:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28ab774b98a6f29932df606a1298015f0217cceaaf48cc8b4da1a712d16dec7`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f57210d60c5d0de49a458685c32d457593dd9dc3fbe5da5e916010a9723a733`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 114.3 KB (114287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc4422a0f2f7f71932333a312da7ab0d836e17d66ed95f5a8983d3bf0d15f4e`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 2.0 MB (2005290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e7a27d33ae9a3ad3b5c6a329d295e218eb317d67093226b27351835b2294fd`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859163942310d61c18cdaf7abeee7b475bf01a0e6d71b759d0e9485489273ad7`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6684f08661c99d1a72d49a7c23c27dbb132abe46ecca960eab055413ae4430ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3ade50f032040600c3160b104c07040707b6172447f1ff8be2d0b43aee484`

```dockerfile
```

-	Layers:
	-	`sha256:2348ae961439981a5f9d7a98117febd705c8fd5ed703c60ba55e6302e0939ad0`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f2ae73c6298b67d61ba80635c258460fd84b74fab96b4bda97def3dcde3994`  
		Last Modified: Thu, 17 Sep 2026 22:28:04 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:latest`

```console
$ docker pull memcached@sha256:75c93cc91e76853da7c029e74d6e8dbd44774dd3713c93be8cd1971ad26120a4
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
$ docker pull memcached@sha256:73005dba4b54586e43e12d232f30a03e4eb683ff7b7b842064c3c3b40439115a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30331622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8558e70af0cba86a172cd02ce2ed6ba341428a7a8c9280394b0c263ff1c52ee2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:16:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:12 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:12 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12993454e24ffd732680267285dc502b398e04f91c7dea5ab5856bbc012b22f2`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9553eb5010d4203f54518db91ed3149c1d51492fcfa09f93ec581e16897e1a`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 144.2 KB (144191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94f0d6ee2c3133c6587aedf7aed598f77c16a70bc6fb10edcacf0717f1bd79`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.2 MB (2216974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1166d1d3af21f92c4784467f3bc590d420e108b8b22a2c030f0d33c7f8ae8471`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf74b2aa29617b4560b841f3d2d34992f52240084da4398f0474a0c17f0e7b0`  
		Last Modified: Tue, 25 Aug 2026 00:20:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:7ae71f8ed6b1752f586010ca5013e3c9de51955df5463a2ba2c12591c4a9565c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a473bc11738d6b7d5b659b78f99de47035c1b0566db764b1a6acf15b0dd1855`

```dockerfile
```

-	Layers:
	-	`sha256:6ff4acd7e47eef5c622ce3ceabd460595d08cb30c9aaf69e8cd9b92bb46eb9dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.0 MB (2011605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:987f59f86f914ecf9e36e9c5435fce8156dd6bb03e2ace9582b5879d6d3ff7dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
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
$ docker pull memcached@sha256:b1a3c29c1cbd5bd297454bb97d00714e08eaa94e090827ab94ac6e5bc301c28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33682693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef21d0eb87ebcbefd48ed3eb1ab364db2279111f1cd80bfeabca16c25d0cd6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:56 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:17:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb1368ebf8c8e26555fbd7fcfb11b9c8e833fa7d902ae5a440afcc7451f2219`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9145641b1f95fa74f5391d47bb06859ad6a7ff53c29cd2b148164c17c6f266`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 147.5 KB (147525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f98d208a5f307db10cab63223c3fc0569f5dc13acfc59cb71abaec5a0be95`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.2 MB (2230253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98eb82511758fc770ed4bfc746c6c5b93d8143a6bcbfb40bc86d9292e6d050f`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b8d3bd38ad7d7731fe68452d0872f2f5fb7349512f8ab7c47edcd2f89d9809`  
		Last Modified: Tue, 25 Aug 2026 00:20:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:ed76be7bca8d6b147c5fb54aefd14a974e1b5f24bf61ad19655dfda6b7ec096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114aceb1cb514600514f28dc3c292a9afa0a4539f3adacfb46d3f54691cc172d`

```dockerfile
```

-	Layers:
	-	`sha256:35e4c462c82e88c4ac7bba48c798bf79bf36a5f0dbde0def3650abe28ecfd67d`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.0 MB (2005759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc980e1a15f93f1b7608added103b1716f194cfde89baa78dd5c4a3df9cdc11`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:309c571a57d17e17d9b0a227e2ce5e1ce0e63540cadfbc46c94b93580c6c45df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36186877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af2b40a9f0ec37a2d23596ad57a61c898d021a7e317e2753a0f92ace99a7417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:27:58 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:28:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:31:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:31:27 GMT
USER memcache
# Tue, 25 Aug 2026 00:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88eef7826e2201e4cf4deefccdae8db56c6df3f9e8b49c1119b6b5f0de64f9de`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd668a96c3f92c072ddf35574cd12edebbac96f8fb4b446f8ac3ff05b558c01`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 170.4 KB (170374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965ee40b9b0ecd13267646c0e9e4366a0eb36dae82e617d6089544822d34efb6`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.4 MB (2399526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7112b4f99c7a11bef40fe60f8a4965afd2bfa0725f01138a93efcb18055c2cc`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe68bd967bc5bf63aed8da4e63cbe32ae0f31bca136698f956ee7afa0ef533b`  
		Last Modified: Tue, 25 Aug 2026 00:31:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:ca434a2e9aee3651195bfbc62771b1f07495fef5540aaad0a135e8aad9401bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae65bcb724f256d1a1e44a7e36de0e648b2aa45bffaffe5ad0c4d2b7d07cb1d`

```dockerfile
```

-	Layers:
	-	`sha256:879c947bc9483790080ce3a6769a2615c51a0c853c875941b78a5e22adbe72b9`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.0 MB (2012203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e31eb04ca1131be17f50c448d6f914da0d1eaa62a3f66a9c29c9ee42e5621ff4`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; riscv64

```console
$ docker pull memcached@sha256:b0ab45fbd71066e2204935f16ea0b89d3c5001387625a764bd304b9add3fcad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30644016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7863b78393e52fdebe59f817156dff90d6d8c75df12586b911e44c4d7bc984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:42:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 02:43:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 03:14:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:14:35 GMT
USER memcache
# Tue, 25 Aug 2026 03:14:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 03:14:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b653919ba8cba57ec3e29ae599fde494684638acb2d46b4d20b8de77a8e4404`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e340114a6e7a6607b946662f2a400af833278cf9919fb32cc69eae665f76e`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 133.1 KB (133116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bf6e25398de10e8a4bb43d9c2bc88d46f0c08cf0455e6c7fe6924a553e3e1`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.2 MB (2212921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e37e2d2f788ac3c0c3ed883609430e7fe41d046845856648100b086ff2b5f3d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104ae55ad448105c7c9a1e73a179719d1f1330cd6a9cb6bf5be7f4f88cbdbd7b`  
		Last Modified: Tue, 25 Aug 2026 03:15:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:7d49f2ead8f76fb1e625a6a8e92b87dd4b98862156588100d9379cd937499722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f9bce43d0d2ee232a8bc0796dc1559b40b1edf8e796e944d2c5986c16da92d`

```dockerfile
```

-	Layers:
	-	`sha256:38c00dd8ae8d4846a2a0fd57a5009d80fcd875384edf155dc8202f951d232d30`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.0 MB (2002566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b0e925142e3dc0ea8eae6cd29643ba8cfcb431527a7d4ce980113a5097029d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
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
$ docker pull memcached@sha256:75c93cc91e76853da7c029e74d6e8dbd44774dd3713c93be8cd1971ad26120a4
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
$ docker pull memcached@sha256:73005dba4b54586e43e12d232f30a03e4eb683ff7b7b842064c3c3b40439115a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30331622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8558e70af0cba86a172cd02ce2ed6ba341428a7a8c9280394b0c263ff1c52ee2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:16:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:12 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:12 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12993454e24ffd732680267285dc502b398e04f91c7dea5ab5856bbc012b22f2`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9553eb5010d4203f54518db91ed3149c1d51492fcfa09f93ec581e16897e1a`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 144.2 KB (144191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab94f0d6ee2c3133c6587aedf7aed598f77c16a70bc6fb10edcacf0717f1bd79`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.2 MB (2216974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1166d1d3af21f92c4784467f3bc590d420e108b8b22a2c030f0d33c7f8ae8471`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf74b2aa29617b4560b841f3d2d34992f52240084da4398f0474a0c17f0e7b0`  
		Last Modified: Tue, 25 Aug 2026 00:20:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:7ae71f8ed6b1752f586010ca5013e3c9de51955df5463a2ba2c12591c4a9565c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a473bc11738d6b7d5b659b78f99de47035c1b0566db764b1a6acf15b0dd1855`

```dockerfile
```

-	Layers:
	-	`sha256:6ff4acd7e47eef5c622ce3ceabd460595d08cb30c9aaf69e8cd9b92bb46eb9dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
		Size: 2.0 MB (2011605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:987f59f86f914ecf9e36e9c5435fce8156dd6bb03e2ace9582b5879d6d3ff7dd`  
		Last Modified: Tue, 25 Aug 2026 00:20:18 GMT  
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
$ docker pull memcached@sha256:b1a3c29c1cbd5bd297454bb97d00714e08eaa94e090827ab94ac6e5bc301c28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33682693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef21d0eb87ebcbefd48ed3eb1ab364db2279111f1cd80bfeabca16c25d0cd6a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:17:56 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:17:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:20:50 GMT
USER memcache
# Tue, 25 Aug 2026 00:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb1368ebf8c8e26555fbd7fcfb11b9c8e833fa7d902ae5a440afcc7451f2219`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9145641b1f95fa74f5391d47bb06859ad6a7ff53c29cd2b148164c17c6f266`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 147.5 KB (147525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5f98d208a5f307db10cab63223c3fc0569f5dc13acfc59cb71abaec5a0be95`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.2 MB (2230253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98eb82511758fc770ed4bfc746c6c5b93d8143a6bcbfb40bc86d9292e6d050f`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b8d3bd38ad7d7731fe68452d0872f2f5fb7349512f8ab7c47edcd2f89d9809`  
		Last Modified: Tue, 25 Aug 2026 00:20:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ed76be7bca8d6b147c5fb54aefd14a974e1b5f24bf61ad19655dfda6b7ec096a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114aceb1cb514600514f28dc3c292a9afa0a4539f3adacfb46d3f54691cc172d`

```dockerfile
```

-	Layers:
	-	`sha256:35e4c462c82e88c4ac7bba48c798bf79bf36a5f0dbde0def3650abe28ecfd67d`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 2.0 MB (2005759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc980e1a15f93f1b7608added103b1716f194cfde89baa78dd5c4a3df9cdc11`  
		Last Modified: Tue, 25 Aug 2026 00:20:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:309c571a57d17e17d9b0a227e2ce5e1ce0e63540cadfbc46c94b93580c6c45df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36186877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af2b40a9f0ec37a2d23596ad57a61c898d021a7e317e2753a0f92ace99a7417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:27:58 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 00:28:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 00:31:26 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 00:31:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 00:31:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:31:27 GMT
USER memcache
# Tue, 25 Aug 2026 00:31:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 00:31:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88eef7826e2201e4cf4deefccdae8db56c6df3f9e8b49c1119b6b5f0de64f9de`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd668a96c3f92c072ddf35574cd12edebbac96f8fb4b446f8ac3ff05b558c01`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 170.4 KB (170374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965ee40b9b0ecd13267646c0e9e4366a0eb36dae82e617d6089544822d34efb6`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.4 MB (2399526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7112b4f99c7a11bef40fe60f8a4965afd2bfa0725f01138a93efcb18055c2cc`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe68bd967bc5bf63aed8da4e63cbe32ae0f31bca136698f956ee7afa0ef533b`  
		Last Modified: Tue, 25 Aug 2026 00:31:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ca434a2e9aee3651195bfbc62771b1f07495fef5540aaad0a135e8aad9401bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae65bcb724f256d1a1e44a7e36de0e648b2aa45bffaffe5ad0c4d2b7d07cb1d`

```dockerfile
```

-	Layers:
	-	`sha256:879c947bc9483790080ce3a6769a2615c51a0c853c875941b78a5e22adbe72b9`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 2.0 MB (2012203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e31eb04ca1131be17f50c448d6f914da0d1eaa62a3f66a9c29c9ee42e5621ff4`  
		Last Modified: Tue, 25 Aug 2026 00:31:38 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:b0ab45fbd71066e2204935f16ea0b89d3c5001387625a764bd304b9add3fcad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30644016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7863b78393e52fdebe59f817156dff90d6d8c75df12586b911e44c4d7bc984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:42:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 25 Aug 2026 02:43:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 25 Aug 2026 03:14:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 25 Aug 2026 03:14:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 25 Aug 2026 03:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 03:14:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:14:35 GMT
USER memcache
# Tue, 25 Aug 2026 03:14:35 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 25 Aug 2026 03:14:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b653919ba8cba57ec3e29ae599fde494684638acb2d46b4d20b8de77a8e4404`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2e340114a6e7a6607b946662f2a400af833278cf9919fb32cc69eae665f76e`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 133.1 KB (133116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041bf6e25398de10e8a4bb43d9c2bc88d46f0c08cf0455e6c7fe6924a553e3e1`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.2 MB (2212921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e37e2d2f788ac3c0c3ed883609430e7fe41d046845856648100b086ff2b5f3d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104ae55ad448105c7c9a1e73a179719d1f1330cd6a9cb6bf5be7f4f88cbdbd7b`  
		Last Modified: Tue, 25 Aug 2026 03:15:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:7d49f2ead8f76fb1e625a6a8e92b87dd4b98862156588100d9379cd937499722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f9bce43d0d2ee232a8bc0796dc1559b40b1edf8e796e944d2c5986c16da92d`

```dockerfile
```

-	Layers:
	-	`sha256:38c00dd8ae8d4846a2a0fd57a5009d80fcd875384edf155dc8202f951d232d30`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
		Size: 2.0 MB (2002566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b0e925142e3dc0ea8eae6cd29643ba8cfcb431527a7d4ce980113a5097029d`  
		Last Modified: Tue, 25 Aug 2026 03:15:21 GMT  
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
