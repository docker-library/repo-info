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
$ docker pull memcached@sha256:a395a1bcf5e0e2b0fa4a0142e12b4e24a2320ba4b7c6ffa8655a1a86e8f29dee
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
$ docker pull memcached@sha256:b09d8056beefa72d8eada019a3f1fdc0670e47b97351db2b33685527e7e1b193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32280777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7429accb3c98adafd643261acc1fb1511d1d1b6ccb3246b9f40689dfbaf4f682`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:05 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f59709ac522354942fd5d8336e87aac813474966fc5dcf9baf2bfe6428e2cc1`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe416a42ea0fa3e6c8e18211fa75d40c32b76d8aaab80436e6835711fe8c7202`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 136.7 KB (136738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f5b41d8085c45639d9e07268d3270d546ae07c5edd37a2dcbc7f56875fb8f9`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.3 MB (2286395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95840eb2dffa836786a2d402531a223d5ed5e417b1b3a61bb8bf350b351fa07c`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65e582d750a7a405967d6eedf15bfd5ec589fe621b170d25a7c9e7d4febf28d`  
		Last Modified: Thu, 05 Nov 2026 07:20:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:6a9149ab0669b6bbad0120c257d4d56c2db19fc8dbd063d1599d0289f2033c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac9f6108ca7cf1942dd40448b1bf3caf90d5251efc1cbbdeb4d2e1ecdbbced6`

```dockerfile
```

-	Layers:
	-	`sha256:e7f04e782a521af9b744a8d7a0783507384d2b54a360f070ca3af3c0b7ae8381`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:537700077b3750e37d8de6264b05b233fd9ddc40348a6eef06035e760d328d2d`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:d927435e55cc7a4271f7964cef0aa6029ba65115aebce1a8715c5a8f326b8100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30382679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad07e25e1c5de259a8d635a2529bc87489a39bb732daadb1fd16222e95fa72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:21 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:44 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f80434370c6d6ab5e03c0b78d5cdba2f5bf99b7b803ea8f57ddb49c1cfdb91`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1f81a3e6e8ee403e1c379f6c4d12f7f37d4ebc9d7cba65cedddb9ebd1c033c`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 144.2 KB (144205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b757afb023255818f1679772ef6af4ea378b5cd304ef1f76d01b644ef3c722`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.2 MB (2217349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdfc21754247d72d569005aa49f6a0c8d16000bc6669523110bf42a36babda8`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455ba4cd950f06abaa37bbbb3e5c472fba9163b5fa0d9cf5893dc2302a4ced95`  
		Last Modified: Thu, 05 Nov 2026 07:17:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:0e86d2647a02754e5125e88f2289978ec08e03b54d2cc16a546ad6afd9ae1d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6252d2ea2287dedc5ae2b88efdda6dbaed462364309b2a18ffe9adfef6fb3f5`

```dockerfile
```

-	Layers:
	-	`sha256:9d2ef246bef6f5f3501aa1fed6cf7eec591ad9eb195c702f075f851b24cec730`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d4bd1332de18173219995444bfd1a44dcbbecc2673a67a915863e6c371f2f0e`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:40954f2e6d2de2d20332fca63b96fcca77c21dfb8f52cd13f9be0bf94c92d014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28581444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb9f1ee51a7f9a06c2977be71e6324d9340dadeaee287682788a47cf129d54d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:18:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:21:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:21:25 GMT
USER memcache
# Thu, 05 Nov 2026 07:21:25 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:21:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa607dc202d742554fbca912173ca7c52435649286586406488665bcd214e5f`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b249ef119581b39ee16cd534b94b7b693485c832086995710993192f533bb5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 135.4 KB (135393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432e553e19db762ae4453b4637cb5707f9a088e3a543bdb7f5154ca099a31d2`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 2.2 MB (2171624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea25d8c2f7331ace06740202126242c8c1c6b1361a83b03ed7a2a0720d6839eb`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be282f4e38e25ce564d8555eae6a6fdfc03ac38c6457ec6bb23aaeb440de07a`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:275a220ae23abbed756419df367cab4740030bff8721465e81ebee52191c3b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120588f89a2dc8e0c243151dd8b7c9b27f14a74759292788dd11e2e4051621ba`

```dockerfile
```

-	Layers:
	-	`sha256:9645f04369d35851eb7ebc06d9b1438172df776d1407c063aa0ff959a45a1057`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39147cc4290ffc8c1ac49b1d4a8a825a461ac8c0e4cd8da27f151ec98e9192e5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d37d9f141845d208688b347704148fe8c0269386180197f02df02fe7ff6aa8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15dd487cd49428dbe61a263d3ad4df729a0fcc2e71d259bd3716c112a38956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:19 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:23 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:23 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49749bbca8c54ece169a63a50bd44188604eb744779e9c6a59c9668ee40603b`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb188c8ca8e350704d799919dd52f265401daa0e30c1c8c71af17cb678d00c72`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 153.5 KB (153542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b7fa681140d8e5c9cacbf0f1407cefdbc47adbc193ac8f3da6fac9eed5c5`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.3 MB (2266876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5898a0e025521f5d01f1c4f59bc5fa2141ce72cbcb5b8fec6a4f28d72223397f`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e277933109fcef09b52e7ff2d2f0b01b7523db507efef35c7f2ad6acef3dae0`  
		Last Modified: Thu, 05 Nov 2026 07:20:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:65be82ce19bef1808704a6436925cca7650e822bb06b0cdbf5b5ab7a204eb9ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255c054e753da8928856917107b759cce96bce5e4e21d8d0939ea3a275fe3a79`

```dockerfile
```

-	Layers:
	-	`sha256:2fe57407f244d3b0e5676d0b8590016acc7af5e4ab451c530dcd1088160c05ac`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ec8b663f5686539d7a4d441af52f312b57598244cc908a7fadd4d1b2286a8c`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:8c354712fdc002149b1dfec00efef6ed93b23926d4be3cb9ec34f212a24474fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33751081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2811a32e110cfac2c43b7e606c0964b327d5e760b5b6ad1751d68d4f315efc87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:49 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:49 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897af33699c937368d898d331a073893837697f25aa2ee300773c4076a0e0963`  
		Last Modified: Thu, 05 Nov 2026 07:17:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c153beb0c28113dfed58ee882e8a9ad057b51f7f07af172d9c9024e228652311`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 147.6 KB (147562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fbe6636116d68358c6a5ad6333e1b90cfc61ff49cfbfc895b4dfe9357dc6be`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.2 MB (2231247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be59883fde6704085f0318c5d2d5635ed5d6a5db39c64b616fcbb4534409fd28`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21aca5aa44854f42e8e996a6d7b2cebe4b21ea00d23ad4ccff069507b2f64aae`  
		Last Modified: Thu, 05 Nov 2026 07:17:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:328e5fcb1eb4d6ccb7299bd7feeccfc33cbd81e6b28fe399da9a5a06bd74f31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f90dc7d65445ecc3b564213856fca0ba921b9025eddd0fc3bac7ba4bb5c6668`

```dockerfile
```

-	Layers:
	-	`sha256:e5660e6bf8462963ca0b8456baa55698169bc57d3d056f13cdb2940617ad4e82`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f6e118825aab04cff2f29f8b0243d9723878a2b4ae31e597e77c31794c7b1fe`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:3ea8455d0258881f29f2c18ab7b2a75a8b9f4d3d51b8a9775a7442d0e61dff1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36829374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32751ee77730d0c966d9aabd831eea60e8c7bb058b0abb136ded3f9d7b4b9aeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:26:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:50:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:50:48 GMT
USER memcache
# Thu, 05 Nov 2026 07:50:48 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:50:48 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad79880010b426b3e87ea908d773a76c8404eeaebc98f13bedd948931341aed8`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35794a16da4fbb9cad55805ee7f2a01ecc52aab7440493c93ca5d96ee01f11b0`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 170.4 KB (170402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4086cbf68d82ca027eb1f39aea32d1e58019311d2dc6336c39bc2351ed8f97e6`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 3.0 MB (2989811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250339d42def0f8a03cd8ff0a19bc1c4b8d3a5ae1f4056cd43012669a230a16b`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a76e0cec9c36e6c2cccfdbfdfa12c325104603d9b560400a9c60d8d7f00cca2`  
		Last Modified: Thu, 05 Nov 2026 07:51:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:6653a4b926bf3e2f644b05af7e18c06d8371ec73622e42d205dcc0e0e8c4ff29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891aa44d54e6ee9fac72066779b5a5bd74615ebf9f5c2a2308cc748e7d57f502`

```dockerfile
```

-	Layers:
	-	`sha256:fdd57b75bb6a0357843f4e2b6f4a007efd37db43702a3bc94e7bd57b5774f8f2`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc7cc43aee22466291b8ad8d92a6b701f4d800153ebad72a88843b0e0c79443`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; riscv64

```console
$ docker pull memcached@sha256:e45f1f7e40d9442fd61e3afcbc7711d993994e4e2cd2e7ac5967a799b1c8ecf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30694152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ccc4d122be45d7746b2a13ddfe72a37fcdf2851b765cf14ecbebd76d868f33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:42:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 11:43:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 11:57:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 11:57:12 GMT
USER memcache
# Thu, 05 Nov 2026 11:57:12 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 11:57:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4e2c560a4e6fbd4faeba39786948501e4098d7de4ec8f0d2689fd697a0de3f`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b3c53ed9ccd2a94f4c0377152b3f9e67582b0a5680887c2b073f944c6fbf04`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 133.1 KB (133122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e1207719b823f806678bb9300f0416007fd720211ffe3db5668ac4cdac85f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.2 MB (2213334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df294386699007bd47d1c015d2c7d039929d83ae83695584fb4aecbcf1982db`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b8c61d81801921c80454e0eeb14e691ba809266de06c4d02a034711421d57f`  
		Last Modified: Thu, 05 Nov 2026 11:58:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:3fb8ee7b75a894301c9b94521e0f03e95c06bdd2c61948bbd7d313e365be7937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:211761d90fe530ce3ec20364190033c339a87cb1d5d9372144ae62c9b5993aea`

```dockerfile
```

-	Layers:
	-	`sha256:ff0864b4ac18d4f64077f1dbf836240462c4694976978b98961e2f9459b8d3f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29b33b082ee4c7fb6bdc1dafa09f4a980928879f925fdba87eb52226692fadab`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:120591cbb1cddf6d4d0f1488bed5baba7097147f398bcaa78c85424265db9a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32367588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3df2df743b4f58fe6dfc66dd1525a62e4770655e1f0fae6ac55339b59fb5ee5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 09:16:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 09:16:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 09:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 09:19:45 GMT
USER memcache
# Thu, 05 Nov 2026 09:19:45 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 09:19:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea4474c25254e742cd463f5e36abdf7bef82459bbed9a2e51b1bc72f6f8a550`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24dbd1a440ce097dc597de0a62369bb003fd72049353e8500317fad988516397`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 140.6 KB (140560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38e355a1ecd9159bb5d5b3f38d992079607cbae5a4e28106f486110b3ac95a8`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.3 MB (2301401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8600a708b640ea89e806270702e22a2529fa3c6c477531979ee1941c3541f6`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0123612f72a4c2ec69f2e155b1e9644f866f750c6d72d5da043d379e83aeece`  
		Last Modified: Thu, 05 Nov 2026 09:19:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:db1c1a725bf8252033f12233790b415f5dfad7f925135af7c6fcf0062f2a584e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7327e5f49237a141abc786c74694708e13f89a1d0b8f10801f2942695a4d0c`

```dockerfile
```

-	Layers:
	-	`sha256:fd54b26407096245a9a1a47c90cb8f0c71e08848cefd6b43da022b2a8bea855d`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3209868ba1c2f16c58eb46bde310156c0d2677d439a70d2cfcc57bc908e809b7`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:6a089e37cbb8acd75c80c6c0667fe57ec54db68782fb1b3afb1d0eb265e50070
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
$ docker pull memcached@sha256:9057793717e87e054636eaf06cf8ec2792a3ad164ad9e8bcae1e90241ea73fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5eba4fb025850bd1df258f435078ef997189beef8f412662adfbb34f2a9212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:46:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 22:46:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 22:49:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:49:34 GMT
USER memcache
# Wed, 21 Oct 2026 22:49:34 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 22:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e70e4bd8f1f3d5ea44e6a1ddcc95274ad4729e4de9ceda4c5a97400d65bae5`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a156def0c0fa56c7626495682fc7eeee082def10e8b2db69c989ff7c7cb1438d`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 106.1 KB (106085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc88b49aeeb094738da98e5205a2623e1df8d96c8789b1028b08c0f018488a0`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 2.0 MB (1971716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1d13955f5ed4a4c30aa3078f7c9eeb1cd070e449727f0d83cd0bb5c8460815`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a07806802fe4959e44969d2de7d461bbd9b52b7931b947d350dd082539d63`  
		Last Modified: Wed, 21 Oct 2026 22:49:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b61d0547032cc30541432f5ac6291e641910e0dec6a418a6c2ea8fa4900f7fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c6ca8c52367ff2be20af54dadee796968d1d4444b8e012f03d85ec3ac8c298`

```dockerfile
```

-	Layers:
	-	`sha256:36891509f6d31e487d9f458ebf7759b7e93c9985a49198a34aea92f735a8380a`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e306fe35cdb2574563d8869211071e8e0696133bd5f5bf627b690cfa6de7e0d1`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:0c6b9fa9dffbcb40ea942fa5ba6a4a183652671496f455b5fbe2c8b47f51c1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5581970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ccf018f1c03dbdd208b5bb0efd70c9c0ea4c1d1e6083fead0d80be0fbb65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:14:25 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:14:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:17:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:17:29 GMT
USER memcache
# Wed, 21 Oct 2026 23:17:29 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:17:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68195c37b284f78ce9c47ed39422c83429bf8dcf6e746ea5feb6bbb616047c84`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8169f79072d0f0706633797d50f895072c77a08d4fd01e1642521da2184417e3`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 102.6 KB (102642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f318ae2e3cb5e365fec3847cd1ffd9e6a0fc0b5ebb04dcad8fc7241308f67c`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 1.9 MB (1919687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05832fed580324b8d575dee1b5ad17d126e87e59644be64726d7906ea1757a4`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ace68499ce7a80dba420f19589ec3e7a1fd785d2cfe4a4f1461320991149e53`  
		Last Modified: Wed, 21 Oct 2026 23:17:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5434a3fdca413469f9173c8953c679bdd52edf28d12237d988563e49e618c18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f930504ace3729e9def0ba000e85580dc0e32948914548d1462a8c9c4ca34a3`

```dockerfile
```

-	Layers:
	-	`sha256:5badc53eba059b3e3accba31d3d9b5ee29aec66512171fd67ba1b842b8d64707`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 20.5 KB (20466 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:aa7ae3ba559ea809acb9823081e505ccd5283a0fda1096337d05c7bda079b089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d63aecc8867e28617473dbbddbd621bda73506c10415c39bb29dc149d0e5b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:31 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:17:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:20:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:28 GMT
USER memcache
# Wed, 21 Oct 2026 23:20:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:20:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1846c42df8aca15ae481f3b25bea3c4128e2d6d8fd5a2367eb24e410009b67e`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322a46f316ded9c44b6e8a333ec214ec0fc5fd8dc5ad5ea2999f6c925d74b652`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 92.4 KB (92364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b16facb2a59a8ef627a79f6cdc4144e884dd60efd34bc148cc0a84bc8d0ac0f`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 1.9 MB (1879166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7138cd10e7b9e4e533bb4137ae2b67db4b3cb6c413aeeee17fa3c3612da770`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d47b9d2e07c02d6578a5d9ed86d7dba09756f3dfd2df95d66fc69266e340b03`  
		Last Modified: Wed, 21 Oct 2026 23:20:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:47741c65ed1a3e52394501696187c4bc766c5f6b2d935ac1269c499940a18706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4eaeede9b2735bd010a5cfaed0533733ec938489e99406d587bc0f54f7383b9`

```dockerfile
```

-	Layers:
	-	`sha256:bd6f3363d1ce0c9fd0893ec4a07f65d8ed17176c16a493674168d07b67664cf6`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d750e5d04f934a7e700c96c7fe5dd7e815b5c10a14690247a16703019ed7bf1`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:e09dcc0bc98221ed468081adaa4a78c61d2161f475b1aa0cd282e18573a8ede7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defdcf9518f8b6888f59edc0def29850b688bef32db5ccf3390b5a18128abdee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:56 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:57 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:45 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617bded82bb6ae44db306d2e2a13f2bb37f25543935c716a36b32184c682886d`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c29514be041e3f74ffd8cff4eaf12fd9edd6ca1239b69ddc9551abb43618239`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf45e1e3a6062c2e0742d88c3c70d9fe819b458818bbd00389e29d325de56376`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 1.9 MB (1948985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b93bb74be2e3b89290de7700318062984d7b5b29aeb3f20ca5cc2ca205b0427`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb55bb80afaa1a5a1d66dff646c9cee9ff7e6ef28a02528613af3fd68f168c16`  
		Last Modified: Wed, 21 Oct 2026 23:15:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:1377acc5441cfb25433b073c85f8710eeeb363037d21806c6f8d5464dc7f2762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7a9c92ec42a3d4f460a4badf5bf3dc7d7ec3e889f96c62e0d0b23531295e75`

```dockerfile
```

-	Layers:
	-	`sha256:69f77a1a233632e1f5ee2b0c788a4c1fe28569b7ac7be8c63a37894acb2da0de`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0703ac9181e97e53b3a3b06e7b0e6cebd574e4a516ea8d35d56d497cb94b25e`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:d5338e90fd38277a070f0d62c46c453641805a02a54606d55248cc4ca6d71623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5716902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f58076f5a82cd2381ceaf2a06841fcab18180ef07c27c2269af196814858ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:28 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:28 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:10 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:10 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925d42c7691467c67cd55d10f13c07ab429e5118d8be412ac5c8e09144a5ccf0`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8ccc8c730754ad39a7801c2c75caf71ff177bda7aeb354948158977afe36e`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5209cf6d4aafba79c1504ad0ebb615284cdee1604b2de6d93c8d5253410ef48`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 1.9 MB (1925822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153e6978211a88e23c8d1fc6ed77073843edba0f9fb752e4624942299cd12e13`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0a3b71b0aff23f9fdfe65f5039d666cb7d2791e0c1d8b59238663be5db2a82`  
		Last Modified: Wed, 21 Oct 2026 23:15:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:75347d8d359d22d8aa606902f3458a85481ecae0e5267497d69710f44bef2aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b6f5e3c98290db412f45a26f93fd875e467d3184242199164c12567d99f6c`

```dockerfile
```

-	Layers:
	-	`sha256:0cbedce9a1143ba41f5c125263cccd68e870a54e067622312884e79796860513`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01aed577ecae52b0d52468be6c2673e08d5bbab3e380558de684e3d08638f46f`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:8255445e665c15f2a710f591cb04112733944a6ae005e084aad0410d2c84ae18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6600255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e54bf4534c1bf00ed452941625f5b73c878b62e5638167170ef9c114ca98f0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:33:34 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 22 Oct 2026 10:33:39 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 22 Oct 2026 10:57:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 22 Oct 2026 10:57:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:57:28 GMT
USER memcache
# Thu, 22 Oct 2026 10:57:28 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 22 Oct 2026 10:57:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0b5d981965a7eea23aa8a355222c2ca7598523f69c191bcf4904806f9ba05d`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25c7ff614282d4cf6e5d66b06ec376f5e54d6ff6ffcc5a2a03c2c16d7e715a0`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 126.3 KB (126270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9322ba4ef3aa847960185444ff51c85ae3d56b37d65f2ffc94c3716a739b4a6b`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 2.7 MB (2651807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d348ee12ceca7625b020390e7ba990fad413a725636bdc567f696792166f3a`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add0bf7caeaf5e98a78fc4697f7a482514e767f54edcdb0e17091ef819116a63`  
		Last Modified: Thu, 22 Oct 2026 10:57:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a76b8d277908e3f984d3c85f84992092ed44e517ee0daf85520da5dbe27712e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b987ca683754179e74dd9a510a0afb1e08910747e7d1cf1975140284752256`

```dockerfile
```

-	Layers:
	-	`sha256:8340ad978eeca6670e5b62946404c62a310449955a2b06e5ab1bb5e6c92b610f`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7cb43688dbd532e38a0fd77f771553f1a1d530a3b61dca32da265563b8a4ea7`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:62a23a9199acafed359e011c95d8ec002d61dd3ad36d00e9af7d6bd8d0dbb8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbb452b8d936eeffbd250b55dd898b01b0ae316869597b01035827ba31ab0cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:09:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 24 Oct 2026 16:09:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 24 Oct 2026 16:23:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 24 Oct 2026 16:23:29 GMT
USER memcache
# Sat, 24 Oct 2026 16:23:29 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 24 Oct 2026 16:23:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3814776510feb3317de434806b0e0f606ef96c0d9b7f58ecb429fe8d6eca13b2`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f5fe627e72afb881e47420315e23c54cbec13109efa772d07d554e5f94d617`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 108.9 KB (108910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c018182577105ecc27bb03f746357cdc8363e406dd97ec7e42b00ca4ffa3d5`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 2.1 MB (2057822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcde6efdc71dea73858483bb05463f3fdecfe91b86b66e39c6b2236c276f125`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c17b6e240295e6dc91ec13ed3520622e2fcd6ffefc863f4b056aff8ba01782b`  
		Last Modified: Sat, 24 Oct 2026 16:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:61fb287ba1b9e5408a9b1fb8902e3c64c79338da03d5b9878b2117cfb2079ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50523ba6375bced59116a92f95d7c99abadad12da0eb606f462c2bb9c682e56d`

```dockerfile
```

-	Layers:
	-	`sha256:dd92ac75a07ca5f3ac0752bc6f9b254218e50aa3974d98a077a431648f480eae`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a008d33e007ead8cfefe6c6839973c4638436b7ebad9b4847e33b08577bcdd53`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:4eba6b8b6793f41d9aa18ea81e3fa88d8fbd554682ccaf603a75e08a29d015ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e6a3e1aeccfb33b6bf1722ec2bc4f2a7e346d4f693892757dc0e9acd4050dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:18:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:22:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:22:12 GMT
USER memcache
# Wed, 21 Oct 2026 23:22:12 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:22:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41092b4b2d6e8c87a52eaf15cc23f2d41f506239ccdce5e8536acb0e6908add3`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9317b086318c2ffe1e94e221d82a387252336cb69b61acb5aefa0e9436e6e290`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 114.3 KB (114309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310b7e4ba79ab4cacb2be2bffc90604b59b34ebc2f511cbda72178847a7fbd5a`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 2.0 MB (2004219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569c8026ab7fddc18cbcf1d455fa424a036b2e9837c205fbabb7748b7fab68a2`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2528a5ff882cb220f13bba4f2f88e7918d059180690031c5b7146c4537eda16e`  
		Last Modified: Wed, 21 Oct 2026 23:22:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b4933d33f2296f19137fb5f54e70e554609cf0b287257f48ebf8e458e17dfd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4c93558b2bfc086513e76dca5417d6eda89db9640fd5e34815c20cb2c8efe3`

```dockerfile
```

-	Layers:
	-	`sha256:5ef226d1de92865eddd7de01b218e0ae06c681a28b04bab94584b47e512e2b82`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6c527dfc7341707fb1bcd543e79adb3a3715fec1535b8c6e3d2ce86672558d6`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine3.24`

```console
$ docker pull memcached@sha256:6a089e37cbb8acd75c80c6c0667fe57ec54db68782fb1b3afb1d0eb265e50070
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
$ docker pull memcached@sha256:9057793717e87e054636eaf06cf8ec2792a3ad164ad9e8bcae1e90241ea73fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5eba4fb025850bd1df258f435078ef997189beef8f412662adfbb34f2a9212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:46:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 22:46:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 22:49:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:49:34 GMT
USER memcache
# Wed, 21 Oct 2026 22:49:34 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 22:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e70e4bd8f1f3d5ea44e6a1ddcc95274ad4729e4de9ceda4c5a97400d65bae5`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a156def0c0fa56c7626495682fc7eeee082def10e8b2db69c989ff7c7cb1438d`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 106.1 KB (106085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc88b49aeeb094738da98e5205a2623e1df8d96c8789b1028b08c0f018488a0`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 2.0 MB (1971716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1d13955f5ed4a4c30aa3078f7c9eeb1cd070e449727f0d83cd0bb5c8460815`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a07806802fe4959e44969d2de7d461bbd9b52b7931b947d350dd082539d63`  
		Last Modified: Wed, 21 Oct 2026 22:49:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b61d0547032cc30541432f5ac6291e641910e0dec6a418a6c2ea8fa4900f7fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c6ca8c52367ff2be20af54dadee796968d1d4444b8e012f03d85ec3ac8c298`

```dockerfile
```

-	Layers:
	-	`sha256:36891509f6d31e487d9f458ebf7759b7e93c9985a49198a34aea92f735a8380a`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e306fe35cdb2574563d8869211071e8e0696133bd5f5bf627b690cfa6de7e0d1`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:0c6b9fa9dffbcb40ea942fa5ba6a4a183652671496f455b5fbe2c8b47f51c1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5581970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ccf018f1c03dbdd208b5bb0efd70c9c0ea4c1d1e6083fead0d80be0fbb65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:14:25 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:14:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:17:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:17:29 GMT
USER memcache
# Wed, 21 Oct 2026 23:17:29 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:17:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68195c37b284f78ce9c47ed39422c83429bf8dcf6e746ea5feb6bbb616047c84`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8169f79072d0f0706633797d50f895072c77a08d4fd01e1642521da2184417e3`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 102.6 KB (102642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f318ae2e3cb5e365fec3847cd1ffd9e6a0fc0b5ebb04dcad8fc7241308f67c`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 1.9 MB (1919687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05832fed580324b8d575dee1b5ad17d126e87e59644be64726d7906ea1757a4`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ace68499ce7a80dba420f19589ec3e7a1fd785d2cfe4a4f1461320991149e53`  
		Last Modified: Wed, 21 Oct 2026 23:17:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5434a3fdca413469f9173c8953c679bdd52edf28d12237d988563e49e618c18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f930504ace3729e9def0ba000e85580dc0e32948914548d1462a8c9c4ca34a3`

```dockerfile
```

-	Layers:
	-	`sha256:5badc53eba059b3e3accba31d3d9b5ee29aec66512171fd67ba1b842b8d64707`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 20.5 KB (20466 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:aa7ae3ba559ea809acb9823081e505ccd5283a0fda1096337d05c7bda079b089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d63aecc8867e28617473dbbddbd621bda73506c10415c39bb29dc149d0e5b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:31 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:17:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:20:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:28 GMT
USER memcache
# Wed, 21 Oct 2026 23:20:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:20:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1846c42df8aca15ae481f3b25bea3c4128e2d6d8fd5a2367eb24e410009b67e`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322a46f316ded9c44b6e8a333ec214ec0fc5fd8dc5ad5ea2999f6c925d74b652`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 92.4 KB (92364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b16facb2a59a8ef627a79f6cdc4144e884dd60efd34bc148cc0a84bc8d0ac0f`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 1.9 MB (1879166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7138cd10e7b9e4e533bb4137ae2b67db4b3cb6c413aeeee17fa3c3612da770`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d47b9d2e07c02d6578a5d9ed86d7dba09756f3dfd2df95d66fc69266e340b03`  
		Last Modified: Wed, 21 Oct 2026 23:20:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:47741c65ed1a3e52394501696187c4bc766c5f6b2d935ac1269c499940a18706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4eaeede9b2735bd010a5cfaed0533733ec938489e99406d587bc0f54f7383b9`

```dockerfile
```

-	Layers:
	-	`sha256:bd6f3363d1ce0c9fd0893ec4a07f65d8ed17176c16a493674168d07b67664cf6`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d750e5d04f934a7e700c96c7fe5dd7e815b5c10a14690247a16703019ed7bf1`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:e09dcc0bc98221ed468081adaa4a78c61d2161f475b1aa0cd282e18573a8ede7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defdcf9518f8b6888f59edc0def29850b688bef32db5ccf3390b5a18128abdee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:56 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:57 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:45 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617bded82bb6ae44db306d2e2a13f2bb37f25543935c716a36b32184c682886d`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c29514be041e3f74ffd8cff4eaf12fd9edd6ca1239b69ddc9551abb43618239`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf45e1e3a6062c2e0742d88c3c70d9fe819b458818bbd00389e29d325de56376`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 1.9 MB (1948985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b93bb74be2e3b89290de7700318062984d7b5b29aeb3f20ca5cc2ca205b0427`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb55bb80afaa1a5a1d66dff646c9cee9ff7e6ef28a02528613af3fd68f168c16`  
		Last Modified: Wed, 21 Oct 2026 23:15:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:1377acc5441cfb25433b073c85f8710eeeb363037d21806c6f8d5464dc7f2762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7a9c92ec42a3d4f460a4badf5bf3dc7d7ec3e889f96c62e0d0b23531295e75`

```dockerfile
```

-	Layers:
	-	`sha256:69f77a1a233632e1f5ee2b0c788a4c1fe28569b7ac7be8c63a37894acb2da0de`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0703ac9181e97e53b3a3b06e7b0e6cebd574e4a516ea8d35d56d497cb94b25e`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:d5338e90fd38277a070f0d62c46c453641805a02a54606d55248cc4ca6d71623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5716902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f58076f5a82cd2381ceaf2a06841fcab18180ef07c27c2269af196814858ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:28 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:28 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:10 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:10 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925d42c7691467c67cd55d10f13c07ab429e5118d8be412ac5c8e09144a5ccf0`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8ccc8c730754ad39a7801c2c75caf71ff177bda7aeb354948158977afe36e`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5209cf6d4aafba79c1504ad0ebb615284cdee1604b2de6d93c8d5253410ef48`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 1.9 MB (1925822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153e6978211a88e23c8d1fc6ed77073843edba0f9fb752e4624942299cd12e13`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0a3b71b0aff23f9fdfe65f5039d666cb7d2791e0c1d8b59238663be5db2a82`  
		Last Modified: Wed, 21 Oct 2026 23:15:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:75347d8d359d22d8aa606902f3458a85481ecae0e5267497d69710f44bef2aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b6f5e3c98290db412f45a26f93fd875e467d3184242199164c12567d99f6c`

```dockerfile
```

-	Layers:
	-	`sha256:0cbedce9a1143ba41f5c125263cccd68e870a54e067622312884e79796860513`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01aed577ecae52b0d52468be6c2673e08d5bbab3e380558de684e3d08638f46f`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:8255445e665c15f2a710f591cb04112733944a6ae005e084aad0410d2c84ae18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6600255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e54bf4534c1bf00ed452941625f5b73c878b62e5638167170ef9c114ca98f0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:33:34 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 22 Oct 2026 10:33:39 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 22 Oct 2026 10:57:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 22 Oct 2026 10:57:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:57:28 GMT
USER memcache
# Thu, 22 Oct 2026 10:57:28 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 22 Oct 2026 10:57:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0b5d981965a7eea23aa8a355222c2ca7598523f69c191bcf4904806f9ba05d`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25c7ff614282d4cf6e5d66b06ec376f5e54d6ff6ffcc5a2a03c2c16d7e715a0`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 126.3 KB (126270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9322ba4ef3aa847960185444ff51c85ae3d56b37d65f2ffc94c3716a739b4a6b`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 2.7 MB (2651807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d348ee12ceca7625b020390e7ba990fad413a725636bdc567f696792166f3a`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add0bf7caeaf5e98a78fc4697f7a482514e767f54edcdb0e17091ef819116a63`  
		Last Modified: Thu, 22 Oct 2026 10:57:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a76b8d277908e3f984d3c85f84992092ed44e517ee0daf85520da5dbe27712e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b987ca683754179e74dd9a510a0afb1e08910747e7d1cf1975140284752256`

```dockerfile
```

-	Layers:
	-	`sha256:8340ad978eeca6670e5b62946404c62a310449955a2b06e5ab1bb5e6c92b610f`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7cb43688dbd532e38a0fd77f771553f1a1d530a3b61dca32da265563b8a4ea7`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:62a23a9199acafed359e011c95d8ec002d61dd3ad36d00e9af7d6bd8d0dbb8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbb452b8d936eeffbd250b55dd898b01b0ae316869597b01035827ba31ab0cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:09:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 24 Oct 2026 16:09:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 24 Oct 2026 16:23:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 24 Oct 2026 16:23:29 GMT
USER memcache
# Sat, 24 Oct 2026 16:23:29 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 24 Oct 2026 16:23:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3814776510feb3317de434806b0e0f606ef96c0d9b7f58ecb429fe8d6eca13b2`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f5fe627e72afb881e47420315e23c54cbec13109efa772d07d554e5f94d617`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 108.9 KB (108910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c018182577105ecc27bb03f746357cdc8363e406dd97ec7e42b00ca4ffa3d5`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 2.1 MB (2057822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcde6efdc71dea73858483bb05463f3fdecfe91b86b66e39c6b2236c276f125`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c17b6e240295e6dc91ec13ed3520622e2fcd6ffefc863f4b056aff8ba01782b`  
		Last Modified: Sat, 24 Oct 2026 16:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:61fb287ba1b9e5408a9b1fb8902e3c64c79338da03d5b9878b2117cfb2079ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50523ba6375bced59116a92f95d7c99abadad12da0eb606f462c2bb9c682e56d`

```dockerfile
```

-	Layers:
	-	`sha256:dd92ac75a07ca5f3ac0752bc6f9b254218e50aa3974d98a077a431648f480eae`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a008d33e007ead8cfefe6c6839973c4638436b7ebad9b4847e33b08577bcdd53`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:4eba6b8b6793f41d9aa18ea81e3fa88d8fbd554682ccaf603a75e08a29d015ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e6a3e1aeccfb33b6bf1722ec2bc4f2a7e346d4f693892757dc0e9acd4050dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:18:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:22:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:22:12 GMT
USER memcache
# Wed, 21 Oct 2026 23:22:12 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:22:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41092b4b2d6e8c87a52eaf15cc23f2d41f506239ccdce5e8536acb0e6908add3`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9317b086318c2ffe1e94e221d82a387252336cb69b61acb5aefa0e9436e6e290`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 114.3 KB (114309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310b7e4ba79ab4cacb2be2bffc90604b59b34ebc2f511cbda72178847a7fbd5a`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 2.0 MB (2004219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569c8026ab7fddc18cbcf1d455fa424a036b2e9837c205fbabb7748b7fab68a2`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2528a5ff882cb220f13bba4f2f88e7918d059180690031c5b7146c4537eda16e`  
		Last Modified: Wed, 21 Oct 2026 23:22:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b4933d33f2296f19137fb5f54e70e554609cf0b287257f48ebf8e458e17dfd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4c93558b2bfc086513e76dca5417d6eda89db9640fd5e34815c20cb2c8efe3`

```dockerfile
```

-	Layers:
	-	`sha256:5ef226d1de92865eddd7de01b218e0ae06c681a28b04bab94584b47e512e2b82`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6c527dfc7341707fb1bcd543e79adb3a3715fec1535b8c6e3d2ce86672558d6`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-trixie`

```console
$ docker pull memcached@sha256:a395a1bcf5e0e2b0fa4a0142e12b4e24a2320ba4b7c6ffa8655a1a86e8f29dee
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
$ docker pull memcached@sha256:b09d8056beefa72d8eada019a3f1fdc0670e47b97351db2b33685527e7e1b193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32280777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7429accb3c98adafd643261acc1fb1511d1d1b6ccb3246b9f40689dfbaf4f682`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:05 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f59709ac522354942fd5d8336e87aac813474966fc5dcf9baf2bfe6428e2cc1`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe416a42ea0fa3e6c8e18211fa75d40c32b76d8aaab80436e6835711fe8c7202`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 136.7 KB (136738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f5b41d8085c45639d9e07268d3270d546ae07c5edd37a2dcbc7f56875fb8f9`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.3 MB (2286395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95840eb2dffa836786a2d402531a223d5ed5e417b1b3a61bb8bf350b351fa07c`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65e582d750a7a405967d6eedf15bfd5ec589fe621b170d25a7c9e7d4febf28d`  
		Last Modified: Thu, 05 Nov 2026 07:20:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6a9149ab0669b6bbad0120c257d4d56c2db19fc8dbd063d1599d0289f2033c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac9f6108ca7cf1942dd40448b1bf3caf90d5251efc1cbbdeb4d2e1ecdbbced6`

```dockerfile
```

-	Layers:
	-	`sha256:e7f04e782a521af9b744a8d7a0783507384d2b54a360f070ca3af3c0b7ae8381`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:537700077b3750e37d8de6264b05b233fd9ddc40348a6eef06035e760d328d2d`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:d927435e55cc7a4271f7964cef0aa6029ba65115aebce1a8715c5a8f326b8100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30382679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad07e25e1c5de259a8d635a2529bc87489a39bb732daadb1fd16222e95fa72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:21 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:44 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f80434370c6d6ab5e03c0b78d5cdba2f5bf99b7b803ea8f57ddb49c1cfdb91`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1f81a3e6e8ee403e1c379f6c4d12f7f37d4ebc9d7cba65cedddb9ebd1c033c`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 144.2 KB (144205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b757afb023255818f1679772ef6af4ea378b5cd304ef1f76d01b644ef3c722`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.2 MB (2217349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdfc21754247d72d569005aa49f6a0c8d16000bc6669523110bf42a36babda8`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455ba4cd950f06abaa37bbbb3e5c472fba9163b5fa0d9cf5893dc2302a4ced95`  
		Last Modified: Thu, 05 Nov 2026 07:17:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:0e86d2647a02754e5125e88f2289978ec08e03b54d2cc16a546ad6afd9ae1d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6252d2ea2287dedc5ae2b88efdda6dbaed462364309b2a18ffe9adfef6fb3f5`

```dockerfile
```

-	Layers:
	-	`sha256:9d2ef246bef6f5f3501aa1fed6cf7eec591ad9eb195c702f075f851b24cec730`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d4bd1332de18173219995444bfd1a44dcbbecc2673a67a915863e6c371f2f0e`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:40954f2e6d2de2d20332fca63b96fcca77c21dfb8f52cd13f9be0bf94c92d014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28581444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb9f1ee51a7f9a06c2977be71e6324d9340dadeaee287682788a47cf129d54d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:18:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:21:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:21:25 GMT
USER memcache
# Thu, 05 Nov 2026 07:21:25 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:21:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa607dc202d742554fbca912173ca7c52435649286586406488665bcd214e5f`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b249ef119581b39ee16cd534b94b7b693485c832086995710993192f533bb5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 135.4 KB (135393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432e553e19db762ae4453b4637cb5707f9a088e3a543bdb7f5154ca099a31d2`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 2.2 MB (2171624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea25d8c2f7331ace06740202126242c8c1c6b1361a83b03ed7a2a0720d6839eb`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be282f4e38e25ce564d8555eae6a6fdfc03ac38c6457ec6bb23aaeb440de07a`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:275a220ae23abbed756419df367cab4740030bff8721465e81ebee52191c3b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120588f89a2dc8e0c243151dd8b7c9b27f14a74759292788dd11e2e4051621ba`

```dockerfile
```

-	Layers:
	-	`sha256:9645f04369d35851eb7ebc06d9b1438172df776d1407c063aa0ff959a45a1057`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39147cc4290ffc8c1ac49b1d4a8a825a461ac8c0e4cd8da27f151ec98e9192e5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d37d9f141845d208688b347704148fe8c0269386180197f02df02fe7ff6aa8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15dd487cd49428dbe61a263d3ad4df729a0fcc2e71d259bd3716c112a38956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:19 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:23 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:23 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49749bbca8c54ece169a63a50bd44188604eb744779e9c6a59c9668ee40603b`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb188c8ca8e350704d799919dd52f265401daa0e30c1c8c71af17cb678d00c72`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 153.5 KB (153542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b7fa681140d8e5c9cacbf0f1407cefdbc47adbc193ac8f3da6fac9eed5c5`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.3 MB (2266876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5898a0e025521f5d01f1c4f59bc5fa2141ce72cbcb5b8fec6a4f28d72223397f`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e277933109fcef09b52e7ff2d2f0b01b7523db507efef35c7f2ad6acef3dae0`  
		Last Modified: Thu, 05 Nov 2026 07:20:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:65be82ce19bef1808704a6436925cca7650e822bb06b0cdbf5b5ab7a204eb9ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255c054e753da8928856917107b759cce96bce5e4e21d8d0939ea3a275fe3a79`

```dockerfile
```

-	Layers:
	-	`sha256:2fe57407f244d3b0e5676d0b8590016acc7af5e4ab451c530dcd1088160c05ac`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ec8b663f5686539d7a4d441af52f312b57598244cc908a7fadd4d1b2286a8c`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; 386

```console
$ docker pull memcached@sha256:8c354712fdc002149b1dfec00efef6ed93b23926d4be3cb9ec34f212a24474fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33751081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2811a32e110cfac2c43b7e606c0964b327d5e760b5b6ad1751d68d4f315efc87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:49 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:49 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897af33699c937368d898d331a073893837697f25aa2ee300773c4076a0e0963`  
		Last Modified: Thu, 05 Nov 2026 07:17:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c153beb0c28113dfed58ee882e8a9ad057b51f7f07af172d9c9024e228652311`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 147.6 KB (147562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fbe6636116d68358c6a5ad6333e1b90cfc61ff49cfbfc895b4dfe9357dc6be`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.2 MB (2231247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be59883fde6704085f0318c5d2d5635ed5d6a5db39c64b616fcbb4534409fd28`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21aca5aa44854f42e8e996a6d7b2cebe4b21ea00d23ad4ccff069507b2f64aae`  
		Last Modified: Thu, 05 Nov 2026 07:17:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:328e5fcb1eb4d6ccb7299bd7feeccfc33cbd81e6b28fe399da9a5a06bd74f31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f90dc7d65445ecc3b564213856fca0ba921b9025eddd0fc3bac7ba4bb5c6668`

```dockerfile
```

-	Layers:
	-	`sha256:e5660e6bf8462963ca0b8456baa55698169bc57d3d056f13cdb2940617ad4e82`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f6e118825aab04cff2f29f8b0243d9723878a2b4ae31e597e77c31794c7b1fe`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:3ea8455d0258881f29f2c18ab7b2a75a8b9f4d3d51b8a9775a7442d0e61dff1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36829374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32751ee77730d0c966d9aabd831eea60e8c7bb058b0abb136ded3f9d7b4b9aeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:26:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:50:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:50:48 GMT
USER memcache
# Thu, 05 Nov 2026 07:50:48 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:50:48 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad79880010b426b3e87ea908d773a76c8404eeaebc98f13bedd948931341aed8`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35794a16da4fbb9cad55805ee7f2a01ecc52aab7440493c93ca5d96ee01f11b0`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 170.4 KB (170402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4086cbf68d82ca027eb1f39aea32d1e58019311d2dc6336c39bc2351ed8f97e6`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 3.0 MB (2989811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250339d42def0f8a03cd8ff0a19bc1c4b8d3a5ae1f4056cd43012669a230a16b`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a76e0cec9c36e6c2cccfdbfdfa12c325104603d9b560400a9c60d8d7f00cca2`  
		Last Modified: Thu, 05 Nov 2026 07:51:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6653a4b926bf3e2f644b05af7e18c06d8371ec73622e42d205dcc0e0e8c4ff29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891aa44d54e6ee9fac72066779b5a5bd74615ebf9f5c2a2308cc748e7d57f502`

```dockerfile
```

-	Layers:
	-	`sha256:fdd57b75bb6a0357843f4e2b6f4a007efd37db43702a3bc94e7bd57b5774f8f2`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc7cc43aee22466291b8ad8d92a6b701f4d800153ebad72a88843b0e0c79443`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:e45f1f7e40d9442fd61e3afcbc7711d993994e4e2cd2e7ac5967a799b1c8ecf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30694152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ccc4d122be45d7746b2a13ddfe72a37fcdf2851b765cf14ecbebd76d868f33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:42:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 11:43:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 11:57:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 11:57:12 GMT
USER memcache
# Thu, 05 Nov 2026 11:57:12 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 11:57:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4e2c560a4e6fbd4faeba39786948501e4098d7de4ec8f0d2689fd697a0de3f`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b3c53ed9ccd2a94f4c0377152b3f9e67582b0a5680887c2b073f944c6fbf04`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 133.1 KB (133122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e1207719b823f806678bb9300f0416007fd720211ffe3db5668ac4cdac85f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.2 MB (2213334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df294386699007bd47d1c015d2c7d039929d83ae83695584fb4aecbcf1982db`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b8c61d81801921c80454e0eeb14e691ba809266de06c4d02a034711421d57f`  
		Last Modified: Thu, 05 Nov 2026 11:58:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3fb8ee7b75a894301c9b94521e0f03e95c06bdd2c61948bbd7d313e365be7937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:211761d90fe530ce3ec20364190033c339a87cb1d5d9372144ae62c9b5993aea`

```dockerfile
```

-	Layers:
	-	`sha256:ff0864b4ac18d4f64077f1dbf836240462c4694976978b98961e2f9459b8d3f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29b33b082ee4c7fb6bdc1dafa09f4a980928879f925fdba87eb52226692fadab`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:120591cbb1cddf6d4d0f1488bed5baba7097147f398bcaa78c85424265db9a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32367588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3df2df743b4f58fe6dfc66dd1525a62e4770655e1f0fae6ac55339b59fb5ee5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 09:16:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 09:16:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 09:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 09:19:45 GMT
USER memcache
# Thu, 05 Nov 2026 09:19:45 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 09:19:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea4474c25254e742cd463f5e36abdf7bef82459bbed9a2e51b1bc72f6f8a550`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24dbd1a440ce097dc597de0a62369bb003fd72049353e8500317fad988516397`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 140.6 KB (140560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38e355a1ecd9159bb5d5b3f38d992079607cbae5a4e28106f486110b3ac95a8`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.3 MB (2301401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8600a708b640ea89e806270702e22a2529fa3c6c477531979ee1941c3541f6`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0123612f72a4c2ec69f2e155b1e9644f866f750c6d72d5da043d379e83aeece`  
		Last Modified: Thu, 05 Nov 2026 09:19:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:db1c1a725bf8252033f12233790b415f5dfad7f925135af7c6fcf0062f2a584e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7327e5f49237a141abc786c74694708e13f89a1d0b8f10801f2942695a4d0c`

```dockerfile
```

-	Layers:
	-	`sha256:fd54b26407096245a9a1a47c90cb8f0c71e08848cefd6b43da022b2a8bea855d`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3209868ba1c2f16c58eb46bde310156c0d2677d439a70d2cfcc57bc908e809b7`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6`

```console
$ docker pull memcached@sha256:a395a1bcf5e0e2b0fa4a0142e12b4e24a2320ba4b7c6ffa8655a1a86e8f29dee
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
$ docker pull memcached@sha256:b09d8056beefa72d8eada019a3f1fdc0670e47b97351db2b33685527e7e1b193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32280777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7429accb3c98adafd643261acc1fb1511d1d1b6ccb3246b9f40689dfbaf4f682`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:05 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f59709ac522354942fd5d8336e87aac813474966fc5dcf9baf2bfe6428e2cc1`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe416a42ea0fa3e6c8e18211fa75d40c32b76d8aaab80436e6835711fe8c7202`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 136.7 KB (136738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f5b41d8085c45639d9e07268d3270d546ae07c5edd37a2dcbc7f56875fb8f9`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.3 MB (2286395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95840eb2dffa836786a2d402531a223d5ed5e417b1b3a61bb8bf350b351fa07c`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65e582d750a7a405967d6eedf15bfd5ec589fe621b170d25a7c9e7d4febf28d`  
		Last Modified: Thu, 05 Nov 2026 07:20:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:6a9149ab0669b6bbad0120c257d4d56c2db19fc8dbd063d1599d0289f2033c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac9f6108ca7cf1942dd40448b1bf3caf90d5251efc1cbbdeb4d2e1ecdbbced6`

```dockerfile
```

-	Layers:
	-	`sha256:e7f04e782a521af9b744a8d7a0783507384d2b54a360f070ca3af3c0b7ae8381`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:537700077b3750e37d8de6264b05b233fd9ddc40348a6eef06035e760d328d2d`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v5

```console
$ docker pull memcached@sha256:d927435e55cc7a4271f7964cef0aa6029ba65115aebce1a8715c5a8f326b8100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30382679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad07e25e1c5de259a8d635a2529bc87489a39bb732daadb1fd16222e95fa72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:21 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:44 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f80434370c6d6ab5e03c0b78d5cdba2f5bf99b7b803ea8f57ddb49c1cfdb91`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1f81a3e6e8ee403e1c379f6c4d12f7f37d4ebc9d7cba65cedddb9ebd1c033c`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 144.2 KB (144205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b757afb023255818f1679772ef6af4ea378b5cd304ef1f76d01b644ef3c722`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.2 MB (2217349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdfc21754247d72d569005aa49f6a0c8d16000bc6669523110bf42a36babda8`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455ba4cd950f06abaa37bbbb3e5c472fba9163b5fa0d9cf5893dc2302a4ced95`  
		Last Modified: Thu, 05 Nov 2026 07:17:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:0e86d2647a02754e5125e88f2289978ec08e03b54d2cc16a546ad6afd9ae1d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6252d2ea2287dedc5ae2b88efdda6dbaed462364309b2a18ffe9adfef6fb3f5`

```dockerfile
```

-	Layers:
	-	`sha256:9d2ef246bef6f5f3501aa1fed6cf7eec591ad9eb195c702f075f851b24cec730`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d4bd1332de18173219995444bfd1a44dcbbecc2673a67a915863e6c371f2f0e`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v7

```console
$ docker pull memcached@sha256:40954f2e6d2de2d20332fca63b96fcca77c21dfb8f52cd13f9be0bf94c92d014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28581444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb9f1ee51a7f9a06c2977be71e6324d9340dadeaee287682788a47cf129d54d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:18:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:21:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:21:25 GMT
USER memcache
# Thu, 05 Nov 2026 07:21:25 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:21:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa607dc202d742554fbca912173ca7c52435649286586406488665bcd214e5f`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b249ef119581b39ee16cd534b94b7b693485c832086995710993192f533bb5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 135.4 KB (135393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432e553e19db762ae4453b4637cb5707f9a088e3a543bdb7f5154ca099a31d2`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 2.2 MB (2171624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea25d8c2f7331ace06740202126242c8c1c6b1361a83b03ed7a2a0720d6839eb`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be282f4e38e25ce564d8555eae6a6fdfc03ac38c6457ec6bb23aaeb440de07a`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:275a220ae23abbed756419df367cab4740030bff8721465e81ebee52191c3b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120588f89a2dc8e0c243151dd8b7c9b27f14a74759292788dd11e2e4051621ba`

```dockerfile
```

-	Layers:
	-	`sha256:9645f04369d35851eb7ebc06d9b1438172df776d1407c063aa0ff959a45a1057`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39147cc4290ffc8c1ac49b1d4a8a825a461ac8c0e4cd8da27f151ec98e9192e5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d37d9f141845d208688b347704148fe8c0269386180197f02df02fe7ff6aa8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15dd487cd49428dbe61a263d3ad4df729a0fcc2e71d259bd3716c112a38956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:19 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:23 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:23 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49749bbca8c54ece169a63a50bd44188604eb744779e9c6a59c9668ee40603b`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb188c8ca8e350704d799919dd52f265401daa0e30c1c8c71af17cb678d00c72`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 153.5 KB (153542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b7fa681140d8e5c9cacbf0f1407cefdbc47adbc193ac8f3da6fac9eed5c5`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.3 MB (2266876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5898a0e025521f5d01f1c4f59bc5fa2141ce72cbcb5b8fec6a4f28d72223397f`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e277933109fcef09b52e7ff2d2f0b01b7523db507efef35c7f2ad6acef3dae0`  
		Last Modified: Thu, 05 Nov 2026 07:20:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:65be82ce19bef1808704a6436925cca7650e822bb06b0cdbf5b5ab7a204eb9ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255c054e753da8928856917107b759cce96bce5e4e21d8d0939ea3a275fe3a79`

```dockerfile
```

-	Layers:
	-	`sha256:2fe57407f244d3b0e5676d0b8590016acc7af5e4ab451c530dcd1088160c05ac`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ec8b663f5686539d7a4d441af52f312b57598244cc908a7fadd4d1b2286a8c`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; 386

```console
$ docker pull memcached@sha256:8c354712fdc002149b1dfec00efef6ed93b23926d4be3cb9ec34f212a24474fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33751081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2811a32e110cfac2c43b7e606c0964b327d5e760b5b6ad1751d68d4f315efc87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:49 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:49 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897af33699c937368d898d331a073893837697f25aa2ee300773c4076a0e0963`  
		Last Modified: Thu, 05 Nov 2026 07:17:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c153beb0c28113dfed58ee882e8a9ad057b51f7f07af172d9c9024e228652311`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 147.6 KB (147562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fbe6636116d68358c6a5ad6333e1b90cfc61ff49cfbfc895b4dfe9357dc6be`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.2 MB (2231247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be59883fde6704085f0318c5d2d5635ed5d6a5db39c64b616fcbb4534409fd28`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21aca5aa44854f42e8e996a6d7b2cebe4b21ea00d23ad4ccff069507b2f64aae`  
		Last Modified: Thu, 05 Nov 2026 07:17:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:328e5fcb1eb4d6ccb7299bd7feeccfc33cbd81e6b28fe399da9a5a06bd74f31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f90dc7d65445ecc3b564213856fca0ba921b9025eddd0fc3bac7ba4bb5c6668`

```dockerfile
```

-	Layers:
	-	`sha256:e5660e6bf8462963ca0b8456baa55698169bc57d3d056f13cdb2940617ad4e82`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f6e118825aab04cff2f29f8b0243d9723878a2b4ae31e597e77c31794c7b1fe`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; ppc64le

```console
$ docker pull memcached@sha256:3ea8455d0258881f29f2c18ab7b2a75a8b9f4d3d51b8a9775a7442d0e61dff1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36829374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32751ee77730d0c966d9aabd831eea60e8c7bb058b0abb136ded3f9d7b4b9aeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:26:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:50:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:50:48 GMT
USER memcache
# Thu, 05 Nov 2026 07:50:48 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:50:48 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad79880010b426b3e87ea908d773a76c8404eeaebc98f13bedd948931341aed8`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35794a16da4fbb9cad55805ee7f2a01ecc52aab7440493c93ca5d96ee01f11b0`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 170.4 KB (170402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4086cbf68d82ca027eb1f39aea32d1e58019311d2dc6336c39bc2351ed8f97e6`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 3.0 MB (2989811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250339d42def0f8a03cd8ff0a19bc1c4b8d3a5ae1f4056cd43012669a230a16b`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a76e0cec9c36e6c2cccfdbfdfa12c325104603d9b560400a9c60d8d7f00cca2`  
		Last Modified: Thu, 05 Nov 2026 07:51:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:6653a4b926bf3e2f644b05af7e18c06d8371ec73622e42d205dcc0e0e8c4ff29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891aa44d54e6ee9fac72066779b5a5bd74615ebf9f5c2a2308cc748e7d57f502`

```dockerfile
```

-	Layers:
	-	`sha256:fdd57b75bb6a0357843f4e2b6f4a007efd37db43702a3bc94e7bd57b5774f8f2`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc7cc43aee22466291b8ad8d92a6b701f4d800153ebad72a88843b0e0c79443`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; riscv64

```console
$ docker pull memcached@sha256:e45f1f7e40d9442fd61e3afcbc7711d993994e4e2cd2e7ac5967a799b1c8ecf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30694152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ccc4d122be45d7746b2a13ddfe72a37fcdf2851b765cf14ecbebd76d868f33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:42:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 11:43:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 11:57:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 11:57:12 GMT
USER memcache
# Thu, 05 Nov 2026 11:57:12 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 11:57:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4e2c560a4e6fbd4faeba39786948501e4098d7de4ec8f0d2689fd697a0de3f`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b3c53ed9ccd2a94f4c0377152b3f9e67582b0a5680887c2b073f944c6fbf04`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 133.1 KB (133122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e1207719b823f806678bb9300f0416007fd720211ffe3db5668ac4cdac85f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.2 MB (2213334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df294386699007bd47d1c015d2c7d039929d83ae83695584fb4aecbcf1982db`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b8c61d81801921c80454e0eeb14e691ba809266de06c4d02a034711421d57f`  
		Last Modified: Thu, 05 Nov 2026 11:58:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:3fb8ee7b75a894301c9b94521e0f03e95c06bdd2c61948bbd7d313e365be7937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:211761d90fe530ce3ec20364190033c339a87cb1d5d9372144ae62c9b5993aea`

```dockerfile
```

-	Layers:
	-	`sha256:ff0864b4ac18d4f64077f1dbf836240462c4694976978b98961e2f9459b8d3f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29b33b082ee4c7fb6bdc1dafa09f4a980928879f925fdba87eb52226692fadab`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; s390x

```console
$ docker pull memcached@sha256:120591cbb1cddf6d4d0f1488bed5baba7097147f398bcaa78c85424265db9a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32367588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3df2df743b4f58fe6dfc66dd1525a62e4770655e1f0fae6ac55339b59fb5ee5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 09:16:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 09:16:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 09:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 09:19:45 GMT
USER memcache
# Thu, 05 Nov 2026 09:19:45 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 09:19:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea4474c25254e742cd463f5e36abdf7bef82459bbed9a2e51b1bc72f6f8a550`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24dbd1a440ce097dc597de0a62369bb003fd72049353e8500317fad988516397`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 140.6 KB (140560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38e355a1ecd9159bb5d5b3f38d992079607cbae5a4e28106f486110b3ac95a8`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.3 MB (2301401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8600a708b640ea89e806270702e22a2529fa3c6c477531979ee1941c3541f6`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0123612f72a4c2ec69f2e155b1e9644f866f750c6d72d5da043d379e83aeece`  
		Last Modified: Thu, 05 Nov 2026 09:19:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:db1c1a725bf8252033f12233790b415f5dfad7f925135af7c6fcf0062f2a584e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7327e5f49237a141abc786c74694708e13f89a1d0b8f10801f2942695a4d0c`

```dockerfile
```

-	Layers:
	-	`sha256:fd54b26407096245a9a1a47c90cb8f0c71e08848cefd6b43da022b2a8bea855d`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3209868ba1c2f16c58eb46bde310156c0d2677d439a70d2cfcc57bc908e809b7`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine`

```console
$ docker pull memcached@sha256:6a089e37cbb8acd75c80c6c0667fe57ec54db68782fb1b3afb1d0eb265e50070
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
$ docker pull memcached@sha256:9057793717e87e054636eaf06cf8ec2792a3ad164ad9e8bcae1e90241ea73fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5eba4fb025850bd1df258f435078ef997189beef8f412662adfbb34f2a9212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:46:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 22:46:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 22:49:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:49:34 GMT
USER memcache
# Wed, 21 Oct 2026 22:49:34 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 22:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e70e4bd8f1f3d5ea44e6a1ddcc95274ad4729e4de9ceda4c5a97400d65bae5`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a156def0c0fa56c7626495682fc7eeee082def10e8b2db69c989ff7c7cb1438d`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 106.1 KB (106085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc88b49aeeb094738da98e5205a2623e1df8d96c8789b1028b08c0f018488a0`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 2.0 MB (1971716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1d13955f5ed4a4c30aa3078f7c9eeb1cd070e449727f0d83cd0bb5c8460815`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a07806802fe4959e44969d2de7d461bbd9b52b7931b947d350dd082539d63`  
		Last Modified: Wed, 21 Oct 2026 22:49:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b61d0547032cc30541432f5ac6291e641910e0dec6a418a6c2ea8fa4900f7fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c6ca8c52367ff2be20af54dadee796968d1d4444b8e012f03d85ec3ac8c298`

```dockerfile
```

-	Layers:
	-	`sha256:36891509f6d31e487d9f458ebf7759b7e93c9985a49198a34aea92f735a8380a`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e306fe35cdb2574563d8869211071e8e0696133bd5f5bf627b690cfa6de7e0d1`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:0c6b9fa9dffbcb40ea942fa5ba6a4a183652671496f455b5fbe2c8b47f51c1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5581970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ccf018f1c03dbdd208b5bb0efd70c9c0ea4c1d1e6083fead0d80be0fbb65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:14:25 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:14:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:17:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:17:29 GMT
USER memcache
# Wed, 21 Oct 2026 23:17:29 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:17:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68195c37b284f78ce9c47ed39422c83429bf8dcf6e746ea5feb6bbb616047c84`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8169f79072d0f0706633797d50f895072c77a08d4fd01e1642521da2184417e3`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 102.6 KB (102642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f318ae2e3cb5e365fec3847cd1ffd9e6a0fc0b5ebb04dcad8fc7241308f67c`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 1.9 MB (1919687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05832fed580324b8d575dee1b5ad17d126e87e59644be64726d7906ea1757a4`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ace68499ce7a80dba420f19589ec3e7a1fd785d2cfe4a4f1461320991149e53`  
		Last Modified: Wed, 21 Oct 2026 23:17:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5434a3fdca413469f9173c8953c679bdd52edf28d12237d988563e49e618c18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f930504ace3729e9def0ba000e85580dc0e32948914548d1462a8c9c4ca34a3`

```dockerfile
```

-	Layers:
	-	`sha256:5badc53eba059b3e3accba31d3d9b5ee29aec66512171fd67ba1b842b8d64707`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 20.5 KB (20466 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:aa7ae3ba559ea809acb9823081e505ccd5283a0fda1096337d05c7bda079b089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d63aecc8867e28617473dbbddbd621bda73506c10415c39bb29dc149d0e5b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:31 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:17:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:20:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:28 GMT
USER memcache
# Wed, 21 Oct 2026 23:20:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:20:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1846c42df8aca15ae481f3b25bea3c4128e2d6d8fd5a2367eb24e410009b67e`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322a46f316ded9c44b6e8a333ec214ec0fc5fd8dc5ad5ea2999f6c925d74b652`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 92.4 KB (92364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b16facb2a59a8ef627a79f6cdc4144e884dd60efd34bc148cc0a84bc8d0ac0f`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 1.9 MB (1879166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7138cd10e7b9e4e533bb4137ae2b67db4b3cb6c413aeeee17fa3c3612da770`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d47b9d2e07c02d6578a5d9ed86d7dba09756f3dfd2df95d66fc69266e340b03`  
		Last Modified: Wed, 21 Oct 2026 23:20:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:47741c65ed1a3e52394501696187c4bc766c5f6b2d935ac1269c499940a18706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4eaeede9b2735bd010a5cfaed0533733ec938489e99406d587bc0f54f7383b9`

```dockerfile
```

-	Layers:
	-	`sha256:bd6f3363d1ce0c9fd0893ec4a07f65d8ed17176c16a493674168d07b67664cf6`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d750e5d04f934a7e700c96c7fe5dd7e815b5c10a14690247a16703019ed7bf1`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:e09dcc0bc98221ed468081adaa4a78c61d2161f475b1aa0cd282e18573a8ede7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defdcf9518f8b6888f59edc0def29850b688bef32db5ccf3390b5a18128abdee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:56 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:57 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:45 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617bded82bb6ae44db306d2e2a13f2bb37f25543935c716a36b32184c682886d`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c29514be041e3f74ffd8cff4eaf12fd9edd6ca1239b69ddc9551abb43618239`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf45e1e3a6062c2e0742d88c3c70d9fe819b458818bbd00389e29d325de56376`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 1.9 MB (1948985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b93bb74be2e3b89290de7700318062984d7b5b29aeb3f20ca5cc2ca205b0427`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb55bb80afaa1a5a1d66dff646c9cee9ff7e6ef28a02528613af3fd68f168c16`  
		Last Modified: Wed, 21 Oct 2026 23:15:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:1377acc5441cfb25433b073c85f8710eeeb363037d21806c6f8d5464dc7f2762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7a9c92ec42a3d4f460a4badf5bf3dc7d7ec3e889f96c62e0d0b23531295e75`

```dockerfile
```

-	Layers:
	-	`sha256:69f77a1a233632e1f5ee2b0c788a4c1fe28569b7ac7be8c63a37894acb2da0de`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0703ac9181e97e53b3a3b06e7b0e6cebd574e4a516ea8d35d56d497cb94b25e`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; 386

```console
$ docker pull memcached@sha256:d5338e90fd38277a070f0d62c46c453641805a02a54606d55248cc4ca6d71623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5716902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f58076f5a82cd2381ceaf2a06841fcab18180ef07c27c2269af196814858ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:28 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:28 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:10 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:10 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925d42c7691467c67cd55d10f13c07ab429e5118d8be412ac5c8e09144a5ccf0`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8ccc8c730754ad39a7801c2c75caf71ff177bda7aeb354948158977afe36e`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5209cf6d4aafba79c1504ad0ebb615284cdee1604b2de6d93c8d5253410ef48`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 1.9 MB (1925822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153e6978211a88e23c8d1fc6ed77073843edba0f9fb752e4624942299cd12e13`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0a3b71b0aff23f9fdfe65f5039d666cb7d2791e0c1d8b59238663be5db2a82`  
		Last Modified: Wed, 21 Oct 2026 23:15:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:75347d8d359d22d8aa606902f3458a85481ecae0e5267497d69710f44bef2aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b6f5e3c98290db412f45a26f93fd875e467d3184242199164c12567d99f6c`

```dockerfile
```

-	Layers:
	-	`sha256:0cbedce9a1143ba41f5c125263cccd68e870a54e067622312884e79796860513`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01aed577ecae52b0d52468be6c2673e08d5bbab3e380558de684e3d08638f46f`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:8255445e665c15f2a710f591cb04112733944a6ae005e084aad0410d2c84ae18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6600255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e54bf4534c1bf00ed452941625f5b73c878b62e5638167170ef9c114ca98f0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:33:34 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 22 Oct 2026 10:33:39 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 22 Oct 2026 10:57:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 22 Oct 2026 10:57:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:57:28 GMT
USER memcache
# Thu, 22 Oct 2026 10:57:28 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 22 Oct 2026 10:57:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0b5d981965a7eea23aa8a355222c2ca7598523f69c191bcf4904806f9ba05d`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25c7ff614282d4cf6e5d66b06ec376f5e54d6ff6ffcc5a2a03c2c16d7e715a0`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 126.3 KB (126270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9322ba4ef3aa847960185444ff51c85ae3d56b37d65f2ffc94c3716a739b4a6b`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 2.7 MB (2651807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d348ee12ceca7625b020390e7ba990fad413a725636bdc567f696792166f3a`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add0bf7caeaf5e98a78fc4697f7a482514e767f54edcdb0e17091ef819116a63`  
		Last Modified: Thu, 22 Oct 2026 10:57:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a76b8d277908e3f984d3c85f84992092ed44e517ee0daf85520da5dbe27712e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b987ca683754179e74dd9a510a0afb1e08910747e7d1cf1975140284752256`

```dockerfile
```

-	Layers:
	-	`sha256:8340ad978eeca6670e5b62946404c62a310449955a2b06e5ab1bb5e6c92b610f`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7cb43688dbd532e38a0fd77f771553f1a1d530a3b61dca32da265563b8a4ea7`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:62a23a9199acafed359e011c95d8ec002d61dd3ad36d00e9af7d6bd8d0dbb8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbb452b8d936eeffbd250b55dd898b01b0ae316869597b01035827ba31ab0cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:09:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 24 Oct 2026 16:09:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 24 Oct 2026 16:23:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 24 Oct 2026 16:23:29 GMT
USER memcache
# Sat, 24 Oct 2026 16:23:29 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 24 Oct 2026 16:23:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3814776510feb3317de434806b0e0f606ef96c0d9b7f58ecb429fe8d6eca13b2`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f5fe627e72afb881e47420315e23c54cbec13109efa772d07d554e5f94d617`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 108.9 KB (108910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c018182577105ecc27bb03f746357cdc8363e406dd97ec7e42b00ca4ffa3d5`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 2.1 MB (2057822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcde6efdc71dea73858483bb05463f3fdecfe91b86b66e39c6b2236c276f125`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c17b6e240295e6dc91ec13ed3520622e2fcd6ffefc863f4b056aff8ba01782b`  
		Last Modified: Sat, 24 Oct 2026 16:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:61fb287ba1b9e5408a9b1fb8902e3c64c79338da03d5b9878b2117cfb2079ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50523ba6375bced59116a92f95d7c99abadad12da0eb606f462c2bb9c682e56d`

```dockerfile
```

-	Layers:
	-	`sha256:dd92ac75a07ca5f3ac0752bc6f9b254218e50aa3974d98a077a431648f480eae`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a008d33e007ead8cfefe6c6839973c4638436b7ebad9b4847e33b08577bcdd53`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:4eba6b8b6793f41d9aa18ea81e3fa88d8fbd554682ccaf603a75e08a29d015ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e6a3e1aeccfb33b6bf1722ec2bc4f2a7e346d4f693892757dc0e9acd4050dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:18:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:22:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:22:12 GMT
USER memcache
# Wed, 21 Oct 2026 23:22:12 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:22:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41092b4b2d6e8c87a52eaf15cc23f2d41f506239ccdce5e8536acb0e6908add3`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9317b086318c2ffe1e94e221d82a387252336cb69b61acb5aefa0e9436e6e290`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 114.3 KB (114309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310b7e4ba79ab4cacb2be2bffc90604b59b34ebc2f511cbda72178847a7fbd5a`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 2.0 MB (2004219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569c8026ab7fddc18cbcf1d455fa424a036b2e9837c205fbabb7748b7fab68a2`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2528a5ff882cb220f13bba4f2f88e7918d059180690031c5b7146c4537eda16e`  
		Last Modified: Wed, 21 Oct 2026 23:22:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b4933d33f2296f19137fb5f54e70e554609cf0b287257f48ebf8e458e17dfd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4c93558b2bfc086513e76dca5417d6eda89db9640fd5e34815c20cb2c8efe3`

```dockerfile
```

-	Layers:
	-	`sha256:5ef226d1de92865eddd7de01b218e0ae06c681a28b04bab94584b47e512e2b82`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6c527dfc7341707fb1bcd543e79adb3a3715fec1535b8c6e3d2ce86672558d6`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine3.24`

```console
$ docker pull memcached@sha256:6a089e37cbb8acd75c80c6c0667fe57ec54db68782fb1b3afb1d0eb265e50070
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
$ docker pull memcached@sha256:9057793717e87e054636eaf06cf8ec2792a3ad164ad9e8bcae1e90241ea73fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5eba4fb025850bd1df258f435078ef997189beef8f412662adfbb34f2a9212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:46:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 22:46:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 22:49:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:49:34 GMT
USER memcache
# Wed, 21 Oct 2026 22:49:34 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 22:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e70e4bd8f1f3d5ea44e6a1ddcc95274ad4729e4de9ceda4c5a97400d65bae5`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a156def0c0fa56c7626495682fc7eeee082def10e8b2db69c989ff7c7cb1438d`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 106.1 KB (106085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc88b49aeeb094738da98e5205a2623e1df8d96c8789b1028b08c0f018488a0`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 2.0 MB (1971716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1d13955f5ed4a4c30aa3078f7c9eeb1cd070e449727f0d83cd0bb5c8460815`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a07806802fe4959e44969d2de7d461bbd9b52b7931b947d350dd082539d63`  
		Last Modified: Wed, 21 Oct 2026 22:49:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b61d0547032cc30541432f5ac6291e641910e0dec6a418a6c2ea8fa4900f7fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c6ca8c52367ff2be20af54dadee796968d1d4444b8e012f03d85ec3ac8c298`

```dockerfile
```

-	Layers:
	-	`sha256:36891509f6d31e487d9f458ebf7759b7e93c9985a49198a34aea92f735a8380a`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e306fe35cdb2574563d8869211071e8e0696133bd5f5bf627b690cfa6de7e0d1`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:0c6b9fa9dffbcb40ea942fa5ba6a4a183652671496f455b5fbe2c8b47f51c1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5581970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ccf018f1c03dbdd208b5bb0efd70c9c0ea4c1d1e6083fead0d80be0fbb65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:14:25 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:14:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:17:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:17:29 GMT
USER memcache
# Wed, 21 Oct 2026 23:17:29 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:17:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68195c37b284f78ce9c47ed39422c83429bf8dcf6e746ea5feb6bbb616047c84`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8169f79072d0f0706633797d50f895072c77a08d4fd01e1642521da2184417e3`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 102.6 KB (102642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f318ae2e3cb5e365fec3847cd1ffd9e6a0fc0b5ebb04dcad8fc7241308f67c`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 1.9 MB (1919687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05832fed580324b8d575dee1b5ad17d126e87e59644be64726d7906ea1757a4`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ace68499ce7a80dba420f19589ec3e7a1fd785d2cfe4a4f1461320991149e53`  
		Last Modified: Wed, 21 Oct 2026 23:17:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5434a3fdca413469f9173c8953c679bdd52edf28d12237d988563e49e618c18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f930504ace3729e9def0ba000e85580dc0e32948914548d1462a8c9c4ca34a3`

```dockerfile
```

-	Layers:
	-	`sha256:5badc53eba059b3e3accba31d3d9b5ee29aec66512171fd67ba1b842b8d64707`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 20.5 KB (20466 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:aa7ae3ba559ea809acb9823081e505ccd5283a0fda1096337d05c7bda079b089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d63aecc8867e28617473dbbddbd621bda73506c10415c39bb29dc149d0e5b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:31 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:17:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:20:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:28 GMT
USER memcache
# Wed, 21 Oct 2026 23:20:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:20:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1846c42df8aca15ae481f3b25bea3c4128e2d6d8fd5a2367eb24e410009b67e`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322a46f316ded9c44b6e8a333ec214ec0fc5fd8dc5ad5ea2999f6c925d74b652`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 92.4 KB (92364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b16facb2a59a8ef627a79f6cdc4144e884dd60efd34bc148cc0a84bc8d0ac0f`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 1.9 MB (1879166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7138cd10e7b9e4e533bb4137ae2b67db4b3cb6c413aeeee17fa3c3612da770`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d47b9d2e07c02d6578a5d9ed86d7dba09756f3dfd2df95d66fc69266e340b03`  
		Last Modified: Wed, 21 Oct 2026 23:20:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:47741c65ed1a3e52394501696187c4bc766c5f6b2d935ac1269c499940a18706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4eaeede9b2735bd010a5cfaed0533733ec938489e99406d587bc0f54f7383b9`

```dockerfile
```

-	Layers:
	-	`sha256:bd6f3363d1ce0c9fd0893ec4a07f65d8ed17176c16a493674168d07b67664cf6`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d750e5d04f934a7e700c96c7fe5dd7e815b5c10a14690247a16703019ed7bf1`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:e09dcc0bc98221ed468081adaa4a78c61d2161f475b1aa0cd282e18573a8ede7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defdcf9518f8b6888f59edc0def29850b688bef32db5ccf3390b5a18128abdee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:56 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:57 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:45 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617bded82bb6ae44db306d2e2a13f2bb37f25543935c716a36b32184c682886d`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c29514be041e3f74ffd8cff4eaf12fd9edd6ca1239b69ddc9551abb43618239`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf45e1e3a6062c2e0742d88c3c70d9fe819b458818bbd00389e29d325de56376`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 1.9 MB (1948985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b93bb74be2e3b89290de7700318062984d7b5b29aeb3f20ca5cc2ca205b0427`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb55bb80afaa1a5a1d66dff646c9cee9ff7e6ef28a02528613af3fd68f168c16`  
		Last Modified: Wed, 21 Oct 2026 23:15:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:1377acc5441cfb25433b073c85f8710eeeb363037d21806c6f8d5464dc7f2762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7a9c92ec42a3d4f460a4badf5bf3dc7d7ec3e889f96c62e0d0b23531295e75`

```dockerfile
```

-	Layers:
	-	`sha256:69f77a1a233632e1f5ee2b0c788a4c1fe28569b7ac7be8c63a37894acb2da0de`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0703ac9181e97e53b3a3b06e7b0e6cebd574e4a516ea8d35d56d497cb94b25e`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:d5338e90fd38277a070f0d62c46c453641805a02a54606d55248cc4ca6d71623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5716902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f58076f5a82cd2381ceaf2a06841fcab18180ef07c27c2269af196814858ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:28 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:28 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:10 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:10 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925d42c7691467c67cd55d10f13c07ab429e5118d8be412ac5c8e09144a5ccf0`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8ccc8c730754ad39a7801c2c75caf71ff177bda7aeb354948158977afe36e`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5209cf6d4aafba79c1504ad0ebb615284cdee1604b2de6d93c8d5253410ef48`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 1.9 MB (1925822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153e6978211a88e23c8d1fc6ed77073843edba0f9fb752e4624942299cd12e13`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0a3b71b0aff23f9fdfe65f5039d666cb7d2791e0c1d8b59238663be5db2a82`  
		Last Modified: Wed, 21 Oct 2026 23:15:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:75347d8d359d22d8aa606902f3458a85481ecae0e5267497d69710f44bef2aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b6f5e3c98290db412f45a26f93fd875e467d3184242199164c12567d99f6c`

```dockerfile
```

-	Layers:
	-	`sha256:0cbedce9a1143ba41f5c125263cccd68e870a54e067622312884e79796860513`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01aed577ecae52b0d52468be6c2673e08d5bbab3e380558de684e3d08638f46f`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:8255445e665c15f2a710f591cb04112733944a6ae005e084aad0410d2c84ae18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6600255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e54bf4534c1bf00ed452941625f5b73c878b62e5638167170ef9c114ca98f0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:33:34 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 22 Oct 2026 10:33:39 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 22 Oct 2026 10:57:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 22 Oct 2026 10:57:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:57:28 GMT
USER memcache
# Thu, 22 Oct 2026 10:57:28 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 22 Oct 2026 10:57:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0b5d981965a7eea23aa8a355222c2ca7598523f69c191bcf4904806f9ba05d`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25c7ff614282d4cf6e5d66b06ec376f5e54d6ff6ffcc5a2a03c2c16d7e715a0`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 126.3 KB (126270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9322ba4ef3aa847960185444ff51c85ae3d56b37d65f2ffc94c3716a739b4a6b`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 2.7 MB (2651807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d348ee12ceca7625b020390e7ba990fad413a725636bdc567f696792166f3a`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add0bf7caeaf5e98a78fc4697f7a482514e767f54edcdb0e17091ef819116a63`  
		Last Modified: Thu, 22 Oct 2026 10:57:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a76b8d277908e3f984d3c85f84992092ed44e517ee0daf85520da5dbe27712e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b987ca683754179e74dd9a510a0afb1e08910747e7d1cf1975140284752256`

```dockerfile
```

-	Layers:
	-	`sha256:8340ad978eeca6670e5b62946404c62a310449955a2b06e5ab1bb5e6c92b610f`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7cb43688dbd532e38a0fd77f771553f1a1d530a3b61dca32da265563b8a4ea7`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:62a23a9199acafed359e011c95d8ec002d61dd3ad36d00e9af7d6bd8d0dbb8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbb452b8d936eeffbd250b55dd898b01b0ae316869597b01035827ba31ab0cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:09:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 24 Oct 2026 16:09:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 24 Oct 2026 16:23:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 24 Oct 2026 16:23:29 GMT
USER memcache
# Sat, 24 Oct 2026 16:23:29 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 24 Oct 2026 16:23:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3814776510feb3317de434806b0e0f606ef96c0d9b7f58ecb429fe8d6eca13b2`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f5fe627e72afb881e47420315e23c54cbec13109efa772d07d554e5f94d617`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 108.9 KB (108910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c018182577105ecc27bb03f746357cdc8363e406dd97ec7e42b00ca4ffa3d5`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 2.1 MB (2057822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcde6efdc71dea73858483bb05463f3fdecfe91b86b66e39c6b2236c276f125`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c17b6e240295e6dc91ec13ed3520622e2fcd6ffefc863f4b056aff8ba01782b`  
		Last Modified: Sat, 24 Oct 2026 16:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:61fb287ba1b9e5408a9b1fb8902e3c64c79338da03d5b9878b2117cfb2079ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50523ba6375bced59116a92f95d7c99abadad12da0eb606f462c2bb9c682e56d`

```dockerfile
```

-	Layers:
	-	`sha256:dd92ac75a07ca5f3ac0752bc6f9b254218e50aa3974d98a077a431648f480eae`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a008d33e007ead8cfefe6c6839973c4638436b7ebad9b4847e33b08577bcdd53`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:4eba6b8b6793f41d9aa18ea81e3fa88d8fbd554682ccaf603a75e08a29d015ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e6a3e1aeccfb33b6bf1722ec2bc4f2a7e346d4f693892757dc0e9acd4050dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:18:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:22:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:22:12 GMT
USER memcache
# Wed, 21 Oct 2026 23:22:12 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:22:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41092b4b2d6e8c87a52eaf15cc23f2d41f506239ccdce5e8536acb0e6908add3`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9317b086318c2ffe1e94e221d82a387252336cb69b61acb5aefa0e9436e6e290`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 114.3 KB (114309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310b7e4ba79ab4cacb2be2bffc90604b59b34ebc2f511cbda72178847a7fbd5a`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 2.0 MB (2004219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569c8026ab7fddc18cbcf1d455fa424a036b2e9837c205fbabb7748b7fab68a2`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2528a5ff882cb220f13bba4f2f88e7918d059180690031c5b7146c4537eda16e`  
		Last Modified: Wed, 21 Oct 2026 23:22:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b4933d33f2296f19137fb5f54e70e554609cf0b287257f48ebf8e458e17dfd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4c93558b2bfc086513e76dca5417d6eda89db9640fd5e34815c20cb2c8efe3`

```dockerfile
```

-	Layers:
	-	`sha256:5ef226d1de92865eddd7de01b218e0ae06c681a28b04bab94584b47e512e2b82`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6c527dfc7341707fb1bcd543e79adb3a3715fec1535b8c6e3d2ce86672558d6`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-trixie`

```console
$ docker pull memcached@sha256:a395a1bcf5e0e2b0fa4a0142e12b4e24a2320ba4b7c6ffa8655a1a86e8f29dee
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
$ docker pull memcached@sha256:b09d8056beefa72d8eada019a3f1fdc0670e47b97351db2b33685527e7e1b193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32280777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7429accb3c98adafd643261acc1fb1511d1d1b6ccb3246b9f40689dfbaf4f682`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:05 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f59709ac522354942fd5d8336e87aac813474966fc5dcf9baf2bfe6428e2cc1`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe416a42ea0fa3e6c8e18211fa75d40c32b76d8aaab80436e6835711fe8c7202`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 136.7 KB (136738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f5b41d8085c45639d9e07268d3270d546ae07c5edd37a2dcbc7f56875fb8f9`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.3 MB (2286395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95840eb2dffa836786a2d402531a223d5ed5e417b1b3a61bb8bf350b351fa07c`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65e582d750a7a405967d6eedf15bfd5ec589fe621b170d25a7c9e7d4febf28d`  
		Last Modified: Thu, 05 Nov 2026 07:20:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6a9149ab0669b6bbad0120c257d4d56c2db19fc8dbd063d1599d0289f2033c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac9f6108ca7cf1942dd40448b1bf3caf90d5251efc1cbbdeb4d2e1ecdbbced6`

```dockerfile
```

-	Layers:
	-	`sha256:e7f04e782a521af9b744a8d7a0783507384d2b54a360f070ca3af3c0b7ae8381`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:537700077b3750e37d8de6264b05b233fd9ddc40348a6eef06035e760d328d2d`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:d927435e55cc7a4271f7964cef0aa6029ba65115aebce1a8715c5a8f326b8100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30382679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad07e25e1c5de259a8d635a2529bc87489a39bb732daadb1fd16222e95fa72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:21 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:44 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f80434370c6d6ab5e03c0b78d5cdba2f5bf99b7b803ea8f57ddb49c1cfdb91`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1f81a3e6e8ee403e1c379f6c4d12f7f37d4ebc9d7cba65cedddb9ebd1c033c`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 144.2 KB (144205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b757afb023255818f1679772ef6af4ea378b5cd304ef1f76d01b644ef3c722`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.2 MB (2217349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdfc21754247d72d569005aa49f6a0c8d16000bc6669523110bf42a36babda8`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455ba4cd950f06abaa37bbbb3e5c472fba9163b5fa0d9cf5893dc2302a4ced95`  
		Last Modified: Thu, 05 Nov 2026 07:17:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:0e86d2647a02754e5125e88f2289978ec08e03b54d2cc16a546ad6afd9ae1d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6252d2ea2287dedc5ae2b88efdda6dbaed462364309b2a18ffe9adfef6fb3f5`

```dockerfile
```

-	Layers:
	-	`sha256:9d2ef246bef6f5f3501aa1fed6cf7eec591ad9eb195c702f075f851b24cec730`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d4bd1332de18173219995444bfd1a44dcbbecc2673a67a915863e6c371f2f0e`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:40954f2e6d2de2d20332fca63b96fcca77c21dfb8f52cd13f9be0bf94c92d014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28581444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb9f1ee51a7f9a06c2977be71e6324d9340dadeaee287682788a47cf129d54d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:18:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:21:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:21:25 GMT
USER memcache
# Thu, 05 Nov 2026 07:21:25 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:21:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa607dc202d742554fbca912173ca7c52435649286586406488665bcd214e5f`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b249ef119581b39ee16cd534b94b7b693485c832086995710993192f533bb5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 135.4 KB (135393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432e553e19db762ae4453b4637cb5707f9a088e3a543bdb7f5154ca099a31d2`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 2.2 MB (2171624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea25d8c2f7331ace06740202126242c8c1c6b1361a83b03ed7a2a0720d6839eb`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be282f4e38e25ce564d8555eae6a6fdfc03ac38c6457ec6bb23aaeb440de07a`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:275a220ae23abbed756419df367cab4740030bff8721465e81ebee52191c3b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120588f89a2dc8e0c243151dd8b7c9b27f14a74759292788dd11e2e4051621ba`

```dockerfile
```

-	Layers:
	-	`sha256:9645f04369d35851eb7ebc06d9b1438172df776d1407c063aa0ff959a45a1057`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39147cc4290ffc8c1ac49b1d4a8a825a461ac8c0e4cd8da27f151ec98e9192e5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d37d9f141845d208688b347704148fe8c0269386180197f02df02fe7ff6aa8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15dd487cd49428dbe61a263d3ad4df729a0fcc2e71d259bd3716c112a38956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:19 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:23 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:23 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49749bbca8c54ece169a63a50bd44188604eb744779e9c6a59c9668ee40603b`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb188c8ca8e350704d799919dd52f265401daa0e30c1c8c71af17cb678d00c72`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 153.5 KB (153542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b7fa681140d8e5c9cacbf0f1407cefdbc47adbc193ac8f3da6fac9eed5c5`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.3 MB (2266876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5898a0e025521f5d01f1c4f59bc5fa2141ce72cbcb5b8fec6a4f28d72223397f`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e277933109fcef09b52e7ff2d2f0b01b7523db507efef35c7f2ad6acef3dae0`  
		Last Modified: Thu, 05 Nov 2026 07:20:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:65be82ce19bef1808704a6436925cca7650e822bb06b0cdbf5b5ab7a204eb9ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255c054e753da8928856917107b759cce96bce5e4e21d8d0939ea3a275fe3a79`

```dockerfile
```

-	Layers:
	-	`sha256:2fe57407f244d3b0e5676d0b8590016acc7af5e4ab451c530dcd1088160c05ac`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ec8b663f5686539d7a4d441af52f312b57598244cc908a7fadd4d1b2286a8c`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; 386

```console
$ docker pull memcached@sha256:8c354712fdc002149b1dfec00efef6ed93b23926d4be3cb9ec34f212a24474fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33751081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2811a32e110cfac2c43b7e606c0964b327d5e760b5b6ad1751d68d4f315efc87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:49 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:49 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897af33699c937368d898d331a073893837697f25aa2ee300773c4076a0e0963`  
		Last Modified: Thu, 05 Nov 2026 07:17:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c153beb0c28113dfed58ee882e8a9ad057b51f7f07af172d9c9024e228652311`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 147.6 KB (147562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fbe6636116d68358c6a5ad6333e1b90cfc61ff49cfbfc895b4dfe9357dc6be`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.2 MB (2231247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be59883fde6704085f0318c5d2d5635ed5d6a5db39c64b616fcbb4534409fd28`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21aca5aa44854f42e8e996a6d7b2cebe4b21ea00d23ad4ccff069507b2f64aae`  
		Last Modified: Thu, 05 Nov 2026 07:17:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:328e5fcb1eb4d6ccb7299bd7feeccfc33cbd81e6b28fe399da9a5a06bd74f31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f90dc7d65445ecc3b564213856fca0ba921b9025eddd0fc3bac7ba4bb5c6668`

```dockerfile
```

-	Layers:
	-	`sha256:e5660e6bf8462963ca0b8456baa55698169bc57d3d056f13cdb2940617ad4e82`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f6e118825aab04cff2f29f8b0243d9723878a2b4ae31e597e77c31794c7b1fe`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:3ea8455d0258881f29f2c18ab7b2a75a8b9f4d3d51b8a9775a7442d0e61dff1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36829374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32751ee77730d0c966d9aabd831eea60e8c7bb058b0abb136ded3f9d7b4b9aeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:26:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:50:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:50:48 GMT
USER memcache
# Thu, 05 Nov 2026 07:50:48 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:50:48 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad79880010b426b3e87ea908d773a76c8404eeaebc98f13bedd948931341aed8`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35794a16da4fbb9cad55805ee7f2a01ecc52aab7440493c93ca5d96ee01f11b0`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 170.4 KB (170402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4086cbf68d82ca027eb1f39aea32d1e58019311d2dc6336c39bc2351ed8f97e6`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 3.0 MB (2989811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250339d42def0f8a03cd8ff0a19bc1c4b8d3a5ae1f4056cd43012669a230a16b`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a76e0cec9c36e6c2cccfdbfdfa12c325104603d9b560400a9c60d8d7f00cca2`  
		Last Modified: Thu, 05 Nov 2026 07:51:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6653a4b926bf3e2f644b05af7e18c06d8371ec73622e42d205dcc0e0e8c4ff29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891aa44d54e6ee9fac72066779b5a5bd74615ebf9f5c2a2308cc748e7d57f502`

```dockerfile
```

-	Layers:
	-	`sha256:fdd57b75bb6a0357843f4e2b6f4a007efd37db43702a3bc94e7bd57b5774f8f2`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc7cc43aee22466291b8ad8d92a6b701f4d800153ebad72a88843b0e0c79443`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:e45f1f7e40d9442fd61e3afcbc7711d993994e4e2cd2e7ac5967a799b1c8ecf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30694152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ccc4d122be45d7746b2a13ddfe72a37fcdf2851b765cf14ecbebd76d868f33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:42:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 11:43:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 11:57:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 11:57:12 GMT
USER memcache
# Thu, 05 Nov 2026 11:57:12 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 11:57:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4e2c560a4e6fbd4faeba39786948501e4098d7de4ec8f0d2689fd697a0de3f`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b3c53ed9ccd2a94f4c0377152b3f9e67582b0a5680887c2b073f944c6fbf04`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 133.1 KB (133122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e1207719b823f806678bb9300f0416007fd720211ffe3db5668ac4cdac85f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.2 MB (2213334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df294386699007bd47d1c015d2c7d039929d83ae83695584fb4aecbcf1982db`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b8c61d81801921c80454e0eeb14e691ba809266de06c4d02a034711421d57f`  
		Last Modified: Thu, 05 Nov 2026 11:58:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3fb8ee7b75a894301c9b94521e0f03e95c06bdd2c61948bbd7d313e365be7937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:211761d90fe530ce3ec20364190033c339a87cb1d5d9372144ae62c9b5993aea`

```dockerfile
```

-	Layers:
	-	`sha256:ff0864b4ac18d4f64077f1dbf836240462c4694976978b98961e2f9459b8d3f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29b33b082ee4c7fb6bdc1dafa09f4a980928879f925fdba87eb52226692fadab`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:120591cbb1cddf6d4d0f1488bed5baba7097147f398bcaa78c85424265db9a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32367588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3df2df743b4f58fe6dfc66dd1525a62e4770655e1f0fae6ac55339b59fb5ee5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 09:16:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 09:16:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 09:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 09:19:45 GMT
USER memcache
# Thu, 05 Nov 2026 09:19:45 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 09:19:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea4474c25254e742cd463f5e36abdf7bef82459bbed9a2e51b1bc72f6f8a550`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24dbd1a440ce097dc597de0a62369bb003fd72049353e8500317fad988516397`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 140.6 KB (140560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38e355a1ecd9159bb5d5b3f38d992079607cbae5a4e28106f486110b3ac95a8`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.3 MB (2301401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8600a708b640ea89e806270702e22a2529fa3c6c477531979ee1941c3541f6`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0123612f72a4c2ec69f2e155b1e9644f866f750c6d72d5da043d379e83aeece`  
		Last Modified: Thu, 05 Nov 2026 09:19:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:db1c1a725bf8252033f12233790b415f5dfad7f925135af7c6fcf0062f2a584e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7327e5f49237a141abc786c74694708e13f89a1d0b8f10801f2942695a4d0c`

```dockerfile
```

-	Layers:
	-	`sha256:fd54b26407096245a9a1a47c90cb8f0c71e08848cefd6b43da022b2a8bea855d`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3209868ba1c2f16c58eb46bde310156c0d2677d439a70d2cfcc57bc908e809b7`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45`

```console
$ docker pull memcached@sha256:a395a1bcf5e0e2b0fa4a0142e12b4e24a2320ba4b7c6ffa8655a1a86e8f29dee
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
$ docker pull memcached@sha256:b09d8056beefa72d8eada019a3f1fdc0670e47b97351db2b33685527e7e1b193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32280777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7429accb3c98adafd643261acc1fb1511d1d1b6ccb3246b9f40689dfbaf4f682`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:05 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f59709ac522354942fd5d8336e87aac813474966fc5dcf9baf2bfe6428e2cc1`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe416a42ea0fa3e6c8e18211fa75d40c32b76d8aaab80436e6835711fe8c7202`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 136.7 KB (136738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f5b41d8085c45639d9e07268d3270d546ae07c5edd37a2dcbc7f56875fb8f9`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.3 MB (2286395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95840eb2dffa836786a2d402531a223d5ed5e417b1b3a61bb8bf350b351fa07c`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65e582d750a7a405967d6eedf15bfd5ec589fe621b170d25a7c9e7d4febf28d`  
		Last Modified: Thu, 05 Nov 2026 07:20:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:6a9149ab0669b6bbad0120c257d4d56c2db19fc8dbd063d1599d0289f2033c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac9f6108ca7cf1942dd40448b1bf3caf90d5251efc1cbbdeb4d2e1ecdbbced6`

```dockerfile
```

-	Layers:
	-	`sha256:e7f04e782a521af9b744a8d7a0783507384d2b54a360f070ca3af3c0b7ae8381`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:537700077b3750e37d8de6264b05b233fd9ddc40348a6eef06035e760d328d2d`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v5

```console
$ docker pull memcached@sha256:d927435e55cc7a4271f7964cef0aa6029ba65115aebce1a8715c5a8f326b8100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30382679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad07e25e1c5de259a8d635a2529bc87489a39bb732daadb1fd16222e95fa72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:21 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:44 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f80434370c6d6ab5e03c0b78d5cdba2f5bf99b7b803ea8f57ddb49c1cfdb91`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1f81a3e6e8ee403e1c379f6c4d12f7f37d4ebc9d7cba65cedddb9ebd1c033c`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 144.2 KB (144205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b757afb023255818f1679772ef6af4ea378b5cd304ef1f76d01b644ef3c722`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.2 MB (2217349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdfc21754247d72d569005aa49f6a0c8d16000bc6669523110bf42a36babda8`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455ba4cd950f06abaa37bbbb3e5c472fba9163b5fa0d9cf5893dc2302a4ced95`  
		Last Modified: Thu, 05 Nov 2026 07:17:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:0e86d2647a02754e5125e88f2289978ec08e03b54d2cc16a546ad6afd9ae1d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6252d2ea2287dedc5ae2b88efdda6dbaed462364309b2a18ffe9adfef6fb3f5`

```dockerfile
```

-	Layers:
	-	`sha256:9d2ef246bef6f5f3501aa1fed6cf7eec591ad9eb195c702f075f851b24cec730`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d4bd1332de18173219995444bfd1a44dcbbecc2673a67a915863e6c371f2f0e`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v7

```console
$ docker pull memcached@sha256:40954f2e6d2de2d20332fca63b96fcca77c21dfb8f52cd13f9be0bf94c92d014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28581444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb9f1ee51a7f9a06c2977be71e6324d9340dadeaee287682788a47cf129d54d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:18:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:21:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:21:25 GMT
USER memcache
# Thu, 05 Nov 2026 07:21:25 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:21:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa607dc202d742554fbca912173ca7c52435649286586406488665bcd214e5f`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b249ef119581b39ee16cd534b94b7b693485c832086995710993192f533bb5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 135.4 KB (135393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432e553e19db762ae4453b4637cb5707f9a088e3a543bdb7f5154ca099a31d2`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 2.2 MB (2171624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea25d8c2f7331ace06740202126242c8c1c6b1361a83b03ed7a2a0720d6839eb`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be282f4e38e25ce564d8555eae6a6fdfc03ac38c6457ec6bb23aaeb440de07a`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:275a220ae23abbed756419df367cab4740030bff8721465e81ebee52191c3b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120588f89a2dc8e0c243151dd8b7c9b27f14a74759292788dd11e2e4051621ba`

```dockerfile
```

-	Layers:
	-	`sha256:9645f04369d35851eb7ebc06d9b1438172df776d1407c063aa0ff959a45a1057`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39147cc4290ffc8c1ac49b1d4a8a825a461ac8c0e4cd8da27f151ec98e9192e5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d37d9f141845d208688b347704148fe8c0269386180197f02df02fe7ff6aa8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15dd487cd49428dbe61a263d3ad4df729a0fcc2e71d259bd3716c112a38956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:19 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:23 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:23 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49749bbca8c54ece169a63a50bd44188604eb744779e9c6a59c9668ee40603b`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb188c8ca8e350704d799919dd52f265401daa0e30c1c8c71af17cb678d00c72`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 153.5 KB (153542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b7fa681140d8e5c9cacbf0f1407cefdbc47adbc193ac8f3da6fac9eed5c5`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.3 MB (2266876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5898a0e025521f5d01f1c4f59bc5fa2141ce72cbcb5b8fec6a4f28d72223397f`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e277933109fcef09b52e7ff2d2f0b01b7523db507efef35c7f2ad6acef3dae0`  
		Last Modified: Thu, 05 Nov 2026 07:20:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:65be82ce19bef1808704a6436925cca7650e822bb06b0cdbf5b5ab7a204eb9ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255c054e753da8928856917107b759cce96bce5e4e21d8d0939ea3a275fe3a79`

```dockerfile
```

-	Layers:
	-	`sha256:2fe57407f244d3b0e5676d0b8590016acc7af5e4ab451c530dcd1088160c05ac`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ec8b663f5686539d7a4d441af52f312b57598244cc908a7fadd4d1b2286a8c`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; 386

```console
$ docker pull memcached@sha256:8c354712fdc002149b1dfec00efef6ed93b23926d4be3cb9ec34f212a24474fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33751081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2811a32e110cfac2c43b7e606c0964b327d5e760b5b6ad1751d68d4f315efc87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:49 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:49 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897af33699c937368d898d331a073893837697f25aa2ee300773c4076a0e0963`  
		Last Modified: Thu, 05 Nov 2026 07:17:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c153beb0c28113dfed58ee882e8a9ad057b51f7f07af172d9c9024e228652311`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 147.6 KB (147562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fbe6636116d68358c6a5ad6333e1b90cfc61ff49cfbfc895b4dfe9357dc6be`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.2 MB (2231247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be59883fde6704085f0318c5d2d5635ed5d6a5db39c64b616fcbb4534409fd28`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21aca5aa44854f42e8e996a6d7b2cebe4b21ea00d23ad4ccff069507b2f64aae`  
		Last Modified: Thu, 05 Nov 2026 07:17:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:328e5fcb1eb4d6ccb7299bd7feeccfc33cbd81e6b28fe399da9a5a06bd74f31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f90dc7d65445ecc3b564213856fca0ba921b9025eddd0fc3bac7ba4bb5c6668`

```dockerfile
```

-	Layers:
	-	`sha256:e5660e6bf8462963ca0b8456baa55698169bc57d3d056f13cdb2940617ad4e82`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f6e118825aab04cff2f29f8b0243d9723878a2b4ae31e597e77c31794c7b1fe`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; ppc64le

```console
$ docker pull memcached@sha256:3ea8455d0258881f29f2c18ab7b2a75a8b9f4d3d51b8a9775a7442d0e61dff1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36829374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32751ee77730d0c966d9aabd831eea60e8c7bb058b0abb136ded3f9d7b4b9aeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:26:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:50:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:50:48 GMT
USER memcache
# Thu, 05 Nov 2026 07:50:48 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:50:48 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad79880010b426b3e87ea908d773a76c8404eeaebc98f13bedd948931341aed8`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35794a16da4fbb9cad55805ee7f2a01ecc52aab7440493c93ca5d96ee01f11b0`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 170.4 KB (170402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4086cbf68d82ca027eb1f39aea32d1e58019311d2dc6336c39bc2351ed8f97e6`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 3.0 MB (2989811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250339d42def0f8a03cd8ff0a19bc1c4b8d3a5ae1f4056cd43012669a230a16b`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a76e0cec9c36e6c2cccfdbfdfa12c325104603d9b560400a9c60d8d7f00cca2`  
		Last Modified: Thu, 05 Nov 2026 07:51:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:6653a4b926bf3e2f644b05af7e18c06d8371ec73622e42d205dcc0e0e8c4ff29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891aa44d54e6ee9fac72066779b5a5bd74615ebf9f5c2a2308cc748e7d57f502`

```dockerfile
```

-	Layers:
	-	`sha256:fdd57b75bb6a0357843f4e2b6f4a007efd37db43702a3bc94e7bd57b5774f8f2`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc7cc43aee22466291b8ad8d92a6b701f4d800153ebad72a88843b0e0c79443`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; riscv64

```console
$ docker pull memcached@sha256:e45f1f7e40d9442fd61e3afcbc7711d993994e4e2cd2e7ac5967a799b1c8ecf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30694152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ccc4d122be45d7746b2a13ddfe72a37fcdf2851b765cf14ecbebd76d868f33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:42:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 11:43:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 11:57:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 11:57:12 GMT
USER memcache
# Thu, 05 Nov 2026 11:57:12 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 11:57:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4e2c560a4e6fbd4faeba39786948501e4098d7de4ec8f0d2689fd697a0de3f`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b3c53ed9ccd2a94f4c0377152b3f9e67582b0a5680887c2b073f944c6fbf04`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 133.1 KB (133122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e1207719b823f806678bb9300f0416007fd720211ffe3db5668ac4cdac85f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.2 MB (2213334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df294386699007bd47d1c015d2c7d039929d83ae83695584fb4aecbcf1982db`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b8c61d81801921c80454e0eeb14e691ba809266de06c4d02a034711421d57f`  
		Last Modified: Thu, 05 Nov 2026 11:58:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:3fb8ee7b75a894301c9b94521e0f03e95c06bdd2c61948bbd7d313e365be7937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:211761d90fe530ce3ec20364190033c339a87cb1d5d9372144ae62c9b5993aea`

```dockerfile
```

-	Layers:
	-	`sha256:ff0864b4ac18d4f64077f1dbf836240462c4694976978b98961e2f9459b8d3f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29b33b082ee4c7fb6bdc1dafa09f4a980928879f925fdba87eb52226692fadab`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; s390x

```console
$ docker pull memcached@sha256:120591cbb1cddf6d4d0f1488bed5baba7097147f398bcaa78c85424265db9a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32367588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3df2df743b4f58fe6dfc66dd1525a62e4770655e1f0fae6ac55339b59fb5ee5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 09:16:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 09:16:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 09:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 09:19:45 GMT
USER memcache
# Thu, 05 Nov 2026 09:19:45 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 09:19:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea4474c25254e742cd463f5e36abdf7bef82459bbed9a2e51b1bc72f6f8a550`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24dbd1a440ce097dc597de0a62369bb003fd72049353e8500317fad988516397`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 140.6 KB (140560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38e355a1ecd9159bb5d5b3f38d992079607cbae5a4e28106f486110b3ac95a8`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.3 MB (2301401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8600a708b640ea89e806270702e22a2529fa3c6c477531979ee1941c3541f6`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0123612f72a4c2ec69f2e155b1e9644f866f750c6d72d5da043d379e83aeece`  
		Last Modified: Thu, 05 Nov 2026 09:19:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:db1c1a725bf8252033f12233790b415f5dfad7f925135af7c6fcf0062f2a584e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7327e5f49237a141abc786c74694708e13f89a1d0b8f10801f2942695a4d0c`

```dockerfile
```

-	Layers:
	-	`sha256:fd54b26407096245a9a1a47c90cb8f0c71e08848cefd6b43da022b2a8bea855d`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3209868ba1c2f16c58eb46bde310156c0d2677d439a70d2cfcc57bc908e809b7`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-alpine`

```console
$ docker pull memcached@sha256:6a089e37cbb8acd75c80c6c0667fe57ec54db68782fb1b3afb1d0eb265e50070
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
$ docker pull memcached@sha256:9057793717e87e054636eaf06cf8ec2792a3ad164ad9e8bcae1e90241ea73fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5eba4fb025850bd1df258f435078ef997189beef8f412662adfbb34f2a9212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:46:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 22:46:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 22:49:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:49:34 GMT
USER memcache
# Wed, 21 Oct 2026 22:49:34 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 22:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e70e4bd8f1f3d5ea44e6a1ddcc95274ad4729e4de9ceda4c5a97400d65bae5`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a156def0c0fa56c7626495682fc7eeee082def10e8b2db69c989ff7c7cb1438d`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 106.1 KB (106085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc88b49aeeb094738da98e5205a2623e1df8d96c8789b1028b08c0f018488a0`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 2.0 MB (1971716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1d13955f5ed4a4c30aa3078f7c9eeb1cd070e449727f0d83cd0bb5c8460815`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a07806802fe4959e44969d2de7d461bbd9b52b7931b947d350dd082539d63`  
		Last Modified: Wed, 21 Oct 2026 22:49:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b61d0547032cc30541432f5ac6291e641910e0dec6a418a6c2ea8fa4900f7fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c6ca8c52367ff2be20af54dadee796968d1d4444b8e012f03d85ec3ac8c298`

```dockerfile
```

-	Layers:
	-	`sha256:36891509f6d31e487d9f458ebf7759b7e93c9985a49198a34aea92f735a8380a`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e306fe35cdb2574563d8869211071e8e0696133bd5f5bf627b690cfa6de7e0d1`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:0c6b9fa9dffbcb40ea942fa5ba6a4a183652671496f455b5fbe2c8b47f51c1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5581970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ccf018f1c03dbdd208b5bb0efd70c9c0ea4c1d1e6083fead0d80be0fbb65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:14:25 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:14:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:17:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:17:29 GMT
USER memcache
# Wed, 21 Oct 2026 23:17:29 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:17:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68195c37b284f78ce9c47ed39422c83429bf8dcf6e746ea5feb6bbb616047c84`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8169f79072d0f0706633797d50f895072c77a08d4fd01e1642521da2184417e3`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 102.6 KB (102642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f318ae2e3cb5e365fec3847cd1ffd9e6a0fc0b5ebb04dcad8fc7241308f67c`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 1.9 MB (1919687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05832fed580324b8d575dee1b5ad17d126e87e59644be64726d7906ea1757a4`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ace68499ce7a80dba420f19589ec3e7a1fd785d2cfe4a4f1461320991149e53`  
		Last Modified: Wed, 21 Oct 2026 23:17:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5434a3fdca413469f9173c8953c679bdd52edf28d12237d988563e49e618c18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f930504ace3729e9def0ba000e85580dc0e32948914548d1462a8c9c4ca34a3`

```dockerfile
```

-	Layers:
	-	`sha256:5badc53eba059b3e3accba31d3d9b5ee29aec66512171fd67ba1b842b8d64707`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 20.5 KB (20466 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:aa7ae3ba559ea809acb9823081e505ccd5283a0fda1096337d05c7bda079b089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d63aecc8867e28617473dbbddbd621bda73506c10415c39bb29dc149d0e5b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:31 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:17:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:20:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:28 GMT
USER memcache
# Wed, 21 Oct 2026 23:20:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:20:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1846c42df8aca15ae481f3b25bea3c4128e2d6d8fd5a2367eb24e410009b67e`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322a46f316ded9c44b6e8a333ec214ec0fc5fd8dc5ad5ea2999f6c925d74b652`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 92.4 KB (92364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b16facb2a59a8ef627a79f6cdc4144e884dd60efd34bc148cc0a84bc8d0ac0f`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 1.9 MB (1879166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7138cd10e7b9e4e533bb4137ae2b67db4b3cb6c413aeeee17fa3c3612da770`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d47b9d2e07c02d6578a5d9ed86d7dba09756f3dfd2df95d66fc69266e340b03`  
		Last Modified: Wed, 21 Oct 2026 23:20:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:47741c65ed1a3e52394501696187c4bc766c5f6b2d935ac1269c499940a18706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4eaeede9b2735bd010a5cfaed0533733ec938489e99406d587bc0f54f7383b9`

```dockerfile
```

-	Layers:
	-	`sha256:bd6f3363d1ce0c9fd0893ec4a07f65d8ed17176c16a493674168d07b67664cf6`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d750e5d04f934a7e700c96c7fe5dd7e815b5c10a14690247a16703019ed7bf1`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:e09dcc0bc98221ed468081adaa4a78c61d2161f475b1aa0cd282e18573a8ede7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defdcf9518f8b6888f59edc0def29850b688bef32db5ccf3390b5a18128abdee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:56 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:57 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:45 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617bded82bb6ae44db306d2e2a13f2bb37f25543935c716a36b32184c682886d`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c29514be041e3f74ffd8cff4eaf12fd9edd6ca1239b69ddc9551abb43618239`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf45e1e3a6062c2e0742d88c3c70d9fe819b458818bbd00389e29d325de56376`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 1.9 MB (1948985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b93bb74be2e3b89290de7700318062984d7b5b29aeb3f20ca5cc2ca205b0427`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb55bb80afaa1a5a1d66dff646c9cee9ff7e6ef28a02528613af3fd68f168c16`  
		Last Modified: Wed, 21 Oct 2026 23:15:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:1377acc5441cfb25433b073c85f8710eeeb363037d21806c6f8d5464dc7f2762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7a9c92ec42a3d4f460a4badf5bf3dc7d7ec3e889f96c62e0d0b23531295e75`

```dockerfile
```

-	Layers:
	-	`sha256:69f77a1a233632e1f5ee2b0c788a4c1fe28569b7ac7be8c63a37894acb2da0de`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0703ac9181e97e53b3a3b06e7b0e6cebd574e4a516ea8d35d56d497cb94b25e`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; 386

```console
$ docker pull memcached@sha256:d5338e90fd38277a070f0d62c46c453641805a02a54606d55248cc4ca6d71623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5716902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f58076f5a82cd2381ceaf2a06841fcab18180ef07c27c2269af196814858ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:28 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:28 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:10 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:10 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925d42c7691467c67cd55d10f13c07ab429e5118d8be412ac5c8e09144a5ccf0`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8ccc8c730754ad39a7801c2c75caf71ff177bda7aeb354948158977afe36e`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5209cf6d4aafba79c1504ad0ebb615284cdee1604b2de6d93c8d5253410ef48`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 1.9 MB (1925822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153e6978211a88e23c8d1fc6ed77073843edba0f9fb752e4624942299cd12e13`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0a3b71b0aff23f9fdfe65f5039d666cb7d2791e0c1d8b59238663be5db2a82`  
		Last Modified: Wed, 21 Oct 2026 23:15:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:75347d8d359d22d8aa606902f3458a85481ecae0e5267497d69710f44bef2aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b6f5e3c98290db412f45a26f93fd875e467d3184242199164c12567d99f6c`

```dockerfile
```

-	Layers:
	-	`sha256:0cbedce9a1143ba41f5c125263cccd68e870a54e067622312884e79796860513`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01aed577ecae52b0d52468be6c2673e08d5bbab3e380558de684e3d08638f46f`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:8255445e665c15f2a710f591cb04112733944a6ae005e084aad0410d2c84ae18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6600255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e54bf4534c1bf00ed452941625f5b73c878b62e5638167170ef9c114ca98f0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:33:34 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 22 Oct 2026 10:33:39 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 22 Oct 2026 10:57:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 22 Oct 2026 10:57:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:57:28 GMT
USER memcache
# Thu, 22 Oct 2026 10:57:28 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 22 Oct 2026 10:57:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0b5d981965a7eea23aa8a355222c2ca7598523f69c191bcf4904806f9ba05d`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25c7ff614282d4cf6e5d66b06ec376f5e54d6ff6ffcc5a2a03c2c16d7e715a0`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 126.3 KB (126270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9322ba4ef3aa847960185444ff51c85ae3d56b37d65f2ffc94c3716a739b4a6b`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 2.7 MB (2651807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d348ee12ceca7625b020390e7ba990fad413a725636bdc567f696792166f3a`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add0bf7caeaf5e98a78fc4697f7a482514e767f54edcdb0e17091ef819116a63`  
		Last Modified: Thu, 22 Oct 2026 10:57:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a76b8d277908e3f984d3c85f84992092ed44e517ee0daf85520da5dbe27712e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b987ca683754179e74dd9a510a0afb1e08910747e7d1cf1975140284752256`

```dockerfile
```

-	Layers:
	-	`sha256:8340ad978eeca6670e5b62946404c62a310449955a2b06e5ab1bb5e6c92b610f`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7cb43688dbd532e38a0fd77f771553f1a1d530a3b61dca32da265563b8a4ea7`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:62a23a9199acafed359e011c95d8ec002d61dd3ad36d00e9af7d6bd8d0dbb8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbb452b8d936eeffbd250b55dd898b01b0ae316869597b01035827ba31ab0cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:09:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 24 Oct 2026 16:09:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 24 Oct 2026 16:23:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 24 Oct 2026 16:23:29 GMT
USER memcache
# Sat, 24 Oct 2026 16:23:29 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 24 Oct 2026 16:23:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3814776510feb3317de434806b0e0f606ef96c0d9b7f58ecb429fe8d6eca13b2`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f5fe627e72afb881e47420315e23c54cbec13109efa772d07d554e5f94d617`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 108.9 KB (108910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c018182577105ecc27bb03f746357cdc8363e406dd97ec7e42b00ca4ffa3d5`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 2.1 MB (2057822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcde6efdc71dea73858483bb05463f3fdecfe91b86b66e39c6b2236c276f125`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c17b6e240295e6dc91ec13ed3520622e2fcd6ffefc863f4b056aff8ba01782b`  
		Last Modified: Sat, 24 Oct 2026 16:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:61fb287ba1b9e5408a9b1fb8902e3c64c79338da03d5b9878b2117cfb2079ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50523ba6375bced59116a92f95d7c99abadad12da0eb606f462c2bb9c682e56d`

```dockerfile
```

-	Layers:
	-	`sha256:dd92ac75a07ca5f3ac0752bc6f9b254218e50aa3974d98a077a431648f480eae`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a008d33e007ead8cfefe6c6839973c4638436b7ebad9b4847e33b08577bcdd53`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:4eba6b8b6793f41d9aa18ea81e3fa88d8fbd554682ccaf603a75e08a29d015ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e6a3e1aeccfb33b6bf1722ec2bc4f2a7e346d4f693892757dc0e9acd4050dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:18:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:22:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:22:12 GMT
USER memcache
# Wed, 21 Oct 2026 23:22:12 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:22:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41092b4b2d6e8c87a52eaf15cc23f2d41f506239ccdce5e8536acb0e6908add3`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9317b086318c2ffe1e94e221d82a387252336cb69b61acb5aefa0e9436e6e290`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 114.3 KB (114309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310b7e4ba79ab4cacb2be2bffc90604b59b34ebc2f511cbda72178847a7fbd5a`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 2.0 MB (2004219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569c8026ab7fddc18cbcf1d455fa424a036b2e9837c205fbabb7748b7fab68a2`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2528a5ff882cb220f13bba4f2f88e7918d059180690031c5b7146c4537eda16e`  
		Last Modified: Wed, 21 Oct 2026 23:22:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b4933d33f2296f19137fb5f54e70e554609cf0b287257f48ebf8e458e17dfd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4c93558b2bfc086513e76dca5417d6eda89db9640fd5e34815c20cb2c8efe3`

```dockerfile
```

-	Layers:
	-	`sha256:5ef226d1de92865eddd7de01b218e0ae06c681a28b04bab94584b47e512e2b82`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6c527dfc7341707fb1bcd543e79adb3a3715fec1535b8c6e3d2ce86672558d6`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-alpine3.24`

```console
$ docker pull memcached@sha256:6a089e37cbb8acd75c80c6c0667fe57ec54db68782fb1b3afb1d0eb265e50070
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
$ docker pull memcached@sha256:9057793717e87e054636eaf06cf8ec2792a3ad164ad9e8bcae1e90241ea73fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5eba4fb025850bd1df258f435078ef997189beef8f412662adfbb34f2a9212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:46:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 22:46:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 22:49:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:49:34 GMT
USER memcache
# Wed, 21 Oct 2026 22:49:34 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 22:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e70e4bd8f1f3d5ea44e6a1ddcc95274ad4729e4de9ceda4c5a97400d65bae5`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a156def0c0fa56c7626495682fc7eeee082def10e8b2db69c989ff7c7cb1438d`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 106.1 KB (106085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc88b49aeeb094738da98e5205a2623e1df8d96c8789b1028b08c0f018488a0`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 2.0 MB (1971716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1d13955f5ed4a4c30aa3078f7c9eeb1cd070e449727f0d83cd0bb5c8460815`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a07806802fe4959e44969d2de7d461bbd9b52b7931b947d350dd082539d63`  
		Last Modified: Wed, 21 Oct 2026 22:49:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b61d0547032cc30541432f5ac6291e641910e0dec6a418a6c2ea8fa4900f7fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c6ca8c52367ff2be20af54dadee796968d1d4444b8e012f03d85ec3ac8c298`

```dockerfile
```

-	Layers:
	-	`sha256:36891509f6d31e487d9f458ebf7759b7e93c9985a49198a34aea92f735a8380a`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e306fe35cdb2574563d8869211071e8e0696133bd5f5bf627b690cfa6de7e0d1`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:0c6b9fa9dffbcb40ea942fa5ba6a4a183652671496f455b5fbe2c8b47f51c1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5581970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ccf018f1c03dbdd208b5bb0efd70c9c0ea4c1d1e6083fead0d80be0fbb65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:14:25 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:14:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:17:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:17:29 GMT
USER memcache
# Wed, 21 Oct 2026 23:17:29 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:17:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68195c37b284f78ce9c47ed39422c83429bf8dcf6e746ea5feb6bbb616047c84`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8169f79072d0f0706633797d50f895072c77a08d4fd01e1642521da2184417e3`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 102.6 KB (102642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f318ae2e3cb5e365fec3847cd1ffd9e6a0fc0b5ebb04dcad8fc7241308f67c`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 1.9 MB (1919687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05832fed580324b8d575dee1b5ad17d126e87e59644be64726d7906ea1757a4`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ace68499ce7a80dba420f19589ec3e7a1fd785d2cfe4a4f1461320991149e53`  
		Last Modified: Wed, 21 Oct 2026 23:17:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5434a3fdca413469f9173c8953c679bdd52edf28d12237d988563e49e618c18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f930504ace3729e9def0ba000e85580dc0e32948914548d1462a8c9c4ca34a3`

```dockerfile
```

-	Layers:
	-	`sha256:5badc53eba059b3e3accba31d3d9b5ee29aec66512171fd67ba1b842b8d64707`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 20.5 KB (20466 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:aa7ae3ba559ea809acb9823081e505ccd5283a0fda1096337d05c7bda079b089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d63aecc8867e28617473dbbddbd621bda73506c10415c39bb29dc149d0e5b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:31 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:17:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:20:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:28 GMT
USER memcache
# Wed, 21 Oct 2026 23:20:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:20:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1846c42df8aca15ae481f3b25bea3c4128e2d6d8fd5a2367eb24e410009b67e`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322a46f316ded9c44b6e8a333ec214ec0fc5fd8dc5ad5ea2999f6c925d74b652`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 92.4 KB (92364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b16facb2a59a8ef627a79f6cdc4144e884dd60efd34bc148cc0a84bc8d0ac0f`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 1.9 MB (1879166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7138cd10e7b9e4e533bb4137ae2b67db4b3cb6c413aeeee17fa3c3612da770`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d47b9d2e07c02d6578a5d9ed86d7dba09756f3dfd2df95d66fc69266e340b03`  
		Last Modified: Wed, 21 Oct 2026 23:20:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:47741c65ed1a3e52394501696187c4bc766c5f6b2d935ac1269c499940a18706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4eaeede9b2735bd010a5cfaed0533733ec938489e99406d587bc0f54f7383b9`

```dockerfile
```

-	Layers:
	-	`sha256:bd6f3363d1ce0c9fd0893ec4a07f65d8ed17176c16a493674168d07b67664cf6`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d750e5d04f934a7e700c96c7fe5dd7e815b5c10a14690247a16703019ed7bf1`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:e09dcc0bc98221ed468081adaa4a78c61d2161f475b1aa0cd282e18573a8ede7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defdcf9518f8b6888f59edc0def29850b688bef32db5ccf3390b5a18128abdee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:56 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:57 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:45 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617bded82bb6ae44db306d2e2a13f2bb37f25543935c716a36b32184c682886d`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c29514be041e3f74ffd8cff4eaf12fd9edd6ca1239b69ddc9551abb43618239`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf45e1e3a6062c2e0742d88c3c70d9fe819b458818bbd00389e29d325de56376`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 1.9 MB (1948985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b93bb74be2e3b89290de7700318062984d7b5b29aeb3f20ca5cc2ca205b0427`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb55bb80afaa1a5a1d66dff646c9cee9ff7e6ef28a02528613af3fd68f168c16`  
		Last Modified: Wed, 21 Oct 2026 23:15:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:1377acc5441cfb25433b073c85f8710eeeb363037d21806c6f8d5464dc7f2762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7a9c92ec42a3d4f460a4badf5bf3dc7d7ec3e889f96c62e0d0b23531295e75`

```dockerfile
```

-	Layers:
	-	`sha256:69f77a1a233632e1f5ee2b0c788a4c1fe28569b7ac7be8c63a37894acb2da0de`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0703ac9181e97e53b3a3b06e7b0e6cebd574e4a516ea8d35d56d497cb94b25e`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:d5338e90fd38277a070f0d62c46c453641805a02a54606d55248cc4ca6d71623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5716902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f58076f5a82cd2381ceaf2a06841fcab18180ef07c27c2269af196814858ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:28 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:28 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:10 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:10 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925d42c7691467c67cd55d10f13c07ab429e5118d8be412ac5c8e09144a5ccf0`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8ccc8c730754ad39a7801c2c75caf71ff177bda7aeb354948158977afe36e`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5209cf6d4aafba79c1504ad0ebb615284cdee1604b2de6d93c8d5253410ef48`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 1.9 MB (1925822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153e6978211a88e23c8d1fc6ed77073843edba0f9fb752e4624942299cd12e13`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0a3b71b0aff23f9fdfe65f5039d666cb7d2791e0c1d8b59238663be5db2a82`  
		Last Modified: Wed, 21 Oct 2026 23:15:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:75347d8d359d22d8aa606902f3458a85481ecae0e5267497d69710f44bef2aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b6f5e3c98290db412f45a26f93fd875e467d3184242199164c12567d99f6c`

```dockerfile
```

-	Layers:
	-	`sha256:0cbedce9a1143ba41f5c125263cccd68e870a54e067622312884e79796860513`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01aed577ecae52b0d52468be6c2673e08d5bbab3e380558de684e3d08638f46f`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:8255445e665c15f2a710f591cb04112733944a6ae005e084aad0410d2c84ae18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6600255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e54bf4534c1bf00ed452941625f5b73c878b62e5638167170ef9c114ca98f0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:33:34 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 22 Oct 2026 10:33:39 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 22 Oct 2026 10:57:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 22 Oct 2026 10:57:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:57:28 GMT
USER memcache
# Thu, 22 Oct 2026 10:57:28 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 22 Oct 2026 10:57:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0b5d981965a7eea23aa8a355222c2ca7598523f69c191bcf4904806f9ba05d`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25c7ff614282d4cf6e5d66b06ec376f5e54d6ff6ffcc5a2a03c2c16d7e715a0`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 126.3 KB (126270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9322ba4ef3aa847960185444ff51c85ae3d56b37d65f2ffc94c3716a739b4a6b`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 2.7 MB (2651807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d348ee12ceca7625b020390e7ba990fad413a725636bdc567f696792166f3a`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add0bf7caeaf5e98a78fc4697f7a482514e767f54edcdb0e17091ef819116a63`  
		Last Modified: Thu, 22 Oct 2026 10:57:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a76b8d277908e3f984d3c85f84992092ed44e517ee0daf85520da5dbe27712e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b987ca683754179e74dd9a510a0afb1e08910747e7d1cf1975140284752256`

```dockerfile
```

-	Layers:
	-	`sha256:8340ad978eeca6670e5b62946404c62a310449955a2b06e5ab1bb5e6c92b610f`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7cb43688dbd532e38a0fd77f771553f1a1d530a3b61dca32da265563b8a4ea7`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:62a23a9199acafed359e011c95d8ec002d61dd3ad36d00e9af7d6bd8d0dbb8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbb452b8d936eeffbd250b55dd898b01b0ae316869597b01035827ba31ab0cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:09:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 24 Oct 2026 16:09:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 24 Oct 2026 16:23:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 24 Oct 2026 16:23:29 GMT
USER memcache
# Sat, 24 Oct 2026 16:23:29 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 24 Oct 2026 16:23:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3814776510feb3317de434806b0e0f606ef96c0d9b7f58ecb429fe8d6eca13b2`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f5fe627e72afb881e47420315e23c54cbec13109efa772d07d554e5f94d617`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 108.9 KB (108910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c018182577105ecc27bb03f746357cdc8363e406dd97ec7e42b00ca4ffa3d5`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 2.1 MB (2057822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcde6efdc71dea73858483bb05463f3fdecfe91b86b66e39c6b2236c276f125`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c17b6e240295e6dc91ec13ed3520622e2fcd6ffefc863f4b056aff8ba01782b`  
		Last Modified: Sat, 24 Oct 2026 16:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:61fb287ba1b9e5408a9b1fb8902e3c64c79338da03d5b9878b2117cfb2079ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50523ba6375bced59116a92f95d7c99abadad12da0eb606f462c2bb9c682e56d`

```dockerfile
```

-	Layers:
	-	`sha256:dd92ac75a07ca5f3ac0752bc6f9b254218e50aa3974d98a077a431648f480eae`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a008d33e007ead8cfefe6c6839973c4638436b7ebad9b4847e33b08577bcdd53`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:4eba6b8b6793f41d9aa18ea81e3fa88d8fbd554682ccaf603a75e08a29d015ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e6a3e1aeccfb33b6bf1722ec2bc4f2a7e346d4f693892757dc0e9acd4050dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:18:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:22:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:22:12 GMT
USER memcache
# Wed, 21 Oct 2026 23:22:12 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:22:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41092b4b2d6e8c87a52eaf15cc23f2d41f506239ccdce5e8536acb0e6908add3`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9317b086318c2ffe1e94e221d82a387252336cb69b61acb5aefa0e9436e6e290`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 114.3 KB (114309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310b7e4ba79ab4cacb2be2bffc90604b59b34ebc2f511cbda72178847a7fbd5a`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 2.0 MB (2004219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569c8026ab7fddc18cbcf1d455fa424a036b2e9837c205fbabb7748b7fab68a2`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2528a5ff882cb220f13bba4f2f88e7918d059180690031c5b7146c4537eda16e`  
		Last Modified: Wed, 21 Oct 2026 23:22:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b4933d33f2296f19137fb5f54e70e554609cf0b287257f48ebf8e458e17dfd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4c93558b2bfc086513e76dca5417d6eda89db9640fd5e34815c20cb2c8efe3`

```dockerfile
```

-	Layers:
	-	`sha256:5ef226d1de92865eddd7de01b218e0ae06c681a28b04bab94584b47e512e2b82`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6c527dfc7341707fb1bcd543e79adb3a3715fec1535b8c6e3d2ce86672558d6`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-trixie`

```console
$ docker pull memcached@sha256:a395a1bcf5e0e2b0fa4a0142e12b4e24a2320ba4b7c6ffa8655a1a86e8f29dee
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
$ docker pull memcached@sha256:b09d8056beefa72d8eada019a3f1fdc0670e47b97351db2b33685527e7e1b193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32280777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7429accb3c98adafd643261acc1fb1511d1d1b6ccb3246b9f40689dfbaf4f682`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:05 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f59709ac522354942fd5d8336e87aac813474966fc5dcf9baf2bfe6428e2cc1`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe416a42ea0fa3e6c8e18211fa75d40c32b76d8aaab80436e6835711fe8c7202`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 136.7 KB (136738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f5b41d8085c45639d9e07268d3270d546ae07c5edd37a2dcbc7f56875fb8f9`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.3 MB (2286395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95840eb2dffa836786a2d402531a223d5ed5e417b1b3a61bb8bf350b351fa07c`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65e582d750a7a405967d6eedf15bfd5ec589fe621b170d25a7c9e7d4febf28d`  
		Last Modified: Thu, 05 Nov 2026 07:20:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6a9149ab0669b6bbad0120c257d4d56c2db19fc8dbd063d1599d0289f2033c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac9f6108ca7cf1942dd40448b1bf3caf90d5251efc1cbbdeb4d2e1ecdbbced6`

```dockerfile
```

-	Layers:
	-	`sha256:e7f04e782a521af9b744a8d7a0783507384d2b54a360f070ca3af3c0b7ae8381`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:537700077b3750e37d8de6264b05b233fd9ddc40348a6eef06035e760d328d2d`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:d927435e55cc7a4271f7964cef0aa6029ba65115aebce1a8715c5a8f326b8100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30382679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad07e25e1c5de259a8d635a2529bc87489a39bb732daadb1fd16222e95fa72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:21 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:44 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f80434370c6d6ab5e03c0b78d5cdba2f5bf99b7b803ea8f57ddb49c1cfdb91`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1f81a3e6e8ee403e1c379f6c4d12f7f37d4ebc9d7cba65cedddb9ebd1c033c`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 144.2 KB (144205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b757afb023255818f1679772ef6af4ea378b5cd304ef1f76d01b644ef3c722`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.2 MB (2217349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdfc21754247d72d569005aa49f6a0c8d16000bc6669523110bf42a36babda8`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455ba4cd950f06abaa37bbbb3e5c472fba9163b5fa0d9cf5893dc2302a4ced95`  
		Last Modified: Thu, 05 Nov 2026 07:17:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:0e86d2647a02754e5125e88f2289978ec08e03b54d2cc16a546ad6afd9ae1d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6252d2ea2287dedc5ae2b88efdda6dbaed462364309b2a18ffe9adfef6fb3f5`

```dockerfile
```

-	Layers:
	-	`sha256:9d2ef246bef6f5f3501aa1fed6cf7eec591ad9eb195c702f075f851b24cec730`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d4bd1332de18173219995444bfd1a44dcbbecc2673a67a915863e6c371f2f0e`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:40954f2e6d2de2d20332fca63b96fcca77c21dfb8f52cd13f9be0bf94c92d014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28581444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb9f1ee51a7f9a06c2977be71e6324d9340dadeaee287682788a47cf129d54d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:18:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:21:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:21:25 GMT
USER memcache
# Thu, 05 Nov 2026 07:21:25 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:21:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa607dc202d742554fbca912173ca7c52435649286586406488665bcd214e5f`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b249ef119581b39ee16cd534b94b7b693485c832086995710993192f533bb5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 135.4 KB (135393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432e553e19db762ae4453b4637cb5707f9a088e3a543bdb7f5154ca099a31d2`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 2.2 MB (2171624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea25d8c2f7331ace06740202126242c8c1c6b1361a83b03ed7a2a0720d6839eb`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be282f4e38e25ce564d8555eae6a6fdfc03ac38c6457ec6bb23aaeb440de07a`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:275a220ae23abbed756419df367cab4740030bff8721465e81ebee52191c3b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120588f89a2dc8e0c243151dd8b7c9b27f14a74759292788dd11e2e4051621ba`

```dockerfile
```

-	Layers:
	-	`sha256:9645f04369d35851eb7ebc06d9b1438172df776d1407c063aa0ff959a45a1057`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39147cc4290ffc8c1ac49b1d4a8a825a461ac8c0e4cd8da27f151ec98e9192e5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d37d9f141845d208688b347704148fe8c0269386180197f02df02fe7ff6aa8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15dd487cd49428dbe61a263d3ad4df729a0fcc2e71d259bd3716c112a38956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:19 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:23 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:23 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49749bbca8c54ece169a63a50bd44188604eb744779e9c6a59c9668ee40603b`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb188c8ca8e350704d799919dd52f265401daa0e30c1c8c71af17cb678d00c72`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 153.5 KB (153542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b7fa681140d8e5c9cacbf0f1407cefdbc47adbc193ac8f3da6fac9eed5c5`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.3 MB (2266876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5898a0e025521f5d01f1c4f59bc5fa2141ce72cbcb5b8fec6a4f28d72223397f`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e277933109fcef09b52e7ff2d2f0b01b7523db507efef35c7f2ad6acef3dae0`  
		Last Modified: Thu, 05 Nov 2026 07:20:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:65be82ce19bef1808704a6436925cca7650e822bb06b0cdbf5b5ab7a204eb9ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255c054e753da8928856917107b759cce96bce5e4e21d8d0939ea3a275fe3a79`

```dockerfile
```

-	Layers:
	-	`sha256:2fe57407f244d3b0e5676d0b8590016acc7af5e4ab451c530dcd1088160c05ac`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ec8b663f5686539d7a4d441af52f312b57598244cc908a7fadd4d1b2286a8c`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; 386

```console
$ docker pull memcached@sha256:8c354712fdc002149b1dfec00efef6ed93b23926d4be3cb9ec34f212a24474fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33751081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2811a32e110cfac2c43b7e606c0964b327d5e760b5b6ad1751d68d4f315efc87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:49 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:49 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897af33699c937368d898d331a073893837697f25aa2ee300773c4076a0e0963`  
		Last Modified: Thu, 05 Nov 2026 07:17:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c153beb0c28113dfed58ee882e8a9ad057b51f7f07af172d9c9024e228652311`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 147.6 KB (147562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fbe6636116d68358c6a5ad6333e1b90cfc61ff49cfbfc895b4dfe9357dc6be`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.2 MB (2231247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be59883fde6704085f0318c5d2d5635ed5d6a5db39c64b616fcbb4534409fd28`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21aca5aa44854f42e8e996a6d7b2cebe4b21ea00d23ad4ccff069507b2f64aae`  
		Last Modified: Thu, 05 Nov 2026 07:17:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:328e5fcb1eb4d6ccb7299bd7feeccfc33cbd81e6b28fe399da9a5a06bd74f31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f90dc7d65445ecc3b564213856fca0ba921b9025eddd0fc3bac7ba4bb5c6668`

```dockerfile
```

-	Layers:
	-	`sha256:e5660e6bf8462963ca0b8456baa55698169bc57d3d056f13cdb2940617ad4e82`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f6e118825aab04cff2f29f8b0243d9723878a2b4ae31e597e77c31794c7b1fe`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:3ea8455d0258881f29f2c18ab7b2a75a8b9f4d3d51b8a9775a7442d0e61dff1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36829374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32751ee77730d0c966d9aabd831eea60e8c7bb058b0abb136ded3f9d7b4b9aeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:26:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:50:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:50:48 GMT
USER memcache
# Thu, 05 Nov 2026 07:50:48 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:50:48 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad79880010b426b3e87ea908d773a76c8404eeaebc98f13bedd948931341aed8`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35794a16da4fbb9cad55805ee7f2a01ecc52aab7440493c93ca5d96ee01f11b0`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 170.4 KB (170402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4086cbf68d82ca027eb1f39aea32d1e58019311d2dc6336c39bc2351ed8f97e6`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 3.0 MB (2989811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250339d42def0f8a03cd8ff0a19bc1c4b8d3a5ae1f4056cd43012669a230a16b`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a76e0cec9c36e6c2cccfdbfdfa12c325104603d9b560400a9c60d8d7f00cca2`  
		Last Modified: Thu, 05 Nov 2026 07:51:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6653a4b926bf3e2f644b05af7e18c06d8371ec73622e42d205dcc0e0e8c4ff29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891aa44d54e6ee9fac72066779b5a5bd74615ebf9f5c2a2308cc748e7d57f502`

```dockerfile
```

-	Layers:
	-	`sha256:fdd57b75bb6a0357843f4e2b6f4a007efd37db43702a3bc94e7bd57b5774f8f2`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc7cc43aee22466291b8ad8d92a6b701f4d800153ebad72a88843b0e0c79443`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:e45f1f7e40d9442fd61e3afcbc7711d993994e4e2cd2e7ac5967a799b1c8ecf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30694152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ccc4d122be45d7746b2a13ddfe72a37fcdf2851b765cf14ecbebd76d868f33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:42:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 11:43:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 11:57:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 11:57:12 GMT
USER memcache
# Thu, 05 Nov 2026 11:57:12 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 11:57:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4e2c560a4e6fbd4faeba39786948501e4098d7de4ec8f0d2689fd697a0de3f`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b3c53ed9ccd2a94f4c0377152b3f9e67582b0a5680887c2b073f944c6fbf04`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 133.1 KB (133122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e1207719b823f806678bb9300f0416007fd720211ffe3db5668ac4cdac85f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.2 MB (2213334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df294386699007bd47d1c015d2c7d039929d83ae83695584fb4aecbcf1982db`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b8c61d81801921c80454e0eeb14e691ba809266de06c4d02a034711421d57f`  
		Last Modified: Thu, 05 Nov 2026 11:58:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3fb8ee7b75a894301c9b94521e0f03e95c06bdd2c61948bbd7d313e365be7937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:211761d90fe530ce3ec20364190033c339a87cb1d5d9372144ae62c9b5993aea`

```dockerfile
```

-	Layers:
	-	`sha256:ff0864b4ac18d4f64077f1dbf836240462c4694976978b98961e2f9459b8d3f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29b33b082ee4c7fb6bdc1dafa09f4a980928879f925fdba87eb52226692fadab`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:120591cbb1cddf6d4d0f1488bed5baba7097147f398bcaa78c85424265db9a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32367588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3df2df743b4f58fe6dfc66dd1525a62e4770655e1f0fae6ac55339b59fb5ee5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 09:16:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 09:16:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 09:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 09:19:45 GMT
USER memcache
# Thu, 05 Nov 2026 09:19:45 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 09:19:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea4474c25254e742cd463f5e36abdf7bef82459bbed9a2e51b1bc72f6f8a550`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24dbd1a440ce097dc597de0a62369bb003fd72049353e8500317fad988516397`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 140.6 KB (140560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38e355a1ecd9159bb5d5b3f38d992079607cbae5a4e28106f486110b3ac95a8`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.3 MB (2301401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8600a708b640ea89e806270702e22a2529fa3c6c477531979ee1941c3541f6`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0123612f72a4c2ec69f2e155b1e9644f866f750c6d72d5da043d379e83aeece`  
		Last Modified: Thu, 05 Nov 2026 09:19:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:db1c1a725bf8252033f12233790b415f5dfad7f925135af7c6fcf0062f2a584e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7327e5f49237a141abc786c74694708e13f89a1d0b8f10801f2942695a4d0c`

```dockerfile
```

-	Layers:
	-	`sha256:fd54b26407096245a9a1a47c90cb8f0c71e08848cefd6b43da022b2a8bea855d`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3209868ba1c2f16c58eb46bde310156c0d2677d439a70d2cfcc57bc908e809b7`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:alpine`

```console
$ docker pull memcached@sha256:6a089e37cbb8acd75c80c6c0667fe57ec54db68782fb1b3afb1d0eb265e50070
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
$ docker pull memcached@sha256:9057793717e87e054636eaf06cf8ec2792a3ad164ad9e8bcae1e90241ea73fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5eba4fb025850bd1df258f435078ef997189beef8f412662adfbb34f2a9212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:46:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 22:46:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 22:49:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:49:34 GMT
USER memcache
# Wed, 21 Oct 2026 22:49:34 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 22:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e70e4bd8f1f3d5ea44e6a1ddcc95274ad4729e4de9ceda4c5a97400d65bae5`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a156def0c0fa56c7626495682fc7eeee082def10e8b2db69c989ff7c7cb1438d`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 106.1 KB (106085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc88b49aeeb094738da98e5205a2623e1df8d96c8789b1028b08c0f018488a0`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 2.0 MB (1971716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1d13955f5ed4a4c30aa3078f7c9eeb1cd070e449727f0d83cd0bb5c8460815`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a07806802fe4959e44969d2de7d461bbd9b52b7931b947d350dd082539d63`  
		Last Modified: Wed, 21 Oct 2026 22:49:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b61d0547032cc30541432f5ac6291e641910e0dec6a418a6c2ea8fa4900f7fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c6ca8c52367ff2be20af54dadee796968d1d4444b8e012f03d85ec3ac8c298`

```dockerfile
```

-	Layers:
	-	`sha256:36891509f6d31e487d9f458ebf7759b7e93c9985a49198a34aea92f735a8380a`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e306fe35cdb2574563d8869211071e8e0696133bd5f5bf627b690cfa6de7e0d1`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:0c6b9fa9dffbcb40ea942fa5ba6a4a183652671496f455b5fbe2c8b47f51c1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5581970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ccf018f1c03dbdd208b5bb0efd70c9c0ea4c1d1e6083fead0d80be0fbb65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:14:25 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:14:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:17:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:17:29 GMT
USER memcache
# Wed, 21 Oct 2026 23:17:29 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:17:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68195c37b284f78ce9c47ed39422c83429bf8dcf6e746ea5feb6bbb616047c84`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8169f79072d0f0706633797d50f895072c77a08d4fd01e1642521da2184417e3`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 102.6 KB (102642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f318ae2e3cb5e365fec3847cd1ffd9e6a0fc0b5ebb04dcad8fc7241308f67c`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 1.9 MB (1919687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05832fed580324b8d575dee1b5ad17d126e87e59644be64726d7906ea1757a4`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ace68499ce7a80dba420f19589ec3e7a1fd785d2cfe4a4f1461320991149e53`  
		Last Modified: Wed, 21 Oct 2026 23:17:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5434a3fdca413469f9173c8953c679bdd52edf28d12237d988563e49e618c18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f930504ace3729e9def0ba000e85580dc0e32948914548d1462a8c9c4ca34a3`

```dockerfile
```

-	Layers:
	-	`sha256:5badc53eba059b3e3accba31d3d9b5ee29aec66512171fd67ba1b842b8d64707`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 20.5 KB (20466 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:aa7ae3ba559ea809acb9823081e505ccd5283a0fda1096337d05c7bda079b089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d63aecc8867e28617473dbbddbd621bda73506c10415c39bb29dc149d0e5b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:31 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:17:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:20:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:28 GMT
USER memcache
# Wed, 21 Oct 2026 23:20:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:20:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1846c42df8aca15ae481f3b25bea3c4128e2d6d8fd5a2367eb24e410009b67e`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322a46f316ded9c44b6e8a333ec214ec0fc5fd8dc5ad5ea2999f6c925d74b652`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 92.4 KB (92364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b16facb2a59a8ef627a79f6cdc4144e884dd60efd34bc148cc0a84bc8d0ac0f`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 1.9 MB (1879166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7138cd10e7b9e4e533bb4137ae2b67db4b3cb6c413aeeee17fa3c3612da770`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d47b9d2e07c02d6578a5d9ed86d7dba09756f3dfd2df95d66fc69266e340b03`  
		Last Modified: Wed, 21 Oct 2026 23:20:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:47741c65ed1a3e52394501696187c4bc766c5f6b2d935ac1269c499940a18706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4eaeede9b2735bd010a5cfaed0533733ec938489e99406d587bc0f54f7383b9`

```dockerfile
```

-	Layers:
	-	`sha256:bd6f3363d1ce0c9fd0893ec4a07f65d8ed17176c16a493674168d07b67664cf6`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d750e5d04f934a7e700c96c7fe5dd7e815b5c10a14690247a16703019ed7bf1`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:e09dcc0bc98221ed468081adaa4a78c61d2161f475b1aa0cd282e18573a8ede7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defdcf9518f8b6888f59edc0def29850b688bef32db5ccf3390b5a18128abdee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:56 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:57 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:45 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617bded82bb6ae44db306d2e2a13f2bb37f25543935c716a36b32184c682886d`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c29514be041e3f74ffd8cff4eaf12fd9edd6ca1239b69ddc9551abb43618239`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf45e1e3a6062c2e0742d88c3c70d9fe819b458818bbd00389e29d325de56376`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 1.9 MB (1948985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b93bb74be2e3b89290de7700318062984d7b5b29aeb3f20ca5cc2ca205b0427`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb55bb80afaa1a5a1d66dff646c9cee9ff7e6ef28a02528613af3fd68f168c16`  
		Last Modified: Wed, 21 Oct 2026 23:15:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:1377acc5441cfb25433b073c85f8710eeeb363037d21806c6f8d5464dc7f2762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7a9c92ec42a3d4f460a4badf5bf3dc7d7ec3e889f96c62e0d0b23531295e75`

```dockerfile
```

-	Layers:
	-	`sha256:69f77a1a233632e1f5ee2b0c788a4c1fe28569b7ac7be8c63a37894acb2da0de`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0703ac9181e97e53b3a3b06e7b0e6cebd574e4a516ea8d35d56d497cb94b25e`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:d5338e90fd38277a070f0d62c46c453641805a02a54606d55248cc4ca6d71623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5716902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f58076f5a82cd2381ceaf2a06841fcab18180ef07c27c2269af196814858ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:28 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:28 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:10 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:10 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925d42c7691467c67cd55d10f13c07ab429e5118d8be412ac5c8e09144a5ccf0`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8ccc8c730754ad39a7801c2c75caf71ff177bda7aeb354948158977afe36e`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5209cf6d4aafba79c1504ad0ebb615284cdee1604b2de6d93c8d5253410ef48`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 1.9 MB (1925822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153e6978211a88e23c8d1fc6ed77073843edba0f9fb752e4624942299cd12e13`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0a3b71b0aff23f9fdfe65f5039d666cb7d2791e0c1d8b59238663be5db2a82`  
		Last Modified: Wed, 21 Oct 2026 23:15:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:75347d8d359d22d8aa606902f3458a85481ecae0e5267497d69710f44bef2aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b6f5e3c98290db412f45a26f93fd875e467d3184242199164c12567d99f6c`

```dockerfile
```

-	Layers:
	-	`sha256:0cbedce9a1143ba41f5c125263cccd68e870a54e067622312884e79796860513`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01aed577ecae52b0d52468be6c2673e08d5bbab3e380558de684e3d08638f46f`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:8255445e665c15f2a710f591cb04112733944a6ae005e084aad0410d2c84ae18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6600255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e54bf4534c1bf00ed452941625f5b73c878b62e5638167170ef9c114ca98f0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:33:34 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 22 Oct 2026 10:33:39 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 22 Oct 2026 10:57:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 22 Oct 2026 10:57:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:57:28 GMT
USER memcache
# Thu, 22 Oct 2026 10:57:28 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 22 Oct 2026 10:57:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0b5d981965a7eea23aa8a355222c2ca7598523f69c191bcf4904806f9ba05d`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25c7ff614282d4cf6e5d66b06ec376f5e54d6ff6ffcc5a2a03c2c16d7e715a0`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 126.3 KB (126270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9322ba4ef3aa847960185444ff51c85ae3d56b37d65f2ffc94c3716a739b4a6b`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 2.7 MB (2651807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d348ee12ceca7625b020390e7ba990fad413a725636bdc567f696792166f3a`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add0bf7caeaf5e98a78fc4697f7a482514e767f54edcdb0e17091ef819116a63`  
		Last Modified: Thu, 22 Oct 2026 10:57:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:a76b8d277908e3f984d3c85f84992092ed44e517ee0daf85520da5dbe27712e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b987ca683754179e74dd9a510a0afb1e08910747e7d1cf1975140284752256`

```dockerfile
```

-	Layers:
	-	`sha256:8340ad978eeca6670e5b62946404c62a310449955a2b06e5ab1bb5e6c92b610f`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7cb43688dbd532e38a0fd77f771553f1a1d530a3b61dca32da265563b8a4ea7`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:62a23a9199acafed359e011c95d8ec002d61dd3ad36d00e9af7d6bd8d0dbb8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbb452b8d936eeffbd250b55dd898b01b0ae316869597b01035827ba31ab0cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:09:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 24 Oct 2026 16:09:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 24 Oct 2026 16:23:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 24 Oct 2026 16:23:29 GMT
USER memcache
# Sat, 24 Oct 2026 16:23:29 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 24 Oct 2026 16:23:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3814776510feb3317de434806b0e0f606ef96c0d9b7f58ecb429fe8d6eca13b2`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f5fe627e72afb881e47420315e23c54cbec13109efa772d07d554e5f94d617`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 108.9 KB (108910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c018182577105ecc27bb03f746357cdc8363e406dd97ec7e42b00ca4ffa3d5`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 2.1 MB (2057822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcde6efdc71dea73858483bb05463f3fdecfe91b86b66e39c6b2236c276f125`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c17b6e240295e6dc91ec13ed3520622e2fcd6ffefc863f4b056aff8ba01782b`  
		Last Modified: Sat, 24 Oct 2026 16:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:61fb287ba1b9e5408a9b1fb8902e3c64c79338da03d5b9878b2117cfb2079ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50523ba6375bced59116a92f95d7c99abadad12da0eb606f462c2bb9c682e56d`

```dockerfile
```

-	Layers:
	-	`sha256:dd92ac75a07ca5f3ac0752bc6f9b254218e50aa3974d98a077a431648f480eae`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a008d33e007ead8cfefe6c6839973c4638436b7ebad9b4847e33b08577bcdd53`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:4eba6b8b6793f41d9aa18ea81e3fa88d8fbd554682ccaf603a75e08a29d015ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e6a3e1aeccfb33b6bf1722ec2bc4f2a7e346d4f693892757dc0e9acd4050dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:18:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:22:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:22:12 GMT
USER memcache
# Wed, 21 Oct 2026 23:22:12 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:22:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41092b4b2d6e8c87a52eaf15cc23f2d41f506239ccdce5e8536acb0e6908add3`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9317b086318c2ffe1e94e221d82a387252336cb69b61acb5aefa0e9436e6e290`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 114.3 KB (114309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310b7e4ba79ab4cacb2be2bffc90604b59b34ebc2f511cbda72178847a7fbd5a`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 2.0 MB (2004219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569c8026ab7fddc18cbcf1d455fa424a036b2e9837c205fbabb7748b7fab68a2`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2528a5ff882cb220f13bba4f2f88e7918d059180690031c5b7146c4537eda16e`  
		Last Modified: Wed, 21 Oct 2026 23:22:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b4933d33f2296f19137fb5f54e70e554609cf0b287257f48ebf8e458e17dfd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4c93558b2bfc086513e76dca5417d6eda89db9640fd5e34815c20cb2c8efe3`

```dockerfile
```

-	Layers:
	-	`sha256:5ef226d1de92865eddd7de01b218e0ae06c681a28b04bab94584b47e512e2b82`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6c527dfc7341707fb1bcd543e79adb3a3715fec1535b8c6e3d2ce86672558d6`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:alpine3.24`

```console
$ docker pull memcached@sha256:6a089e37cbb8acd75c80c6c0667fe57ec54db68782fb1b3afb1d0eb265e50070
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
$ docker pull memcached@sha256:9057793717e87e054636eaf06cf8ec2792a3ad164ad9e8bcae1e90241ea73fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5eba4fb025850bd1df258f435078ef997189beef8f412662adfbb34f2a9212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:46:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 22:46:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 22:49:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 22:49:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 22:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:49:34 GMT
USER memcache
# Wed, 21 Oct 2026 22:49:34 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 22:49:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e70e4bd8f1f3d5ea44e6a1ddcc95274ad4729e4de9ceda4c5a97400d65bae5`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a156def0c0fa56c7626495682fc7eeee082def10e8b2db69c989ff7c7cb1438d`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 106.1 KB (106085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc88b49aeeb094738da98e5205a2623e1df8d96c8789b1028b08c0f018488a0`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 2.0 MB (1971716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1d13955f5ed4a4c30aa3078f7c9eeb1cd070e449727f0d83cd0bb5c8460815`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9a07806802fe4959e44969d2de7d461bbd9b52b7931b947d350dd082539d63`  
		Last Modified: Wed, 21 Oct 2026 22:49:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b61d0547032cc30541432f5ac6291e641910e0dec6a418a6c2ea8fa4900f7fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c6ca8c52367ff2be20af54dadee796968d1d4444b8e012f03d85ec3ac8c298`

```dockerfile
```

-	Layers:
	-	`sha256:36891509f6d31e487d9f458ebf7759b7e93c9985a49198a34aea92f735a8380a`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e306fe35cdb2574563d8869211071e8e0696133bd5f5bf627b690cfa6de7e0d1`  
		Last Modified: Wed, 21 Oct 2026 22:49:39 GMT  
		Size: 20.5 KB (20530 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:0c6b9fa9dffbcb40ea942fa5ba6a4a183652671496f455b5fbe2c8b47f51c1a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5581970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ccf018f1c03dbdd208b5bb0efd70c9c0ea4c1d1e6083fead0d80be0fbb65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:14:25 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:14:26 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:17:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:17:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:17:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:17:29 GMT
USER memcache
# Wed, 21 Oct 2026 23:17:29 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:17:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68195c37b284f78ce9c47ed39422c83429bf8dcf6e746ea5feb6bbb616047c84`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8169f79072d0f0706633797d50f895072c77a08d4fd01e1642521da2184417e3`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 102.6 KB (102642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f318ae2e3cb5e365fec3847cd1ffd9e6a0fc0b5ebb04dcad8fc7241308f67c`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 1.9 MB (1919687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05832fed580324b8d575dee1b5ad17d126e87e59644be64726d7906ea1757a4`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ace68499ce7a80dba420f19589ec3e7a1fd785d2cfe4a4f1461320991149e53`  
		Last Modified: Wed, 21 Oct 2026 23:17:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5434a3fdca413469f9173c8953c679bdd52edf28d12237d988563e49e618c18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f930504ace3729e9def0ba000e85580dc0e32948914548d1462a8c9c4ca34a3`

```dockerfile
```

-	Layers:
	-	`sha256:5badc53eba059b3e3accba31d3d9b5ee29aec66512171fd67ba1b842b8d64707`  
		Last Modified: Wed, 21 Oct 2026 23:17:33 GMT  
		Size: 20.5 KB (20466 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:aa7ae3ba559ea809acb9823081e505ccd5283a0fda1096337d05c7bda079b089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d63aecc8867e28617473dbbddbd621bda73506c10415c39bb29dc149d0e5b95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:31 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:17:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:20:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:20:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:20:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:28 GMT
USER memcache
# Wed, 21 Oct 2026 23:20:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:20:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1846c42df8aca15ae481f3b25bea3c4128e2d6d8fd5a2367eb24e410009b67e`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322a46f316ded9c44b6e8a333ec214ec0fc5fd8dc5ad5ea2999f6c925d74b652`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 92.4 KB (92364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b16facb2a59a8ef627a79f6cdc4144e884dd60efd34bc148cc0a84bc8d0ac0f`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 1.9 MB (1879166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7138cd10e7b9e4e533bb4137ae2b67db4b3cb6c413aeeee17fa3c3612da770`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d47b9d2e07c02d6578a5d9ed86d7dba09756f3dfd2df95d66fc69266e340b03`  
		Last Modified: Wed, 21 Oct 2026 23:20:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:47741c65ed1a3e52394501696187c4bc766c5f6b2d935ac1269c499940a18706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4eaeede9b2735bd010a5cfaed0533733ec938489e99406d587bc0f54f7383b9`

```dockerfile
```

-	Layers:
	-	`sha256:bd6f3363d1ce0c9fd0893ec4a07f65d8ed17176c16a493674168d07b67664cf6`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d750e5d04f934a7e700c96c7fe5dd7e815b5c10a14690247a16703019ed7bf1`  
		Last Modified: Wed, 21 Oct 2026 23:20:33 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:e09dcc0bc98221ed468081adaa4a78c61d2161f475b1aa0cd282e18573a8ede7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defdcf9518f8b6888f59edc0def29850b688bef32db5ccf3390b5a18128abdee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:56 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:57 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:45 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617bded82bb6ae44db306d2e2a13f2bb37f25543935c716a36b32184c682886d`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c29514be041e3f74ffd8cff4eaf12fd9edd6ca1239b69ddc9551abb43618239`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf45e1e3a6062c2e0742d88c3c70d9fe819b458818bbd00389e29d325de56376`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 1.9 MB (1948985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b93bb74be2e3b89290de7700318062984d7b5b29aeb3f20ca5cc2ca205b0427`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb55bb80afaa1a5a1d66dff646c9cee9ff7e6ef28a02528613af3fd68f168c16`  
		Last Modified: Wed, 21 Oct 2026 23:15:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:1377acc5441cfb25433b073c85f8710eeeb363037d21806c6f8d5464dc7f2762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7a9c92ec42a3d4f460a4badf5bf3dc7d7ec3e889f96c62e0d0b23531295e75`

```dockerfile
```

-	Layers:
	-	`sha256:69f77a1a233632e1f5ee2b0c788a4c1fe28569b7ac7be8c63a37894acb2da0de`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0703ac9181e97e53b3a3b06e7b0e6cebd574e4a516ea8d35d56d497cb94b25e`  
		Last Modified: Wed, 21 Oct 2026 23:15:50 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:d5338e90fd38277a070f0d62c46c453641805a02a54606d55248cc4ca6d71623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5716902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f58076f5a82cd2381ceaf2a06841fcab18180ef07c27c2269af196814858ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:28 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:12:28 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:15:10 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:15:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:15:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:15:10 GMT
USER memcache
# Wed, 21 Oct 2026 23:15:10 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:15:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925d42c7691467c67cd55d10f13c07ab429e5118d8be412ac5c8e09144a5ccf0`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8ccc8c730754ad39a7801c2c75caf71ff177bda7aeb354948158977afe36e`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 110.7 KB (110735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5209cf6d4aafba79c1504ad0ebb615284cdee1604b2de6d93c8d5253410ef48`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 1.9 MB (1925822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153e6978211a88e23c8d1fc6ed77073843edba0f9fb752e4624942299cd12e13`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0a3b71b0aff23f9fdfe65f5039d666cb7d2791e0c1d8b59238663be5db2a82`  
		Last Modified: Wed, 21 Oct 2026 23:15:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:75347d8d359d22d8aa606902f3458a85481ecae0e5267497d69710f44bef2aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b6f5e3c98290db412f45a26f93fd875e467d3184242199164c12567d99f6c`

```dockerfile
```

-	Layers:
	-	`sha256:0cbedce9a1143ba41f5c125263cccd68e870a54e067622312884e79796860513`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01aed577ecae52b0d52468be6c2673e08d5bbab3e380558de684e3d08638f46f`  
		Last Modified: Wed, 21 Oct 2026 23:15:15 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:8255445e665c15f2a710f591cb04112733944a6ae005e084aad0410d2c84ae18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6600255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e54bf4534c1bf00ed452941625f5b73c878b62e5638167170ef9c114ca98f0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:33:34 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 22 Oct 2026 10:33:39 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 22 Oct 2026 10:57:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 22 Oct 2026 10:57:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 22 Oct 2026 10:57:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 22 Oct 2026 10:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:57:28 GMT
USER memcache
# Thu, 22 Oct 2026 10:57:28 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 22 Oct 2026 10:57:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0b5d981965a7eea23aa8a355222c2ca7598523f69c191bcf4904806f9ba05d`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25c7ff614282d4cf6e5d66b06ec376f5e54d6ff6ffcc5a2a03c2c16d7e715a0`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 126.3 KB (126270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9322ba4ef3aa847960185444ff51c85ae3d56b37d65f2ffc94c3716a739b4a6b`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 2.7 MB (2651807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d348ee12ceca7625b020390e7ba990fad413a725636bdc567f696792166f3a`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add0bf7caeaf5e98a78fc4697f7a482514e767f54edcdb0e17091ef819116a63`  
		Last Modified: Thu, 22 Oct 2026 10:57:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:a76b8d277908e3f984d3c85f84992092ed44e517ee0daf85520da5dbe27712e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b987ca683754179e74dd9a510a0afb1e08910747e7d1cf1975140284752256`

```dockerfile
```

-	Layers:
	-	`sha256:8340ad978eeca6670e5b62946404c62a310449955a2b06e5ab1bb5e6c92b610f`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7cb43688dbd532e38a0fd77f771553f1a1d530a3b61dca32da265563b8a4ea7`  
		Last Modified: Thu, 22 Oct 2026 10:57:45 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; riscv64

```console
$ docker pull memcached@sha256:62a23a9199acafed359e011c95d8ec002d61dd3ad36d00e9af7d6bd8d0dbb8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbb452b8d936eeffbd250b55dd898b01b0ae316869597b01035827ba31ab0cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:09:29 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Sat, 24 Oct 2026 16:09:32 GMT
RUN apk add --no-cache libsasl # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 24 Oct 2026 16:23:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 24 Oct 2026 16:23:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 24 Oct 2026 16:23:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 24 Oct 2026 16:23:29 GMT
USER memcache
# Sat, 24 Oct 2026 16:23:29 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 24 Oct 2026 16:23:29 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3814776510feb3317de434806b0e0f606ef96c0d9b7f58ecb429fe8d6eca13b2`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f5fe627e72afb881e47420315e23c54cbec13109efa772d07d554e5f94d617`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 108.9 KB (108910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c018182577105ecc27bb03f746357cdc8363e406dd97ec7e42b00ca4ffa3d5`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 2.1 MB (2057822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcde6efdc71dea73858483bb05463f3fdecfe91b86b66e39c6b2236c276f125`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c17b6e240295e6dc91ec13ed3520622e2fcd6ffefc863f4b056aff8ba01782b`  
		Last Modified: Sat, 24 Oct 2026 16:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:61fb287ba1b9e5408a9b1fb8902e3c64c79338da03d5b9878b2117cfb2079ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50523ba6375bced59116a92f95d7c99abadad12da0eb606f462c2bb9c682e56d`

```dockerfile
```

-	Layers:
	-	`sha256:dd92ac75a07ca5f3ac0752bc6f9b254218e50aa3974d98a077a431648f480eae`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a008d33e007ead8cfefe6c6839973c4638436b7ebad9b4847e33b08577bcdd53`  
		Last Modified: Sat, 24 Oct 2026 16:24:05 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; s390x

```console
$ docker pull memcached@sha256:4eba6b8b6793f41d9aa18ea81e3fa88d8fbd554682ccaf603a75e08a29d015ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5839582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e6a3e1aeccfb33b6bf1722ec2bc4f2a7e346d4f693892757dc0e9acd4050dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:57 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Wed, 21 Oct 2026 23:18:58 GMT
RUN apk add --no-cache libsasl # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 23:22:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 23:22:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 23:22:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:22:12 GMT
USER memcache
# Wed, 21 Oct 2026 23:22:12 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 23:22:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41092b4b2d6e8c87a52eaf15cc23f2d41f506239ccdce5e8536acb0e6908add3`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9317b086318c2ffe1e94e221d82a387252336cb69b61acb5aefa0e9436e6e290`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 114.3 KB (114309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310b7e4ba79ab4cacb2be2bffc90604b59b34ebc2f511cbda72178847a7fbd5a`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 2.0 MB (2004219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569c8026ab7fddc18cbcf1d455fa424a036b2e9837c205fbabb7748b7fab68a2`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2528a5ff882cb220f13bba4f2f88e7918d059180690031c5b7146c4537eda16e`  
		Last Modified: Wed, 21 Oct 2026 23:22:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b4933d33f2296f19137fb5f54e70e554609cf0b287257f48ebf8e458e17dfd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4c93558b2bfc086513e76dca5417d6eda89db9640fd5e34815c20cb2c8efe3`

```dockerfile
```

-	Layers:
	-	`sha256:5ef226d1de92865eddd7de01b218e0ae06c681a28b04bab94584b47e512e2b82`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6c527dfc7341707fb1bcd543e79adb3a3715fec1535b8c6e3d2ce86672558d6`  
		Last Modified: Wed, 21 Oct 2026 23:22:21 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:latest`

```console
$ docker pull memcached@sha256:a395a1bcf5e0e2b0fa4a0142e12b4e24a2320ba4b7c6ffa8655a1a86e8f29dee
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
$ docker pull memcached@sha256:b09d8056beefa72d8eada019a3f1fdc0670e47b97351db2b33685527e7e1b193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32280777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7429accb3c98adafd643261acc1fb1511d1d1b6ccb3246b9f40689dfbaf4f682`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:05 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f59709ac522354942fd5d8336e87aac813474966fc5dcf9baf2bfe6428e2cc1`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe416a42ea0fa3e6c8e18211fa75d40c32b76d8aaab80436e6835711fe8c7202`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 136.7 KB (136738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f5b41d8085c45639d9e07268d3270d546ae07c5edd37a2dcbc7f56875fb8f9`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.3 MB (2286395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95840eb2dffa836786a2d402531a223d5ed5e417b1b3a61bb8bf350b351fa07c`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65e582d750a7a405967d6eedf15bfd5ec589fe621b170d25a7c9e7d4febf28d`  
		Last Modified: Thu, 05 Nov 2026 07:20:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:6a9149ab0669b6bbad0120c257d4d56c2db19fc8dbd063d1599d0289f2033c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac9f6108ca7cf1942dd40448b1bf3caf90d5251efc1cbbdeb4d2e1ecdbbced6`

```dockerfile
```

-	Layers:
	-	`sha256:e7f04e782a521af9b744a8d7a0783507384d2b54a360f070ca3af3c0b7ae8381`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:537700077b3750e37d8de6264b05b233fd9ddc40348a6eef06035e760d328d2d`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:d927435e55cc7a4271f7964cef0aa6029ba65115aebce1a8715c5a8f326b8100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30382679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad07e25e1c5de259a8d635a2529bc87489a39bb732daadb1fd16222e95fa72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:21 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:44 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f80434370c6d6ab5e03c0b78d5cdba2f5bf99b7b803ea8f57ddb49c1cfdb91`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1f81a3e6e8ee403e1c379f6c4d12f7f37d4ebc9d7cba65cedddb9ebd1c033c`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 144.2 KB (144205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b757afb023255818f1679772ef6af4ea378b5cd304ef1f76d01b644ef3c722`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.2 MB (2217349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdfc21754247d72d569005aa49f6a0c8d16000bc6669523110bf42a36babda8`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455ba4cd950f06abaa37bbbb3e5c472fba9163b5fa0d9cf5893dc2302a4ced95`  
		Last Modified: Thu, 05 Nov 2026 07:17:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:0e86d2647a02754e5125e88f2289978ec08e03b54d2cc16a546ad6afd9ae1d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6252d2ea2287dedc5ae2b88efdda6dbaed462364309b2a18ffe9adfef6fb3f5`

```dockerfile
```

-	Layers:
	-	`sha256:9d2ef246bef6f5f3501aa1fed6cf7eec591ad9eb195c702f075f851b24cec730`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d4bd1332de18173219995444bfd1a44dcbbecc2673a67a915863e6c371f2f0e`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:40954f2e6d2de2d20332fca63b96fcca77c21dfb8f52cd13f9be0bf94c92d014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28581444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb9f1ee51a7f9a06c2977be71e6324d9340dadeaee287682788a47cf129d54d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:18:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:21:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:21:25 GMT
USER memcache
# Thu, 05 Nov 2026 07:21:25 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:21:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa607dc202d742554fbca912173ca7c52435649286586406488665bcd214e5f`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b249ef119581b39ee16cd534b94b7b693485c832086995710993192f533bb5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 135.4 KB (135393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432e553e19db762ae4453b4637cb5707f9a088e3a543bdb7f5154ca099a31d2`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 2.2 MB (2171624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea25d8c2f7331ace06740202126242c8c1c6b1361a83b03ed7a2a0720d6839eb`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be282f4e38e25ce564d8555eae6a6fdfc03ac38c6457ec6bb23aaeb440de07a`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:275a220ae23abbed756419df367cab4740030bff8721465e81ebee52191c3b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120588f89a2dc8e0c243151dd8b7c9b27f14a74759292788dd11e2e4051621ba`

```dockerfile
```

-	Layers:
	-	`sha256:9645f04369d35851eb7ebc06d9b1438172df776d1407c063aa0ff959a45a1057`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39147cc4290ffc8c1ac49b1d4a8a825a461ac8c0e4cd8da27f151ec98e9192e5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d37d9f141845d208688b347704148fe8c0269386180197f02df02fe7ff6aa8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15dd487cd49428dbe61a263d3ad4df729a0fcc2e71d259bd3716c112a38956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:19 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:23 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:23 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49749bbca8c54ece169a63a50bd44188604eb744779e9c6a59c9668ee40603b`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb188c8ca8e350704d799919dd52f265401daa0e30c1c8c71af17cb678d00c72`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 153.5 KB (153542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b7fa681140d8e5c9cacbf0f1407cefdbc47adbc193ac8f3da6fac9eed5c5`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.3 MB (2266876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5898a0e025521f5d01f1c4f59bc5fa2141ce72cbcb5b8fec6a4f28d72223397f`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e277933109fcef09b52e7ff2d2f0b01b7523db507efef35c7f2ad6acef3dae0`  
		Last Modified: Thu, 05 Nov 2026 07:20:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:65be82ce19bef1808704a6436925cca7650e822bb06b0cdbf5b5ab7a204eb9ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255c054e753da8928856917107b759cce96bce5e4e21d8d0939ea3a275fe3a79`

```dockerfile
```

-	Layers:
	-	`sha256:2fe57407f244d3b0e5676d0b8590016acc7af5e4ab451c530dcd1088160c05ac`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ec8b663f5686539d7a4d441af52f312b57598244cc908a7fadd4d1b2286a8c`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:8c354712fdc002149b1dfec00efef6ed93b23926d4be3cb9ec34f212a24474fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33751081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2811a32e110cfac2c43b7e606c0964b327d5e760b5b6ad1751d68d4f315efc87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:49 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:49 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897af33699c937368d898d331a073893837697f25aa2ee300773c4076a0e0963`  
		Last Modified: Thu, 05 Nov 2026 07:17:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c153beb0c28113dfed58ee882e8a9ad057b51f7f07af172d9c9024e228652311`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 147.6 KB (147562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fbe6636116d68358c6a5ad6333e1b90cfc61ff49cfbfc895b4dfe9357dc6be`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.2 MB (2231247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be59883fde6704085f0318c5d2d5635ed5d6a5db39c64b616fcbb4534409fd28`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21aca5aa44854f42e8e996a6d7b2cebe4b21ea00d23ad4ccff069507b2f64aae`  
		Last Modified: Thu, 05 Nov 2026 07:17:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:328e5fcb1eb4d6ccb7299bd7feeccfc33cbd81e6b28fe399da9a5a06bd74f31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f90dc7d65445ecc3b564213856fca0ba921b9025eddd0fc3bac7ba4bb5c6668`

```dockerfile
```

-	Layers:
	-	`sha256:e5660e6bf8462963ca0b8456baa55698169bc57d3d056f13cdb2940617ad4e82`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f6e118825aab04cff2f29f8b0243d9723878a2b4ae31e597e77c31794c7b1fe`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:3ea8455d0258881f29f2c18ab7b2a75a8b9f4d3d51b8a9775a7442d0e61dff1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36829374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32751ee77730d0c966d9aabd831eea60e8c7bb058b0abb136ded3f9d7b4b9aeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:26:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:50:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:50:48 GMT
USER memcache
# Thu, 05 Nov 2026 07:50:48 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:50:48 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad79880010b426b3e87ea908d773a76c8404eeaebc98f13bedd948931341aed8`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35794a16da4fbb9cad55805ee7f2a01ecc52aab7440493c93ca5d96ee01f11b0`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 170.4 KB (170402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4086cbf68d82ca027eb1f39aea32d1e58019311d2dc6336c39bc2351ed8f97e6`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 3.0 MB (2989811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250339d42def0f8a03cd8ff0a19bc1c4b8d3a5ae1f4056cd43012669a230a16b`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a76e0cec9c36e6c2cccfdbfdfa12c325104603d9b560400a9c60d8d7f00cca2`  
		Last Modified: Thu, 05 Nov 2026 07:51:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:6653a4b926bf3e2f644b05af7e18c06d8371ec73622e42d205dcc0e0e8c4ff29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891aa44d54e6ee9fac72066779b5a5bd74615ebf9f5c2a2308cc748e7d57f502`

```dockerfile
```

-	Layers:
	-	`sha256:fdd57b75bb6a0357843f4e2b6f4a007efd37db43702a3bc94e7bd57b5774f8f2`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc7cc43aee22466291b8ad8d92a6b701f4d800153ebad72a88843b0e0c79443`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; riscv64

```console
$ docker pull memcached@sha256:e45f1f7e40d9442fd61e3afcbc7711d993994e4e2cd2e7ac5967a799b1c8ecf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30694152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ccc4d122be45d7746b2a13ddfe72a37fcdf2851b765cf14ecbebd76d868f33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:42:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 11:43:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 11:57:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 11:57:12 GMT
USER memcache
# Thu, 05 Nov 2026 11:57:12 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 11:57:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4e2c560a4e6fbd4faeba39786948501e4098d7de4ec8f0d2689fd697a0de3f`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b3c53ed9ccd2a94f4c0377152b3f9e67582b0a5680887c2b073f944c6fbf04`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 133.1 KB (133122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e1207719b823f806678bb9300f0416007fd720211ffe3db5668ac4cdac85f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.2 MB (2213334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df294386699007bd47d1c015d2c7d039929d83ae83695584fb4aecbcf1982db`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b8c61d81801921c80454e0eeb14e691ba809266de06c4d02a034711421d57f`  
		Last Modified: Thu, 05 Nov 2026 11:58:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:3fb8ee7b75a894301c9b94521e0f03e95c06bdd2c61948bbd7d313e365be7937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:211761d90fe530ce3ec20364190033c339a87cb1d5d9372144ae62c9b5993aea`

```dockerfile
```

-	Layers:
	-	`sha256:ff0864b4ac18d4f64077f1dbf836240462c4694976978b98961e2f9459b8d3f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29b33b082ee4c7fb6bdc1dafa09f4a980928879f925fdba87eb52226692fadab`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:120591cbb1cddf6d4d0f1488bed5baba7097147f398bcaa78c85424265db9a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32367588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3df2df743b4f58fe6dfc66dd1525a62e4770655e1f0fae6ac55339b59fb5ee5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 09:16:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 09:16:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 09:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 09:19:45 GMT
USER memcache
# Thu, 05 Nov 2026 09:19:45 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 09:19:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea4474c25254e742cd463f5e36abdf7bef82459bbed9a2e51b1bc72f6f8a550`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24dbd1a440ce097dc597de0a62369bb003fd72049353e8500317fad988516397`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 140.6 KB (140560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38e355a1ecd9159bb5d5b3f38d992079607cbae5a4e28106f486110b3ac95a8`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.3 MB (2301401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8600a708b640ea89e806270702e22a2529fa3c6c477531979ee1941c3541f6`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0123612f72a4c2ec69f2e155b1e9644f866f750c6d72d5da043d379e83aeece`  
		Last Modified: Thu, 05 Nov 2026 09:19:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:db1c1a725bf8252033f12233790b415f5dfad7f925135af7c6fcf0062f2a584e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7327e5f49237a141abc786c74694708e13f89a1d0b8f10801f2942695a4d0c`

```dockerfile
```

-	Layers:
	-	`sha256:fd54b26407096245a9a1a47c90cb8f0c71e08848cefd6b43da022b2a8bea855d`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3209868ba1c2f16c58eb46bde310156c0d2677d439a70d2cfcc57bc908e809b7`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:trixie`

```console
$ docker pull memcached@sha256:a395a1bcf5e0e2b0fa4a0142e12b4e24a2320ba4b7c6ffa8655a1a86e8f29dee
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
$ docker pull memcached@sha256:b09d8056beefa72d8eada019a3f1fdc0670e47b97351db2b33685527e7e1b193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32280777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7429accb3c98adafd643261acc1fb1511d1d1b6ccb3246b9f40689dfbaf4f682`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:05 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:05 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:05 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f59709ac522354942fd5d8336e87aac813474966fc5dcf9baf2bfe6428e2cc1`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe416a42ea0fa3e6c8e18211fa75d40c32b76d8aaab80436e6835711fe8c7202`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 136.7 KB (136738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f5b41d8085c45639d9e07268d3270d546ae07c5edd37a2dcbc7f56875fb8f9`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.3 MB (2286395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95840eb2dffa836786a2d402531a223d5ed5e417b1b3a61bb8bf350b351fa07c`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65e582d750a7a405967d6eedf15bfd5ec589fe621b170d25a7c9e7d4febf28d`  
		Last Modified: Thu, 05 Nov 2026 07:20:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6a9149ab0669b6bbad0120c257d4d56c2db19fc8dbd063d1599d0289f2033c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac9f6108ca7cf1942dd40448b1bf3caf90d5251efc1cbbdeb4d2e1ecdbbced6`

```dockerfile
```

-	Layers:
	-	`sha256:e7f04e782a521af9b744a8d7a0783507384d2b54a360f070ca3af3c0b7ae8381`  
		Last Modified: Thu, 05 Nov 2026 07:20:12 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:537700077b3750e37d8de6264b05b233fd9ddc40348a6eef06035e760d328d2d`  
		Last Modified: Thu, 05 Nov 2026 07:20:11 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:d927435e55cc7a4271f7964cef0aa6029ba65115aebce1a8715c5a8f326b8100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30382679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad07e25e1c5de259a8d635a2529bc87489a39bb732daadb1fd16222e95fa72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:21 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:44 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f80434370c6d6ab5e03c0b78d5cdba2f5bf99b7b803ea8f57ddb49c1cfdb91`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1f81a3e6e8ee403e1c379f6c4d12f7f37d4ebc9d7cba65cedddb9ebd1c033c`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 144.2 KB (144205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b757afb023255818f1679772ef6af4ea378b5cd304ef1f76d01b644ef3c722`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.2 MB (2217349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdfc21754247d72d569005aa49f6a0c8d16000bc6669523110bf42a36babda8`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455ba4cd950f06abaa37bbbb3e5c472fba9163b5fa0d9cf5893dc2302a4ced95`  
		Last Modified: Thu, 05 Nov 2026 07:17:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:0e86d2647a02754e5125e88f2289978ec08e03b54d2cc16a546ad6afd9ae1d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6252d2ea2287dedc5ae2b88efdda6dbaed462364309b2a18ffe9adfef6fb3f5`

```dockerfile
```

-	Layers:
	-	`sha256:9d2ef246bef6f5f3501aa1fed6cf7eec591ad9eb195c702f075f851b24cec730`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d4bd1332de18173219995444bfd1a44dcbbecc2673a67a915863e6c371f2f0e`  
		Last Modified: Thu, 05 Nov 2026 07:17:50 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:40954f2e6d2de2d20332fca63b96fcca77c21dfb8f52cd13f9be0bf94c92d014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28581444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb9f1ee51a7f9a06c2977be71e6324d9340dadeaee287682788a47cf129d54d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:18:13 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:21:25 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:21:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:21:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:21:25 GMT
USER memcache
# Thu, 05 Nov 2026 07:21:25 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:21:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa607dc202d742554fbca912173ca7c52435649286586406488665bcd214e5f`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b249ef119581b39ee16cd534b94b7b693485c832086995710993192f533bb5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 135.4 KB (135393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432e553e19db762ae4453b4637cb5707f9a088e3a543bdb7f5154ca099a31d2`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 2.2 MB (2171624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea25d8c2f7331ace06740202126242c8c1c6b1361a83b03ed7a2a0720d6839eb`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be282f4e38e25ce564d8555eae6a6fdfc03ac38c6457ec6bb23aaeb440de07a`  
		Last Modified: Thu, 05 Nov 2026 07:21:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:275a220ae23abbed756419df367cab4740030bff8721465e81ebee52191c3b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120588f89a2dc8e0c243151dd8b7c9b27f14a74759292788dd11e2e4051621ba`

```dockerfile
```

-	Layers:
	-	`sha256:9645f04369d35851eb7ebc06d9b1438172df776d1407c063aa0ff959a45a1057`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39147cc4290ffc8c1ac49b1d4a8a825a461ac8c0e4cd8da27f151ec98e9192e5`  
		Last Modified: Thu, 05 Nov 2026 07:21:31 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d37d9f141845d208688b347704148fe8c0269386180197f02df02fe7ff6aa8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d15dd487cd49428dbe61a263d3ad4df729a0fcc2e71d259bd3716c112a38956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:19 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:17:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:20:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:20:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:20:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:20:23 GMT
USER memcache
# Thu, 05 Nov 2026 07:20:23 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:20:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49749bbca8c54ece169a63a50bd44188604eb744779e9c6a59c9668ee40603b`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb188c8ca8e350704d799919dd52f265401daa0e30c1c8c71af17cb678d00c72`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 153.5 KB (153542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e197b7fa681140d8e5c9cacbf0f1407cefdbc47adbc193ac8f3da6fac9eed5c5`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.3 MB (2266876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5898a0e025521f5d01f1c4f59bc5fa2141ce72cbcb5b8fec6a4f28d72223397f`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e277933109fcef09b52e7ff2d2f0b01b7523db507efef35c7f2ad6acef3dae0`  
		Last Modified: Thu, 05 Nov 2026 07:20:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:65be82ce19bef1808704a6436925cca7650e822bb06b0cdbf5b5ab7a204eb9ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255c054e753da8928856917107b759cce96bce5e4e21d8d0939ea3a275fe3a79`

```dockerfile
```

-	Layers:
	-	`sha256:2fe57407f244d3b0e5676d0b8590016acc7af5e4ab451c530dcd1088160c05ac`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ec8b663f5686539d7a4d441af52f312b57598244cc908a7fadd4d1b2286a8c`  
		Last Modified: Thu, 05 Nov 2026 07:20:29 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; 386

```console
$ docker pull memcached@sha256:8c354712fdc002149b1dfec00efef6ed93b23926d4be3cb9ec34f212a24474fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33751081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2811a32e110cfac2c43b7e606c0964b327d5e760b5b6ad1751d68d4f315efc87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:14:54 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:17:49 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:17:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:17:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:17:49 GMT
USER memcache
# Thu, 05 Nov 2026 07:17:49 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:17:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897af33699c937368d898d331a073893837697f25aa2ee300773c4076a0e0963`  
		Last Modified: Thu, 05 Nov 2026 07:17:54 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c153beb0c28113dfed58ee882e8a9ad057b51f7f07af172d9c9024e228652311`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 147.6 KB (147562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fbe6636116d68358c6a5ad6333e1b90cfc61ff49cfbfc895b4dfe9357dc6be`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.2 MB (2231247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be59883fde6704085f0318c5d2d5635ed5d6a5db39c64b616fcbb4534409fd28`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21aca5aa44854f42e8e996a6d7b2cebe4b21ea00d23ad4ccff069507b2f64aae`  
		Last Modified: Thu, 05 Nov 2026 07:17:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:328e5fcb1eb4d6ccb7299bd7feeccfc33cbd81e6b28fe399da9a5a06bd74f31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f90dc7d65445ecc3b564213856fca0ba921b9025eddd0fc3bac7ba4bb5c6668`

```dockerfile
```

-	Layers:
	-	`sha256:e5660e6bf8462963ca0b8456baa55698169bc57d3d056f13cdb2940617ad4e82`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f6e118825aab04cff2f29f8b0243d9723878a2b4ae31e597e77c31794c7b1fe`  
		Last Modified: Thu, 05 Nov 2026 07:17:55 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:3ea8455d0258881f29f2c18ab7b2a75a8b9f4d3d51b8a9775a7442d0e61dff1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36829374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32751ee77730d0c966d9aabd831eea60e8c7bb058b0abb136ded3f9d7b4b9aeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:26:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 07:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 07:50:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 07:50:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:50:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:50:48 GMT
USER memcache
# Thu, 05 Nov 2026 07:50:48 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 07:50:48 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad79880010b426b3e87ea908d773a76c8404eeaebc98f13bedd948931341aed8`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35794a16da4fbb9cad55805ee7f2a01ecc52aab7440493c93ca5d96ee01f11b0`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 170.4 KB (170402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4086cbf68d82ca027eb1f39aea32d1e58019311d2dc6336c39bc2351ed8f97e6`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 3.0 MB (2989811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250339d42def0f8a03cd8ff0a19bc1c4b8d3a5ae1f4056cd43012669a230a16b`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a76e0cec9c36e6c2cccfdbfdfa12c325104603d9b560400a9c60d8d7f00cca2`  
		Last Modified: Thu, 05 Nov 2026 07:51:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:6653a4b926bf3e2f644b05af7e18c06d8371ec73622e42d205dcc0e0e8c4ff29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891aa44d54e6ee9fac72066779b5a5bd74615ebf9f5c2a2308cc748e7d57f502`

```dockerfile
```

-	Layers:
	-	`sha256:fdd57b75bb6a0357843f4e2b6f4a007efd37db43702a3bc94e7bd57b5774f8f2`  
		Last Modified: Thu, 05 Nov 2026 07:51:02 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc7cc43aee22466291b8ad8d92a6b701f4d800153ebad72a88843b0e0c79443`  
		Last Modified: Thu, 05 Nov 2026 07:51:01 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:e45f1f7e40d9442fd61e3afcbc7711d993994e4e2cd2e7ac5967a799b1c8ecf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30694152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ccc4d122be45d7746b2a13ddfe72a37fcdf2851b765cf14ecbebd76d868f33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:42:37 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 11:43:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 11:57:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 11:57:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 11:57:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 11:57:12 GMT
USER memcache
# Thu, 05 Nov 2026 11:57:12 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 11:57:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4e2c560a4e6fbd4faeba39786948501e4098d7de4ec8f0d2689fd697a0de3f`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b3c53ed9ccd2a94f4c0377152b3f9e67582b0a5680887c2b073f944c6fbf04`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 133.1 KB (133122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e1207719b823f806678bb9300f0416007fd720211ffe3db5668ac4cdac85f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.2 MB (2213334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df294386699007bd47d1c015d2c7d039929d83ae83695584fb4aecbcf1982db`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b8c61d81801921c80454e0eeb14e691ba809266de06c4d02a034711421d57f`  
		Last Modified: Thu, 05 Nov 2026 11:58:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:3fb8ee7b75a894301c9b94521e0f03e95c06bdd2c61948bbd7d313e365be7937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:211761d90fe530ce3ec20364190033c339a87cb1d5d9372144ae62c9b5993aea`

```dockerfile
```

-	Layers:
	-	`sha256:ff0864b4ac18d4f64077f1dbf836240462c4694976978b98961e2f9459b8d3f8`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29b33b082ee4c7fb6bdc1dafa09f4a980928879f925fdba87eb52226692fadab`  
		Last Modified: Thu, 05 Nov 2026 11:58:11 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; s390x

```console
$ docker pull memcached@sha256:120591cbb1cddf6d4d0f1488bed5baba7097147f398bcaa78c85424265db9a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32367588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3df2df743b4f58fe6dfc66dd1525a62e4770655e1f0fae6ac55339b59fb5ee5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 09:16:33 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Thu, 05 Nov 2026 09:16:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 09:19:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 09:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 09:19:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 09:19:45 GMT
USER memcache
# Thu, 05 Nov 2026 09:19:45 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 09:19:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea4474c25254e742cd463f5e36abdf7bef82459bbed9a2e51b1bc72f6f8a550`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24dbd1a440ce097dc597de0a62369bb003fd72049353e8500317fad988516397`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 140.6 KB (140560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38e355a1ecd9159bb5d5b3f38d992079607cbae5a4e28106f486110b3ac95a8`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.3 MB (2301401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8600a708b640ea89e806270702e22a2529fa3c6c477531979ee1941c3541f6`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0123612f72a4c2ec69f2e155b1e9644f866f750c6d72d5da043d379e83aeece`  
		Last Modified: Thu, 05 Nov 2026 09:19:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:db1c1a725bf8252033f12233790b415f5dfad7f925135af7c6fcf0062f2a584e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7327e5f49237a141abc786c74694708e13f89a1d0b8f10801f2942695a4d0c`

```dockerfile
```

-	Layers:
	-	`sha256:fd54b26407096245a9a1a47c90cb8f0c71e08848cefd6b43da022b2a8bea855d`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3209868ba1c2f16c58eb46bde310156c0d2677d439a70d2cfcc57bc908e809b7`  
		Last Modified: Thu, 05 Nov 2026 09:19:55 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json
