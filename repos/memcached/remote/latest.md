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
