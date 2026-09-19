## `memcached:1-trixie`

```console
$ docker pull memcached@sha256:fad3e675b0781f1fcff2b37037736387976754f3c6b5e6c0ffd87131c6c3edaa
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
$ docker pull memcached@sha256:51e736c67df8491acf63045188615a9f9b5f31c9a06fb30f79fefee7280b746e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32255048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3dd72cdc7b805c0d83c31513ea43d5e9a49876895b2493c99fdde4099b18b54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:55 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Sat, 19 Sep 2026 00:19:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:22:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 00:22:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 00:22:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 00:22:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Sat, 19 Sep 2026 00:22:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:22:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:22:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:22:41 GMT
USER memcache
# Sat, 19 Sep 2026 00:22:41 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 00:22:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e207e48edd4ac3694ccb0e836f35422a719ca10f34312e846ec90d1deeb248fa`  
		Last Modified: Sat, 19 Sep 2026 00:22:47 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb11f34b13187f9c2050873e6f7686c3a5e662d2f71fd1a8ddebf2f7b44e638`  
		Last Modified: Sat, 19 Sep 2026 00:22:47 GMT  
		Size: 136.8 KB (136758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a63bc2b26be41608434668ac089e307bb89636791773e880855ac3ebfa65760`  
		Last Modified: Sat, 19 Sep 2026 00:22:47 GMT  
		Size: 2.3 MB (2286360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ef7f3c4d71a728d41eba3b157082518c0f0b03cd2aa798356a24ff781c3500`  
		Last Modified: Sat, 19 Sep 2026 00:22:47 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62686ae71f4941763173ead9c223abd1b495aab15fb67a82922580fe7d33a387`  
		Last Modified: Sat, 19 Sep 2026 00:22:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:0b7cd7fd06a5e330815c9ddb34e8caae8f4a2ec213a46d74ef4562d8e924fd86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7495e4756cdc82bfe565b7533928363121c55e7b4e6cde7a25edd84a290f82`

```dockerfile
```

-	Layers:
	-	`sha256:a746483f7987c9f8a664fe0d125a52635acc2342d5849edf9b5e58430f12c3d2`  
		Last Modified: Sat, 19 Sep 2026 00:22:47 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d37a953ef9ec23672ff67532315bec72f61232c1b402a8a6b758b3494506d78`  
		Last Modified: Sat, 19 Sep 2026 00:22:47 GMT  
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
$ docker pull memcached@sha256:59396344d3fd3d7a274810a3151df304668ec1dc86f32f7591710c8d26aacff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28557488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592428c6a87bcb6f1b629a8a859e803f51e38fd9313080a989cfdaa4c3d210ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:19:58 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Sat, 19 Sep 2026 00:20:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:23:08 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 00:23:08 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 00:23:08 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 00:23:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Sat, 19 Sep 2026 00:23:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:23:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:23:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:23:08 GMT
USER memcache
# Sat, 19 Sep 2026 00:23:08 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 00:23:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f651c126f9a9ba047d45c23c13303c8112c0ad676a307ac2f495d5d98d1811ea`  
		Last Modified: Sat, 19 Sep 2026 00:23:15 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243ee651b3c9eeb1c579ca8e7800139d5ab3a1e59807d6009d46b454e6999b59`  
		Last Modified: Sat, 19 Sep 2026 00:23:15 GMT  
		Size: 135.4 KB (135418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef15b2ee5e8168b4ac1339efc8c445a7b6752e426cd2ebe42c6cd6fde7733855`  
		Last Modified: Sat, 19 Sep 2026 00:23:15 GMT  
		Size: 2.2 MB (2171633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2124129a8e2c9994c8fb5ccb66b7aefa42853cf8d2212ceb4343aed963798650`  
		Last Modified: Sat, 19 Sep 2026 00:23:15 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c579c839391dd3665823dfcbc5890bf312f217c9d71926296ebc28be1b68e2fe`  
		Last Modified: Sat, 19 Sep 2026 00:23:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:04ee68af46a5b21a5ada811d729590630ee9624792ba29eceb7d67868e7b6119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb8d5bc97479b4d0f5172b74bfac2250b7af81a8571b14d53c5214ceabdead80`

```dockerfile
```

-	Layers:
	-	`sha256:609b44cbcad85b1f25e5feee7b75690eda2f11d340b4537c8c930425cd62ddac`  
		Last Modified: Sat, 19 Sep 2026 00:23:15 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f84b3f27c518d2d1cb6c6836c0b820b8f4ad2914dab0f019e532e882f6ff6f50`  
		Last Modified: Sat, 19 Sep 2026 00:23:15 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:5ef41378e0c87e51ed5eff0f934023fd2062fa2f225dd3de4c9381944f77f8fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32611636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3153f11223f8579561968509ce56194ae9cc0647f6a3d347f4649e42e8d59277`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:20:43 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Sat, 19 Sep 2026 00:20:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:23:46 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 00:23:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 00:23:46 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 00:23:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Sat, 19 Sep 2026 00:23:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:23:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:23:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:23:46 GMT
USER memcache
# Sat, 19 Sep 2026 00:23:46 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 00:23:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab9bcc5d16cab38ceffdf1559b8d4fb66218cb6203ac9cf10ff9209c40fed4b`  
		Last Modified: Sat, 19 Sep 2026 00:23:52 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465ea25fd2cbe1d09cb5e9cefd276cb35a18d39659bcb2712a43836030982639`  
		Last Modified: Sat, 19 Sep 2026 00:23:52 GMT  
		Size: 153.6 KB (153579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90f45b3dd878431f3518b60a04dab1b6517334884fb3286ea543882dbfb1998`  
		Last Modified: Sat, 19 Sep 2026 00:23:52 GMT  
		Size: 2.3 MB (2266857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5c746f90d3e0a9ba7006942cbadb3ab4fba96d9b91b7843036111aecde5ed0`  
		Last Modified: Sat, 19 Sep 2026 00:23:53 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fa6f7e5e317d8dd76db17be6e5792a9941608e3e31c126fa537df327ae8e6f`  
		Last Modified: Sat, 19 Sep 2026 00:23:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:404d32c0dfa2c1627d99bfa9d754149c7688ec1346f70ca874527db7643ec12e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103fd50995f531a54841fc37258534dc598c70dfa52b25256e4671d57e79f76b`

```dockerfile
```

-	Layers:
	-	`sha256:7360f4cfe547f9de849ec39778d64e8fd9fd01396063229239e74f9bc62bb873`  
		Last Modified: Sat, 19 Sep 2026 00:23:53 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53f961687fd92356f64eea1d0f0c160f0d67d14c46899e652812d0e94ac069df`  
		Last Modified: Sat, 19 Sep 2026 00:23:53 GMT  
		Size: 22.3 KB (22349 bytes)  
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
$ docker pull memcached@sha256:4abbf9f32ae3a963d8b84a92b05b3b1062ed06a6f4570d365248cc5995553ef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36213020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7596abe144cbdf09b633dcdf2d9db3d7a749522b95e397f9fcfdbd8ed8d4e0ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:26:56 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Sat, 19 Sep 2026 00:27:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:31:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 19 Sep 2026 00:31:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 19 Sep 2026 00:31:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 19 Sep 2026 00:31:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Sat, 19 Sep 2026 00:31:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:31:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:31:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:31:42 GMT
USER memcache
# Sat, 19 Sep 2026 00:31:42 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 19 Sep 2026 00:31:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f988ca56c3a1ec4093a151697885e34cace338c0f1f5843149f023c5c3b48d`  
		Last Modified: Sat, 19 Sep 2026 00:31:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d58270f29e54e0e15f2c822939458986fbda2ea0a72879d6503b9ba750e7ef5`  
		Last Modified: Sat, 19 Sep 2026 00:31:54 GMT  
		Size: 170.4 KB (170434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8066754e4bd39e93e7b84a9a4100ea3bb1a8fadf7507684780a3d908cee35ad9`  
		Last Modified: Sat, 19 Sep 2026 00:31:55 GMT  
		Size: 2.4 MB (2399840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10ffd2c74219dc70669ed4d2a6abe375f5ced9367c4b466886188937d7a55f79`  
		Last Modified: Sat, 19 Sep 2026 00:31:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21212d41cc591d8ce0a5ec72c7dbaaf5558e6d8f352e3c67a9a0b25add572b87`  
		Last Modified: Sat, 19 Sep 2026 00:31:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:82df25f65c6fa8b9fd8acd7e4862953a00c132731eea69019ae56f0288ee5a9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e453bd88911dbd4638714c73c3a3aab298bc6b961535bbc853307345c61439e1`

```dockerfile
```

-	Layers:
	-	`sha256:d618ac420fbb0f7d4a73a5463683bf255cae430ef94624f2608e54766cac28c7`  
		Last Modified: Sat, 19 Sep 2026 00:31:55 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad1339ba6571028a8121310826e1a95e971028165577b188423337a0eb2e5ffa`  
		Last Modified: Sat, 19 Sep 2026 00:31:54 GMT  
		Size: 22.2 KB (22227 bytes)  
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
