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
$ docker pull memcached@sha256:bfc2ee42c4edb65f436dafc6a61cbc6938c30118e11ddea2f968e1a2c90bb12a
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
$ docker pull memcached@sha256:4c212724c5f8a4db867cf61626dff2d4447a0474d5a103093fe61d663e535f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3ee535ae89d4575d0348a2c0bda0447f259f96b195687683c737ce36085d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:56:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 19:00:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:00:44 GMT
USER memcache
# Thu, 05 Nov 2026 19:00:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 19:00:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ba209419d2ba0ae958dcda612a318b12d6f9efd9b1402115c247117c59599f`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e2aa57d7b3ad0b1ddca0141d42990e480b266b5e8548e84406240fb609f0c8`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 106.1 KB (106073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3098801408fd4d84783a9157a92ccb515edd03be5f4fa3106df0f2d08bec8a2`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 2.0 MB (1971743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1eb33789bc2e4ee752391953c66de9597f6646e1c5ee088184e30ff8b36fb4`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc8ccbf699aee8bdf3166f298aa19adb8aafa26272113235ad2ff00ad5f188`  
		Last Modified: Thu, 05 Nov 2026 19:00:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:6f8c60fca8f1bd54b4313eb41731e4b360914956c4e78d1292b236602aefccdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0145786c7e5dc4a7aa0df58daa5907d6f2e2ff21079f04d290b940a770ed5a7`

```dockerfile
```

-	Layers:
	-	`sha256:55ad61478783055d71888c4685e20b23d0066aae8d7a70c6ca8d1cad1b41bb59`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59d50fa8fb321ecb18c1fa50a13381ba5f90263d5f7f648868083da72a5f2e7d`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8771ad9d0b0b1282af55c73cdb24792e2c4dfea309529f9174ca9b257647cc22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5582065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd0b67e953e73f7de6d7e76d0d2f4845fbde3f6ea726b3a1e8441524bc7601`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:23:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:23:37 GMT
USER memcache
# Thu, 05 Nov 2026 18:23:37 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:23:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870890e2c74ff8ff80c5b0f21758ce575600c626c0c6626141f4a2fc9bf632fd`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc33be60c478313b5635a88f0e56451d89689ec069eea928d0f97b35a934a80`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 102.6 KB (102633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a22713f3ed9eda8d5060653df812c71b683c34d8745e11566b49133237fa9e5`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 1.9 MB (1919682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8b10a9557a3f11172d7905bdfa1910bdaa08691b761750753edf11cd982e4e`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49800bf357011b644e4f4ff2b82726ba1c82c0af1775a673c3bd411302ad218f`  
		Last Modified: Thu, 05 Nov 2026 18:23:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b6443730ce5ca6d3a992ed36603ca37a1f6c274e10e9a6275ab9f3c54b4d96c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19793bc746dd2bccb85048de1f8144f311aa2c4554854a885075f8d22154fa6`

```dockerfile
```

-	Layers:
	-	`sha256:a42e3f63308fb429e83fc9073f8674b6e4a33e5f35b38f8422091e2ac2543272`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0ba0299fdd319d575114f105db32053a996f93c0311bf6567045ded0aa05b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ea20ab1c229faa4e71bd5b674b24343f250f7bce30fee15b9b29bbf89377ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:42 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:18:42 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:21:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:21:39 GMT
USER memcache
# Thu, 05 Nov 2026 18:21:39 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:21:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97f4a8e02b9d7b5990d350bd5a2b0f40bd4446e2890aef1c7cc0c62fafd92e3`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0dfafbf4732e30b0ab61496789bab99d47d6deabb6606cc4798c0b622c9292`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 92.4 KB (92365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bec4a2d9a37c3a7cf8d0b30db490fcf4f3d346f1f82031b80b8f85bce058d1`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 1.9 MB (1879178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01732e17a3ff3a47e01cc3debd2b5ea81b4291e4f3c4acd0518ac48dff911483`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1181954ea65bd8c1b55284bde24dfe78390dc3cbb77a73d55ee4910ef97e17d`  
		Last Modified: Thu, 05 Nov 2026 18:21:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:56566d1b6580ac560666e7e7e13ad034a1ce2f591164c9dd116d375b27b696b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5aa37fb45215cbf5c45437284b7ace5090af3984066983c6a8ff719eb5d62d`

```dockerfile
```

-	Layers:
	-	`sha256:6bdb1fb9f7af7c65c5d7408e02ebb4cf22d16613fbe56d32bdd0225b80c8c6a0`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15555e1304f54c45ed7c63338c3bbe47f77f73e0cc2bb8971c57947e4c057aa`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b69954b3d77517d1091141b8a8f9c0abfe8f40dc1cad1390f368eddc64d84523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758255c704b523695dc5bca12e17a5f3b4b6132e57239c8e88d4dec1d050a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:08 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:52:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:54:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:54:57 GMT
USER memcache
# Thu, 05 Nov 2026 18:54:57 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:54:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640bb3960a9b2a8711297911ff7cb5518a7d7d526ccc63a717169230b76c063`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea1ec15cae2510a1600aebc222560419e322ce90dcbc4b1d0dceafd4d4a07fd`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 121.9 KB (121861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82877405646f763219848e76f07a6a362a4d35f9f6d210b4ddb600d45bb42cff`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 1.9 MB (1948982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e041533b357345b59c3e391a563d4876e33ad32fecdcc0fb57f9dc14501aab`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734ac31a62a6978cb14c895c3b68f0aec58408f60b86674335c650a80c103349`  
		Last Modified: Thu, 05 Nov 2026 18:55:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:182c89df0c510817f4285509bb876e13659132cd0c4bb0f445286bd4abe111f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534b699241412fdf412909a91b470710a8360afbbd63d69ac014e071041460db`

```dockerfile
```

-	Layers:
	-	`sha256:4fb3cb9e445806496a24157e8ed65719156f967724c477b7efc4fe8170065ab5`  
		Last Modified: Thu, 05 Nov 2026 18:55:01 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3d202e81dac3b7e6cac9d3212c1faed6fa45c88fb786bb5f79cc9daf15034b`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:96da826de49e182bbd774a3252223fee26f6c1482a12068775292f47063aca8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5718295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8f8f57e9b7e7e23c7eab06d403324295bc7e88f8ab2b5c08eab9286356ece8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:09 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:18:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:52 GMT
USER memcache
# Thu, 05 Nov 2026 18:18:52 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:18:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed027827c6abd6a7790ba8c0eead618449266c88d77ab0a28780b12024c8e268`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3f7c893c77921fe6dc4808293ee7f922af08f62d724256bd38114b6270cf88`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 110.7 KB (110732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5de86f641416a1bd8aaa2e0d40404fc6d8caab12e3713e17b4e743b5fdf860`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 1.9 MB (1925854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234a5afe6e4e09a6bc38241785b0f8e169c69de0721e1890747f14708ea2a66d`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c863d4068e9b7c0a78f4ef48a1b8b5401a525945dfe13dbc16e5f19498e4d9`  
		Last Modified: Thu, 05 Nov 2026 18:18:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:bb49dc5ff60bd7151a8b20bef8dabeb079589ab11c54ba69defd6fbb0d54ee06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377b37d9e4ff5e335013aba40c74d9935d06c5112b47725844f5a94d6b6943a1`

```dockerfile
```

-	Layers:
	-	`sha256:be465cd82350d5d2559126d40adb26d22abb646c41dc57ac32d1f49a85b5fe99`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:504ac7031c0ffb0c3f1ab99d6fb622751420ce77eeac85d4efd9c17591d26778`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:8a2bc458dc90b9a052857c25d88c5b516599ff5e67d72239c33b7681761d4fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6013134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36682c2ca6810176b0e8d4159856a26599d6d0c10cc2a09b6b9231417e2aaffe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:33:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 21:33:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 21:36:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:36:30 GMT
USER memcache
# Thu, 05 Nov 2026 21:36:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 21:36:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156126366920d60fd8a8106a96980f2ab2db8f951c53fbf8a1854dfaaaac4c0c`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb93e587b784ec833af11ebab3ac570e4402d47bb2abaae01d43186f4c3e7b`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c1248c93b4e6b8a9de4fe416f334f86b86c3596f2ff74299e22e8cd4a1c5d`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 2.1 MB (2063597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629a8440eb748bfaa01e51c02b3dc1e8ab1459aaf9db8ab6ebd453351f6d05bb`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aff77b814681dfa5dcb11c8abc31a14802ac7f74983c29390ec95486e99a086`  
		Last Modified: Thu, 05 Nov 2026 21:37:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5d8c0e4a8f2e2e3e659d4308b93c5566dd8ae84633c35558c1db47ff2d1ca7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd19ce149dee775c2dcb51401df3e6e7fdc1806b220a09e5b2590357e85b5cd`

```dockerfile
```

-	Layers:
	-	`sha256:487d711e089796e51bac90b572a0b07bbf18e6a86352749cbb002c8b08c865ec`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4aa71a818694dda22327b106e1cd7adc9bb98bc237b37f25b58d697cc57233f`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
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
$ docker pull memcached@sha256:332fc8892950874f631936f1aefc9e065a3fef540503fd32e0a1b0f06680a9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5840534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e548e34801de0d842ec2c5415444e77b23c8e44064b9f84cb20488c4078fd389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:19:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:42 GMT
USER memcache
# Thu, 05 Nov 2026 18:19:42 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:19:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5acd2c65007758f8daa8854827e8f1ee7de20f78c4cf91bff9021b8c2c480d`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191ec38b883519d1d75ed4fbed544ca9837d6d269b786894e3a0f42e48f2ec6b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 114.3 KB (114295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc16e45ae72ebf918c8b77882597a57f2cb860f8a63a2d6d06c8f8236baaed8b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 2.0 MB (2004218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f27d6ce65859941f838ac9a09524ff6981a0522d6ad1c618b739736c698120`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3452dfb107e1da19f81ecbb97210f5f70c355d02f77a24ca9a8363292548b028`  
		Last Modified: Thu, 05 Nov 2026 18:19:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b8452eafb8835ccc736e5d9c2a4320f629d75312023b368844e7fc93bf5fb07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c629d5528a2f229137bba4b294d4b616a253bdc7c6f74b0bcffc09ecf72cc6df`

```dockerfile
```

-	Layers:
	-	`sha256:b2e77d45a648424ee77149f83dea09e6c7c60d16c2c07de812112d6ab34040a8`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5303052abb026f5dd4362670ea8b16adf463d868de6734a62241b451a35898b4`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine3.24`

```console
$ docker pull memcached@sha256:bfc2ee42c4edb65f436dafc6a61cbc6938c30118e11ddea2f968e1a2c90bb12a
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
$ docker pull memcached@sha256:4c212724c5f8a4db867cf61626dff2d4447a0474d5a103093fe61d663e535f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3ee535ae89d4575d0348a2c0bda0447f259f96b195687683c737ce36085d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:56:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 19:00:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:00:44 GMT
USER memcache
# Thu, 05 Nov 2026 19:00:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 19:00:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ba209419d2ba0ae958dcda612a318b12d6f9efd9b1402115c247117c59599f`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e2aa57d7b3ad0b1ddca0141d42990e480b266b5e8548e84406240fb609f0c8`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 106.1 KB (106073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3098801408fd4d84783a9157a92ccb515edd03be5f4fa3106df0f2d08bec8a2`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 2.0 MB (1971743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1eb33789bc2e4ee752391953c66de9597f6646e1c5ee088184e30ff8b36fb4`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc8ccbf699aee8bdf3166f298aa19adb8aafa26272113235ad2ff00ad5f188`  
		Last Modified: Thu, 05 Nov 2026 19:00:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6f8c60fca8f1bd54b4313eb41731e4b360914956c4e78d1292b236602aefccdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0145786c7e5dc4a7aa0df58daa5907d6f2e2ff21079f04d290b940a770ed5a7`

```dockerfile
```

-	Layers:
	-	`sha256:55ad61478783055d71888c4685e20b23d0066aae8d7a70c6ca8d1cad1b41bb59`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59d50fa8fb321ecb18c1fa50a13381ba5f90263d5f7f648868083da72a5f2e7d`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8771ad9d0b0b1282af55c73cdb24792e2c4dfea309529f9174ca9b257647cc22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5582065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd0b67e953e73f7de6d7e76d0d2f4845fbde3f6ea726b3a1e8441524bc7601`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:23:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:23:37 GMT
USER memcache
# Thu, 05 Nov 2026 18:23:37 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:23:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870890e2c74ff8ff80c5b0f21758ce575600c626c0c6626141f4a2fc9bf632fd`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc33be60c478313b5635a88f0e56451d89689ec069eea928d0f97b35a934a80`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 102.6 KB (102633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a22713f3ed9eda8d5060653df812c71b683c34d8745e11566b49133237fa9e5`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 1.9 MB (1919682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8b10a9557a3f11172d7905bdfa1910bdaa08691b761750753edf11cd982e4e`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49800bf357011b644e4f4ff2b82726ba1c82c0af1775a673c3bd411302ad218f`  
		Last Modified: Thu, 05 Nov 2026 18:23:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b6443730ce5ca6d3a992ed36603ca37a1f6c274e10e9a6275ab9f3c54b4d96c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19793bc746dd2bccb85048de1f8144f311aa2c4554854a885075f8d22154fa6`

```dockerfile
```

-	Layers:
	-	`sha256:a42e3f63308fb429e83fc9073f8674b6e4a33e5f35b38f8422091e2ac2543272`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0ba0299fdd319d575114f105db32053a996f93c0311bf6567045ded0aa05b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ea20ab1c229faa4e71bd5b674b24343f250f7bce30fee15b9b29bbf89377ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:42 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:18:42 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:21:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:21:39 GMT
USER memcache
# Thu, 05 Nov 2026 18:21:39 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:21:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97f4a8e02b9d7b5990d350bd5a2b0f40bd4446e2890aef1c7cc0c62fafd92e3`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0dfafbf4732e30b0ab61496789bab99d47d6deabb6606cc4798c0b622c9292`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 92.4 KB (92365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bec4a2d9a37c3a7cf8d0b30db490fcf4f3d346f1f82031b80b8f85bce058d1`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 1.9 MB (1879178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01732e17a3ff3a47e01cc3debd2b5ea81b4291e4f3c4acd0518ac48dff911483`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1181954ea65bd8c1b55284bde24dfe78390dc3cbb77a73d55ee4910ef97e17d`  
		Last Modified: Thu, 05 Nov 2026 18:21:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:56566d1b6580ac560666e7e7e13ad034a1ce2f591164c9dd116d375b27b696b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5aa37fb45215cbf5c45437284b7ace5090af3984066983c6a8ff719eb5d62d`

```dockerfile
```

-	Layers:
	-	`sha256:6bdb1fb9f7af7c65c5d7408e02ebb4cf22d16613fbe56d32bdd0225b80c8c6a0`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15555e1304f54c45ed7c63338c3bbe47f77f73e0cc2bb8971c57947e4c057aa`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b69954b3d77517d1091141b8a8f9c0abfe8f40dc1cad1390f368eddc64d84523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758255c704b523695dc5bca12e17a5f3b4b6132e57239c8e88d4dec1d050a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:08 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:52:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:54:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:54:57 GMT
USER memcache
# Thu, 05 Nov 2026 18:54:57 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:54:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640bb3960a9b2a8711297911ff7cb5518a7d7d526ccc63a717169230b76c063`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea1ec15cae2510a1600aebc222560419e322ce90dcbc4b1d0dceafd4d4a07fd`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 121.9 KB (121861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82877405646f763219848e76f07a6a362a4d35f9f6d210b4ddb600d45bb42cff`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 1.9 MB (1948982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e041533b357345b59c3e391a563d4876e33ad32fecdcc0fb57f9dc14501aab`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734ac31a62a6978cb14c895c3b68f0aec58408f60b86674335c650a80c103349`  
		Last Modified: Thu, 05 Nov 2026 18:55:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:182c89df0c510817f4285509bb876e13659132cd0c4bb0f445286bd4abe111f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534b699241412fdf412909a91b470710a8360afbbd63d69ac014e071041460db`

```dockerfile
```

-	Layers:
	-	`sha256:4fb3cb9e445806496a24157e8ed65719156f967724c477b7efc4fe8170065ab5`  
		Last Modified: Thu, 05 Nov 2026 18:55:01 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3d202e81dac3b7e6cac9d3212c1faed6fa45c88fb786bb5f79cc9daf15034b`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:96da826de49e182bbd774a3252223fee26f6c1482a12068775292f47063aca8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5718295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8f8f57e9b7e7e23c7eab06d403324295bc7e88f8ab2b5c08eab9286356ece8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:09 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:18:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:52 GMT
USER memcache
# Thu, 05 Nov 2026 18:18:52 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:18:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed027827c6abd6a7790ba8c0eead618449266c88d77ab0a28780b12024c8e268`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3f7c893c77921fe6dc4808293ee7f922af08f62d724256bd38114b6270cf88`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 110.7 KB (110732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5de86f641416a1bd8aaa2e0d40404fc6d8caab12e3713e17b4e743b5fdf860`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 1.9 MB (1925854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234a5afe6e4e09a6bc38241785b0f8e169c69de0721e1890747f14708ea2a66d`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c863d4068e9b7c0a78f4ef48a1b8b5401a525945dfe13dbc16e5f19498e4d9`  
		Last Modified: Thu, 05 Nov 2026 18:18:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:bb49dc5ff60bd7151a8b20bef8dabeb079589ab11c54ba69defd6fbb0d54ee06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377b37d9e4ff5e335013aba40c74d9935d06c5112b47725844f5a94d6b6943a1`

```dockerfile
```

-	Layers:
	-	`sha256:be465cd82350d5d2559126d40adb26d22abb646c41dc57ac32d1f49a85b5fe99`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:504ac7031c0ffb0c3f1ab99d6fb622751420ce77eeac85d4efd9c17591d26778`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:8a2bc458dc90b9a052857c25d88c5b516599ff5e67d72239c33b7681761d4fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6013134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36682c2ca6810176b0e8d4159856a26599d6d0c10cc2a09b6b9231417e2aaffe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:33:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 21:33:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 21:36:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:36:30 GMT
USER memcache
# Thu, 05 Nov 2026 21:36:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 21:36:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156126366920d60fd8a8106a96980f2ab2db8f951c53fbf8a1854dfaaaac4c0c`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb93e587b784ec833af11ebab3ac570e4402d47bb2abaae01d43186f4c3e7b`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c1248c93b4e6b8a9de4fe416f334f86b86c3596f2ff74299e22e8cd4a1c5d`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 2.1 MB (2063597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629a8440eb748bfaa01e51c02b3dc1e8ab1459aaf9db8ab6ebd453351f6d05bb`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aff77b814681dfa5dcb11c8abc31a14802ac7f74983c29390ec95486e99a086`  
		Last Modified: Thu, 05 Nov 2026 21:37:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5d8c0e4a8f2e2e3e659d4308b93c5566dd8ae84633c35558c1db47ff2d1ca7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd19ce149dee775c2dcb51401df3e6e7fdc1806b220a09e5b2590357e85b5cd`

```dockerfile
```

-	Layers:
	-	`sha256:487d711e089796e51bac90b572a0b07bbf18e6a86352749cbb002c8b08c865ec`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4aa71a818694dda22327b106e1cd7adc9bb98bc237b37f25b58d697cc57233f`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
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
$ docker pull memcached@sha256:332fc8892950874f631936f1aefc9e065a3fef540503fd32e0a1b0f06680a9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5840534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e548e34801de0d842ec2c5415444e77b23c8e44064b9f84cb20488c4078fd389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:19:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:42 GMT
USER memcache
# Thu, 05 Nov 2026 18:19:42 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:19:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5acd2c65007758f8daa8854827e8f1ee7de20f78c4cf91bff9021b8c2c480d`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191ec38b883519d1d75ed4fbed544ca9837d6d269b786894e3a0f42e48f2ec6b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 114.3 KB (114295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc16e45ae72ebf918c8b77882597a57f2cb860f8a63a2d6d06c8f8236baaed8b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 2.0 MB (2004218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f27d6ce65859941f838ac9a09524ff6981a0522d6ad1c618b739736c698120`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3452dfb107e1da19f81ecbb97210f5f70c355d02f77a24ca9a8363292548b028`  
		Last Modified: Thu, 05 Nov 2026 18:19:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b8452eafb8835ccc736e5d9c2a4320f629d75312023b368844e7fc93bf5fb07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c629d5528a2f229137bba4b294d4b616a253bdc7c6f74b0bcffc09ecf72cc6df`

```dockerfile
```

-	Layers:
	-	`sha256:b2e77d45a648424ee77149f83dea09e6c7c60d16c2c07de812112d6ab34040a8`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5303052abb026f5dd4362670ea8b16adf463d868de6734a62241b451a35898b4`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
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
$ docker pull memcached@sha256:bfc2ee42c4edb65f436dafc6a61cbc6938c30118e11ddea2f968e1a2c90bb12a
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
$ docker pull memcached@sha256:4c212724c5f8a4db867cf61626dff2d4447a0474d5a103093fe61d663e535f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3ee535ae89d4575d0348a2c0bda0447f259f96b195687683c737ce36085d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:56:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 19:00:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:00:44 GMT
USER memcache
# Thu, 05 Nov 2026 19:00:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 19:00:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ba209419d2ba0ae958dcda612a318b12d6f9efd9b1402115c247117c59599f`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e2aa57d7b3ad0b1ddca0141d42990e480b266b5e8548e84406240fb609f0c8`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 106.1 KB (106073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3098801408fd4d84783a9157a92ccb515edd03be5f4fa3106df0f2d08bec8a2`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 2.0 MB (1971743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1eb33789bc2e4ee752391953c66de9597f6646e1c5ee088184e30ff8b36fb4`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc8ccbf699aee8bdf3166f298aa19adb8aafa26272113235ad2ff00ad5f188`  
		Last Modified: Thu, 05 Nov 2026 19:00:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:6f8c60fca8f1bd54b4313eb41731e4b360914956c4e78d1292b236602aefccdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0145786c7e5dc4a7aa0df58daa5907d6f2e2ff21079f04d290b940a770ed5a7`

```dockerfile
```

-	Layers:
	-	`sha256:55ad61478783055d71888c4685e20b23d0066aae8d7a70c6ca8d1cad1b41bb59`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59d50fa8fb321ecb18c1fa50a13381ba5f90263d5f7f648868083da72a5f2e7d`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8771ad9d0b0b1282af55c73cdb24792e2c4dfea309529f9174ca9b257647cc22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5582065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd0b67e953e73f7de6d7e76d0d2f4845fbde3f6ea726b3a1e8441524bc7601`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:23:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:23:37 GMT
USER memcache
# Thu, 05 Nov 2026 18:23:37 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:23:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870890e2c74ff8ff80c5b0f21758ce575600c626c0c6626141f4a2fc9bf632fd`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc33be60c478313b5635a88f0e56451d89689ec069eea928d0f97b35a934a80`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 102.6 KB (102633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a22713f3ed9eda8d5060653df812c71b683c34d8745e11566b49133237fa9e5`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 1.9 MB (1919682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8b10a9557a3f11172d7905bdfa1910bdaa08691b761750753edf11cd982e4e`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49800bf357011b644e4f4ff2b82726ba1c82c0af1775a673c3bd411302ad218f`  
		Last Modified: Thu, 05 Nov 2026 18:23:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b6443730ce5ca6d3a992ed36603ca37a1f6c274e10e9a6275ab9f3c54b4d96c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19793bc746dd2bccb85048de1f8144f311aa2c4554854a885075f8d22154fa6`

```dockerfile
```

-	Layers:
	-	`sha256:a42e3f63308fb429e83fc9073f8674b6e4a33e5f35b38f8422091e2ac2543272`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0ba0299fdd319d575114f105db32053a996f93c0311bf6567045ded0aa05b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ea20ab1c229faa4e71bd5b674b24343f250f7bce30fee15b9b29bbf89377ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:42 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:18:42 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:21:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:21:39 GMT
USER memcache
# Thu, 05 Nov 2026 18:21:39 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:21:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97f4a8e02b9d7b5990d350bd5a2b0f40bd4446e2890aef1c7cc0c62fafd92e3`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0dfafbf4732e30b0ab61496789bab99d47d6deabb6606cc4798c0b622c9292`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 92.4 KB (92365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bec4a2d9a37c3a7cf8d0b30db490fcf4f3d346f1f82031b80b8f85bce058d1`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 1.9 MB (1879178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01732e17a3ff3a47e01cc3debd2b5ea81b4291e4f3c4acd0518ac48dff911483`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1181954ea65bd8c1b55284bde24dfe78390dc3cbb77a73d55ee4910ef97e17d`  
		Last Modified: Thu, 05 Nov 2026 18:21:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:56566d1b6580ac560666e7e7e13ad034a1ce2f591164c9dd116d375b27b696b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5aa37fb45215cbf5c45437284b7ace5090af3984066983c6a8ff719eb5d62d`

```dockerfile
```

-	Layers:
	-	`sha256:6bdb1fb9f7af7c65c5d7408e02ebb4cf22d16613fbe56d32bdd0225b80c8c6a0`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15555e1304f54c45ed7c63338c3bbe47f77f73e0cc2bb8971c57947e4c057aa`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b69954b3d77517d1091141b8a8f9c0abfe8f40dc1cad1390f368eddc64d84523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758255c704b523695dc5bca12e17a5f3b4b6132e57239c8e88d4dec1d050a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:08 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:52:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:54:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:54:57 GMT
USER memcache
# Thu, 05 Nov 2026 18:54:57 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:54:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640bb3960a9b2a8711297911ff7cb5518a7d7d526ccc63a717169230b76c063`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea1ec15cae2510a1600aebc222560419e322ce90dcbc4b1d0dceafd4d4a07fd`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 121.9 KB (121861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82877405646f763219848e76f07a6a362a4d35f9f6d210b4ddb600d45bb42cff`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 1.9 MB (1948982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e041533b357345b59c3e391a563d4876e33ad32fecdcc0fb57f9dc14501aab`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734ac31a62a6978cb14c895c3b68f0aec58408f60b86674335c650a80c103349`  
		Last Modified: Thu, 05 Nov 2026 18:55:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:182c89df0c510817f4285509bb876e13659132cd0c4bb0f445286bd4abe111f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534b699241412fdf412909a91b470710a8360afbbd63d69ac014e071041460db`

```dockerfile
```

-	Layers:
	-	`sha256:4fb3cb9e445806496a24157e8ed65719156f967724c477b7efc4fe8170065ab5`  
		Last Modified: Thu, 05 Nov 2026 18:55:01 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3d202e81dac3b7e6cac9d3212c1faed6fa45c88fb786bb5f79cc9daf15034b`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; 386

```console
$ docker pull memcached@sha256:96da826de49e182bbd774a3252223fee26f6c1482a12068775292f47063aca8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5718295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8f8f57e9b7e7e23c7eab06d403324295bc7e88f8ab2b5c08eab9286356ece8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:09 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:18:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:52 GMT
USER memcache
# Thu, 05 Nov 2026 18:18:52 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:18:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed027827c6abd6a7790ba8c0eead618449266c88d77ab0a28780b12024c8e268`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3f7c893c77921fe6dc4808293ee7f922af08f62d724256bd38114b6270cf88`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 110.7 KB (110732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5de86f641416a1bd8aaa2e0d40404fc6d8caab12e3713e17b4e743b5fdf860`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 1.9 MB (1925854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234a5afe6e4e09a6bc38241785b0f8e169c69de0721e1890747f14708ea2a66d`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c863d4068e9b7c0a78f4ef48a1b8b5401a525945dfe13dbc16e5f19498e4d9`  
		Last Modified: Thu, 05 Nov 2026 18:18:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:bb49dc5ff60bd7151a8b20bef8dabeb079589ab11c54ba69defd6fbb0d54ee06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377b37d9e4ff5e335013aba40c74d9935d06c5112b47725844f5a94d6b6943a1`

```dockerfile
```

-	Layers:
	-	`sha256:be465cd82350d5d2559126d40adb26d22abb646c41dc57ac32d1f49a85b5fe99`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:504ac7031c0ffb0c3f1ab99d6fb622751420ce77eeac85d4efd9c17591d26778`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:8a2bc458dc90b9a052857c25d88c5b516599ff5e67d72239c33b7681761d4fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6013134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36682c2ca6810176b0e8d4159856a26599d6d0c10cc2a09b6b9231417e2aaffe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:33:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 21:33:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 21:36:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:36:30 GMT
USER memcache
# Thu, 05 Nov 2026 21:36:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 21:36:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156126366920d60fd8a8106a96980f2ab2db8f951c53fbf8a1854dfaaaac4c0c`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb93e587b784ec833af11ebab3ac570e4402d47bb2abaae01d43186f4c3e7b`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c1248c93b4e6b8a9de4fe416f334f86b86c3596f2ff74299e22e8cd4a1c5d`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 2.1 MB (2063597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629a8440eb748bfaa01e51c02b3dc1e8ab1459aaf9db8ab6ebd453351f6d05bb`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aff77b814681dfa5dcb11c8abc31a14802ac7f74983c29390ec95486e99a086`  
		Last Modified: Thu, 05 Nov 2026 21:37:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5d8c0e4a8f2e2e3e659d4308b93c5566dd8ae84633c35558c1db47ff2d1ca7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd19ce149dee775c2dcb51401df3e6e7fdc1806b220a09e5b2590357e85b5cd`

```dockerfile
```

-	Layers:
	-	`sha256:487d711e089796e51bac90b572a0b07bbf18e6a86352749cbb002c8b08c865ec`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4aa71a818694dda22327b106e1cd7adc9bb98bc237b37f25b58d697cc57233f`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
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
$ docker pull memcached@sha256:332fc8892950874f631936f1aefc9e065a3fef540503fd32e0a1b0f06680a9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5840534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e548e34801de0d842ec2c5415444e77b23c8e44064b9f84cb20488c4078fd389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:19:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:42 GMT
USER memcache
# Thu, 05 Nov 2026 18:19:42 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:19:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5acd2c65007758f8daa8854827e8f1ee7de20f78c4cf91bff9021b8c2c480d`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191ec38b883519d1d75ed4fbed544ca9837d6d269b786894e3a0f42e48f2ec6b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 114.3 KB (114295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc16e45ae72ebf918c8b77882597a57f2cb860f8a63a2d6d06c8f8236baaed8b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 2.0 MB (2004218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f27d6ce65859941f838ac9a09524ff6981a0522d6ad1c618b739736c698120`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3452dfb107e1da19f81ecbb97210f5f70c355d02f77a24ca9a8363292548b028`  
		Last Modified: Thu, 05 Nov 2026 18:19:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b8452eafb8835ccc736e5d9c2a4320f629d75312023b368844e7fc93bf5fb07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c629d5528a2f229137bba4b294d4b616a253bdc7c6f74b0bcffc09ecf72cc6df`

```dockerfile
```

-	Layers:
	-	`sha256:b2e77d45a648424ee77149f83dea09e6c7c60d16c2c07de812112d6ab34040a8`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5303052abb026f5dd4362670ea8b16adf463d868de6734a62241b451a35898b4`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine3.24`

```console
$ docker pull memcached@sha256:bfc2ee42c4edb65f436dafc6a61cbc6938c30118e11ddea2f968e1a2c90bb12a
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
$ docker pull memcached@sha256:4c212724c5f8a4db867cf61626dff2d4447a0474d5a103093fe61d663e535f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3ee535ae89d4575d0348a2c0bda0447f259f96b195687683c737ce36085d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:56:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 19:00:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:00:44 GMT
USER memcache
# Thu, 05 Nov 2026 19:00:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 19:00:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ba209419d2ba0ae958dcda612a318b12d6f9efd9b1402115c247117c59599f`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e2aa57d7b3ad0b1ddca0141d42990e480b266b5e8548e84406240fb609f0c8`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 106.1 KB (106073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3098801408fd4d84783a9157a92ccb515edd03be5f4fa3106df0f2d08bec8a2`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 2.0 MB (1971743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1eb33789bc2e4ee752391953c66de9597f6646e1c5ee088184e30ff8b36fb4`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc8ccbf699aee8bdf3166f298aa19adb8aafa26272113235ad2ff00ad5f188`  
		Last Modified: Thu, 05 Nov 2026 19:00:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6f8c60fca8f1bd54b4313eb41731e4b360914956c4e78d1292b236602aefccdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0145786c7e5dc4a7aa0df58daa5907d6f2e2ff21079f04d290b940a770ed5a7`

```dockerfile
```

-	Layers:
	-	`sha256:55ad61478783055d71888c4685e20b23d0066aae8d7a70c6ca8d1cad1b41bb59`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59d50fa8fb321ecb18c1fa50a13381ba5f90263d5f7f648868083da72a5f2e7d`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8771ad9d0b0b1282af55c73cdb24792e2c4dfea309529f9174ca9b257647cc22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5582065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd0b67e953e73f7de6d7e76d0d2f4845fbde3f6ea726b3a1e8441524bc7601`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:23:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:23:37 GMT
USER memcache
# Thu, 05 Nov 2026 18:23:37 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:23:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870890e2c74ff8ff80c5b0f21758ce575600c626c0c6626141f4a2fc9bf632fd`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc33be60c478313b5635a88f0e56451d89689ec069eea928d0f97b35a934a80`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 102.6 KB (102633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a22713f3ed9eda8d5060653df812c71b683c34d8745e11566b49133237fa9e5`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 1.9 MB (1919682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8b10a9557a3f11172d7905bdfa1910bdaa08691b761750753edf11cd982e4e`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49800bf357011b644e4f4ff2b82726ba1c82c0af1775a673c3bd411302ad218f`  
		Last Modified: Thu, 05 Nov 2026 18:23:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b6443730ce5ca6d3a992ed36603ca37a1f6c274e10e9a6275ab9f3c54b4d96c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19793bc746dd2bccb85048de1f8144f311aa2c4554854a885075f8d22154fa6`

```dockerfile
```

-	Layers:
	-	`sha256:a42e3f63308fb429e83fc9073f8674b6e4a33e5f35b38f8422091e2ac2543272`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0ba0299fdd319d575114f105db32053a996f93c0311bf6567045ded0aa05b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ea20ab1c229faa4e71bd5b674b24343f250f7bce30fee15b9b29bbf89377ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:42 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:18:42 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:21:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:21:39 GMT
USER memcache
# Thu, 05 Nov 2026 18:21:39 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:21:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97f4a8e02b9d7b5990d350bd5a2b0f40bd4446e2890aef1c7cc0c62fafd92e3`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0dfafbf4732e30b0ab61496789bab99d47d6deabb6606cc4798c0b622c9292`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 92.4 KB (92365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bec4a2d9a37c3a7cf8d0b30db490fcf4f3d346f1f82031b80b8f85bce058d1`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 1.9 MB (1879178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01732e17a3ff3a47e01cc3debd2b5ea81b4291e4f3c4acd0518ac48dff911483`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1181954ea65bd8c1b55284bde24dfe78390dc3cbb77a73d55ee4910ef97e17d`  
		Last Modified: Thu, 05 Nov 2026 18:21:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:56566d1b6580ac560666e7e7e13ad034a1ce2f591164c9dd116d375b27b696b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5aa37fb45215cbf5c45437284b7ace5090af3984066983c6a8ff719eb5d62d`

```dockerfile
```

-	Layers:
	-	`sha256:6bdb1fb9f7af7c65c5d7408e02ebb4cf22d16613fbe56d32bdd0225b80c8c6a0`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15555e1304f54c45ed7c63338c3bbe47f77f73e0cc2bb8971c57947e4c057aa`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b69954b3d77517d1091141b8a8f9c0abfe8f40dc1cad1390f368eddc64d84523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758255c704b523695dc5bca12e17a5f3b4b6132e57239c8e88d4dec1d050a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:08 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:52:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:54:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:54:57 GMT
USER memcache
# Thu, 05 Nov 2026 18:54:57 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:54:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640bb3960a9b2a8711297911ff7cb5518a7d7d526ccc63a717169230b76c063`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea1ec15cae2510a1600aebc222560419e322ce90dcbc4b1d0dceafd4d4a07fd`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 121.9 KB (121861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82877405646f763219848e76f07a6a362a4d35f9f6d210b4ddb600d45bb42cff`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 1.9 MB (1948982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e041533b357345b59c3e391a563d4876e33ad32fecdcc0fb57f9dc14501aab`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734ac31a62a6978cb14c895c3b68f0aec58408f60b86674335c650a80c103349`  
		Last Modified: Thu, 05 Nov 2026 18:55:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:182c89df0c510817f4285509bb876e13659132cd0c4bb0f445286bd4abe111f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534b699241412fdf412909a91b470710a8360afbbd63d69ac014e071041460db`

```dockerfile
```

-	Layers:
	-	`sha256:4fb3cb9e445806496a24157e8ed65719156f967724c477b7efc4fe8170065ab5`  
		Last Modified: Thu, 05 Nov 2026 18:55:01 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3d202e81dac3b7e6cac9d3212c1faed6fa45c88fb786bb5f79cc9daf15034b`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:96da826de49e182bbd774a3252223fee26f6c1482a12068775292f47063aca8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5718295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8f8f57e9b7e7e23c7eab06d403324295bc7e88f8ab2b5c08eab9286356ece8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:09 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:18:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:52 GMT
USER memcache
# Thu, 05 Nov 2026 18:18:52 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:18:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed027827c6abd6a7790ba8c0eead618449266c88d77ab0a28780b12024c8e268`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3f7c893c77921fe6dc4808293ee7f922af08f62d724256bd38114b6270cf88`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 110.7 KB (110732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5de86f641416a1bd8aaa2e0d40404fc6d8caab12e3713e17b4e743b5fdf860`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 1.9 MB (1925854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234a5afe6e4e09a6bc38241785b0f8e169c69de0721e1890747f14708ea2a66d`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c863d4068e9b7c0a78f4ef48a1b8b5401a525945dfe13dbc16e5f19498e4d9`  
		Last Modified: Thu, 05 Nov 2026 18:18:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:bb49dc5ff60bd7151a8b20bef8dabeb079589ab11c54ba69defd6fbb0d54ee06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377b37d9e4ff5e335013aba40c74d9935d06c5112b47725844f5a94d6b6943a1`

```dockerfile
```

-	Layers:
	-	`sha256:be465cd82350d5d2559126d40adb26d22abb646c41dc57ac32d1f49a85b5fe99`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:504ac7031c0ffb0c3f1ab99d6fb622751420ce77eeac85d4efd9c17591d26778`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:8a2bc458dc90b9a052857c25d88c5b516599ff5e67d72239c33b7681761d4fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6013134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36682c2ca6810176b0e8d4159856a26599d6d0c10cc2a09b6b9231417e2aaffe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:33:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 21:33:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 21:36:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:36:30 GMT
USER memcache
# Thu, 05 Nov 2026 21:36:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 21:36:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156126366920d60fd8a8106a96980f2ab2db8f951c53fbf8a1854dfaaaac4c0c`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb93e587b784ec833af11ebab3ac570e4402d47bb2abaae01d43186f4c3e7b`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c1248c93b4e6b8a9de4fe416f334f86b86c3596f2ff74299e22e8cd4a1c5d`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 2.1 MB (2063597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629a8440eb748bfaa01e51c02b3dc1e8ab1459aaf9db8ab6ebd453351f6d05bb`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aff77b814681dfa5dcb11c8abc31a14802ac7f74983c29390ec95486e99a086`  
		Last Modified: Thu, 05 Nov 2026 21:37:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5d8c0e4a8f2e2e3e659d4308b93c5566dd8ae84633c35558c1db47ff2d1ca7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd19ce149dee775c2dcb51401df3e6e7fdc1806b220a09e5b2590357e85b5cd`

```dockerfile
```

-	Layers:
	-	`sha256:487d711e089796e51bac90b572a0b07bbf18e6a86352749cbb002c8b08c865ec`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4aa71a818694dda22327b106e1cd7adc9bb98bc237b37f25b58d697cc57233f`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
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
$ docker pull memcached@sha256:332fc8892950874f631936f1aefc9e065a3fef540503fd32e0a1b0f06680a9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5840534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e548e34801de0d842ec2c5415444e77b23c8e44064b9f84cb20488c4078fd389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:19:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:42 GMT
USER memcache
# Thu, 05 Nov 2026 18:19:42 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:19:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5acd2c65007758f8daa8854827e8f1ee7de20f78c4cf91bff9021b8c2c480d`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191ec38b883519d1d75ed4fbed544ca9837d6d269b786894e3a0f42e48f2ec6b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 114.3 KB (114295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc16e45ae72ebf918c8b77882597a57f2cb860f8a63a2d6d06c8f8236baaed8b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 2.0 MB (2004218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f27d6ce65859941f838ac9a09524ff6981a0522d6ad1c618b739736c698120`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3452dfb107e1da19f81ecbb97210f5f70c355d02f77a24ca9a8363292548b028`  
		Last Modified: Thu, 05 Nov 2026 18:19:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b8452eafb8835ccc736e5d9c2a4320f629d75312023b368844e7fc93bf5fb07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c629d5528a2f229137bba4b294d4b616a253bdc7c6f74b0bcffc09ecf72cc6df`

```dockerfile
```

-	Layers:
	-	`sha256:b2e77d45a648424ee77149f83dea09e6c7c60d16c2c07de812112d6ab34040a8`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5303052abb026f5dd4362670ea8b16adf463d868de6734a62241b451a35898b4`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
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
$ docker pull memcached@sha256:bfc2ee42c4edb65f436dafc6a61cbc6938c30118e11ddea2f968e1a2c90bb12a
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
$ docker pull memcached@sha256:4c212724c5f8a4db867cf61626dff2d4447a0474d5a103093fe61d663e535f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3ee535ae89d4575d0348a2c0bda0447f259f96b195687683c737ce36085d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:56:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 19:00:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:00:44 GMT
USER memcache
# Thu, 05 Nov 2026 19:00:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 19:00:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ba209419d2ba0ae958dcda612a318b12d6f9efd9b1402115c247117c59599f`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e2aa57d7b3ad0b1ddca0141d42990e480b266b5e8548e84406240fb609f0c8`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 106.1 KB (106073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3098801408fd4d84783a9157a92ccb515edd03be5f4fa3106df0f2d08bec8a2`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 2.0 MB (1971743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1eb33789bc2e4ee752391953c66de9597f6646e1c5ee088184e30ff8b36fb4`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc8ccbf699aee8bdf3166f298aa19adb8aafa26272113235ad2ff00ad5f188`  
		Last Modified: Thu, 05 Nov 2026 19:00:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:6f8c60fca8f1bd54b4313eb41731e4b360914956c4e78d1292b236602aefccdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0145786c7e5dc4a7aa0df58daa5907d6f2e2ff21079f04d290b940a770ed5a7`

```dockerfile
```

-	Layers:
	-	`sha256:55ad61478783055d71888c4685e20b23d0066aae8d7a70c6ca8d1cad1b41bb59`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59d50fa8fb321ecb18c1fa50a13381ba5f90263d5f7f648868083da72a5f2e7d`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8771ad9d0b0b1282af55c73cdb24792e2c4dfea309529f9174ca9b257647cc22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5582065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd0b67e953e73f7de6d7e76d0d2f4845fbde3f6ea726b3a1e8441524bc7601`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:23:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:23:37 GMT
USER memcache
# Thu, 05 Nov 2026 18:23:37 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:23:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870890e2c74ff8ff80c5b0f21758ce575600c626c0c6626141f4a2fc9bf632fd`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc33be60c478313b5635a88f0e56451d89689ec069eea928d0f97b35a934a80`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 102.6 KB (102633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a22713f3ed9eda8d5060653df812c71b683c34d8745e11566b49133237fa9e5`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 1.9 MB (1919682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8b10a9557a3f11172d7905bdfa1910bdaa08691b761750753edf11cd982e4e`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49800bf357011b644e4f4ff2b82726ba1c82c0af1775a673c3bd411302ad218f`  
		Last Modified: Thu, 05 Nov 2026 18:23:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b6443730ce5ca6d3a992ed36603ca37a1f6c274e10e9a6275ab9f3c54b4d96c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19793bc746dd2bccb85048de1f8144f311aa2c4554854a885075f8d22154fa6`

```dockerfile
```

-	Layers:
	-	`sha256:a42e3f63308fb429e83fc9073f8674b6e4a33e5f35b38f8422091e2ac2543272`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0ba0299fdd319d575114f105db32053a996f93c0311bf6567045ded0aa05b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ea20ab1c229faa4e71bd5b674b24343f250f7bce30fee15b9b29bbf89377ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:42 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:18:42 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:21:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:21:39 GMT
USER memcache
# Thu, 05 Nov 2026 18:21:39 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:21:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97f4a8e02b9d7b5990d350bd5a2b0f40bd4446e2890aef1c7cc0c62fafd92e3`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0dfafbf4732e30b0ab61496789bab99d47d6deabb6606cc4798c0b622c9292`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 92.4 KB (92365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bec4a2d9a37c3a7cf8d0b30db490fcf4f3d346f1f82031b80b8f85bce058d1`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 1.9 MB (1879178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01732e17a3ff3a47e01cc3debd2b5ea81b4291e4f3c4acd0518ac48dff911483`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1181954ea65bd8c1b55284bde24dfe78390dc3cbb77a73d55ee4910ef97e17d`  
		Last Modified: Thu, 05 Nov 2026 18:21:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:56566d1b6580ac560666e7e7e13ad034a1ce2f591164c9dd116d375b27b696b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5aa37fb45215cbf5c45437284b7ace5090af3984066983c6a8ff719eb5d62d`

```dockerfile
```

-	Layers:
	-	`sha256:6bdb1fb9f7af7c65c5d7408e02ebb4cf22d16613fbe56d32bdd0225b80c8c6a0`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15555e1304f54c45ed7c63338c3bbe47f77f73e0cc2bb8971c57947e4c057aa`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b69954b3d77517d1091141b8a8f9c0abfe8f40dc1cad1390f368eddc64d84523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758255c704b523695dc5bca12e17a5f3b4b6132e57239c8e88d4dec1d050a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:08 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:52:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:54:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:54:57 GMT
USER memcache
# Thu, 05 Nov 2026 18:54:57 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:54:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640bb3960a9b2a8711297911ff7cb5518a7d7d526ccc63a717169230b76c063`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea1ec15cae2510a1600aebc222560419e322ce90dcbc4b1d0dceafd4d4a07fd`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 121.9 KB (121861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82877405646f763219848e76f07a6a362a4d35f9f6d210b4ddb600d45bb42cff`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 1.9 MB (1948982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e041533b357345b59c3e391a563d4876e33ad32fecdcc0fb57f9dc14501aab`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734ac31a62a6978cb14c895c3b68f0aec58408f60b86674335c650a80c103349`  
		Last Modified: Thu, 05 Nov 2026 18:55:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:182c89df0c510817f4285509bb876e13659132cd0c4bb0f445286bd4abe111f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534b699241412fdf412909a91b470710a8360afbbd63d69ac014e071041460db`

```dockerfile
```

-	Layers:
	-	`sha256:4fb3cb9e445806496a24157e8ed65719156f967724c477b7efc4fe8170065ab5`  
		Last Modified: Thu, 05 Nov 2026 18:55:01 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3d202e81dac3b7e6cac9d3212c1faed6fa45c88fb786bb5f79cc9daf15034b`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; 386

```console
$ docker pull memcached@sha256:96da826de49e182bbd774a3252223fee26f6c1482a12068775292f47063aca8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5718295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8f8f57e9b7e7e23c7eab06d403324295bc7e88f8ab2b5c08eab9286356ece8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:09 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:18:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:52 GMT
USER memcache
# Thu, 05 Nov 2026 18:18:52 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:18:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed027827c6abd6a7790ba8c0eead618449266c88d77ab0a28780b12024c8e268`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3f7c893c77921fe6dc4808293ee7f922af08f62d724256bd38114b6270cf88`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 110.7 KB (110732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5de86f641416a1bd8aaa2e0d40404fc6d8caab12e3713e17b4e743b5fdf860`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 1.9 MB (1925854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234a5afe6e4e09a6bc38241785b0f8e169c69de0721e1890747f14708ea2a66d`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c863d4068e9b7c0a78f4ef48a1b8b5401a525945dfe13dbc16e5f19498e4d9`  
		Last Modified: Thu, 05 Nov 2026 18:18:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:bb49dc5ff60bd7151a8b20bef8dabeb079589ab11c54ba69defd6fbb0d54ee06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377b37d9e4ff5e335013aba40c74d9935d06c5112b47725844f5a94d6b6943a1`

```dockerfile
```

-	Layers:
	-	`sha256:be465cd82350d5d2559126d40adb26d22abb646c41dc57ac32d1f49a85b5fe99`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:504ac7031c0ffb0c3f1ab99d6fb622751420ce77eeac85d4efd9c17591d26778`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:8a2bc458dc90b9a052857c25d88c5b516599ff5e67d72239c33b7681761d4fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6013134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36682c2ca6810176b0e8d4159856a26599d6d0c10cc2a09b6b9231417e2aaffe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:33:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 21:33:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 21:36:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:36:30 GMT
USER memcache
# Thu, 05 Nov 2026 21:36:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 21:36:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156126366920d60fd8a8106a96980f2ab2db8f951c53fbf8a1854dfaaaac4c0c`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb93e587b784ec833af11ebab3ac570e4402d47bb2abaae01d43186f4c3e7b`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c1248c93b4e6b8a9de4fe416f334f86b86c3596f2ff74299e22e8cd4a1c5d`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 2.1 MB (2063597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629a8440eb748bfaa01e51c02b3dc1e8ab1459aaf9db8ab6ebd453351f6d05bb`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aff77b814681dfa5dcb11c8abc31a14802ac7f74983c29390ec95486e99a086`  
		Last Modified: Thu, 05 Nov 2026 21:37:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5d8c0e4a8f2e2e3e659d4308b93c5566dd8ae84633c35558c1db47ff2d1ca7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd19ce149dee775c2dcb51401df3e6e7fdc1806b220a09e5b2590357e85b5cd`

```dockerfile
```

-	Layers:
	-	`sha256:487d711e089796e51bac90b572a0b07bbf18e6a86352749cbb002c8b08c865ec`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4aa71a818694dda22327b106e1cd7adc9bb98bc237b37f25b58d697cc57233f`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
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
$ docker pull memcached@sha256:332fc8892950874f631936f1aefc9e065a3fef540503fd32e0a1b0f06680a9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5840534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e548e34801de0d842ec2c5415444e77b23c8e44064b9f84cb20488c4078fd389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:19:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:42 GMT
USER memcache
# Thu, 05 Nov 2026 18:19:42 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:19:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5acd2c65007758f8daa8854827e8f1ee7de20f78c4cf91bff9021b8c2c480d`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191ec38b883519d1d75ed4fbed544ca9837d6d269b786894e3a0f42e48f2ec6b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 114.3 KB (114295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc16e45ae72ebf918c8b77882597a57f2cb860f8a63a2d6d06c8f8236baaed8b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 2.0 MB (2004218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f27d6ce65859941f838ac9a09524ff6981a0522d6ad1c618b739736c698120`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3452dfb107e1da19f81ecbb97210f5f70c355d02f77a24ca9a8363292548b028`  
		Last Modified: Thu, 05 Nov 2026 18:19:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b8452eafb8835ccc736e5d9c2a4320f629d75312023b368844e7fc93bf5fb07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c629d5528a2f229137bba4b294d4b616a253bdc7c6f74b0bcffc09ecf72cc6df`

```dockerfile
```

-	Layers:
	-	`sha256:b2e77d45a648424ee77149f83dea09e6c7c60d16c2c07de812112d6ab34040a8`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5303052abb026f5dd4362670ea8b16adf463d868de6734a62241b451a35898b4`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-alpine3.24`

```console
$ docker pull memcached@sha256:bfc2ee42c4edb65f436dafc6a61cbc6938c30118e11ddea2f968e1a2c90bb12a
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
$ docker pull memcached@sha256:4c212724c5f8a4db867cf61626dff2d4447a0474d5a103093fe61d663e535f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3ee535ae89d4575d0348a2c0bda0447f259f96b195687683c737ce36085d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:56:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 19:00:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:00:44 GMT
USER memcache
# Thu, 05 Nov 2026 19:00:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 19:00:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ba209419d2ba0ae958dcda612a318b12d6f9efd9b1402115c247117c59599f`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e2aa57d7b3ad0b1ddca0141d42990e480b266b5e8548e84406240fb609f0c8`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 106.1 KB (106073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3098801408fd4d84783a9157a92ccb515edd03be5f4fa3106df0f2d08bec8a2`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 2.0 MB (1971743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1eb33789bc2e4ee752391953c66de9597f6646e1c5ee088184e30ff8b36fb4`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc8ccbf699aee8bdf3166f298aa19adb8aafa26272113235ad2ff00ad5f188`  
		Last Modified: Thu, 05 Nov 2026 19:00:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6f8c60fca8f1bd54b4313eb41731e4b360914956c4e78d1292b236602aefccdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0145786c7e5dc4a7aa0df58daa5907d6f2e2ff21079f04d290b940a770ed5a7`

```dockerfile
```

-	Layers:
	-	`sha256:55ad61478783055d71888c4685e20b23d0066aae8d7a70c6ca8d1cad1b41bb59`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59d50fa8fb321ecb18c1fa50a13381ba5f90263d5f7f648868083da72a5f2e7d`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8771ad9d0b0b1282af55c73cdb24792e2c4dfea309529f9174ca9b257647cc22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5582065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd0b67e953e73f7de6d7e76d0d2f4845fbde3f6ea726b3a1e8441524bc7601`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:23:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:23:37 GMT
USER memcache
# Thu, 05 Nov 2026 18:23:37 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:23:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870890e2c74ff8ff80c5b0f21758ce575600c626c0c6626141f4a2fc9bf632fd`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc33be60c478313b5635a88f0e56451d89689ec069eea928d0f97b35a934a80`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 102.6 KB (102633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a22713f3ed9eda8d5060653df812c71b683c34d8745e11566b49133237fa9e5`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 1.9 MB (1919682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8b10a9557a3f11172d7905bdfa1910bdaa08691b761750753edf11cd982e4e`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49800bf357011b644e4f4ff2b82726ba1c82c0af1775a673c3bd411302ad218f`  
		Last Modified: Thu, 05 Nov 2026 18:23:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b6443730ce5ca6d3a992ed36603ca37a1f6c274e10e9a6275ab9f3c54b4d96c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19793bc746dd2bccb85048de1f8144f311aa2c4554854a885075f8d22154fa6`

```dockerfile
```

-	Layers:
	-	`sha256:a42e3f63308fb429e83fc9073f8674b6e4a33e5f35b38f8422091e2ac2543272`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0ba0299fdd319d575114f105db32053a996f93c0311bf6567045ded0aa05b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ea20ab1c229faa4e71bd5b674b24343f250f7bce30fee15b9b29bbf89377ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:42 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:18:42 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:21:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:21:39 GMT
USER memcache
# Thu, 05 Nov 2026 18:21:39 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:21:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97f4a8e02b9d7b5990d350bd5a2b0f40bd4446e2890aef1c7cc0c62fafd92e3`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0dfafbf4732e30b0ab61496789bab99d47d6deabb6606cc4798c0b622c9292`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 92.4 KB (92365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bec4a2d9a37c3a7cf8d0b30db490fcf4f3d346f1f82031b80b8f85bce058d1`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 1.9 MB (1879178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01732e17a3ff3a47e01cc3debd2b5ea81b4291e4f3c4acd0518ac48dff911483`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1181954ea65bd8c1b55284bde24dfe78390dc3cbb77a73d55ee4910ef97e17d`  
		Last Modified: Thu, 05 Nov 2026 18:21:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:56566d1b6580ac560666e7e7e13ad034a1ce2f591164c9dd116d375b27b696b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5aa37fb45215cbf5c45437284b7ace5090af3984066983c6a8ff719eb5d62d`

```dockerfile
```

-	Layers:
	-	`sha256:6bdb1fb9f7af7c65c5d7408e02ebb4cf22d16613fbe56d32bdd0225b80c8c6a0`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15555e1304f54c45ed7c63338c3bbe47f77f73e0cc2bb8971c57947e4c057aa`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b69954b3d77517d1091141b8a8f9c0abfe8f40dc1cad1390f368eddc64d84523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758255c704b523695dc5bca12e17a5f3b4b6132e57239c8e88d4dec1d050a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:08 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:52:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:54:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:54:57 GMT
USER memcache
# Thu, 05 Nov 2026 18:54:57 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:54:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640bb3960a9b2a8711297911ff7cb5518a7d7d526ccc63a717169230b76c063`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea1ec15cae2510a1600aebc222560419e322ce90dcbc4b1d0dceafd4d4a07fd`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 121.9 KB (121861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82877405646f763219848e76f07a6a362a4d35f9f6d210b4ddb600d45bb42cff`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 1.9 MB (1948982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e041533b357345b59c3e391a563d4876e33ad32fecdcc0fb57f9dc14501aab`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734ac31a62a6978cb14c895c3b68f0aec58408f60b86674335c650a80c103349`  
		Last Modified: Thu, 05 Nov 2026 18:55:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:182c89df0c510817f4285509bb876e13659132cd0c4bb0f445286bd4abe111f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534b699241412fdf412909a91b470710a8360afbbd63d69ac014e071041460db`

```dockerfile
```

-	Layers:
	-	`sha256:4fb3cb9e445806496a24157e8ed65719156f967724c477b7efc4fe8170065ab5`  
		Last Modified: Thu, 05 Nov 2026 18:55:01 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3d202e81dac3b7e6cac9d3212c1faed6fa45c88fb786bb5f79cc9daf15034b`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:96da826de49e182bbd774a3252223fee26f6c1482a12068775292f47063aca8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5718295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8f8f57e9b7e7e23c7eab06d403324295bc7e88f8ab2b5c08eab9286356ece8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:09 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:18:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:52 GMT
USER memcache
# Thu, 05 Nov 2026 18:18:52 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:18:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed027827c6abd6a7790ba8c0eead618449266c88d77ab0a28780b12024c8e268`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3f7c893c77921fe6dc4808293ee7f922af08f62d724256bd38114b6270cf88`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 110.7 KB (110732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5de86f641416a1bd8aaa2e0d40404fc6d8caab12e3713e17b4e743b5fdf860`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 1.9 MB (1925854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234a5afe6e4e09a6bc38241785b0f8e169c69de0721e1890747f14708ea2a66d`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c863d4068e9b7c0a78f4ef48a1b8b5401a525945dfe13dbc16e5f19498e4d9`  
		Last Modified: Thu, 05 Nov 2026 18:18:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:bb49dc5ff60bd7151a8b20bef8dabeb079589ab11c54ba69defd6fbb0d54ee06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377b37d9e4ff5e335013aba40c74d9935d06c5112b47725844f5a94d6b6943a1`

```dockerfile
```

-	Layers:
	-	`sha256:be465cd82350d5d2559126d40adb26d22abb646c41dc57ac32d1f49a85b5fe99`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:504ac7031c0ffb0c3f1ab99d6fb622751420ce77eeac85d4efd9c17591d26778`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:8a2bc458dc90b9a052857c25d88c5b516599ff5e67d72239c33b7681761d4fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6013134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36682c2ca6810176b0e8d4159856a26599d6d0c10cc2a09b6b9231417e2aaffe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:33:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 21:33:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 21:36:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:36:30 GMT
USER memcache
# Thu, 05 Nov 2026 21:36:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 21:36:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156126366920d60fd8a8106a96980f2ab2db8f951c53fbf8a1854dfaaaac4c0c`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb93e587b784ec833af11ebab3ac570e4402d47bb2abaae01d43186f4c3e7b`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c1248c93b4e6b8a9de4fe416f334f86b86c3596f2ff74299e22e8cd4a1c5d`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 2.1 MB (2063597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629a8440eb748bfaa01e51c02b3dc1e8ab1459aaf9db8ab6ebd453351f6d05bb`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aff77b814681dfa5dcb11c8abc31a14802ac7f74983c29390ec95486e99a086`  
		Last Modified: Thu, 05 Nov 2026 21:37:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5d8c0e4a8f2e2e3e659d4308b93c5566dd8ae84633c35558c1db47ff2d1ca7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd19ce149dee775c2dcb51401df3e6e7fdc1806b220a09e5b2590357e85b5cd`

```dockerfile
```

-	Layers:
	-	`sha256:487d711e089796e51bac90b572a0b07bbf18e6a86352749cbb002c8b08c865ec`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4aa71a818694dda22327b106e1cd7adc9bb98bc237b37f25b58d697cc57233f`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
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
$ docker pull memcached@sha256:332fc8892950874f631936f1aefc9e065a3fef540503fd32e0a1b0f06680a9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5840534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e548e34801de0d842ec2c5415444e77b23c8e44064b9f84cb20488c4078fd389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:19:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:42 GMT
USER memcache
# Thu, 05 Nov 2026 18:19:42 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:19:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5acd2c65007758f8daa8854827e8f1ee7de20f78c4cf91bff9021b8c2c480d`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191ec38b883519d1d75ed4fbed544ca9837d6d269b786894e3a0f42e48f2ec6b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 114.3 KB (114295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc16e45ae72ebf918c8b77882597a57f2cb860f8a63a2d6d06c8f8236baaed8b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 2.0 MB (2004218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f27d6ce65859941f838ac9a09524ff6981a0522d6ad1c618b739736c698120`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3452dfb107e1da19f81ecbb97210f5f70c355d02f77a24ca9a8363292548b028`  
		Last Modified: Thu, 05 Nov 2026 18:19:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b8452eafb8835ccc736e5d9c2a4320f629d75312023b368844e7fc93bf5fb07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c629d5528a2f229137bba4b294d4b616a253bdc7c6f74b0bcffc09ecf72cc6df`

```dockerfile
```

-	Layers:
	-	`sha256:b2e77d45a648424ee77149f83dea09e6c7c60d16c2c07de812112d6ab34040a8`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5303052abb026f5dd4362670ea8b16adf463d868de6734a62241b451a35898b4`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
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
$ docker pull memcached@sha256:bfc2ee42c4edb65f436dafc6a61cbc6938c30118e11ddea2f968e1a2c90bb12a
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
$ docker pull memcached@sha256:4c212724c5f8a4db867cf61626dff2d4447a0474d5a103093fe61d663e535f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3ee535ae89d4575d0348a2c0bda0447f259f96b195687683c737ce36085d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:56:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 19:00:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:00:44 GMT
USER memcache
# Thu, 05 Nov 2026 19:00:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 19:00:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ba209419d2ba0ae958dcda612a318b12d6f9efd9b1402115c247117c59599f`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e2aa57d7b3ad0b1ddca0141d42990e480b266b5e8548e84406240fb609f0c8`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 106.1 KB (106073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3098801408fd4d84783a9157a92ccb515edd03be5f4fa3106df0f2d08bec8a2`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 2.0 MB (1971743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1eb33789bc2e4ee752391953c66de9597f6646e1c5ee088184e30ff8b36fb4`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc8ccbf699aee8bdf3166f298aa19adb8aafa26272113235ad2ff00ad5f188`  
		Last Modified: Thu, 05 Nov 2026 19:00:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:6f8c60fca8f1bd54b4313eb41731e4b360914956c4e78d1292b236602aefccdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0145786c7e5dc4a7aa0df58daa5907d6f2e2ff21079f04d290b940a770ed5a7`

```dockerfile
```

-	Layers:
	-	`sha256:55ad61478783055d71888c4685e20b23d0066aae8d7a70c6ca8d1cad1b41bb59`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59d50fa8fb321ecb18c1fa50a13381ba5f90263d5f7f648868083da72a5f2e7d`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8771ad9d0b0b1282af55c73cdb24792e2c4dfea309529f9174ca9b257647cc22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5582065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd0b67e953e73f7de6d7e76d0d2f4845fbde3f6ea726b3a1e8441524bc7601`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:23:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:23:37 GMT
USER memcache
# Thu, 05 Nov 2026 18:23:37 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:23:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870890e2c74ff8ff80c5b0f21758ce575600c626c0c6626141f4a2fc9bf632fd`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc33be60c478313b5635a88f0e56451d89689ec069eea928d0f97b35a934a80`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 102.6 KB (102633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a22713f3ed9eda8d5060653df812c71b683c34d8745e11566b49133237fa9e5`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 1.9 MB (1919682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8b10a9557a3f11172d7905bdfa1910bdaa08691b761750753edf11cd982e4e`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49800bf357011b644e4f4ff2b82726ba1c82c0af1775a673c3bd411302ad218f`  
		Last Modified: Thu, 05 Nov 2026 18:23:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b6443730ce5ca6d3a992ed36603ca37a1f6c274e10e9a6275ab9f3c54b4d96c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19793bc746dd2bccb85048de1f8144f311aa2c4554854a885075f8d22154fa6`

```dockerfile
```

-	Layers:
	-	`sha256:a42e3f63308fb429e83fc9073f8674b6e4a33e5f35b38f8422091e2ac2543272`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0ba0299fdd319d575114f105db32053a996f93c0311bf6567045ded0aa05b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ea20ab1c229faa4e71bd5b674b24343f250f7bce30fee15b9b29bbf89377ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:42 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:18:42 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:21:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:21:39 GMT
USER memcache
# Thu, 05 Nov 2026 18:21:39 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:21:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97f4a8e02b9d7b5990d350bd5a2b0f40bd4446e2890aef1c7cc0c62fafd92e3`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0dfafbf4732e30b0ab61496789bab99d47d6deabb6606cc4798c0b622c9292`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 92.4 KB (92365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bec4a2d9a37c3a7cf8d0b30db490fcf4f3d346f1f82031b80b8f85bce058d1`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 1.9 MB (1879178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01732e17a3ff3a47e01cc3debd2b5ea81b4291e4f3c4acd0518ac48dff911483`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1181954ea65bd8c1b55284bde24dfe78390dc3cbb77a73d55ee4910ef97e17d`  
		Last Modified: Thu, 05 Nov 2026 18:21:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:56566d1b6580ac560666e7e7e13ad034a1ce2f591164c9dd116d375b27b696b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5aa37fb45215cbf5c45437284b7ace5090af3984066983c6a8ff719eb5d62d`

```dockerfile
```

-	Layers:
	-	`sha256:6bdb1fb9f7af7c65c5d7408e02ebb4cf22d16613fbe56d32bdd0225b80c8c6a0`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15555e1304f54c45ed7c63338c3bbe47f77f73e0cc2bb8971c57947e4c057aa`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b69954b3d77517d1091141b8a8f9c0abfe8f40dc1cad1390f368eddc64d84523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758255c704b523695dc5bca12e17a5f3b4b6132e57239c8e88d4dec1d050a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:08 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:52:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:54:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:54:57 GMT
USER memcache
# Thu, 05 Nov 2026 18:54:57 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:54:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640bb3960a9b2a8711297911ff7cb5518a7d7d526ccc63a717169230b76c063`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea1ec15cae2510a1600aebc222560419e322ce90dcbc4b1d0dceafd4d4a07fd`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 121.9 KB (121861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82877405646f763219848e76f07a6a362a4d35f9f6d210b4ddb600d45bb42cff`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 1.9 MB (1948982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e041533b357345b59c3e391a563d4876e33ad32fecdcc0fb57f9dc14501aab`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734ac31a62a6978cb14c895c3b68f0aec58408f60b86674335c650a80c103349`  
		Last Modified: Thu, 05 Nov 2026 18:55:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:182c89df0c510817f4285509bb876e13659132cd0c4bb0f445286bd4abe111f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534b699241412fdf412909a91b470710a8360afbbd63d69ac014e071041460db`

```dockerfile
```

-	Layers:
	-	`sha256:4fb3cb9e445806496a24157e8ed65719156f967724c477b7efc4fe8170065ab5`  
		Last Modified: Thu, 05 Nov 2026 18:55:01 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3d202e81dac3b7e6cac9d3212c1faed6fa45c88fb786bb5f79cc9daf15034b`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:96da826de49e182bbd774a3252223fee26f6c1482a12068775292f47063aca8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5718295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8f8f57e9b7e7e23c7eab06d403324295bc7e88f8ab2b5c08eab9286356ece8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:09 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:18:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:52 GMT
USER memcache
# Thu, 05 Nov 2026 18:18:52 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:18:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed027827c6abd6a7790ba8c0eead618449266c88d77ab0a28780b12024c8e268`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3f7c893c77921fe6dc4808293ee7f922af08f62d724256bd38114b6270cf88`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 110.7 KB (110732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5de86f641416a1bd8aaa2e0d40404fc6d8caab12e3713e17b4e743b5fdf860`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 1.9 MB (1925854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234a5afe6e4e09a6bc38241785b0f8e169c69de0721e1890747f14708ea2a66d`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c863d4068e9b7c0a78f4ef48a1b8b5401a525945dfe13dbc16e5f19498e4d9`  
		Last Modified: Thu, 05 Nov 2026 18:18:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:bb49dc5ff60bd7151a8b20bef8dabeb079589ab11c54ba69defd6fbb0d54ee06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377b37d9e4ff5e335013aba40c74d9935d06c5112b47725844f5a94d6b6943a1`

```dockerfile
```

-	Layers:
	-	`sha256:be465cd82350d5d2559126d40adb26d22abb646c41dc57ac32d1f49a85b5fe99`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:504ac7031c0ffb0c3f1ab99d6fb622751420ce77eeac85d4efd9c17591d26778`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:8a2bc458dc90b9a052857c25d88c5b516599ff5e67d72239c33b7681761d4fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6013134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36682c2ca6810176b0e8d4159856a26599d6d0c10cc2a09b6b9231417e2aaffe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:33:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 21:33:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 21:36:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:36:30 GMT
USER memcache
# Thu, 05 Nov 2026 21:36:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 21:36:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156126366920d60fd8a8106a96980f2ab2db8f951c53fbf8a1854dfaaaac4c0c`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb93e587b784ec833af11ebab3ac570e4402d47bb2abaae01d43186f4c3e7b`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c1248c93b4e6b8a9de4fe416f334f86b86c3596f2ff74299e22e8cd4a1c5d`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 2.1 MB (2063597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629a8440eb748bfaa01e51c02b3dc1e8ab1459aaf9db8ab6ebd453351f6d05bb`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aff77b814681dfa5dcb11c8abc31a14802ac7f74983c29390ec95486e99a086`  
		Last Modified: Thu, 05 Nov 2026 21:37:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:5d8c0e4a8f2e2e3e659d4308b93c5566dd8ae84633c35558c1db47ff2d1ca7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd19ce149dee775c2dcb51401df3e6e7fdc1806b220a09e5b2590357e85b5cd`

```dockerfile
```

-	Layers:
	-	`sha256:487d711e089796e51bac90b572a0b07bbf18e6a86352749cbb002c8b08c865ec`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4aa71a818694dda22327b106e1cd7adc9bb98bc237b37f25b58d697cc57233f`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
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
$ docker pull memcached@sha256:332fc8892950874f631936f1aefc9e065a3fef540503fd32e0a1b0f06680a9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5840534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e548e34801de0d842ec2c5415444e77b23c8e44064b9f84cb20488c4078fd389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:19:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:42 GMT
USER memcache
# Thu, 05 Nov 2026 18:19:42 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:19:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5acd2c65007758f8daa8854827e8f1ee7de20f78c4cf91bff9021b8c2c480d`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191ec38b883519d1d75ed4fbed544ca9837d6d269b786894e3a0f42e48f2ec6b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 114.3 KB (114295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc16e45ae72ebf918c8b77882597a57f2cb860f8a63a2d6d06c8f8236baaed8b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 2.0 MB (2004218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f27d6ce65859941f838ac9a09524ff6981a0522d6ad1c618b739736c698120`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3452dfb107e1da19f81ecbb97210f5f70c355d02f77a24ca9a8363292548b028`  
		Last Modified: Thu, 05 Nov 2026 18:19:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:b8452eafb8835ccc736e5d9c2a4320f629d75312023b368844e7fc93bf5fb07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c629d5528a2f229137bba4b294d4b616a253bdc7c6f74b0bcffc09ecf72cc6df`

```dockerfile
```

-	Layers:
	-	`sha256:b2e77d45a648424ee77149f83dea09e6c7c60d16c2c07de812112d6ab34040a8`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5303052abb026f5dd4362670ea8b16adf463d868de6734a62241b451a35898b4`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:alpine3.24`

```console
$ docker pull memcached@sha256:bfc2ee42c4edb65f436dafc6a61cbc6938c30118e11ddea2f968e1a2c90bb12a
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
$ docker pull memcached@sha256:4c212724c5f8a4db867cf61626dff2d4447a0474d5a103093fe61d663e535f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5932843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3ee535ae89d4575d0348a2c0bda0447f259f96b195687683c737ce36085d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:56:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 19:00:44 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 19:00:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 19:00:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:00:44 GMT
USER memcache
# Thu, 05 Nov 2026 19:00:44 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 19:00:44 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ba209419d2ba0ae958dcda612a318b12d6f9efd9b1402115c247117c59599f`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e2aa57d7b3ad0b1ddca0141d42990e480b266b5e8548e84406240fb609f0c8`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 106.1 KB (106073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3098801408fd4d84783a9157a92ccb515edd03be5f4fa3106df0f2d08bec8a2`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 2.0 MB (1971743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1eb33789bc2e4ee752391953c66de9597f6646e1c5ee088184e30ff8b36fb4`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dc8ccbf699aee8bdf3166f298aa19adb8aafa26272113235ad2ff00ad5f188`  
		Last Modified: Thu, 05 Nov 2026 19:00:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:6f8c60fca8f1bd54b4313eb41731e4b360914956c4e78d1292b236602aefccdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0145786c7e5dc4a7aa0df58daa5907d6f2e2ff21079f04d290b940a770ed5a7`

```dockerfile
```

-	Layers:
	-	`sha256:55ad61478783055d71888c4685e20b23d0066aae8d7a70c6ca8d1cad1b41bb59`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59d50fa8fb321ecb18c1fa50a13381ba5f90263d5f7f648868083da72a5f2e7d`  
		Last Modified: Thu, 05 Nov 2026 19:00:52 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v6

```console
$ docker pull memcached@sha256:8771ad9d0b0b1282af55c73cdb24792e2c4dfea309529f9174ca9b257647cc22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5582065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd0b67e953e73f7de6d7e76d0d2f4845fbde3f6ea726b3a1e8441524bc7601`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:23:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:23:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:23:37 GMT
USER memcache
# Thu, 05 Nov 2026 18:23:37 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:23:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870890e2c74ff8ff80c5b0f21758ce575600c626c0c6626141f4a2fc9bf632fd`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc33be60c478313b5635a88f0e56451d89689ec069eea928d0f97b35a934a80`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 102.6 KB (102633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a22713f3ed9eda8d5060653df812c71b683c34d8745e11566b49133237fa9e5`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 1.9 MB (1919682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8b10a9557a3f11172d7905bdfa1910bdaa08691b761750753edf11cd982e4e`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49800bf357011b644e4f4ff2b82726ba1c82c0af1775a673c3bd411302ad218f`  
		Last Modified: Thu, 05 Nov 2026 18:23:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b6443730ce5ca6d3a992ed36603ca37a1f6c274e10e9a6275ab9f3c54b4d96c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19793bc746dd2bccb85048de1f8144f311aa2c4554854a885075f8d22154fa6`

```dockerfile
```

-	Layers:
	-	`sha256:a42e3f63308fb429e83fc9073f8674b6e4a33e5f35b38f8422091e2ac2543272`  
		Last Modified: Thu, 05 Nov 2026 18:23:46 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm variant v7

```console
$ docker pull memcached@sha256:0ba0299fdd319d575114f105db32053a996f93c0311bf6567045ded0aa05b4f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ea20ab1c229faa4e71bd5b674b24343f250f7bce30fee15b9b29bbf89377ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:42 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:18:42 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:21:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:21:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:21:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:21:39 GMT
USER memcache
# Thu, 05 Nov 2026 18:21:39 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:21:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97f4a8e02b9d7b5990d350bd5a2b0f40bd4446e2890aef1c7cc0c62fafd92e3`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0dfafbf4732e30b0ab61496789bab99d47d6deabb6606cc4798c0b622c9292`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 92.4 KB (92365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bec4a2d9a37c3a7cf8d0b30db490fcf4f3d346f1f82031b80b8f85bce058d1`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 1.9 MB (1879178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01732e17a3ff3a47e01cc3debd2b5ea81b4291e4f3c4acd0518ac48dff911483`  
		Last Modified: Thu, 05 Nov 2026 18:21:44 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1181954ea65bd8c1b55284bde24dfe78390dc3cbb77a73d55ee4910ef97e17d`  
		Last Modified: Thu, 05 Nov 2026 18:21:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:56566d1b6580ac560666e7e7e13ad034a1ce2f591164c9dd116d375b27b696b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5aa37fb45215cbf5c45437284b7ace5090af3984066983c6a8ff719eb5d62d`

```dockerfile
```

-	Layers:
	-	`sha256:6bdb1fb9f7af7c65c5d7408e02ebb4cf22d16613fbe56d32bdd0225b80c8c6a0`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15555e1304f54c45ed7c63338c3bbe47f77f73e0cc2bb8971c57947e4c057aa`  
		Last Modified: Thu, 05 Nov 2026 18:21:43 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b69954b3d77517d1091141b8a8f9c0abfe8f40dc1cad1390f368eddc64d84523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6262790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758255c704b523695dc5bca12e17a5f3b4b6132e57239c8e88d4dec1d050a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:08 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:52:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:54:57 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:54:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:54:57 GMT
USER memcache
# Thu, 05 Nov 2026 18:54:57 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:54:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7640bb3960a9b2a8711297911ff7cb5518a7d7d526ccc63a717169230b76c063`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea1ec15cae2510a1600aebc222560419e322ce90dcbc4b1d0dceafd4d4a07fd`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 121.9 KB (121861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82877405646f763219848e76f07a6a362a4d35f9f6d210b4ddb600d45bb42cff`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 1.9 MB (1948982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e041533b357345b59c3e391a563d4876e33ad32fecdcc0fb57f9dc14501aab`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734ac31a62a6978cb14c895c3b68f0aec58408f60b86674335c650a80c103349`  
		Last Modified: Thu, 05 Nov 2026 18:55:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:182c89df0c510817f4285509bb876e13659132cd0c4bb0f445286bd4abe111f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534b699241412fdf412909a91b470710a8360afbbd63d69ac014e071041460db`

```dockerfile
```

-	Layers:
	-	`sha256:4fb3cb9e445806496a24157e8ed65719156f967724c477b7efc4fe8170065ab5`  
		Last Modified: Thu, 05 Nov 2026 18:55:01 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3d202e81dac3b7e6cac9d3212c1faed6fa45c88fb786bb5f79cc9daf15034b`  
		Last Modified: Thu, 05 Nov 2026 18:55:02 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; 386

```console
$ docker pull memcached@sha256:96da826de49e182bbd774a3252223fee26f6c1482a12068775292f47063aca8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5718295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8f8f57e9b7e7e23c7eab06d403324295bc7e88f8ab2b5c08eab9286356ece8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:09 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:09 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:18:52 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:18:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:18:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:52 GMT
USER memcache
# Thu, 05 Nov 2026 18:18:52 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:18:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed027827c6abd6a7790ba8c0eead618449266c88d77ab0a28780b12024c8e268`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3f7c893c77921fe6dc4808293ee7f922af08f62d724256bd38114b6270cf88`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 110.7 KB (110732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5de86f641416a1bd8aaa2e0d40404fc6d8caab12e3713e17b4e743b5fdf860`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 1.9 MB (1925854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234a5afe6e4e09a6bc38241785b0f8e169c69de0721e1890747f14708ea2a66d`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c863d4068e9b7c0a78f4ef48a1b8b5401a525945dfe13dbc16e5f19498e4d9`  
		Last Modified: Thu, 05 Nov 2026 18:18:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:bb49dc5ff60bd7151a8b20bef8dabeb079589ab11c54ba69defd6fbb0d54ee06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377b37d9e4ff5e335013aba40c74d9935d06c5112b47725844f5a94d6b6943a1`

```dockerfile
```

-	Layers:
	-	`sha256:be465cd82350d5d2559126d40adb26d22abb646c41dc57ac32d1f49a85b5fe99`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:504ac7031c0ffb0c3f1ab99d6fb622751420ce77eeac85d4efd9c17591d26778`  
		Last Modified: Thu, 05 Nov 2026 18:18:57 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:alpine3.24` - linux; ppc64le

```console
$ docker pull memcached@sha256:8a2bc458dc90b9a052857c25d88c5b516599ff5e67d72239c33b7681761d4fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6013134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36682c2ca6810176b0e8d4159856a26599d6d0c10cc2a09b6b9231417e2aaffe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:33:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 21:33:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 21:36:29 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 21:36:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 21:36:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 21:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:36:30 GMT
USER memcache
# Thu, 05 Nov 2026 21:36:30 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 21:36:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156126366920d60fd8a8106a96980f2ab2db8f951c53fbf8a1854dfaaaac4c0c`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb93e587b784ec833af11ebab3ac570e4402d47bb2abaae01d43186f4c3e7b`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 126.3 KB (126261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333c1248c93b4e6b8a9de4fe416f334f86b86c3596f2ff74299e22e8cd4a1c5d`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 2.1 MB (2063597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629a8440eb748bfaa01e51c02b3dc1e8ab1459aaf9db8ab6ebd453351f6d05bb`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aff77b814681dfa5dcb11c8abc31a14802ac7f74983c29390ec95486e99a086`  
		Last Modified: Thu, 05 Nov 2026 21:37:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:5d8c0e4a8f2e2e3e659d4308b93c5566dd8ae84633c35558c1db47ff2d1ca7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd19ce149dee775c2dcb51401df3e6e7fdc1806b220a09e5b2590357e85b5cd`

```dockerfile
```

-	Layers:
	-	`sha256:487d711e089796e51bac90b572a0b07bbf18e6a86352749cbb002c8b08c865ec`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4aa71a818694dda22327b106e1cd7adc9bb98bc237b37f25b58d697cc57233f`  
		Last Modified: Thu, 05 Nov 2026 21:37:09 GMT  
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
$ docker pull memcached@sha256:332fc8892950874f631936f1aefc9e065a3fef540503fd32e0a1b0f06680a9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5840534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e548e34801de0d842ec2c5415444e77b23c8e44064b9f84cb20488c4078fd389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Thu, 05 Nov 2026 18:16:37 GMT
RUN apk add --no-cache libsasl # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_VERSION=1.6.45
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Thu, 05 Nov 2026 18:19:42 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Thu, 05 Nov 2026 18:19:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 18:19:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:42 GMT
USER memcache
# Thu, 05 Nov 2026 18:19:42 GMT
EXPOSE map[11211/tcp:{}]
# Thu, 05 Nov 2026 18:19:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5acd2c65007758f8daa8854827e8f1ee7de20f78c4cf91bff9021b8c2c480d`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191ec38b883519d1d75ed4fbed544ca9837d6d269b786894e3a0f42e48f2ec6b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 114.3 KB (114295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc16e45ae72ebf918c8b77882597a57f2cb860f8a63a2d6d06c8f8236baaed8b`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 2.0 MB (2004218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f27d6ce65859941f838ac9a09524ff6981a0522d6ad1c618b739736c698120`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3452dfb107e1da19f81ecbb97210f5f70c355d02f77a24ca9a8363292548b028`  
		Last Modified: Thu, 05 Nov 2026 18:19:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:b8452eafb8835ccc736e5d9c2a4320f629d75312023b368844e7fc93bf5fb07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c629d5528a2f229137bba4b294d4b616a253bdc7c6f74b0bcffc09ecf72cc6df`

```dockerfile
```

-	Layers:
	-	`sha256:b2e77d45a648424ee77149f83dea09e6c7c60d16c2c07de812112d6ab34040a8`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5303052abb026f5dd4362670ea8b16adf463d868de6734a62241b451a35898b4`  
		Last Modified: Thu, 05 Nov 2026 18:19:51 GMT  
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
