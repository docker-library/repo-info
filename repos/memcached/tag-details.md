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
$ docker pull memcached@sha256:4bb63954bc6288fca0a68da0b487d7e65ff0d1c33a2668653c8deda9b4ff5cbe
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
$ docker pull memcached@sha256:0f1b191f83a78be4ace83d6cd6749c72fb5134bb9680cd20d41ef4fab0dbbdd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32209558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bf2cfeea12f98ff916545064e300199e6b92083a44bd363935009c46da11185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:12:00 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:12:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:53 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d538de271cf9cbfcf05a4358cf8c22c1f01cdb639ce14b3dbd2b8628a76a2d1`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897bc473d9c5c2e9a5cb4426845179ffed859e58218cdcccfc0b349f7d9f9e83`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 136.7 KB (136714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3541b9fe07883f94926e279470db4c1b03b09cc82e82112dc2da90906434947`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 2.3 MB (2285911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a013f5a50fce1dae0e3ecc49661b0325bab1ea1be6e5039790fee57a218cbe`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df1acd0ad7ee087bab6c20fa3ab6f1a29e2d1906899f450c2e529b5deae1f82`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:972a34df5cc9871b97f8f6c17b5c4954a8500bee6666f553a21e00495c64ff76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bd0dc1e17f8b9cc178f4f4912473b27cb3b31d41139d60c061bc11e34a85eb`

```dockerfile
```

-	Layers:
	-	`sha256:fcddd5646877550bd2e5da03c1114a9a22944254c23512f0afa018f2a66ef218`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56936c599ed292199d388caf0f8bf293c279703e3bb4f4634596dcc725570175`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:c4fbe3f314da68410ca8e06c1bedc51d16142cf94118e0be94565acf6e424a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30321884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81000ede2b8e1f41f266265c613b5be3553c1459330eab681d9d2d8af95309ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:14:30 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:14:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:36:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:36:13 GMT
USER memcache
# Fri, 10 Jul 2026 17:36:13 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:36:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ecb32a46cdaebd5520f4c291fb16d8978b3ceac68a0c1b720360e5b7732a05`  
		Last Modified: Fri, 10 Jul 2026 17:36:19 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6920eebbd6465413fd521930ef7ec713e7dd8bb12f2a492a2b542f55dd0003`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 144.2 KB (144169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac57af2dba635714a9d34823ccefe608b1885c01b185ee5f7c3ddb9683daa77`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.2 MB (2216979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac9ad20608675641e9d45deb227f49be00beba0b0aaeeda93b61ca00a7f701b`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bea51d099ff373a377354d403c1c6caec3983676d877f157a42eb5fdc260e57`  
		Last Modified: Fri, 10 Jul 2026 17:36:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:43df8b8ff89cda334266914a62a0fe86865fd82ab1d915caa6a9b7db39bb9324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c467814e73602732b2fc2e4e9f8802666162f5c6d19ef01496098b1917cfe517`

```dockerfile
```

-	Layers:
	-	`sha256:5035b7302bdb80002bd180322f915c17fd2c0295912cd1a0d7666f205c6b0fd9`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6977e84810c790b11d131349bec631533c4c15e88103bd3b978688e0e535cc37`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:190d9f4c78cf3df84b5f52bd286a0e6b2a5ac902eaa20098943c91c10b8dd004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28519022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330dab0ce8c4ead8358c4cce30638f24aabac681ad539f5ca03a4c8d4d9b0454`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:23 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:23 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f7fcbe717fb385ce5797b641f36481c7226ccc57baacec4c9ed953d941e9fe`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2ebeaf8ab12ba40996d7c083f491c8c79eb74a677086cc975362813b0ff0a2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 135.4 KB (135387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd259f75dbdbbe95fe80d070f7d009b8426262b933a8767d53a0340893a6a35`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.2 MB (2171066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4008401018b1a49ae64daf7be79b53fc4212e461eb5fa8c86cacfa6dc606af8`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173ce557a35ae3e3418d11f49358d24aa9e8c829227b2aab4d24f4e26b9ab6be`  
		Last Modified: Fri, 10 Jul 2026 17:14:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:3122bfd1cd31c9e28b881338ac3f6488f59f8f94f6424cbed7100f90ce624e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a66e82b1d79489afbb2efbccdbe8dc8f5f1dda1b84fa5bfa369666227dac24d`

```dockerfile
```

-	Layers:
	-	`sha256:9f3b823746f79476d4da80835f98b94a6c027526acb9af8a7354730b6f9a3a02`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e970181770007b830c1905515877e5dc539b5a2083228ea97473f6527701bfc2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a769e25007972a69e1f62f30cff2d76ad19705966d7b9c9bdf359d6d094d10b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32570177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2bef9e414643192eb973764df62ee1f3301a480e2ac0dbe2718f3bd0d56900`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:49 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c642808f5a827b70f86545ca1b2464a3c89863b98bd3475a12c276242fbcf5b0`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568d89539ad03c1ea3882e64f905b2c098256a5c7d22678841ea80cf2e57e2dd`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 153.5 KB (153500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32d3c269b6c846f1808f96fb985e703ec820ad83fd8f9eed322af9b80c407ec`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.3 MB (2266614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cd8446e38d307d67fd2e44df2c74dbd262fcb351571064aeac8f3c75f51b0b`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9987d1b66dc355c45630ad0b715a41a7d1ea863be6ec4ecb5c76bd7835e40b51`  
		Last Modified: Fri, 10 Jul 2026 17:14:56 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:0895998f0097cb19055e6a53685a237ae3fd0cabe2906512f0164f99354b2532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347c7667ea5dd27aeb6b35a334dbc5bd07ed0172c9d6893650718c9ab847c91c`

```dockerfile
```

-	Layers:
	-	`sha256:e17b4e2d86de8b15d2d7ab7f74ab088e87102587af12f739fa859c3bf69cb810`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53ba4dfaafd751cb5d82aed6548307b50b32f1b28717e9689f2e991e071784f6`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 22.3 KB (22348 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:7e222d17e331450df7480a6066fba6005e03d339a1ad8daf5770a6e7b4f5990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33680506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df439ba96a67cf3aa2e269481fb10e67062355e46cc18f34806274015fedad0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:07 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:10 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:10 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6eb8fcc149c415d85db8572b350d8c2d4f035eac7083580dad4122aa3ca650e`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff95beae554c7b0a398c3273ebda27e901f528da8800c5fef2a6e5d76681a34`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 147.5 KB (147515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a274f6f57c59a085a110d739f62fd9727d278f5abc000a30fadeb264387e8c`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.2 MB (2230265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84724e2ceeb61bbbeaf189d864108a1684b26dac9be80533b84dde119bc86dc6`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d020a952ef1dfdf3d54daf3a1462f2653849ee85fe2a8eaab4f41daabb3f55`  
		Last Modified: Fri, 10 Jul 2026 17:14:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:a251d39a8f34399646af42ddb3d363a4c8234bb015a8a0d18c056e3e6ee51dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03932cdc0ead87ac0aa4f32a4d968ab1cff2e0d46e8b247ac3128e4fc6ed488d`

```dockerfile
```

-	Layers:
	-	`sha256:0244f632f6edbbf2b85006266b92e0d8c38e3093bba4d0f678c2e5cf999dbeac`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688221f1ee1cc2191ef41ac6325dc0abe1d7a5a4d59c9c2ea485a38e5eaea09f`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:e7dbbf06b421cacfd5353f3fa18281655429fe01cd411ff05dc7fd78e109e7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36177803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4146e2fdc2454ea7ddcc7ab71f8b522bbf1bd88d5cb813d12718894a0c06809`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:17 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:17 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:17 GMT
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
	-	`sha256:b66ecaa3ad3cf5c455c5905a06a21fb51c3492b295399c0a1ea9131753529f2f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.4 MB (2399529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a96f6abc37a73b9355d681ea10525789ffeba8c28c2d6f72f1e8f5698376e37`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bef6249ea14c55d5328b0f21a78ad428c1cd04bacb1cb039793914eed7de7f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:92b22d622181ae0fffa33da79b80d3eeca499bc83b003f8abb72835489efbf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f46c4a3376b9595ad9e09cd46bbcd53005bcdd03914c9e68a56bce47da724ff`

```dockerfile
```

-	Layers:
	-	`sha256:39c3b8df0acf07474d8a311884a923bdfd163c3051ecbe1775392094b8c17bf8`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f8b42a9d8bcb098408db9815bd57ea2c32beb969db4468646ac871ac01fe135`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; riscv64

```console
$ docker pull memcached@sha256:7e2a66b42c2f2612626608b3c0ebe8d5a057c0acd0d95c9c9e62346c4fee6d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30629798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca63b34a9502da46d2afa7cfa3b634a6832b1ea45f26ed752b33c3a3547e7148`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:24:24 GMT
USER memcache
# Fri, 10 Jul 2026 17:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:24:24 GMT
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
	-	`sha256:303c118971aa98b4934a773eb2cdd632fc291a0e6b80854f2534525e4a7b04d4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.2 MB (2212841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a234fe636a1eb62a17ff0859ef65be1f8fa347a6038334637dfd219dd6d4e4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee4df27136f20c40806ea0c6eed88eaa81ac3b6a9e6c8db18d84a33e72718cc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:cda4d24a3b32ca021aaeb23926498934ee3d4f108b744e7f2b86e02aeaa86b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e7ec0d7197b936f7fefe44c7bf0c0023d2ae6310faaba557d5313c8159d7c7`

```dockerfile
```

-	Layers:
	-	`sha256:46d4889f6044961a15e0985eea59609a92276acab23bf8e3e8c4edbc957d23dc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b028c3eb9bbc01cc9a82cb00bf49ff0782a7253b066f12d241753df7cb4acd1`  
		Last Modified: Fri, 10 Jul 2026 17:25:09 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:914516df11900d8be846a0681cfa6650f7d6934f29b33a8dcde2e052a92448be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32294875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f9690790e80ab82d9a2504a1531ef8683a411ed0fb4062844dfe7910c42b7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4178f467eca367096979f1b38e47fc5cccd6e222cb8c97e7689d21c83234dd8e`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.3 MB (2301454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2782328318d0751bc4693016ee074b6853e51a41fd5f4e3ce7749fdbd792815a`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21d3c915a81a82db20183ce060df30e3b5434234271495e3d9d98724afa58a7`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:fcb197528aebf433f76f05aa4477bcf7ba47e61b4a3115b88d56c96532390614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0efea4103c81157ec2503b093b072f7bf6cd7594583c398cb5b1810d315a38b`

```dockerfile
```

-	Layers:
	-	`sha256:6b83bef3217a85e6bc0d14526ef2255a0d851b0c893c3a59e56ca7b138c402be`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6900bcfbdd733daf137a9e05efdce66dac52f51d3b29ae63357f592ff650f723`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
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
$ docker pull memcached@sha256:4bb63954bc6288fca0a68da0b487d7e65ff0d1c33a2668653c8deda9b4ff5cbe
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
$ docker pull memcached@sha256:0f1b191f83a78be4ace83d6cd6749c72fb5134bb9680cd20d41ef4fab0dbbdd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32209558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bf2cfeea12f98ff916545064e300199e6b92083a44bd363935009c46da11185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:12:00 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:12:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:53 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d538de271cf9cbfcf05a4358cf8c22c1f01cdb639ce14b3dbd2b8628a76a2d1`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897bc473d9c5c2e9a5cb4426845179ffed859e58218cdcccfc0b349f7d9f9e83`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 136.7 KB (136714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3541b9fe07883f94926e279470db4c1b03b09cc82e82112dc2da90906434947`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 2.3 MB (2285911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a013f5a50fce1dae0e3ecc49661b0325bab1ea1be6e5039790fee57a218cbe`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df1acd0ad7ee087bab6c20fa3ab6f1a29e2d1906899f450c2e529b5deae1f82`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:972a34df5cc9871b97f8f6c17b5c4954a8500bee6666f553a21e00495c64ff76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bd0dc1e17f8b9cc178f4f4912473b27cb3b31d41139d60c061bc11e34a85eb`

```dockerfile
```

-	Layers:
	-	`sha256:fcddd5646877550bd2e5da03c1114a9a22944254c23512f0afa018f2a66ef218`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56936c599ed292199d388caf0f8bf293c279703e3bb4f4634596dcc725570175`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:c4fbe3f314da68410ca8e06c1bedc51d16142cf94118e0be94565acf6e424a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30321884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81000ede2b8e1f41f266265c613b5be3553c1459330eab681d9d2d8af95309ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:14:30 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:14:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:36:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:36:13 GMT
USER memcache
# Fri, 10 Jul 2026 17:36:13 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:36:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ecb32a46cdaebd5520f4c291fb16d8978b3ceac68a0c1b720360e5b7732a05`  
		Last Modified: Fri, 10 Jul 2026 17:36:19 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6920eebbd6465413fd521930ef7ec713e7dd8bb12f2a492a2b542f55dd0003`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 144.2 KB (144169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac57af2dba635714a9d34823ccefe608b1885c01b185ee5f7c3ddb9683daa77`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.2 MB (2216979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac9ad20608675641e9d45deb227f49be00beba0b0aaeeda93b61ca00a7f701b`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bea51d099ff373a377354d403c1c6caec3983676d877f157a42eb5fdc260e57`  
		Last Modified: Fri, 10 Jul 2026 17:36:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:43df8b8ff89cda334266914a62a0fe86865fd82ab1d915caa6a9b7db39bb9324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c467814e73602732b2fc2e4e9f8802666162f5c6d19ef01496098b1917cfe517`

```dockerfile
```

-	Layers:
	-	`sha256:5035b7302bdb80002bd180322f915c17fd2c0295912cd1a0d7666f205c6b0fd9`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6977e84810c790b11d131349bec631533c4c15e88103bd3b978688e0e535cc37`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:190d9f4c78cf3df84b5f52bd286a0e6b2a5ac902eaa20098943c91c10b8dd004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28519022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330dab0ce8c4ead8358c4cce30638f24aabac681ad539f5ca03a4c8d4d9b0454`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:23 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:23 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f7fcbe717fb385ce5797b641f36481c7226ccc57baacec4c9ed953d941e9fe`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2ebeaf8ab12ba40996d7c083f491c8c79eb74a677086cc975362813b0ff0a2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 135.4 KB (135387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd259f75dbdbbe95fe80d070f7d009b8426262b933a8767d53a0340893a6a35`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.2 MB (2171066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4008401018b1a49ae64daf7be79b53fc4212e461eb5fa8c86cacfa6dc606af8`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173ce557a35ae3e3418d11f49358d24aa9e8c829227b2aab4d24f4e26b9ab6be`  
		Last Modified: Fri, 10 Jul 2026 17:14:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3122bfd1cd31c9e28b881338ac3f6488f59f8f94f6424cbed7100f90ce624e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a66e82b1d79489afbb2efbccdbe8dc8f5f1dda1b84fa5bfa369666227dac24d`

```dockerfile
```

-	Layers:
	-	`sha256:9f3b823746f79476d4da80835f98b94a6c027526acb9af8a7354730b6f9a3a02`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e970181770007b830c1905515877e5dc539b5a2083228ea97473f6527701bfc2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a769e25007972a69e1f62f30cff2d76ad19705966d7b9c9bdf359d6d094d10b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32570177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2bef9e414643192eb973764df62ee1f3301a480e2ac0dbe2718f3bd0d56900`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:49 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c642808f5a827b70f86545ca1b2464a3c89863b98bd3475a12c276242fbcf5b0`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568d89539ad03c1ea3882e64f905b2c098256a5c7d22678841ea80cf2e57e2dd`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 153.5 KB (153500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32d3c269b6c846f1808f96fb985e703ec820ad83fd8f9eed322af9b80c407ec`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.3 MB (2266614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cd8446e38d307d67fd2e44df2c74dbd262fcb351571064aeac8f3c75f51b0b`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9987d1b66dc355c45630ad0b715a41a7d1ea863be6ec4ecb5c76bd7835e40b51`  
		Last Modified: Fri, 10 Jul 2026 17:14:56 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:0895998f0097cb19055e6a53685a237ae3fd0cabe2906512f0164f99354b2532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347c7667ea5dd27aeb6b35a334dbc5bd07ed0172c9d6893650718c9ab847c91c`

```dockerfile
```

-	Layers:
	-	`sha256:e17b4e2d86de8b15d2d7ab7f74ab088e87102587af12f739fa859c3bf69cb810`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53ba4dfaafd751cb5d82aed6548307b50b32f1b28717e9689f2e991e071784f6`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 22.3 KB (22348 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; 386

```console
$ docker pull memcached@sha256:7e222d17e331450df7480a6066fba6005e03d339a1ad8daf5770a6e7b4f5990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33680506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df439ba96a67cf3aa2e269481fb10e67062355e46cc18f34806274015fedad0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:07 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:10 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:10 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6eb8fcc149c415d85db8572b350d8c2d4f035eac7083580dad4122aa3ca650e`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff95beae554c7b0a398c3273ebda27e901f528da8800c5fef2a6e5d76681a34`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 147.5 KB (147515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a274f6f57c59a085a110d739f62fd9727d278f5abc000a30fadeb264387e8c`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.2 MB (2230265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84724e2ceeb61bbbeaf189d864108a1684b26dac9be80533b84dde119bc86dc6`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d020a952ef1dfdf3d54daf3a1462f2653849ee85fe2a8eaab4f41daabb3f55`  
		Last Modified: Fri, 10 Jul 2026 17:14:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:a251d39a8f34399646af42ddb3d363a4c8234bb015a8a0d18c056e3e6ee51dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03932cdc0ead87ac0aa4f32a4d968ab1cff2e0d46e8b247ac3128e4fc6ed488d`

```dockerfile
```

-	Layers:
	-	`sha256:0244f632f6edbbf2b85006266b92e0d8c38e3093bba4d0f678c2e5cf999dbeac`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688221f1ee1cc2191ef41ac6325dc0abe1d7a5a4d59c9c2ea485a38e5eaea09f`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:e7dbbf06b421cacfd5353f3fa18281655429fe01cd411ff05dc7fd78e109e7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36177803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4146e2fdc2454ea7ddcc7ab71f8b522bbf1bd88d5cb813d12718894a0c06809`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:17 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:17 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:17 GMT
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
	-	`sha256:b66ecaa3ad3cf5c455c5905a06a21fb51c3492b295399c0a1ea9131753529f2f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.4 MB (2399529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a96f6abc37a73b9355d681ea10525789ffeba8c28c2d6f72f1e8f5698376e37`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bef6249ea14c55d5328b0f21a78ad428c1cd04bacb1cb039793914eed7de7f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:92b22d622181ae0fffa33da79b80d3eeca499bc83b003f8abb72835489efbf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f46c4a3376b9595ad9e09cd46bbcd53005bcdd03914c9e68a56bce47da724ff`

```dockerfile
```

-	Layers:
	-	`sha256:39c3b8df0acf07474d8a311884a923bdfd163c3051ecbe1775392094b8c17bf8`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f8b42a9d8bcb098408db9815bd57ea2c32beb969db4468646ac871ac01fe135`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:7e2a66b42c2f2612626608b3c0ebe8d5a057c0acd0d95c9c9e62346c4fee6d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30629798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca63b34a9502da46d2afa7cfa3b634a6832b1ea45f26ed752b33c3a3547e7148`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:24:24 GMT
USER memcache
# Fri, 10 Jul 2026 17:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:24:24 GMT
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
	-	`sha256:303c118971aa98b4934a773eb2cdd632fc291a0e6b80854f2534525e4a7b04d4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.2 MB (2212841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a234fe636a1eb62a17ff0859ef65be1f8fa347a6038334637dfd219dd6d4e4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee4df27136f20c40806ea0c6eed88eaa81ac3b6a9e6c8db18d84a33e72718cc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cda4d24a3b32ca021aaeb23926498934ee3d4f108b744e7f2b86e02aeaa86b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e7ec0d7197b936f7fefe44c7bf0c0023d2ae6310faaba557d5313c8159d7c7`

```dockerfile
```

-	Layers:
	-	`sha256:46d4889f6044961a15e0985eea59609a92276acab23bf8e3e8c4edbc957d23dc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b028c3eb9bbc01cc9a82cb00bf49ff0782a7253b066f12d241753df7cb4acd1`  
		Last Modified: Fri, 10 Jul 2026 17:25:09 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:914516df11900d8be846a0681cfa6650f7d6934f29b33a8dcde2e052a92448be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32294875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f9690790e80ab82d9a2504a1531ef8683a411ed0fb4062844dfe7910c42b7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4178f467eca367096979f1b38e47fc5cccd6e222cb8c97e7689d21c83234dd8e`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.3 MB (2301454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2782328318d0751bc4693016ee074b6853e51a41fd5f4e3ce7749fdbd792815a`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21d3c915a81a82db20183ce060df30e3b5434234271495e3d9d98724afa58a7`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:fcb197528aebf433f76f05aa4477bcf7ba47e61b4a3115b88d56c96532390614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0efea4103c81157ec2503b093b072f7bf6cd7594583c398cb5b1810d315a38b`

```dockerfile
```

-	Layers:
	-	`sha256:6b83bef3217a85e6bc0d14526ef2255a0d851b0c893c3a59e56ca7b138c402be`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6900bcfbdd733daf137a9e05efdce66dac52f51d3b29ae63357f592ff650f723`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6`

```console
$ docker pull memcached@sha256:4bb63954bc6288fca0a68da0b487d7e65ff0d1c33a2668653c8deda9b4ff5cbe
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
$ docker pull memcached@sha256:0f1b191f83a78be4ace83d6cd6749c72fb5134bb9680cd20d41ef4fab0dbbdd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32209558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bf2cfeea12f98ff916545064e300199e6b92083a44bd363935009c46da11185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:12:00 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:12:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:53 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d538de271cf9cbfcf05a4358cf8c22c1f01cdb639ce14b3dbd2b8628a76a2d1`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897bc473d9c5c2e9a5cb4426845179ffed859e58218cdcccfc0b349f7d9f9e83`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 136.7 KB (136714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3541b9fe07883f94926e279470db4c1b03b09cc82e82112dc2da90906434947`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 2.3 MB (2285911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a013f5a50fce1dae0e3ecc49661b0325bab1ea1be6e5039790fee57a218cbe`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df1acd0ad7ee087bab6c20fa3ab6f1a29e2d1906899f450c2e529b5deae1f82`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:972a34df5cc9871b97f8f6c17b5c4954a8500bee6666f553a21e00495c64ff76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bd0dc1e17f8b9cc178f4f4912473b27cb3b31d41139d60c061bc11e34a85eb`

```dockerfile
```

-	Layers:
	-	`sha256:fcddd5646877550bd2e5da03c1114a9a22944254c23512f0afa018f2a66ef218`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56936c599ed292199d388caf0f8bf293c279703e3bb4f4634596dcc725570175`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v5

```console
$ docker pull memcached@sha256:c4fbe3f314da68410ca8e06c1bedc51d16142cf94118e0be94565acf6e424a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30321884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81000ede2b8e1f41f266265c613b5be3553c1459330eab681d9d2d8af95309ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:14:30 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:14:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:36:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:36:13 GMT
USER memcache
# Fri, 10 Jul 2026 17:36:13 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:36:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ecb32a46cdaebd5520f4c291fb16d8978b3ceac68a0c1b720360e5b7732a05`  
		Last Modified: Fri, 10 Jul 2026 17:36:19 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6920eebbd6465413fd521930ef7ec713e7dd8bb12f2a492a2b542f55dd0003`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 144.2 KB (144169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac57af2dba635714a9d34823ccefe608b1885c01b185ee5f7c3ddb9683daa77`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.2 MB (2216979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac9ad20608675641e9d45deb227f49be00beba0b0aaeeda93b61ca00a7f701b`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bea51d099ff373a377354d403c1c6caec3983676d877f157a42eb5fdc260e57`  
		Last Modified: Fri, 10 Jul 2026 17:36:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:43df8b8ff89cda334266914a62a0fe86865fd82ab1d915caa6a9b7db39bb9324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c467814e73602732b2fc2e4e9f8802666162f5c6d19ef01496098b1917cfe517`

```dockerfile
```

-	Layers:
	-	`sha256:5035b7302bdb80002bd180322f915c17fd2c0295912cd1a0d7666f205c6b0fd9`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6977e84810c790b11d131349bec631533c4c15e88103bd3b978688e0e535cc37`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v7

```console
$ docker pull memcached@sha256:190d9f4c78cf3df84b5f52bd286a0e6b2a5ac902eaa20098943c91c10b8dd004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28519022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330dab0ce8c4ead8358c4cce30638f24aabac681ad539f5ca03a4c8d4d9b0454`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:23 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:23 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f7fcbe717fb385ce5797b641f36481c7226ccc57baacec4c9ed953d941e9fe`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2ebeaf8ab12ba40996d7c083f491c8c79eb74a677086cc975362813b0ff0a2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 135.4 KB (135387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd259f75dbdbbe95fe80d070f7d009b8426262b933a8767d53a0340893a6a35`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.2 MB (2171066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4008401018b1a49ae64daf7be79b53fc4212e461eb5fa8c86cacfa6dc606af8`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173ce557a35ae3e3418d11f49358d24aa9e8c829227b2aab4d24f4e26b9ab6be`  
		Last Modified: Fri, 10 Jul 2026 17:14:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:3122bfd1cd31c9e28b881338ac3f6488f59f8f94f6424cbed7100f90ce624e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a66e82b1d79489afbb2efbccdbe8dc8f5f1dda1b84fa5bfa369666227dac24d`

```dockerfile
```

-	Layers:
	-	`sha256:9f3b823746f79476d4da80835f98b94a6c027526acb9af8a7354730b6f9a3a02`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e970181770007b830c1905515877e5dc539b5a2083228ea97473f6527701bfc2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a769e25007972a69e1f62f30cff2d76ad19705966d7b9c9bdf359d6d094d10b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32570177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2bef9e414643192eb973764df62ee1f3301a480e2ac0dbe2718f3bd0d56900`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:49 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c642808f5a827b70f86545ca1b2464a3c89863b98bd3475a12c276242fbcf5b0`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568d89539ad03c1ea3882e64f905b2c098256a5c7d22678841ea80cf2e57e2dd`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 153.5 KB (153500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32d3c269b6c846f1808f96fb985e703ec820ad83fd8f9eed322af9b80c407ec`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.3 MB (2266614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cd8446e38d307d67fd2e44df2c74dbd262fcb351571064aeac8f3c75f51b0b`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9987d1b66dc355c45630ad0b715a41a7d1ea863be6ec4ecb5c76bd7835e40b51`  
		Last Modified: Fri, 10 Jul 2026 17:14:56 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:0895998f0097cb19055e6a53685a237ae3fd0cabe2906512f0164f99354b2532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347c7667ea5dd27aeb6b35a334dbc5bd07ed0172c9d6893650718c9ab847c91c`

```dockerfile
```

-	Layers:
	-	`sha256:e17b4e2d86de8b15d2d7ab7f74ab088e87102587af12f739fa859c3bf69cb810`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53ba4dfaafd751cb5d82aed6548307b50b32f1b28717e9689f2e991e071784f6`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 22.3 KB (22348 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; 386

```console
$ docker pull memcached@sha256:7e222d17e331450df7480a6066fba6005e03d339a1ad8daf5770a6e7b4f5990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33680506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df439ba96a67cf3aa2e269481fb10e67062355e46cc18f34806274015fedad0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:07 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:10 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:10 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6eb8fcc149c415d85db8572b350d8c2d4f035eac7083580dad4122aa3ca650e`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff95beae554c7b0a398c3273ebda27e901f528da8800c5fef2a6e5d76681a34`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 147.5 KB (147515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a274f6f57c59a085a110d739f62fd9727d278f5abc000a30fadeb264387e8c`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.2 MB (2230265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84724e2ceeb61bbbeaf189d864108a1684b26dac9be80533b84dde119bc86dc6`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d020a952ef1dfdf3d54daf3a1462f2653849ee85fe2a8eaab4f41daabb3f55`  
		Last Modified: Fri, 10 Jul 2026 17:14:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:a251d39a8f34399646af42ddb3d363a4c8234bb015a8a0d18c056e3e6ee51dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03932cdc0ead87ac0aa4f32a4d968ab1cff2e0d46e8b247ac3128e4fc6ed488d`

```dockerfile
```

-	Layers:
	-	`sha256:0244f632f6edbbf2b85006266b92e0d8c38e3093bba4d0f678c2e5cf999dbeac`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688221f1ee1cc2191ef41ac6325dc0abe1d7a5a4d59c9c2ea485a38e5eaea09f`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; ppc64le

```console
$ docker pull memcached@sha256:e7dbbf06b421cacfd5353f3fa18281655429fe01cd411ff05dc7fd78e109e7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36177803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4146e2fdc2454ea7ddcc7ab71f8b522bbf1bd88d5cb813d12718894a0c06809`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:17 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:17 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:17 GMT
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
	-	`sha256:b66ecaa3ad3cf5c455c5905a06a21fb51c3492b295399c0a1ea9131753529f2f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.4 MB (2399529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a96f6abc37a73b9355d681ea10525789ffeba8c28c2d6f72f1e8f5698376e37`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bef6249ea14c55d5328b0f21a78ad428c1cd04bacb1cb039793914eed7de7f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:92b22d622181ae0fffa33da79b80d3eeca499bc83b003f8abb72835489efbf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f46c4a3376b9595ad9e09cd46bbcd53005bcdd03914c9e68a56bce47da724ff`

```dockerfile
```

-	Layers:
	-	`sha256:39c3b8df0acf07474d8a311884a923bdfd163c3051ecbe1775392094b8c17bf8`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f8b42a9d8bcb098408db9815bd57ea2c32beb969db4468646ac871ac01fe135`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; riscv64

```console
$ docker pull memcached@sha256:7e2a66b42c2f2612626608b3c0ebe8d5a057c0acd0d95c9c9e62346c4fee6d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30629798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca63b34a9502da46d2afa7cfa3b634a6832b1ea45f26ed752b33c3a3547e7148`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:24:24 GMT
USER memcache
# Fri, 10 Jul 2026 17:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:24:24 GMT
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
	-	`sha256:303c118971aa98b4934a773eb2cdd632fc291a0e6b80854f2534525e4a7b04d4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.2 MB (2212841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a234fe636a1eb62a17ff0859ef65be1f8fa347a6038334637dfd219dd6d4e4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee4df27136f20c40806ea0c6eed88eaa81ac3b6a9e6c8db18d84a33e72718cc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:cda4d24a3b32ca021aaeb23926498934ee3d4f108b744e7f2b86e02aeaa86b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e7ec0d7197b936f7fefe44c7bf0c0023d2ae6310faaba557d5313c8159d7c7`

```dockerfile
```

-	Layers:
	-	`sha256:46d4889f6044961a15e0985eea59609a92276acab23bf8e3e8c4edbc957d23dc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b028c3eb9bbc01cc9a82cb00bf49ff0782a7253b066f12d241753df7cb4acd1`  
		Last Modified: Fri, 10 Jul 2026 17:25:09 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; s390x

```console
$ docker pull memcached@sha256:914516df11900d8be846a0681cfa6650f7d6934f29b33a8dcde2e052a92448be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32294875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f9690790e80ab82d9a2504a1531ef8683a411ed0fb4062844dfe7910c42b7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4178f467eca367096979f1b38e47fc5cccd6e222cb8c97e7689d21c83234dd8e`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.3 MB (2301454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2782328318d0751bc4693016ee074b6853e51a41fd5f4e3ce7749fdbd792815a`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21d3c915a81a82db20183ce060df30e3b5434234271495e3d9d98724afa58a7`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:fcb197528aebf433f76f05aa4477bcf7ba47e61b4a3115b88d56c96532390614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0efea4103c81157ec2503b093b072f7bf6cd7594583c398cb5b1810d315a38b`

```dockerfile
```

-	Layers:
	-	`sha256:6b83bef3217a85e6bc0d14526ef2255a0d851b0c893c3a59e56ca7b138c402be`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6900bcfbdd733daf137a9e05efdce66dac52f51d3b29ae63357f592ff650f723`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
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
$ docker pull memcached@sha256:4bb63954bc6288fca0a68da0b487d7e65ff0d1c33a2668653c8deda9b4ff5cbe
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
$ docker pull memcached@sha256:0f1b191f83a78be4ace83d6cd6749c72fb5134bb9680cd20d41ef4fab0dbbdd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32209558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bf2cfeea12f98ff916545064e300199e6b92083a44bd363935009c46da11185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:12:00 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:12:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:53 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d538de271cf9cbfcf05a4358cf8c22c1f01cdb639ce14b3dbd2b8628a76a2d1`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897bc473d9c5c2e9a5cb4426845179ffed859e58218cdcccfc0b349f7d9f9e83`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 136.7 KB (136714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3541b9fe07883f94926e279470db4c1b03b09cc82e82112dc2da90906434947`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 2.3 MB (2285911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a013f5a50fce1dae0e3ecc49661b0325bab1ea1be6e5039790fee57a218cbe`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df1acd0ad7ee087bab6c20fa3ab6f1a29e2d1906899f450c2e529b5deae1f82`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:972a34df5cc9871b97f8f6c17b5c4954a8500bee6666f553a21e00495c64ff76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bd0dc1e17f8b9cc178f4f4912473b27cb3b31d41139d60c061bc11e34a85eb`

```dockerfile
```

-	Layers:
	-	`sha256:fcddd5646877550bd2e5da03c1114a9a22944254c23512f0afa018f2a66ef218`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56936c599ed292199d388caf0f8bf293c279703e3bb4f4634596dcc725570175`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:c4fbe3f314da68410ca8e06c1bedc51d16142cf94118e0be94565acf6e424a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30321884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81000ede2b8e1f41f266265c613b5be3553c1459330eab681d9d2d8af95309ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:14:30 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:14:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:36:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:36:13 GMT
USER memcache
# Fri, 10 Jul 2026 17:36:13 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:36:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ecb32a46cdaebd5520f4c291fb16d8978b3ceac68a0c1b720360e5b7732a05`  
		Last Modified: Fri, 10 Jul 2026 17:36:19 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6920eebbd6465413fd521930ef7ec713e7dd8bb12f2a492a2b542f55dd0003`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 144.2 KB (144169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac57af2dba635714a9d34823ccefe608b1885c01b185ee5f7c3ddb9683daa77`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.2 MB (2216979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac9ad20608675641e9d45deb227f49be00beba0b0aaeeda93b61ca00a7f701b`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bea51d099ff373a377354d403c1c6caec3983676d877f157a42eb5fdc260e57`  
		Last Modified: Fri, 10 Jul 2026 17:36:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:43df8b8ff89cda334266914a62a0fe86865fd82ab1d915caa6a9b7db39bb9324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c467814e73602732b2fc2e4e9f8802666162f5c6d19ef01496098b1917cfe517`

```dockerfile
```

-	Layers:
	-	`sha256:5035b7302bdb80002bd180322f915c17fd2c0295912cd1a0d7666f205c6b0fd9`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6977e84810c790b11d131349bec631533c4c15e88103bd3b978688e0e535cc37`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:190d9f4c78cf3df84b5f52bd286a0e6b2a5ac902eaa20098943c91c10b8dd004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28519022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330dab0ce8c4ead8358c4cce30638f24aabac681ad539f5ca03a4c8d4d9b0454`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:23 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:23 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f7fcbe717fb385ce5797b641f36481c7226ccc57baacec4c9ed953d941e9fe`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2ebeaf8ab12ba40996d7c083f491c8c79eb74a677086cc975362813b0ff0a2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 135.4 KB (135387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd259f75dbdbbe95fe80d070f7d009b8426262b933a8767d53a0340893a6a35`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.2 MB (2171066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4008401018b1a49ae64daf7be79b53fc4212e461eb5fa8c86cacfa6dc606af8`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173ce557a35ae3e3418d11f49358d24aa9e8c829227b2aab4d24f4e26b9ab6be`  
		Last Modified: Fri, 10 Jul 2026 17:14:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3122bfd1cd31c9e28b881338ac3f6488f59f8f94f6424cbed7100f90ce624e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a66e82b1d79489afbb2efbccdbe8dc8f5f1dda1b84fa5bfa369666227dac24d`

```dockerfile
```

-	Layers:
	-	`sha256:9f3b823746f79476d4da80835f98b94a6c027526acb9af8a7354730b6f9a3a02`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e970181770007b830c1905515877e5dc539b5a2083228ea97473f6527701bfc2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a769e25007972a69e1f62f30cff2d76ad19705966d7b9c9bdf359d6d094d10b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32570177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2bef9e414643192eb973764df62ee1f3301a480e2ac0dbe2718f3bd0d56900`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:49 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c642808f5a827b70f86545ca1b2464a3c89863b98bd3475a12c276242fbcf5b0`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568d89539ad03c1ea3882e64f905b2c098256a5c7d22678841ea80cf2e57e2dd`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 153.5 KB (153500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32d3c269b6c846f1808f96fb985e703ec820ad83fd8f9eed322af9b80c407ec`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.3 MB (2266614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cd8446e38d307d67fd2e44df2c74dbd262fcb351571064aeac8f3c75f51b0b`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9987d1b66dc355c45630ad0b715a41a7d1ea863be6ec4ecb5c76bd7835e40b51`  
		Last Modified: Fri, 10 Jul 2026 17:14:56 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:0895998f0097cb19055e6a53685a237ae3fd0cabe2906512f0164f99354b2532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347c7667ea5dd27aeb6b35a334dbc5bd07ed0172c9d6893650718c9ab847c91c`

```dockerfile
```

-	Layers:
	-	`sha256:e17b4e2d86de8b15d2d7ab7f74ab088e87102587af12f739fa859c3bf69cb810`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53ba4dfaafd751cb5d82aed6548307b50b32f1b28717e9689f2e991e071784f6`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 22.3 KB (22348 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; 386

```console
$ docker pull memcached@sha256:7e222d17e331450df7480a6066fba6005e03d339a1ad8daf5770a6e7b4f5990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33680506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df439ba96a67cf3aa2e269481fb10e67062355e46cc18f34806274015fedad0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:07 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:10 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:10 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6eb8fcc149c415d85db8572b350d8c2d4f035eac7083580dad4122aa3ca650e`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff95beae554c7b0a398c3273ebda27e901f528da8800c5fef2a6e5d76681a34`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 147.5 KB (147515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a274f6f57c59a085a110d739f62fd9727d278f5abc000a30fadeb264387e8c`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.2 MB (2230265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84724e2ceeb61bbbeaf189d864108a1684b26dac9be80533b84dde119bc86dc6`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d020a952ef1dfdf3d54daf3a1462f2653849ee85fe2a8eaab4f41daabb3f55`  
		Last Modified: Fri, 10 Jul 2026 17:14:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:a251d39a8f34399646af42ddb3d363a4c8234bb015a8a0d18c056e3e6ee51dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03932cdc0ead87ac0aa4f32a4d968ab1cff2e0d46e8b247ac3128e4fc6ed488d`

```dockerfile
```

-	Layers:
	-	`sha256:0244f632f6edbbf2b85006266b92e0d8c38e3093bba4d0f678c2e5cf999dbeac`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688221f1ee1cc2191ef41ac6325dc0abe1d7a5a4d59c9c2ea485a38e5eaea09f`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:e7dbbf06b421cacfd5353f3fa18281655429fe01cd411ff05dc7fd78e109e7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36177803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4146e2fdc2454ea7ddcc7ab71f8b522bbf1bd88d5cb813d12718894a0c06809`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:17 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:17 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:17 GMT
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
	-	`sha256:b66ecaa3ad3cf5c455c5905a06a21fb51c3492b295399c0a1ea9131753529f2f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.4 MB (2399529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a96f6abc37a73b9355d681ea10525789ffeba8c28c2d6f72f1e8f5698376e37`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bef6249ea14c55d5328b0f21a78ad428c1cd04bacb1cb039793914eed7de7f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:92b22d622181ae0fffa33da79b80d3eeca499bc83b003f8abb72835489efbf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f46c4a3376b9595ad9e09cd46bbcd53005bcdd03914c9e68a56bce47da724ff`

```dockerfile
```

-	Layers:
	-	`sha256:39c3b8df0acf07474d8a311884a923bdfd163c3051ecbe1775392094b8c17bf8`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f8b42a9d8bcb098408db9815bd57ea2c32beb969db4468646ac871ac01fe135`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:7e2a66b42c2f2612626608b3c0ebe8d5a057c0acd0d95c9c9e62346c4fee6d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30629798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca63b34a9502da46d2afa7cfa3b634a6832b1ea45f26ed752b33c3a3547e7148`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:24:24 GMT
USER memcache
# Fri, 10 Jul 2026 17:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:24:24 GMT
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
	-	`sha256:303c118971aa98b4934a773eb2cdd632fc291a0e6b80854f2534525e4a7b04d4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.2 MB (2212841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a234fe636a1eb62a17ff0859ef65be1f8fa347a6038334637dfd219dd6d4e4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee4df27136f20c40806ea0c6eed88eaa81ac3b6a9e6c8db18d84a33e72718cc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cda4d24a3b32ca021aaeb23926498934ee3d4f108b744e7f2b86e02aeaa86b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e7ec0d7197b936f7fefe44c7bf0c0023d2ae6310faaba557d5313c8159d7c7`

```dockerfile
```

-	Layers:
	-	`sha256:46d4889f6044961a15e0985eea59609a92276acab23bf8e3e8c4edbc957d23dc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b028c3eb9bbc01cc9a82cb00bf49ff0782a7253b066f12d241753df7cb4acd1`  
		Last Modified: Fri, 10 Jul 2026 17:25:09 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:914516df11900d8be846a0681cfa6650f7d6934f29b33a8dcde2e052a92448be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32294875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f9690790e80ab82d9a2504a1531ef8683a411ed0fb4062844dfe7910c42b7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4178f467eca367096979f1b38e47fc5cccd6e222cb8c97e7689d21c83234dd8e`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.3 MB (2301454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2782328318d0751bc4693016ee074b6853e51a41fd5f4e3ce7749fdbd792815a`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21d3c915a81a82db20183ce060df30e3b5434234271495e3d9d98724afa58a7`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:fcb197528aebf433f76f05aa4477bcf7ba47e61b4a3115b88d56c96532390614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0efea4103c81157ec2503b093b072f7bf6cd7594583c398cb5b1810d315a38b`

```dockerfile
```

-	Layers:
	-	`sha256:6b83bef3217a85e6bc0d14526ef2255a0d851b0c893c3a59e56ca7b138c402be`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6900bcfbdd733daf137a9e05efdce66dac52f51d3b29ae63357f592ff650f723`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45`

```console
$ docker pull memcached@sha256:4bb63954bc6288fca0a68da0b487d7e65ff0d1c33a2668653c8deda9b4ff5cbe
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
$ docker pull memcached@sha256:0f1b191f83a78be4ace83d6cd6749c72fb5134bb9680cd20d41ef4fab0dbbdd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32209558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bf2cfeea12f98ff916545064e300199e6b92083a44bd363935009c46da11185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:12:00 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:12:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:53 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d538de271cf9cbfcf05a4358cf8c22c1f01cdb639ce14b3dbd2b8628a76a2d1`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897bc473d9c5c2e9a5cb4426845179ffed859e58218cdcccfc0b349f7d9f9e83`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 136.7 KB (136714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3541b9fe07883f94926e279470db4c1b03b09cc82e82112dc2da90906434947`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 2.3 MB (2285911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a013f5a50fce1dae0e3ecc49661b0325bab1ea1be6e5039790fee57a218cbe`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df1acd0ad7ee087bab6c20fa3ab6f1a29e2d1906899f450c2e529b5deae1f82`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:972a34df5cc9871b97f8f6c17b5c4954a8500bee6666f553a21e00495c64ff76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bd0dc1e17f8b9cc178f4f4912473b27cb3b31d41139d60c061bc11e34a85eb`

```dockerfile
```

-	Layers:
	-	`sha256:fcddd5646877550bd2e5da03c1114a9a22944254c23512f0afa018f2a66ef218`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56936c599ed292199d388caf0f8bf293c279703e3bb4f4634596dcc725570175`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v5

```console
$ docker pull memcached@sha256:c4fbe3f314da68410ca8e06c1bedc51d16142cf94118e0be94565acf6e424a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30321884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81000ede2b8e1f41f266265c613b5be3553c1459330eab681d9d2d8af95309ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:14:30 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:14:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:36:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:36:13 GMT
USER memcache
# Fri, 10 Jul 2026 17:36:13 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:36:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ecb32a46cdaebd5520f4c291fb16d8978b3ceac68a0c1b720360e5b7732a05`  
		Last Modified: Fri, 10 Jul 2026 17:36:19 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6920eebbd6465413fd521930ef7ec713e7dd8bb12f2a492a2b542f55dd0003`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 144.2 KB (144169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac57af2dba635714a9d34823ccefe608b1885c01b185ee5f7c3ddb9683daa77`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.2 MB (2216979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac9ad20608675641e9d45deb227f49be00beba0b0aaeeda93b61ca00a7f701b`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bea51d099ff373a377354d403c1c6caec3983676d877f157a42eb5fdc260e57`  
		Last Modified: Fri, 10 Jul 2026 17:36:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:43df8b8ff89cda334266914a62a0fe86865fd82ab1d915caa6a9b7db39bb9324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c467814e73602732b2fc2e4e9f8802666162f5c6d19ef01496098b1917cfe517`

```dockerfile
```

-	Layers:
	-	`sha256:5035b7302bdb80002bd180322f915c17fd2c0295912cd1a0d7666f205c6b0fd9`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6977e84810c790b11d131349bec631533c4c15e88103bd3b978688e0e535cc37`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v7

```console
$ docker pull memcached@sha256:190d9f4c78cf3df84b5f52bd286a0e6b2a5ac902eaa20098943c91c10b8dd004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28519022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330dab0ce8c4ead8358c4cce30638f24aabac681ad539f5ca03a4c8d4d9b0454`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:23 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:23 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f7fcbe717fb385ce5797b641f36481c7226ccc57baacec4c9ed953d941e9fe`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2ebeaf8ab12ba40996d7c083f491c8c79eb74a677086cc975362813b0ff0a2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 135.4 KB (135387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd259f75dbdbbe95fe80d070f7d009b8426262b933a8767d53a0340893a6a35`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.2 MB (2171066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4008401018b1a49ae64daf7be79b53fc4212e461eb5fa8c86cacfa6dc606af8`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173ce557a35ae3e3418d11f49358d24aa9e8c829227b2aab4d24f4e26b9ab6be`  
		Last Modified: Fri, 10 Jul 2026 17:14:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:3122bfd1cd31c9e28b881338ac3f6488f59f8f94f6424cbed7100f90ce624e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a66e82b1d79489afbb2efbccdbe8dc8f5f1dda1b84fa5bfa369666227dac24d`

```dockerfile
```

-	Layers:
	-	`sha256:9f3b823746f79476d4da80835f98b94a6c027526acb9af8a7354730b6f9a3a02`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e970181770007b830c1905515877e5dc539b5a2083228ea97473f6527701bfc2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a769e25007972a69e1f62f30cff2d76ad19705966d7b9c9bdf359d6d094d10b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32570177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2bef9e414643192eb973764df62ee1f3301a480e2ac0dbe2718f3bd0d56900`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:49 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c642808f5a827b70f86545ca1b2464a3c89863b98bd3475a12c276242fbcf5b0`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568d89539ad03c1ea3882e64f905b2c098256a5c7d22678841ea80cf2e57e2dd`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 153.5 KB (153500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32d3c269b6c846f1808f96fb985e703ec820ad83fd8f9eed322af9b80c407ec`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.3 MB (2266614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cd8446e38d307d67fd2e44df2c74dbd262fcb351571064aeac8f3c75f51b0b`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9987d1b66dc355c45630ad0b715a41a7d1ea863be6ec4ecb5c76bd7835e40b51`  
		Last Modified: Fri, 10 Jul 2026 17:14:56 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:0895998f0097cb19055e6a53685a237ae3fd0cabe2906512f0164f99354b2532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347c7667ea5dd27aeb6b35a334dbc5bd07ed0172c9d6893650718c9ab847c91c`

```dockerfile
```

-	Layers:
	-	`sha256:e17b4e2d86de8b15d2d7ab7f74ab088e87102587af12f739fa859c3bf69cb810`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53ba4dfaafd751cb5d82aed6548307b50b32f1b28717e9689f2e991e071784f6`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 22.3 KB (22348 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; 386

```console
$ docker pull memcached@sha256:7e222d17e331450df7480a6066fba6005e03d339a1ad8daf5770a6e7b4f5990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33680506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df439ba96a67cf3aa2e269481fb10e67062355e46cc18f34806274015fedad0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:07 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:10 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:10 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6eb8fcc149c415d85db8572b350d8c2d4f035eac7083580dad4122aa3ca650e`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff95beae554c7b0a398c3273ebda27e901f528da8800c5fef2a6e5d76681a34`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 147.5 KB (147515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a274f6f57c59a085a110d739f62fd9727d278f5abc000a30fadeb264387e8c`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.2 MB (2230265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84724e2ceeb61bbbeaf189d864108a1684b26dac9be80533b84dde119bc86dc6`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d020a952ef1dfdf3d54daf3a1462f2653849ee85fe2a8eaab4f41daabb3f55`  
		Last Modified: Fri, 10 Jul 2026 17:14:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:a251d39a8f34399646af42ddb3d363a4c8234bb015a8a0d18c056e3e6ee51dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03932cdc0ead87ac0aa4f32a4d968ab1cff2e0d46e8b247ac3128e4fc6ed488d`

```dockerfile
```

-	Layers:
	-	`sha256:0244f632f6edbbf2b85006266b92e0d8c38e3093bba4d0f678c2e5cf999dbeac`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688221f1ee1cc2191ef41ac6325dc0abe1d7a5a4d59c9c2ea485a38e5eaea09f`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; ppc64le

```console
$ docker pull memcached@sha256:e7dbbf06b421cacfd5353f3fa18281655429fe01cd411ff05dc7fd78e109e7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36177803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4146e2fdc2454ea7ddcc7ab71f8b522bbf1bd88d5cb813d12718894a0c06809`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:17 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:17 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:17 GMT
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
	-	`sha256:b66ecaa3ad3cf5c455c5905a06a21fb51c3492b295399c0a1ea9131753529f2f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.4 MB (2399529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a96f6abc37a73b9355d681ea10525789ffeba8c28c2d6f72f1e8f5698376e37`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bef6249ea14c55d5328b0f21a78ad428c1cd04bacb1cb039793914eed7de7f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:92b22d622181ae0fffa33da79b80d3eeca499bc83b003f8abb72835489efbf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f46c4a3376b9595ad9e09cd46bbcd53005bcdd03914c9e68a56bce47da724ff`

```dockerfile
```

-	Layers:
	-	`sha256:39c3b8df0acf07474d8a311884a923bdfd163c3051ecbe1775392094b8c17bf8`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f8b42a9d8bcb098408db9815bd57ea2c32beb969db4468646ac871ac01fe135`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; riscv64

```console
$ docker pull memcached@sha256:7e2a66b42c2f2612626608b3c0ebe8d5a057c0acd0d95c9c9e62346c4fee6d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30629798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca63b34a9502da46d2afa7cfa3b634a6832b1ea45f26ed752b33c3a3547e7148`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:24:24 GMT
USER memcache
# Fri, 10 Jul 2026 17:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:24:24 GMT
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
	-	`sha256:303c118971aa98b4934a773eb2cdd632fc291a0e6b80854f2534525e4a7b04d4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.2 MB (2212841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a234fe636a1eb62a17ff0859ef65be1f8fa347a6038334637dfd219dd6d4e4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee4df27136f20c40806ea0c6eed88eaa81ac3b6a9e6c8db18d84a33e72718cc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:cda4d24a3b32ca021aaeb23926498934ee3d4f108b744e7f2b86e02aeaa86b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e7ec0d7197b936f7fefe44c7bf0c0023d2ae6310faaba557d5313c8159d7c7`

```dockerfile
```

-	Layers:
	-	`sha256:46d4889f6044961a15e0985eea59609a92276acab23bf8e3e8c4edbc957d23dc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b028c3eb9bbc01cc9a82cb00bf49ff0782a7253b066f12d241753df7cb4acd1`  
		Last Modified: Fri, 10 Jul 2026 17:25:09 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; s390x

```console
$ docker pull memcached@sha256:914516df11900d8be846a0681cfa6650f7d6934f29b33a8dcde2e052a92448be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32294875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f9690790e80ab82d9a2504a1531ef8683a411ed0fb4062844dfe7910c42b7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4178f467eca367096979f1b38e47fc5cccd6e222cb8c97e7689d21c83234dd8e`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.3 MB (2301454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2782328318d0751bc4693016ee074b6853e51a41fd5f4e3ce7749fdbd792815a`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21d3c915a81a82db20183ce060df30e3b5434234271495e3d9d98724afa58a7`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:fcb197528aebf433f76f05aa4477bcf7ba47e61b4a3115b88d56c96532390614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0efea4103c81157ec2503b093b072f7bf6cd7594583c398cb5b1810d315a38b`

```dockerfile
```

-	Layers:
	-	`sha256:6b83bef3217a85e6bc0d14526ef2255a0d851b0c893c3a59e56ca7b138c402be`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6900bcfbdd733daf137a9e05efdce66dac52f51d3b29ae63357f592ff650f723`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
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
$ docker pull memcached@sha256:4bb63954bc6288fca0a68da0b487d7e65ff0d1c33a2668653c8deda9b4ff5cbe
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
$ docker pull memcached@sha256:0f1b191f83a78be4ace83d6cd6749c72fb5134bb9680cd20d41ef4fab0dbbdd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32209558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bf2cfeea12f98ff916545064e300199e6b92083a44bd363935009c46da11185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:12:00 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:12:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:53 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d538de271cf9cbfcf05a4358cf8c22c1f01cdb639ce14b3dbd2b8628a76a2d1`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897bc473d9c5c2e9a5cb4426845179ffed859e58218cdcccfc0b349f7d9f9e83`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 136.7 KB (136714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3541b9fe07883f94926e279470db4c1b03b09cc82e82112dc2da90906434947`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 2.3 MB (2285911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a013f5a50fce1dae0e3ecc49661b0325bab1ea1be6e5039790fee57a218cbe`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df1acd0ad7ee087bab6c20fa3ab6f1a29e2d1906899f450c2e529b5deae1f82`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:972a34df5cc9871b97f8f6c17b5c4954a8500bee6666f553a21e00495c64ff76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bd0dc1e17f8b9cc178f4f4912473b27cb3b31d41139d60c061bc11e34a85eb`

```dockerfile
```

-	Layers:
	-	`sha256:fcddd5646877550bd2e5da03c1114a9a22944254c23512f0afa018f2a66ef218`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56936c599ed292199d388caf0f8bf293c279703e3bb4f4634596dcc725570175`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:c4fbe3f314da68410ca8e06c1bedc51d16142cf94118e0be94565acf6e424a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30321884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81000ede2b8e1f41f266265c613b5be3553c1459330eab681d9d2d8af95309ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:14:30 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:14:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:36:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:36:13 GMT
USER memcache
# Fri, 10 Jul 2026 17:36:13 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:36:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ecb32a46cdaebd5520f4c291fb16d8978b3ceac68a0c1b720360e5b7732a05`  
		Last Modified: Fri, 10 Jul 2026 17:36:19 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6920eebbd6465413fd521930ef7ec713e7dd8bb12f2a492a2b542f55dd0003`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 144.2 KB (144169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac57af2dba635714a9d34823ccefe608b1885c01b185ee5f7c3ddb9683daa77`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.2 MB (2216979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac9ad20608675641e9d45deb227f49be00beba0b0aaeeda93b61ca00a7f701b`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bea51d099ff373a377354d403c1c6caec3983676d877f157a42eb5fdc260e57`  
		Last Modified: Fri, 10 Jul 2026 17:36:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:43df8b8ff89cda334266914a62a0fe86865fd82ab1d915caa6a9b7db39bb9324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c467814e73602732b2fc2e4e9f8802666162f5c6d19ef01496098b1917cfe517`

```dockerfile
```

-	Layers:
	-	`sha256:5035b7302bdb80002bd180322f915c17fd2c0295912cd1a0d7666f205c6b0fd9`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6977e84810c790b11d131349bec631533c4c15e88103bd3b978688e0e535cc37`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:190d9f4c78cf3df84b5f52bd286a0e6b2a5ac902eaa20098943c91c10b8dd004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28519022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330dab0ce8c4ead8358c4cce30638f24aabac681ad539f5ca03a4c8d4d9b0454`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:23 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:23 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f7fcbe717fb385ce5797b641f36481c7226ccc57baacec4c9ed953d941e9fe`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2ebeaf8ab12ba40996d7c083f491c8c79eb74a677086cc975362813b0ff0a2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 135.4 KB (135387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd259f75dbdbbe95fe80d070f7d009b8426262b933a8767d53a0340893a6a35`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.2 MB (2171066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4008401018b1a49ae64daf7be79b53fc4212e461eb5fa8c86cacfa6dc606af8`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173ce557a35ae3e3418d11f49358d24aa9e8c829227b2aab4d24f4e26b9ab6be`  
		Last Modified: Fri, 10 Jul 2026 17:14:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3122bfd1cd31c9e28b881338ac3f6488f59f8f94f6424cbed7100f90ce624e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a66e82b1d79489afbb2efbccdbe8dc8f5f1dda1b84fa5bfa369666227dac24d`

```dockerfile
```

-	Layers:
	-	`sha256:9f3b823746f79476d4da80835f98b94a6c027526acb9af8a7354730b6f9a3a02`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e970181770007b830c1905515877e5dc539b5a2083228ea97473f6527701bfc2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a769e25007972a69e1f62f30cff2d76ad19705966d7b9c9bdf359d6d094d10b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32570177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2bef9e414643192eb973764df62ee1f3301a480e2ac0dbe2718f3bd0d56900`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:49 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c642808f5a827b70f86545ca1b2464a3c89863b98bd3475a12c276242fbcf5b0`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568d89539ad03c1ea3882e64f905b2c098256a5c7d22678841ea80cf2e57e2dd`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 153.5 KB (153500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32d3c269b6c846f1808f96fb985e703ec820ad83fd8f9eed322af9b80c407ec`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.3 MB (2266614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cd8446e38d307d67fd2e44df2c74dbd262fcb351571064aeac8f3c75f51b0b`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9987d1b66dc355c45630ad0b715a41a7d1ea863be6ec4ecb5c76bd7835e40b51`  
		Last Modified: Fri, 10 Jul 2026 17:14:56 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:0895998f0097cb19055e6a53685a237ae3fd0cabe2906512f0164f99354b2532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347c7667ea5dd27aeb6b35a334dbc5bd07ed0172c9d6893650718c9ab847c91c`

```dockerfile
```

-	Layers:
	-	`sha256:e17b4e2d86de8b15d2d7ab7f74ab088e87102587af12f739fa859c3bf69cb810`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53ba4dfaafd751cb5d82aed6548307b50b32f1b28717e9689f2e991e071784f6`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 22.3 KB (22348 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; 386

```console
$ docker pull memcached@sha256:7e222d17e331450df7480a6066fba6005e03d339a1ad8daf5770a6e7b4f5990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33680506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df439ba96a67cf3aa2e269481fb10e67062355e46cc18f34806274015fedad0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:07 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:10 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:10 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6eb8fcc149c415d85db8572b350d8c2d4f035eac7083580dad4122aa3ca650e`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff95beae554c7b0a398c3273ebda27e901f528da8800c5fef2a6e5d76681a34`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 147.5 KB (147515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a274f6f57c59a085a110d739f62fd9727d278f5abc000a30fadeb264387e8c`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.2 MB (2230265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84724e2ceeb61bbbeaf189d864108a1684b26dac9be80533b84dde119bc86dc6`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d020a952ef1dfdf3d54daf3a1462f2653849ee85fe2a8eaab4f41daabb3f55`  
		Last Modified: Fri, 10 Jul 2026 17:14:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:a251d39a8f34399646af42ddb3d363a4c8234bb015a8a0d18c056e3e6ee51dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03932cdc0ead87ac0aa4f32a4d968ab1cff2e0d46e8b247ac3128e4fc6ed488d`

```dockerfile
```

-	Layers:
	-	`sha256:0244f632f6edbbf2b85006266b92e0d8c38e3093bba4d0f678c2e5cf999dbeac`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688221f1ee1cc2191ef41ac6325dc0abe1d7a5a4d59c9c2ea485a38e5eaea09f`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:e7dbbf06b421cacfd5353f3fa18281655429fe01cd411ff05dc7fd78e109e7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36177803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4146e2fdc2454ea7ddcc7ab71f8b522bbf1bd88d5cb813d12718894a0c06809`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:17 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:17 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:17 GMT
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
	-	`sha256:b66ecaa3ad3cf5c455c5905a06a21fb51c3492b295399c0a1ea9131753529f2f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.4 MB (2399529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a96f6abc37a73b9355d681ea10525789ffeba8c28c2d6f72f1e8f5698376e37`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bef6249ea14c55d5328b0f21a78ad428c1cd04bacb1cb039793914eed7de7f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:92b22d622181ae0fffa33da79b80d3eeca499bc83b003f8abb72835489efbf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f46c4a3376b9595ad9e09cd46bbcd53005bcdd03914c9e68a56bce47da724ff`

```dockerfile
```

-	Layers:
	-	`sha256:39c3b8df0acf07474d8a311884a923bdfd163c3051ecbe1775392094b8c17bf8`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f8b42a9d8bcb098408db9815bd57ea2c32beb969db4468646ac871ac01fe135`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:7e2a66b42c2f2612626608b3c0ebe8d5a057c0acd0d95c9c9e62346c4fee6d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30629798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca63b34a9502da46d2afa7cfa3b634a6832b1ea45f26ed752b33c3a3547e7148`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:24:24 GMT
USER memcache
# Fri, 10 Jul 2026 17:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:24:24 GMT
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
	-	`sha256:303c118971aa98b4934a773eb2cdd632fc291a0e6b80854f2534525e4a7b04d4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.2 MB (2212841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a234fe636a1eb62a17ff0859ef65be1f8fa347a6038334637dfd219dd6d4e4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee4df27136f20c40806ea0c6eed88eaa81ac3b6a9e6c8db18d84a33e72718cc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cda4d24a3b32ca021aaeb23926498934ee3d4f108b744e7f2b86e02aeaa86b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e7ec0d7197b936f7fefe44c7bf0c0023d2ae6310faaba557d5313c8159d7c7`

```dockerfile
```

-	Layers:
	-	`sha256:46d4889f6044961a15e0985eea59609a92276acab23bf8e3e8c4edbc957d23dc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b028c3eb9bbc01cc9a82cb00bf49ff0782a7253b066f12d241753df7cb4acd1`  
		Last Modified: Fri, 10 Jul 2026 17:25:09 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:914516df11900d8be846a0681cfa6650f7d6934f29b33a8dcde2e052a92448be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32294875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f9690790e80ab82d9a2504a1531ef8683a411ed0fb4062844dfe7910c42b7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4178f467eca367096979f1b38e47fc5cccd6e222cb8c97e7689d21c83234dd8e`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.3 MB (2301454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2782328318d0751bc4693016ee074b6853e51a41fd5f4e3ce7749fdbd792815a`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21d3c915a81a82db20183ce060df30e3b5434234271495e3d9d98724afa58a7`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:fcb197528aebf433f76f05aa4477bcf7ba47e61b4a3115b88d56c96532390614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0efea4103c81157ec2503b093b072f7bf6cd7594583c398cb5b1810d315a38b`

```dockerfile
```

-	Layers:
	-	`sha256:6b83bef3217a85e6bc0d14526ef2255a0d851b0c893c3a59e56ca7b138c402be`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6900bcfbdd733daf137a9e05efdce66dac52f51d3b29ae63357f592ff650f723`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
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
$ docker pull memcached@sha256:4bb63954bc6288fca0a68da0b487d7e65ff0d1c33a2668653c8deda9b4ff5cbe
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
$ docker pull memcached@sha256:0f1b191f83a78be4ace83d6cd6749c72fb5134bb9680cd20d41ef4fab0dbbdd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32209558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bf2cfeea12f98ff916545064e300199e6b92083a44bd363935009c46da11185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:12:00 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:12:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:53 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d538de271cf9cbfcf05a4358cf8c22c1f01cdb639ce14b3dbd2b8628a76a2d1`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897bc473d9c5c2e9a5cb4426845179ffed859e58218cdcccfc0b349f7d9f9e83`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 136.7 KB (136714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3541b9fe07883f94926e279470db4c1b03b09cc82e82112dc2da90906434947`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 2.3 MB (2285911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a013f5a50fce1dae0e3ecc49661b0325bab1ea1be6e5039790fee57a218cbe`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df1acd0ad7ee087bab6c20fa3ab6f1a29e2d1906899f450c2e529b5deae1f82`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:972a34df5cc9871b97f8f6c17b5c4954a8500bee6666f553a21e00495c64ff76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bd0dc1e17f8b9cc178f4f4912473b27cb3b31d41139d60c061bc11e34a85eb`

```dockerfile
```

-	Layers:
	-	`sha256:fcddd5646877550bd2e5da03c1114a9a22944254c23512f0afa018f2a66ef218`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56936c599ed292199d388caf0f8bf293c279703e3bb4f4634596dcc725570175`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:c4fbe3f314da68410ca8e06c1bedc51d16142cf94118e0be94565acf6e424a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30321884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81000ede2b8e1f41f266265c613b5be3553c1459330eab681d9d2d8af95309ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:14:30 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:14:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:36:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:36:13 GMT
USER memcache
# Fri, 10 Jul 2026 17:36:13 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:36:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ecb32a46cdaebd5520f4c291fb16d8978b3ceac68a0c1b720360e5b7732a05`  
		Last Modified: Fri, 10 Jul 2026 17:36:19 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6920eebbd6465413fd521930ef7ec713e7dd8bb12f2a492a2b542f55dd0003`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 144.2 KB (144169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac57af2dba635714a9d34823ccefe608b1885c01b185ee5f7c3ddb9683daa77`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.2 MB (2216979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac9ad20608675641e9d45deb227f49be00beba0b0aaeeda93b61ca00a7f701b`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bea51d099ff373a377354d403c1c6caec3983676d877f157a42eb5fdc260e57`  
		Last Modified: Fri, 10 Jul 2026 17:36:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:43df8b8ff89cda334266914a62a0fe86865fd82ab1d915caa6a9b7db39bb9324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c467814e73602732b2fc2e4e9f8802666162f5c6d19ef01496098b1917cfe517`

```dockerfile
```

-	Layers:
	-	`sha256:5035b7302bdb80002bd180322f915c17fd2c0295912cd1a0d7666f205c6b0fd9`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6977e84810c790b11d131349bec631533c4c15e88103bd3b978688e0e535cc37`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:190d9f4c78cf3df84b5f52bd286a0e6b2a5ac902eaa20098943c91c10b8dd004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28519022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330dab0ce8c4ead8358c4cce30638f24aabac681ad539f5ca03a4c8d4d9b0454`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:23 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:23 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f7fcbe717fb385ce5797b641f36481c7226ccc57baacec4c9ed953d941e9fe`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2ebeaf8ab12ba40996d7c083f491c8c79eb74a677086cc975362813b0ff0a2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 135.4 KB (135387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd259f75dbdbbe95fe80d070f7d009b8426262b933a8767d53a0340893a6a35`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.2 MB (2171066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4008401018b1a49ae64daf7be79b53fc4212e461eb5fa8c86cacfa6dc606af8`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173ce557a35ae3e3418d11f49358d24aa9e8c829227b2aab4d24f4e26b9ab6be`  
		Last Modified: Fri, 10 Jul 2026 17:14:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:3122bfd1cd31c9e28b881338ac3f6488f59f8f94f6424cbed7100f90ce624e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a66e82b1d79489afbb2efbccdbe8dc8f5f1dda1b84fa5bfa369666227dac24d`

```dockerfile
```

-	Layers:
	-	`sha256:9f3b823746f79476d4da80835f98b94a6c027526acb9af8a7354730b6f9a3a02`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e970181770007b830c1905515877e5dc539b5a2083228ea97473f6527701bfc2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a769e25007972a69e1f62f30cff2d76ad19705966d7b9c9bdf359d6d094d10b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32570177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2bef9e414643192eb973764df62ee1f3301a480e2ac0dbe2718f3bd0d56900`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:49 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c642808f5a827b70f86545ca1b2464a3c89863b98bd3475a12c276242fbcf5b0`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568d89539ad03c1ea3882e64f905b2c098256a5c7d22678841ea80cf2e57e2dd`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 153.5 KB (153500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32d3c269b6c846f1808f96fb985e703ec820ad83fd8f9eed322af9b80c407ec`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.3 MB (2266614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cd8446e38d307d67fd2e44df2c74dbd262fcb351571064aeac8f3c75f51b0b`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9987d1b66dc355c45630ad0b715a41a7d1ea863be6ec4ecb5c76bd7835e40b51`  
		Last Modified: Fri, 10 Jul 2026 17:14:56 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:0895998f0097cb19055e6a53685a237ae3fd0cabe2906512f0164f99354b2532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347c7667ea5dd27aeb6b35a334dbc5bd07ed0172c9d6893650718c9ab847c91c`

```dockerfile
```

-	Layers:
	-	`sha256:e17b4e2d86de8b15d2d7ab7f74ab088e87102587af12f739fa859c3bf69cb810`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53ba4dfaafd751cb5d82aed6548307b50b32f1b28717e9689f2e991e071784f6`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 22.3 KB (22348 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:7e222d17e331450df7480a6066fba6005e03d339a1ad8daf5770a6e7b4f5990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33680506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df439ba96a67cf3aa2e269481fb10e67062355e46cc18f34806274015fedad0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:07 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:10 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:10 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6eb8fcc149c415d85db8572b350d8c2d4f035eac7083580dad4122aa3ca650e`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff95beae554c7b0a398c3273ebda27e901f528da8800c5fef2a6e5d76681a34`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 147.5 KB (147515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a274f6f57c59a085a110d739f62fd9727d278f5abc000a30fadeb264387e8c`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.2 MB (2230265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84724e2ceeb61bbbeaf189d864108a1684b26dac9be80533b84dde119bc86dc6`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d020a952ef1dfdf3d54daf3a1462f2653849ee85fe2a8eaab4f41daabb3f55`  
		Last Modified: Fri, 10 Jul 2026 17:14:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:a251d39a8f34399646af42ddb3d363a4c8234bb015a8a0d18c056e3e6ee51dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03932cdc0ead87ac0aa4f32a4d968ab1cff2e0d46e8b247ac3128e4fc6ed488d`

```dockerfile
```

-	Layers:
	-	`sha256:0244f632f6edbbf2b85006266b92e0d8c38e3093bba4d0f678c2e5cf999dbeac`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688221f1ee1cc2191ef41ac6325dc0abe1d7a5a4d59c9c2ea485a38e5eaea09f`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:e7dbbf06b421cacfd5353f3fa18281655429fe01cd411ff05dc7fd78e109e7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36177803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4146e2fdc2454ea7ddcc7ab71f8b522bbf1bd88d5cb813d12718894a0c06809`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:17 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:17 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:17 GMT
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
	-	`sha256:b66ecaa3ad3cf5c455c5905a06a21fb51c3492b295399c0a1ea9131753529f2f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.4 MB (2399529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a96f6abc37a73b9355d681ea10525789ffeba8c28c2d6f72f1e8f5698376e37`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bef6249ea14c55d5328b0f21a78ad428c1cd04bacb1cb039793914eed7de7f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:92b22d622181ae0fffa33da79b80d3eeca499bc83b003f8abb72835489efbf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f46c4a3376b9595ad9e09cd46bbcd53005bcdd03914c9e68a56bce47da724ff`

```dockerfile
```

-	Layers:
	-	`sha256:39c3b8df0acf07474d8a311884a923bdfd163c3051ecbe1775392094b8c17bf8`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f8b42a9d8bcb098408db9815bd57ea2c32beb969db4468646ac871ac01fe135`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; riscv64

```console
$ docker pull memcached@sha256:7e2a66b42c2f2612626608b3c0ebe8d5a057c0acd0d95c9c9e62346c4fee6d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30629798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca63b34a9502da46d2afa7cfa3b634a6832b1ea45f26ed752b33c3a3547e7148`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:24:24 GMT
USER memcache
# Fri, 10 Jul 2026 17:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:24:24 GMT
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
	-	`sha256:303c118971aa98b4934a773eb2cdd632fc291a0e6b80854f2534525e4a7b04d4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.2 MB (2212841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a234fe636a1eb62a17ff0859ef65be1f8fa347a6038334637dfd219dd6d4e4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee4df27136f20c40806ea0c6eed88eaa81ac3b6a9e6c8db18d84a33e72718cc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:cda4d24a3b32ca021aaeb23926498934ee3d4f108b744e7f2b86e02aeaa86b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e7ec0d7197b936f7fefe44c7bf0c0023d2ae6310faaba557d5313c8159d7c7`

```dockerfile
```

-	Layers:
	-	`sha256:46d4889f6044961a15e0985eea59609a92276acab23bf8e3e8c4edbc957d23dc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b028c3eb9bbc01cc9a82cb00bf49ff0782a7253b066f12d241753df7cb4acd1`  
		Last Modified: Fri, 10 Jul 2026 17:25:09 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:914516df11900d8be846a0681cfa6650f7d6934f29b33a8dcde2e052a92448be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32294875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f9690790e80ab82d9a2504a1531ef8683a411ed0fb4062844dfe7910c42b7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4178f467eca367096979f1b38e47fc5cccd6e222cb8c97e7689d21c83234dd8e`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.3 MB (2301454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2782328318d0751bc4693016ee074b6853e51a41fd5f4e3ce7749fdbd792815a`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21d3c915a81a82db20183ce060df30e3b5434234271495e3d9d98724afa58a7`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:fcb197528aebf433f76f05aa4477bcf7ba47e61b4a3115b88d56c96532390614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0efea4103c81157ec2503b093b072f7bf6cd7594583c398cb5b1810d315a38b`

```dockerfile
```

-	Layers:
	-	`sha256:6b83bef3217a85e6bc0d14526ef2255a0d851b0c893c3a59e56ca7b138c402be`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6900bcfbdd733daf137a9e05efdce66dac52f51d3b29ae63357f592ff650f723`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:trixie`

```console
$ docker pull memcached@sha256:4bb63954bc6288fca0a68da0b487d7e65ff0d1c33a2668653c8deda9b4ff5cbe
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
$ docker pull memcached@sha256:0f1b191f83a78be4ace83d6cd6749c72fb5134bb9680cd20d41ef4fab0dbbdd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32209558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bf2cfeea12f98ff916545064e300199e6b92083a44bd363935009c46da11185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:12:00 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:12:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:53 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:53 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d538de271cf9cbfcf05a4358cf8c22c1f01cdb639ce14b3dbd2b8628a76a2d1`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897bc473d9c5c2e9a5cb4426845179ffed859e58218cdcccfc0b349f7d9f9e83`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 136.7 KB (136714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3541b9fe07883f94926e279470db4c1b03b09cc82e82112dc2da90906434947`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 2.3 MB (2285911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a013f5a50fce1dae0e3ecc49661b0325bab1ea1be6e5039790fee57a218cbe`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df1acd0ad7ee087bab6c20fa3ab6f1a29e2d1906899f450c2e529b5deae1f82`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:972a34df5cc9871b97f8f6c17b5c4954a8500bee6666f553a21e00495c64ff76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bd0dc1e17f8b9cc178f4f4912473b27cb3b31d41139d60c061bc11e34a85eb`

```dockerfile
```

-	Layers:
	-	`sha256:fcddd5646877550bd2e5da03c1114a9a22944254c23512f0afa018f2a66ef218`  
		Last Modified: Fri, 10 Jul 2026 17:15:00 GMT  
		Size: 2.0 MB (2008368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56936c599ed292199d388caf0f8bf293c279703e3bb4f4634596dcc725570175`  
		Last Modified: Fri, 10 Jul 2026 17:14:59 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:c4fbe3f314da68410ca8e06c1bedc51d16142cf94118e0be94565acf6e424a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30321884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81000ede2b8e1f41f266265c613b5be3553c1459330eab681d9d2d8af95309ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:14:30 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:14:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:36:13 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:36:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:36:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:36:13 GMT
USER memcache
# Fri, 10 Jul 2026 17:36:13 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:36:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ecb32a46cdaebd5520f4c291fb16d8978b3ceac68a0c1b720360e5b7732a05`  
		Last Modified: Fri, 10 Jul 2026 17:36:19 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6920eebbd6465413fd521930ef7ec713e7dd8bb12f2a492a2b542f55dd0003`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 144.2 KB (144169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac57af2dba635714a9d34823ccefe608b1885c01b185ee5f7c3ddb9683daa77`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.2 MB (2216979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac9ad20608675641e9d45deb227f49be00beba0b0aaeeda93b61ca00a7f701b`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bea51d099ff373a377354d403c1c6caec3983676d877f157a42eb5fdc260e57`  
		Last Modified: Fri, 10 Jul 2026 17:36:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:43df8b8ff89cda334266914a62a0fe86865fd82ab1d915caa6a9b7db39bb9324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c467814e73602732b2fc2e4e9f8802666162f5c6d19ef01496098b1917cfe517`

```dockerfile
```

-	Layers:
	-	`sha256:5035b7302bdb80002bd180322f915c17fd2c0295912cd1a0d7666f205c6b0fd9`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 2.0 MB (2011371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6977e84810c790b11d131349bec631533c4c15e88103bd3b978688e0e535cc37`  
		Last Modified: Fri, 10 Jul 2026 17:36:20 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:190d9f4c78cf3df84b5f52bd286a0e6b2a5ac902eaa20098943c91c10b8dd004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28519022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330dab0ce8c4ead8358c4cce30638f24aabac681ad539f5ca03a4c8d4d9b0454`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:10:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:23 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:23 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f7fcbe717fb385ce5797b641f36481c7226ccc57baacec4c9ed953d941e9fe`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2ebeaf8ab12ba40996d7c083f491c8c79eb74a677086cc975362813b0ff0a2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 135.4 KB (135387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd259f75dbdbbe95fe80d070f7d009b8426262b933a8767d53a0340893a6a35`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.2 MB (2171066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4008401018b1a49ae64daf7be79b53fc4212e461eb5fa8c86cacfa6dc606af8`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 286.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173ce557a35ae3e3418d11f49358d24aa9e8c829227b2aab4d24f4e26b9ab6be`  
		Last Modified: Fri, 10 Jul 2026 17:14:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3122bfd1cd31c9e28b881338ac3f6488f59f8f94f6424cbed7100f90ce624e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a66e82b1d79489afbb2efbccdbe8dc8f5f1dda1b84fa5bfa369666227dac24d`

```dockerfile
```

-	Layers:
	-	`sha256:9f3b823746f79476d4da80835f98b94a6c027526acb9af8a7354730b6f9a3a02`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 2.0 MB (2009828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e970181770007b830c1905515877e5dc539b5a2083228ea97473f6527701bfc2`  
		Last Modified: Fri, 10 Jul 2026 17:14:30 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a769e25007972a69e1f62f30cff2d76ad19705966d7b9c9bdf359d6d094d10b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32570177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2bef9e414643192eb973764df62ee1f3301a480e2ac0dbe2718f3bd0d56900`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:48 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:49 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:49 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c642808f5a827b70f86545ca1b2464a3c89863b98bd3475a12c276242fbcf5b0`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568d89539ad03c1ea3882e64f905b2c098256a5c7d22678841ea80cf2e57e2dd`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 153.5 KB (153500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32d3c269b6c846f1808f96fb985e703ec820ad83fd8f9eed322af9b80c407ec`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.3 MB (2266614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cd8446e38d307d67fd2e44df2c74dbd262fcb351571064aeac8f3c75f51b0b`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9987d1b66dc355c45630ad0b715a41a7d1ea863be6ec4ecb5c76bd7835e40b51`  
		Last Modified: Fri, 10 Jul 2026 17:14:56 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:0895998f0097cb19055e6a53685a237ae3fd0cabe2906512f0164f99354b2532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347c7667ea5dd27aeb6b35a334dbc5bd07ed0172c9d6893650718c9ab847c91c`

```dockerfile
```

-	Layers:
	-	`sha256:e17b4e2d86de8b15d2d7ab7f74ab088e87102587af12f739fa859c3bf69cb810`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 2.0 MB (2008676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53ba4dfaafd751cb5d82aed6548307b50b32f1b28717e9689f2e991e071784f6`  
		Last Modified: Fri, 10 Jul 2026 17:14:55 GMT  
		Size: 22.3 KB (22348 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; 386

```console
$ docker pull memcached@sha256:7e222d17e331450df7480a6066fba6005e03d339a1ad8daf5770a6e7b4f5990a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33680506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df439ba96a67cf3aa2e269481fb10e67062355e46cc18f34806274015fedad0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Fri, 10 Jul 2026 17:11:07 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 10 Jul 2026 17:11:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:14:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:14:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:14:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:14:10 GMT
USER memcache
# Fri, 10 Jul 2026 17:14:10 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:14:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6eb8fcc149c415d85db8572b350d8c2d4f035eac7083580dad4122aa3ca650e`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff95beae554c7b0a398c3273ebda27e901f528da8800c5fef2a6e5d76681a34`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 147.5 KB (147515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a274f6f57c59a085a110d739f62fd9727d278f5abc000a30fadeb264387e8c`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.2 MB (2230265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84724e2ceeb61bbbeaf189d864108a1684b26dac9be80533b84dde119bc86dc6`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d020a952ef1dfdf3d54daf3a1462f2653849ee85fe2a8eaab4f41daabb3f55`  
		Last Modified: Fri, 10 Jul 2026 17:14:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:a251d39a8f34399646af42ddb3d363a4c8234bb015a8a0d18c056e3e6ee51dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03932cdc0ead87ac0aa4f32a4d968ab1cff2e0d46e8b247ac3128e4fc6ed488d`

```dockerfile
```

-	Layers:
	-	`sha256:0244f632f6edbbf2b85006266b92e0d8c38e3093bba4d0f678c2e5cf999dbeac`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 2.0 MB (2005525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688221f1ee1cc2191ef41ac6325dc0abe1d7a5a4d59c9c2ea485a38e5eaea09f`  
		Last Modified: Fri, 10 Jul 2026 17:14:17 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:e7dbbf06b421cacfd5353f3fa18281655429fe01cd411ff05dc7fd78e109e7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36177803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4146e2fdc2454ea7ddcc7ab71f8b522bbf1bd88d5cb813d12718894a0c06809`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:41:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:17 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:17 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:17 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:17 GMT
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
	-	`sha256:b66ecaa3ad3cf5c455c5905a06a21fb51c3492b295399c0a1ea9131753529f2f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.4 MB (2399529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a96f6abc37a73b9355d681ea10525789ffeba8c28c2d6f72f1e8f5698376e37`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bef6249ea14c55d5328b0f21a78ad428c1cd04bacb1cb039793914eed7de7f`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:92b22d622181ae0fffa33da79b80d3eeca499bc83b003f8abb72835489efbf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f46c4a3376b9595ad9e09cd46bbcd53005bcdd03914c9e68a56bce47da724ff`

```dockerfile
```

-	Layers:
	-	`sha256:39c3b8df0acf07474d8a311884a923bdfd163c3051ecbe1775392094b8c17bf8`  
		Last Modified: Fri, 10 Jul 2026 17:13:28 GMT  
		Size: 2.0 MB (2011969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f8b42a9d8bcb098408db9815bd57ea2c32beb969db4468646ac871ac01fe135`  
		Last Modified: Fri, 10 Jul 2026 17:13:27 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:7e2a66b42c2f2612626608b3c0ebe8d5a057c0acd0d95c9c9e62346c4fee6d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30629798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca63b34a9502da46d2afa7cfa3b634a6832b1ea45f26ed752b33c3a3547e7148`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 15:08:29 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 07 Jul 2026 15:09:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:24:24 GMT
USER memcache
# Fri, 10 Jul 2026 17:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:24:24 GMT
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
	-	`sha256:303c118971aa98b4934a773eb2cdd632fc291a0e6b80854f2534525e4a7b04d4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.2 MB (2212841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a234fe636a1eb62a17ff0859ef65be1f8fa347a6038334637dfd219dd6d4e4`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee4df27136f20c40806ea0c6eed88eaa81ac3b6a9e6c8db18d84a33e72718cc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cda4d24a3b32ca021aaeb23926498934ee3d4f108b744e7f2b86e02aeaa86b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e7ec0d7197b936f7fefe44c7bf0c0023d2ae6310faaba557d5313c8159d7c7`

```dockerfile
```

-	Layers:
	-	`sha256:46d4889f6044961a15e0985eea59609a92276acab23bf8e3e8c4edbc957d23dc`  
		Last Modified: Fri, 10 Jul 2026 17:25:10 GMT  
		Size: 2.0 MB (2002332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b028c3eb9bbc01cc9a82cb00bf49ff0782a7253b066f12d241753df7cb4acd1`  
		Last Modified: Fri, 10 Jul 2026 17:25:09 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; s390x

```console
$ docker pull memcached@sha256:914516df11900d8be846a0681cfa6650f7d6934f29b33a8dcde2e052a92448be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32294875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f9690790e80ab82d9a2504a1531ef8683a411ed0fb4062844dfe7910c42b7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Mon, 06 Jul 2026 21:38:22 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Mon, 06 Jul 2026 21:38:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 10 Jul 2026 17:13:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 10 Jul 2026 17:13:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 10 Jul 2026 17:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 17:13:37 GMT
USER memcache
# Fri, 10 Jul 2026 17:13:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 10 Jul 2026 17:13:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd3b24daa3730c2808288ea42c60ca7198480d38cea1e21d7cfe2adc3844917`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2cdc589f233d4d27d14cf3372db956515683acd0fb9cb15af8b293489125d5`  
		Last Modified: Mon, 06 Jul 2026 21:41:52 GMT  
		Size: 140.5 KB (140525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4178f467eca367096979f1b38e47fc5cccd6e222cb8c97e7689d21c83234dd8e`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.3 MB (2301454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2782328318d0751bc4693016ee074b6853e51a41fd5f4e3ce7749fdbd792815a`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21d3c915a81a82db20183ce060df30e3b5434234271495e3d9d98724afa58a7`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:fcb197528aebf433f76f05aa4477bcf7ba47e61b4a3115b88d56c96532390614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0efea4103c81157ec2503b093b072f7bf6cd7594583c398cb5b1810d315a38b`

```dockerfile
```

-	Layers:
	-	`sha256:6b83bef3217a85e6bc0d14526ef2255a0d851b0c893c3a59e56ca7b138c402be`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 2.0 MB (2009805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6900bcfbdd733daf137a9e05efdce66dac52f51d3b29ae63357f592ff650f723`  
		Last Modified: Fri, 10 Jul 2026 17:13:50 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json
