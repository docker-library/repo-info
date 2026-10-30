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
$ docker pull memcached@sha256:aea0d81d101a9b64fe30cf2cf2f96144e284f8e9552bb084a03f4e12e9043bab
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
$ docker pull memcached@sha256:a433b62b243c3c5be2ce9ec535e4f6d07444fde28af84a4d6231136eb711e8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32279855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e942fea2de0cc77a4cf1a921c8f0648473662526b7b4b1abc3947e5497e0e815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:21:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:21:01 GMT
USER memcache
# Wed, 28 Oct 2026 01:21:01 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:21:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209627aaf9465cf5a23ad44dd127f8268ad9c8a1de9294041e12ffa63472cf3a`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2c866e3863828773fe0f0bd6310b610682c1fc23a258b227c7582657aaecc8`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 136.7 KB (136735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab327c05fb9921f89553c63529b100aab88272876203a4bd7c245ecdae0c5e4d`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.3 MB (2286369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb146c0330eed945cc3884b6b187955d0fcba57d8927a36d8855c19ab6c77b6`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318826f315496f8db59036a364b3700186570f5b5bd39b4f53b3dbb54809877e`  
		Last Modified: Wed, 28 Oct 2026 01:21:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:81ac942bb7da9a5a8237a0b7b47ef346ef9134e4b625058be33cb663c73fc8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5809f2d1ada67cc45f0df45a03ff12d7ab836a21e86c29c92d97d6f2629a1a82`

```dockerfile
```

-	Layers:
	-	`sha256:b81c29e255feb266678835c83810fb7967805b28b53eef6594819f7fe3991f4c`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e70831e42c241090f52ce2192637e5b18eeec1bfcc9c78e5f04244f521bdf9e3`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:560df9a73a38d6e58c090131bb38c4c2c2618768095da08c0731b2cdaa3e9b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30381640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95e160a8d8f32cafc8b918846531ffdba447a301f5ee7f395ff215332d7e385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:51 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:13 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:13 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fadbeffce953e32298903ba0425e372dbf6442c1daed7d4d2f1b0cb9c7d654`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf53481f75220b3402d4e4a69e8d958771fc58b84c21587695e1fd5f1cc8830`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 144.2 KB (144201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fbf61a6188f1049287715a31d1212ad5380a7b573df353841545339d495a72`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.2 MB (2217257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ad00431f5dddb1d9e65a21db40d11ff6ac7ad8eaf6b6d87eae01344f21d2de`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105ef2a7d6592262556bbb46c58264c515abb8fa4fa6e2accfe0b59b5231a352`  
		Last Modified: Wed, 28 Oct 2026 01:18:20 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:036cf314818c9b860dd3f7703dacdf7ce25ce4348e0f8d349b6fe4bb87558795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca7b7babdca76907931c4f422e1a1b159e60370f25304a26118c0f8e460c7ed`

```dockerfile
```

-	Layers:
	-	`sha256:eb0bb1c06b52d258579712644a6ca2b70a48886aa53d1e63c9e0bb70aff383a7`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad1175dc9d3fb6379eec5a7bea7fbb868c921f55b2b1dcbf8755b96b58962bbe`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 22.3 KB (22303 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1b351dc02fc59788ad1d79afd032b27cceb6c43b86b0e62683359afd037c91ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28580672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb9793d6d7642cc91ae42aac2fcbe5ad3ae36f908bc70ce7abc3a9ddb414453`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:47 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:47 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cf0b0dbf1775b908d155e383610e5a6ec54989f0f82f09f2287bdc69fb7902`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79e6124d4fbed41afbe1b4df2b1c446f7cddc093bdf8bdf6f83f6a24e691b40`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 135.4 KB (135390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beaededacd4949c42f17ec99d43782d97f36fd062a1bbbc86ec51cdcfe7b4774`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.2 MB (2171599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224773b7a5f7907c7641217155b2312d825d75abca179af90146da9b43af8bae`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6a13e4438c3f2ae0a847b095b0192a73993106ee7d047a6173950d876cf3ec`  
		Last Modified: Wed, 28 Oct 2026 01:20:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:03f1fdbc82de779a7d08925e5dbee64be14c8b25cb7d03611b1dfb22adfaa65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0cf61be4f4109ca88bd8810e28429b9a6d6b5b39d4a9c35d09fb0024cef515`

```dockerfile
```

-	Layers:
	-	`sha256:44ff7402696d05e5a46f6fc8ba25638bdcfc4dca3a029c6ef9e8a0890465c911`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc0374c9d64cb1d154a47de7523d4aa6d61fff68c1b00fe62d7ecdfa43cf3d47`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:3aa8696ba2e0867e8eae7524f13ee53b6681285540374a094db63d6a3423b9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174ced90d486effb7046362100fd96125f8035207ff0f7ec0e8b7c44f69cc458`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:54 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:54 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ac9aa9df3a31c3b1f2c6e381ef880d762c136af9eaaf87ac4798505f06f189`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ccff826c7d29c2a9fd64e1f0e4d384075ba4a09cd8a3a717652fcaa2dc1393`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 153.5 KB (153547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5219f2630854b4f5a3a1bf44af6c56935b83937c2ab24674af70aa5b3634945d`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.3 MB (2266845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feab8f5b2d6c7d70277e4c96e251b7a8d46bdf7e62af4ef27b3fd09b1cb17af`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c70915f69af0dafb575462acebd95abb2403673eacb5d0fff519a44f217239`  
		Last Modified: Wed, 28 Oct 2026 01:21:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:ab42a0cefb9509e838d361be74f622b54ee08292107758035ce833f95b2b458d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf12cb8b059fa4878e867455a6c0461ef6ba6aff6f88ac9406db10b70e0de49`

```dockerfile
```

-	Layers:
	-	`sha256:86cc9313ccb4f2c0ec34aa38e899bcd7e8367bbc46f0ff347f76f607e31eaea2`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa62a77874413e982aa053dea5a910500b398a7ac9b938799baca5fcdbf66c0`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:687c48bfcee5db59d97dde415ab0d1e2a7e141c7fc8226bd2f71e58459200448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33748872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95da998de17604fc7cd5b670314c97280bd9c07e9a64c60042a4d908bab7b5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:15:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:15:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:38 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:38 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6457ce19f6bb200fa4a518a61ca0ee82e7970b7f2a354e3b9306e64952507324`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e0b332b4b8fdffbded9c35085c6063b53bf8753b9512e0edab8adad5d6bd04`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 147.5 KB (147546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b61e444bb69bd92d38409fa90ca1533e7fcee1c0d3792794ea4b00db9f96d3d`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.2 MB (2231223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02d6b77a6594327a207b546fb1236d5f55d130c506765d633642ed8730ea1b8`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59efaba98924bf6e61e0261fbf2482911bc58a10eaf6f3f3eca2b546763de25b`  
		Last Modified: Wed, 28 Oct 2026 01:18:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:678b218638a1786213b8173245eb8ad194d021ddc42e2dfe79c46e5c18b9eb03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d07408dcd2966bf6db9511ede182bf8617030cf94568a658b9dde26b4e2365`

```dockerfile
```

-	Layers:
	-	`sha256:dd7bca36bb286b41af7581a4c8b9b6ee88b779409bd5ce0ce99e250b3946db64`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c88e12412b908f75635d70e93e8317deb962c398e29f8763d07e37abed51e6a6`  
		Last Modified: Wed, 28 Oct 2026 01:18:43 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:2a99e4c5d68a6085ad576836267dbe3167c0e5a0af940b12f89ee451843eadd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36238051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e419750fa5913f42b7baf0fe6e2ff1305b06d90ed0b0832c6984c956c531b98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:44:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:58:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:58:37 GMT
USER memcache
# Wed, 28 Oct 2026 01:58:37 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:58:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553d4762b7e72ac16c28776146dae7eb134c1e8f0636762aa04b112ede0d6249`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6149d602ec9c822c02c6c527f3e8a4a3c91d4174041c17ef22a3bc61cd787b28`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 170.4 KB (170401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0501c6ab0a14ef2ed7f64f06d19a6826280c647e85260fed17074f506c236119`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.4 MB (2399868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce3fa3c63f015bb3a9f43d9589858934cdd6077416e8e3ea5ed164aa39f48ea`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddadb07e80bd1fd3c86a8e388d7438e05985ceab6f882700b1f6b58b5f0038d`  
		Last Modified: Wed, 28 Oct 2026 01:59:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:ccea5428428738e5dd1fc70f5994bf1213ce9fa837c8f542257dde1d2f2f7e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e7008c7684003bf14ee74b23e78d56919eb7efe0b5837f91f6f5263586d5e0`

```dockerfile
```

-	Layers:
	-	`sha256:5472e99ec9d5c3ccee31d8b95d5ce44d7811c2de04fe456425758c4426a1cfa8`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:289d83bfa3a7251f849cf1b851fb01d39265b474cdf030e7a0c319e340259548`  
		Last Modified: Wed, 28 Oct 2026 01:59:02 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; riscv64

```console
$ docker pull memcached@sha256:4e70d70b01076b61a46e3dd96ff3143c03a6323e4b9197fd884e0aca6c2fd2ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30693720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f112b60b2e9b88544be62407c72603f28eb1148180bd08216b74171643f0047`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:57:57 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 30 Oct 2026 11:58:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 30 Oct 2026 12:40:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Oct 2026 12:40:37 GMT
USER memcache
# Fri, 30 Oct 2026 12:40:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 30 Oct 2026 12:40:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d3b30f41ea61874852a7ba683b2c09acb9299f2dff492a314f472fff0ffbdd`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698bab39896e9dfe70a9dfe56045a9da4becacd41c8ea9d04937ca4ecd0989ff`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f931229426941d75692ffdb892e62462fa0771e32adcd477a91b7eddf7b8a52e`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 2.2 MB (2213405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f247d995a3ae71677f28f85c2a18b1d23e5b8a28769d2b6ef194abdecbb421`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5040924d8cae58de447cac2538953c0d38463ef3749670b33f848681ca1ca311`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:728e1af9660a821665c45011a5d850c63f62fb2a9540869a43bc346c503657ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361b203565198d09c6b972d6b1d1ede12450d64006fee8f967ecdf618408f711`

```dockerfile
```

-	Layers:
	-	`sha256:d1677330f5354aaac96722bd9945f96880a1ebbb0853b3ff9bd3cf9f5f4d90f0`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30e121d7c106e56e3f8887641f204f3b1efebbaf3acfdc39df0b4364200deafb`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:0123e4f283d5c214a2b6a869877e340605d643820a80181c91c52c7dd4444ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bce53dca81c89f0805d495f76d5086059a05e02dac0e6493f9fd191dec0df19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:21:10 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:21:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:24:24 GMT
USER memcache
# Wed, 28 Oct 2026 01:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649a599b1825228a69b115268e3e45e215fa2a02c64c8224c7eb973c13a48a5e`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4674069bf5805b52027c9235b22e0effc90c724bffe59d8b28e1d2e4325d88`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 140.5 KB (140529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5bfba6aef2c98abca120477198790741746ccc15958ee417a162a9cc1b59c0f`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.3 MB (2301394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5959aa1f6f4952b4becf1c70d051b89052a529684072d67c78e3af86bc5f28ae`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c7028af7754e3953cac08753a34ec84cb694487d5013d27c39025e451523f`  
		Last Modified: Wed, 28 Oct 2026 01:24:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:83d6021acb2f4d077dc3686fdff247bf78acd9b38f067a20b49a3eef395e247f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067485a6f4000d4afd1f3edc93629b47689e257c2dae1064a832df211c71ec0d`

```dockerfile
```

-	Layers:
	-	`sha256:11d15bbd787dda2044eac691ada10d6e145c5355e6ce1abc6f5973b9660fa8f1`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bca97f396107f7b75b3f6349d095172cd8a52c65d5216cd770866b67c11c692`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
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
$ docker pull memcached@sha256:aea0d81d101a9b64fe30cf2cf2f96144e284f8e9552bb084a03f4e12e9043bab
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
$ docker pull memcached@sha256:a433b62b243c3c5be2ce9ec535e4f6d07444fde28af84a4d6231136eb711e8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32279855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e942fea2de0cc77a4cf1a921c8f0648473662526b7b4b1abc3947e5497e0e815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:21:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:21:01 GMT
USER memcache
# Wed, 28 Oct 2026 01:21:01 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:21:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209627aaf9465cf5a23ad44dd127f8268ad9c8a1de9294041e12ffa63472cf3a`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2c866e3863828773fe0f0bd6310b610682c1fc23a258b227c7582657aaecc8`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 136.7 KB (136735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab327c05fb9921f89553c63529b100aab88272876203a4bd7c245ecdae0c5e4d`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.3 MB (2286369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb146c0330eed945cc3884b6b187955d0fcba57d8927a36d8855c19ab6c77b6`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318826f315496f8db59036a364b3700186570f5b5bd39b4f53b3dbb54809877e`  
		Last Modified: Wed, 28 Oct 2026 01:21:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:81ac942bb7da9a5a8237a0b7b47ef346ef9134e4b625058be33cb663c73fc8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5809f2d1ada67cc45f0df45a03ff12d7ab836a21e86c29c92d97d6f2629a1a82`

```dockerfile
```

-	Layers:
	-	`sha256:b81c29e255feb266678835c83810fb7967805b28b53eef6594819f7fe3991f4c`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e70831e42c241090f52ce2192637e5b18eeec1bfcc9c78e5f04244f521bdf9e3`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:560df9a73a38d6e58c090131bb38c4c2c2618768095da08c0731b2cdaa3e9b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30381640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95e160a8d8f32cafc8b918846531ffdba447a301f5ee7f395ff215332d7e385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:51 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:13 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:13 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fadbeffce953e32298903ba0425e372dbf6442c1daed7d4d2f1b0cb9c7d654`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf53481f75220b3402d4e4a69e8d958771fc58b84c21587695e1fd5f1cc8830`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 144.2 KB (144201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fbf61a6188f1049287715a31d1212ad5380a7b573df353841545339d495a72`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.2 MB (2217257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ad00431f5dddb1d9e65a21db40d11ff6ac7ad8eaf6b6d87eae01344f21d2de`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105ef2a7d6592262556bbb46c58264c515abb8fa4fa6e2accfe0b59b5231a352`  
		Last Modified: Wed, 28 Oct 2026 01:18:20 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:036cf314818c9b860dd3f7703dacdf7ce25ce4348e0f8d349b6fe4bb87558795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca7b7babdca76907931c4f422e1a1b159e60370f25304a26118c0f8e460c7ed`

```dockerfile
```

-	Layers:
	-	`sha256:eb0bb1c06b52d258579712644a6ca2b70a48886aa53d1e63c9e0bb70aff383a7`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad1175dc9d3fb6379eec5a7bea7fbb868c921f55b2b1dcbf8755b96b58962bbe`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 22.3 KB (22303 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1b351dc02fc59788ad1d79afd032b27cceb6c43b86b0e62683359afd037c91ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28580672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb9793d6d7642cc91ae42aac2fcbe5ad3ae36f908bc70ce7abc3a9ddb414453`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:47 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:47 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cf0b0dbf1775b908d155e383610e5a6ec54989f0f82f09f2287bdc69fb7902`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79e6124d4fbed41afbe1b4df2b1c446f7cddc093bdf8bdf6f83f6a24e691b40`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 135.4 KB (135390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beaededacd4949c42f17ec99d43782d97f36fd062a1bbbc86ec51cdcfe7b4774`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.2 MB (2171599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224773b7a5f7907c7641217155b2312d825d75abca179af90146da9b43af8bae`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6a13e4438c3f2ae0a847b095b0192a73993106ee7d047a6173950d876cf3ec`  
		Last Modified: Wed, 28 Oct 2026 01:20:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:03f1fdbc82de779a7d08925e5dbee64be14c8b25cb7d03611b1dfb22adfaa65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0cf61be4f4109ca88bd8810e28429b9a6d6b5b39d4a9c35d09fb0024cef515`

```dockerfile
```

-	Layers:
	-	`sha256:44ff7402696d05e5a46f6fc8ba25638bdcfc4dca3a029c6ef9e8a0890465c911`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc0374c9d64cb1d154a47de7523d4aa6d61fff68c1b00fe62d7ecdfa43cf3d47`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:3aa8696ba2e0867e8eae7524f13ee53b6681285540374a094db63d6a3423b9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174ced90d486effb7046362100fd96125f8035207ff0f7ec0e8b7c44f69cc458`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:54 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:54 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ac9aa9df3a31c3b1f2c6e381ef880d762c136af9eaaf87ac4798505f06f189`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ccff826c7d29c2a9fd64e1f0e4d384075ba4a09cd8a3a717652fcaa2dc1393`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 153.5 KB (153547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5219f2630854b4f5a3a1bf44af6c56935b83937c2ab24674af70aa5b3634945d`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.3 MB (2266845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feab8f5b2d6c7d70277e4c96e251b7a8d46bdf7e62af4ef27b3fd09b1cb17af`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c70915f69af0dafb575462acebd95abb2403673eacb5d0fff519a44f217239`  
		Last Modified: Wed, 28 Oct 2026 01:21:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ab42a0cefb9509e838d361be74f622b54ee08292107758035ce833f95b2b458d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf12cb8b059fa4878e867455a6c0461ef6ba6aff6f88ac9406db10b70e0de49`

```dockerfile
```

-	Layers:
	-	`sha256:86cc9313ccb4f2c0ec34aa38e899bcd7e8367bbc46f0ff347f76f607e31eaea2`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa62a77874413e982aa053dea5a910500b398a7ac9b938799baca5fcdbf66c0`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; 386

```console
$ docker pull memcached@sha256:687c48bfcee5db59d97dde415ab0d1e2a7e141c7fc8226bd2f71e58459200448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33748872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95da998de17604fc7cd5b670314c97280bd9c07e9a64c60042a4d908bab7b5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:15:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:15:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:38 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:38 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6457ce19f6bb200fa4a518a61ca0ee82e7970b7f2a354e3b9306e64952507324`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e0b332b4b8fdffbded9c35085c6063b53bf8753b9512e0edab8adad5d6bd04`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 147.5 KB (147546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b61e444bb69bd92d38409fa90ca1533e7fcee1c0d3792794ea4b00db9f96d3d`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.2 MB (2231223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02d6b77a6594327a207b546fb1236d5f55d130c506765d633642ed8730ea1b8`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59efaba98924bf6e61e0261fbf2482911bc58a10eaf6f3f3eca2b546763de25b`  
		Last Modified: Wed, 28 Oct 2026 01:18:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:678b218638a1786213b8173245eb8ad194d021ddc42e2dfe79c46e5c18b9eb03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d07408dcd2966bf6db9511ede182bf8617030cf94568a658b9dde26b4e2365`

```dockerfile
```

-	Layers:
	-	`sha256:dd7bca36bb286b41af7581a4c8b9b6ee88b779409bd5ce0ce99e250b3946db64`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c88e12412b908f75635d70e93e8317deb962c398e29f8763d07e37abed51e6a6`  
		Last Modified: Wed, 28 Oct 2026 01:18:43 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:2a99e4c5d68a6085ad576836267dbe3167c0e5a0af940b12f89ee451843eadd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36238051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e419750fa5913f42b7baf0fe6e2ff1305b06d90ed0b0832c6984c956c531b98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:44:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:58:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:58:37 GMT
USER memcache
# Wed, 28 Oct 2026 01:58:37 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:58:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553d4762b7e72ac16c28776146dae7eb134c1e8f0636762aa04b112ede0d6249`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6149d602ec9c822c02c6c527f3e8a4a3c91d4174041c17ef22a3bc61cd787b28`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 170.4 KB (170401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0501c6ab0a14ef2ed7f64f06d19a6826280c647e85260fed17074f506c236119`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.4 MB (2399868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce3fa3c63f015bb3a9f43d9589858934cdd6077416e8e3ea5ed164aa39f48ea`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddadb07e80bd1fd3c86a8e388d7438e05985ceab6f882700b1f6b58b5f0038d`  
		Last Modified: Wed, 28 Oct 2026 01:59:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ccea5428428738e5dd1fc70f5994bf1213ce9fa837c8f542257dde1d2f2f7e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e7008c7684003bf14ee74b23e78d56919eb7efe0b5837f91f6f5263586d5e0`

```dockerfile
```

-	Layers:
	-	`sha256:5472e99ec9d5c3ccee31d8b95d5ce44d7811c2de04fe456425758c4426a1cfa8`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:289d83bfa3a7251f849cf1b851fb01d39265b474cdf030e7a0c319e340259548`  
		Last Modified: Wed, 28 Oct 2026 01:59:02 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:4e70d70b01076b61a46e3dd96ff3143c03a6323e4b9197fd884e0aca6c2fd2ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30693720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f112b60b2e9b88544be62407c72603f28eb1148180bd08216b74171643f0047`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:57:57 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 30 Oct 2026 11:58:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 30 Oct 2026 12:40:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Oct 2026 12:40:37 GMT
USER memcache
# Fri, 30 Oct 2026 12:40:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 30 Oct 2026 12:40:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d3b30f41ea61874852a7ba683b2c09acb9299f2dff492a314f472fff0ffbdd`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698bab39896e9dfe70a9dfe56045a9da4becacd41c8ea9d04937ca4ecd0989ff`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f931229426941d75692ffdb892e62462fa0771e32adcd477a91b7eddf7b8a52e`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 2.2 MB (2213405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f247d995a3ae71677f28f85c2a18b1d23e5b8a28769d2b6ef194abdecbb421`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5040924d8cae58de447cac2538953c0d38463ef3749670b33f848681ca1ca311`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:728e1af9660a821665c45011a5d850c63f62fb2a9540869a43bc346c503657ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361b203565198d09c6b972d6b1d1ede12450d64006fee8f967ecdf618408f711`

```dockerfile
```

-	Layers:
	-	`sha256:d1677330f5354aaac96722bd9945f96880a1ebbb0853b3ff9bd3cf9f5f4d90f0`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30e121d7c106e56e3f8887641f204f3b1efebbaf3acfdc39df0b4364200deafb`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:0123e4f283d5c214a2b6a869877e340605d643820a80181c91c52c7dd4444ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bce53dca81c89f0805d495f76d5086059a05e02dac0e6493f9fd191dec0df19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:21:10 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:21:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:24:24 GMT
USER memcache
# Wed, 28 Oct 2026 01:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649a599b1825228a69b115268e3e45e215fa2a02c64c8224c7eb973c13a48a5e`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4674069bf5805b52027c9235b22e0effc90c724bffe59d8b28e1d2e4325d88`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 140.5 KB (140529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5bfba6aef2c98abca120477198790741746ccc15958ee417a162a9cc1b59c0f`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.3 MB (2301394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5959aa1f6f4952b4becf1c70d051b89052a529684072d67c78e3af86bc5f28ae`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c7028af7754e3953cac08753a34ec84cb694487d5013d27c39025e451523f`  
		Last Modified: Wed, 28 Oct 2026 01:24:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:83d6021acb2f4d077dc3686fdff247bf78acd9b38f067a20b49a3eef395e247f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067485a6f4000d4afd1f3edc93629b47689e257c2dae1064a832df211c71ec0d`

```dockerfile
```

-	Layers:
	-	`sha256:11d15bbd787dda2044eac691ada10d6e145c5355e6ce1abc6f5973b9660fa8f1`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bca97f396107f7b75b3f6349d095172cd8a52c65d5216cd770866b67c11c692`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6`

```console
$ docker pull memcached@sha256:aea0d81d101a9b64fe30cf2cf2f96144e284f8e9552bb084a03f4e12e9043bab
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
$ docker pull memcached@sha256:a433b62b243c3c5be2ce9ec535e4f6d07444fde28af84a4d6231136eb711e8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32279855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e942fea2de0cc77a4cf1a921c8f0648473662526b7b4b1abc3947e5497e0e815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:21:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:21:01 GMT
USER memcache
# Wed, 28 Oct 2026 01:21:01 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:21:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209627aaf9465cf5a23ad44dd127f8268ad9c8a1de9294041e12ffa63472cf3a`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2c866e3863828773fe0f0bd6310b610682c1fc23a258b227c7582657aaecc8`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 136.7 KB (136735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab327c05fb9921f89553c63529b100aab88272876203a4bd7c245ecdae0c5e4d`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.3 MB (2286369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb146c0330eed945cc3884b6b187955d0fcba57d8927a36d8855c19ab6c77b6`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318826f315496f8db59036a364b3700186570f5b5bd39b4f53b3dbb54809877e`  
		Last Modified: Wed, 28 Oct 2026 01:21:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:81ac942bb7da9a5a8237a0b7b47ef346ef9134e4b625058be33cb663c73fc8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5809f2d1ada67cc45f0df45a03ff12d7ab836a21e86c29c92d97d6f2629a1a82`

```dockerfile
```

-	Layers:
	-	`sha256:b81c29e255feb266678835c83810fb7967805b28b53eef6594819f7fe3991f4c`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e70831e42c241090f52ce2192637e5b18eeec1bfcc9c78e5f04244f521bdf9e3`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v5

```console
$ docker pull memcached@sha256:560df9a73a38d6e58c090131bb38c4c2c2618768095da08c0731b2cdaa3e9b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30381640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95e160a8d8f32cafc8b918846531ffdba447a301f5ee7f395ff215332d7e385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:51 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:13 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:13 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fadbeffce953e32298903ba0425e372dbf6442c1daed7d4d2f1b0cb9c7d654`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf53481f75220b3402d4e4a69e8d958771fc58b84c21587695e1fd5f1cc8830`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 144.2 KB (144201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fbf61a6188f1049287715a31d1212ad5380a7b573df353841545339d495a72`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.2 MB (2217257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ad00431f5dddb1d9e65a21db40d11ff6ac7ad8eaf6b6d87eae01344f21d2de`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105ef2a7d6592262556bbb46c58264c515abb8fa4fa6e2accfe0b59b5231a352`  
		Last Modified: Wed, 28 Oct 2026 01:18:20 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:036cf314818c9b860dd3f7703dacdf7ce25ce4348e0f8d349b6fe4bb87558795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca7b7babdca76907931c4f422e1a1b159e60370f25304a26118c0f8e460c7ed`

```dockerfile
```

-	Layers:
	-	`sha256:eb0bb1c06b52d258579712644a6ca2b70a48886aa53d1e63c9e0bb70aff383a7`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad1175dc9d3fb6379eec5a7bea7fbb868c921f55b2b1dcbf8755b96b58962bbe`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 22.3 KB (22303 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1b351dc02fc59788ad1d79afd032b27cceb6c43b86b0e62683359afd037c91ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28580672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb9793d6d7642cc91ae42aac2fcbe5ad3ae36f908bc70ce7abc3a9ddb414453`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:47 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:47 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cf0b0dbf1775b908d155e383610e5a6ec54989f0f82f09f2287bdc69fb7902`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79e6124d4fbed41afbe1b4df2b1c446f7cddc093bdf8bdf6f83f6a24e691b40`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 135.4 KB (135390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beaededacd4949c42f17ec99d43782d97f36fd062a1bbbc86ec51cdcfe7b4774`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.2 MB (2171599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224773b7a5f7907c7641217155b2312d825d75abca179af90146da9b43af8bae`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6a13e4438c3f2ae0a847b095b0192a73993106ee7d047a6173950d876cf3ec`  
		Last Modified: Wed, 28 Oct 2026 01:20:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:03f1fdbc82de779a7d08925e5dbee64be14c8b25cb7d03611b1dfb22adfaa65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0cf61be4f4109ca88bd8810e28429b9a6d6b5b39d4a9c35d09fb0024cef515`

```dockerfile
```

-	Layers:
	-	`sha256:44ff7402696d05e5a46f6fc8ba25638bdcfc4dca3a029c6ef9e8a0890465c911`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc0374c9d64cb1d154a47de7523d4aa6d61fff68c1b00fe62d7ecdfa43cf3d47`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:3aa8696ba2e0867e8eae7524f13ee53b6681285540374a094db63d6a3423b9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174ced90d486effb7046362100fd96125f8035207ff0f7ec0e8b7c44f69cc458`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:54 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:54 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ac9aa9df3a31c3b1f2c6e381ef880d762c136af9eaaf87ac4798505f06f189`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ccff826c7d29c2a9fd64e1f0e4d384075ba4a09cd8a3a717652fcaa2dc1393`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 153.5 KB (153547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5219f2630854b4f5a3a1bf44af6c56935b83937c2ab24674af70aa5b3634945d`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.3 MB (2266845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feab8f5b2d6c7d70277e4c96e251b7a8d46bdf7e62af4ef27b3fd09b1cb17af`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c70915f69af0dafb575462acebd95abb2403673eacb5d0fff519a44f217239`  
		Last Modified: Wed, 28 Oct 2026 01:21:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:ab42a0cefb9509e838d361be74f622b54ee08292107758035ce833f95b2b458d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf12cb8b059fa4878e867455a6c0461ef6ba6aff6f88ac9406db10b70e0de49`

```dockerfile
```

-	Layers:
	-	`sha256:86cc9313ccb4f2c0ec34aa38e899bcd7e8367bbc46f0ff347f76f607e31eaea2`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa62a77874413e982aa053dea5a910500b398a7ac9b938799baca5fcdbf66c0`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; 386

```console
$ docker pull memcached@sha256:687c48bfcee5db59d97dde415ab0d1e2a7e141c7fc8226bd2f71e58459200448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33748872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95da998de17604fc7cd5b670314c97280bd9c07e9a64c60042a4d908bab7b5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:15:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:15:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:38 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:38 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6457ce19f6bb200fa4a518a61ca0ee82e7970b7f2a354e3b9306e64952507324`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e0b332b4b8fdffbded9c35085c6063b53bf8753b9512e0edab8adad5d6bd04`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 147.5 KB (147546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b61e444bb69bd92d38409fa90ca1533e7fcee1c0d3792794ea4b00db9f96d3d`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.2 MB (2231223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02d6b77a6594327a207b546fb1236d5f55d130c506765d633642ed8730ea1b8`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59efaba98924bf6e61e0261fbf2482911bc58a10eaf6f3f3eca2b546763de25b`  
		Last Modified: Wed, 28 Oct 2026 01:18:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:678b218638a1786213b8173245eb8ad194d021ddc42e2dfe79c46e5c18b9eb03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d07408dcd2966bf6db9511ede182bf8617030cf94568a658b9dde26b4e2365`

```dockerfile
```

-	Layers:
	-	`sha256:dd7bca36bb286b41af7581a4c8b9b6ee88b779409bd5ce0ce99e250b3946db64`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c88e12412b908f75635d70e93e8317deb962c398e29f8763d07e37abed51e6a6`  
		Last Modified: Wed, 28 Oct 2026 01:18:43 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; ppc64le

```console
$ docker pull memcached@sha256:2a99e4c5d68a6085ad576836267dbe3167c0e5a0af940b12f89ee451843eadd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36238051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e419750fa5913f42b7baf0fe6e2ff1305b06d90ed0b0832c6984c956c531b98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:44:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:58:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:58:37 GMT
USER memcache
# Wed, 28 Oct 2026 01:58:37 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:58:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553d4762b7e72ac16c28776146dae7eb134c1e8f0636762aa04b112ede0d6249`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6149d602ec9c822c02c6c527f3e8a4a3c91d4174041c17ef22a3bc61cd787b28`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 170.4 KB (170401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0501c6ab0a14ef2ed7f64f06d19a6826280c647e85260fed17074f506c236119`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.4 MB (2399868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce3fa3c63f015bb3a9f43d9589858934cdd6077416e8e3ea5ed164aa39f48ea`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddadb07e80bd1fd3c86a8e388d7438e05985ceab6f882700b1f6b58b5f0038d`  
		Last Modified: Wed, 28 Oct 2026 01:59:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:ccea5428428738e5dd1fc70f5994bf1213ce9fa837c8f542257dde1d2f2f7e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e7008c7684003bf14ee74b23e78d56919eb7efe0b5837f91f6f5263586d5e0`

```dockerfile
```

-	Layers:
	-	`sha256:5472e99ec9d5c3ccee31d8b95d5ce44d7811c2de04fe456425758c4426a1cfa8`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:289d83bfa3a7251f849cf1b851fb01d39265b474cdf030e7a0c319e340259548`  
		Last Modified: Wed, 28 Oct 2026 01:59:02 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; riscv64

```console
$ docker pull memcached@sha256:4e70d70b01076b61a46e3dd96ff3143c03a6323e4b9197fd884e0aca6c2fd2ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30693720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f112b60b2e9b88544be62407c72603f28eb1148180bd08216b74171643f0047`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:57:57 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 30 Oct 2026 11:58:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 30 Oct 2026 12:40:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Oct 2026 12:40:37 GMT
USER memcache
# Fri, 30 Oct 2026 12:40:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 30 Oct 2026 12:40:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d3b30f41ea61874852a7ba683b2c09acb9299f2dff492a314f472fff0ffbdd`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698bab39896e9dfe70a9dfe56045a9da4becacd41c8ea9d04937ca4ecd0989ff`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f931229426941d75692ffdb892e62462fa0771e32adcd477a91b7eddf7b8a52e`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 2.2 MB (2213405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f247d995a3ae71677f28f85c2a18b1d23e5b8a28769d2b6ef194abdecbb421`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5040924d8cae58de447cac2538953c0d38463ef3749670b33f848681ca1ca311`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:728e1af9660a821665c45011a5d850c63f62fb2a9540869a43bc346c503657ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361b203565198d09c6b972d6b1d1ede12450d64006fee8f967ecdf618408f711`

```dockerfile
```

-	Layers:
	-	`sha256:d1677330f5354aaac96722bd9945f96880a1ebbb0853b3ff9bd3cf9f5f4d90f0`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30e121d7c106e56e3f8887641f204f3b1efebbaf3acfdc39df0b4364200deafb`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; s390x

```console
$ docker pull memcached@sha256:0123e4f283d5c214a2b6a869877e340605d643820a80181c91c52c7dd4444ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bce53dca81c89f0805d495f76d5086059a05e02dac0e6493f9fd191dec0df19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:21:10 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:21:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:24:24 GMT
USER memcache
# Wed, 28 Oct 2026 01:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649a599b1825228a69b115268e3e45e215fa2a02c64c8224c7eb973c13a48a5e`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4674069bf5805b52027c9235b22e0effc90c724bffe59d8b28e1d2e4325d88`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 140.5 KB (140529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5bfba6aef2c98abca120477198790741746ccc15958ee417a162a9cc1b59c0f`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.3 MB (2301394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5959aa1f6f4952b4becf1c70d051b89052a529684072d67c78e3af86bc5f28ae`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c7028af7754e3953cac08753a34ec84cb694487d5013d27c39025e451523f`  
		Last Modified: Wed, 28 Oct 2026 01:24:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:83d6021acb2f4d077dc3686fdff247bf78acd9b38f067a20b49a3eef395e247f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067485a6f4000d4afd1f3edc93629b47689e257c2dae1064a832df211c71ec0d`

```dockerfile
```

-	Layers:
	-	`sha256:11d15bbd787dda2044eac691ada10d6e145c5355e6ce1abc6f5973b9660fa8f1`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bca97f396107f7b75b3f6349d095172cd8a52c65d5216cd770866b67c11c692`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
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
$ docker pull memcached@sha256:aea0d81d101a9b64fe30cf2cf2f96144e284f8e9552bb084a03f4e12e9043bab
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
$ docker pull memcached@sha256:a433b62b243c3c5be2ce9ec535e4f6d07444fde28af84a4d6231136eb711e8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32279855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e942fea2de0cc77a4cf1a921c8f0648473662526b7b4b1abc3947e5497e0e815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:21:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:21:01 GMT
USER memcache
# Wed, 28 Oct 2026 01:21:01 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:21:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209627aaf9465cf5a23ad44dd127f8268ad9c8a1de9294041e12ffa63472cf3a`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2c866e3863828773fe0f0bd6310b610682c1fc23a258b227c7582657aaecc8`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 136.7 KB (136735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab327c05fb9921f89553c63529b100aab88272876203a4bd7c245ecdae0c5e4d`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.3 MB (2286369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb146c0330eed945cc3884b6b187955d0fcba57d8927a36d8855c19ab6c77b6`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318826f315496f8db59036a364b3700186570f5b5bd39b4f53b3dbb54809877e`  
		Last Modified: Wed, 28 Oct 2026 01:21:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:81ac942bb7da9a5a8237a0b7b47ef346ef9134e4b625058be33cb663c73fc8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5809f2d1ada67cc45f0df45a03ff12d7ab836a21e86c29c92d97d6f2629a1a82`

```dockerfile
```

-	Layers:
	-	`sha256:b81c29e255feb266678835c83810fb7967805b28b53eef6594819f7fe3991f4c`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e70831e42c241090f52ce2192637e5b18eeec1bfcc9c78e5f04244f521bdf9e3`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:560df9a73a38d6e58c090131bb38c4c2c2618768095da08c0731b2cdaa3e9b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30381640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95e160a8d8f32cafc8b918846531ffdba447a301f5ee7f395ff215332d7e385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:51 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:13 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:13 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fadbeffce953e32298903ba0425e372dbf6442c1daed7d4d2f1b0cb9c7d654`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf53481f75220b3402d4e4a69e8d958771fc58b84c21587695e1fd5f1cc8830`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 144.2 KB (144201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fbf61a6188f1049287715a31d1212ad5380a7b573df353841545339d495a72`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.2 MB (2217257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ad00431f5dddb1d9e65a21db40d11ff6ac7ad8eaf6b6d87eae01344f21d2de`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105ef2a7d6592262556bbb46c58264c515abb8fa4fa6e2accfe0b59b5231a352`  
		Last Modified: Wed, 28 Oct 2026 01:18:20 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:036cf314818c9b860dd3f7703dacdf7ce25ce4348e0f8d349b6fe4bb87558795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca7b7babdca76907931c4f422e1a1b159e60370f25304a26118c0f8e460c7ed`

```dockerfile
```

-	Layers:
	-	`sha256:eb0bb1c06b52d258579712644a6ca2b70a48886aa53d1e63c9e0bb70aff383a7`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad1175dc9d3fb6379eec5a7bea7fbb868c921f55b2b1dcbf8755b96b58962bbe`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 22.3 KB (22303 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1b351dc02fc59788ad1d79afd032b27cceb6c43b86b0e62683359afd037c91ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28580672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb9793d6d7642cc91ae42aac2fcbe5ad3ae36f908bc70ce7abc3a9ddb414453`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:47 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:47 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cf0b0dbf1775b908d155e383610e5a6ec54989f0f82f09f2287bdc69fb7902`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79e6124d4fbed41afbe1b4df2b1c446f7cddc093bdf8bdf6f83f6a24e691b40`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 135.4 KB (135390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beaededacd4949c42f17ec99d43782d97f36fd062a1bbbc86ec51cdcfe7b4774`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.2 MB (2171599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224773b7a5f7907c7641217155b2312d825d75abca179af90146da9b43af8bae`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6a13e4438c3f2ae0a847b095b0192a73993106ee7d047a6173950d876cf3ec`  
		Last Modified: Wed, 28 Oct 2026 01:20:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:03f1fdbc82de779a7d08925e5dbee64be14c8b25cb7d03611b1dfb22adfaa65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0cf61be4f4109ca88bd8810e28429b9a6d6b5b39d4a9c35d09fb0024cef515`

```dockerfile
```

-	Layers:
	-	`sha256:44ff7402696d05e5a46f6fc8ba25638bdcfc4dca3a029c6ef9e8a0890465c911`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc0374c9d64cb1d154a47de7523d4aa6d61fff68c1b00fe62d7ecdfa43cf3d47`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:3aa8696ba2e0867e8eae7524f13ee53b6681285540374a094db63d6a3423b9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174ced90d486effb7046362100fd96125f8035207ff0f7ec0e8b7c44f69cc458`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:54 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:54 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ac9aa9df3a31c3b1f2c6e381ef880d762c136af9eaaf87ac4798505f06f189`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ccff826c7d29c2a9fd64e1f0e4d384075ba4a09cd8a3a717652fcaa2dc1393`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 153.5 KB (153547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5219f2630854b4f5a3a1bf44af6c56935b83937c2ab24674af70aa5b3634945d`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.3 MB (2266845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feab8f5b2d6c7d70277e4c96e251b7a8d46bdf7e62af4ef27b3fd09b1cb17af`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c70915f69af0dafb575462acebd95abb2403673eacb5d0fff519a44f217239`  
		Last Modified: Wed, 28 Oct 2026 01:21:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ab42a0cefb9509e838d361be74f622b54ee08292107758035ce833f95b2b458d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf12cb8b059fa4878e867455a6c0461ef6ba6aff6f88ac9406db10b70e0de49`

```dockerfile
```

-	Layers:
	-	`sha256:86cc9313ccb4f2c0ec34aa38e899bcd7e8367bbc46f0ff347f76f607e31eaea2`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa62a77874413e982aa053dea5a910500b398a7ac9b938799baca5fcdbf66c0`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; 386

```console
$ docker pull memcached@sha256:687c48bfcee5db59d97dde415ab0d1e2a7e141c7fc8226bd2f71e58459200448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33748872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95da998de17604fc7cd5b670314c97280bd9c07e9a64c60042a4d908bab7b5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:15:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:15:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:38 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:38 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6457ce19f6bb200fa4a518a61ca0ee82e7970b7f2a354e3b9306e64952507324`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e0b332b4b8fdffbded9c35085c6063b53bf8753b9512e0edab8adad5d6bd04`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 147.5 KB (147546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b61e444bb69bd92d38409fa90ca1533e7fcee1c0d3792794ea4b00db9f96d3d`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.2 MB (2231223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02d6b77a6594327a207b546fb1236d5f55d130c506765d633642ed8730ea1b8`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59efaba98924bf6e61e0261fbf2482911bc58a10eaf6f3f3eca2b546763de25b`  
		Last Modified: Wed, 28 Oct 2026 01:18:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:678b218638a1786213b8173245eb8ad194d021ddc42e2dfe79c46e5c18b9eb03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d07408dcd2966bf6db9511ede182bf8617030cf94568a658b9dde26b4e2365`

```dockerfile
```

-	Layers:
	-	`sha256:dd7bca36bb286b41af7581a4c8b9b6ee88b779409bd5ce0ce99e250b3946db64`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c88e12412b908f75635d70e93e8317deb962c398e29f8763d07e37abed51e6a6`  
		Last Modified: Wed, 28 Oct 2026 01:18:43 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:2a99e4c5d68a6085ad576836267dbe3167c0e5a0af940b12f89ee451843eadd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36238051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e419750fa5913f42b7baf0fe6e2ff1305b06d90ed0b0832c6984c956c531b98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:44:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:58:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:58:37 GMT
USER memcache
# Wed, 28 Oct 2026 01:58:37 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:58:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553d4762b7e72ac16c28776146dae7eb134c1e8f0636762aa04b112ede0d6249`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6149d602ec9c822c02c6c527f3e8a4a3c91d4174041c17ef22a3bc61cd787b28`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 170.4 KB (170401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0501c6ab0a14ef2ed7f64f06d19a6826280c647e85260fed17074f506c236119`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.4 MB (2399868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce3fa3c63f015bb3a9f43d9589858934cdd6077416e8e3ea5ed164aa39f48ea`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddadb07e80bd1fd3c86a8e388d7438e05985ceab6f882700b1f6b58b5f0038d`  
		Last Modified: Wed, 28 Oct 2026 01:59:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ccea5428428738e5dd1fc70f5994bf1213ce9fa837c8f542257dde1d2f2f7e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e7008c7684003bf14ee74b23e78d56919eb7efe0b5837f91f6f5263586d5e0`

```dockerfile
```

-	Layers:
	-	`sha256:5472e99ec9d5c3ccee31d8b95d5ce44d7811c2de04fe456425758c4426a1cfa8`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:289d83bfa3a7251f849cf1b851fb01d39265b474cdf030e7a0c319e340259548`  
		Last Modified: Wed, 28 Oct 2026 01:59:02 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:4e70d70b01076b61a46e3dd96ff3143c03a6323e4b9197fd884e0aca6c2fd2ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30693720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f112b60b2e9b88544be62407c72603f28eb1148180bd08216b74171643f0047`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:57:57 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 30 Oct 2026 11:58:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 30 Oct 2026 12:40:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Oct 2026 12:40:37 GMT
USER memcache
# Fri, 30 Oct 2026 12:40:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 30 Oct 2026 12:40:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d3b30f41ea61874852a7ba683b2c09acb9299f2dff492a314f472fff0ffbdd`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698bab39896e9dfe70a9dfe56045a9da4becacd41c8ea9d04937ca4ecd0989ff`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f931229426941d75692ffdb892e62462fa0771e32adcd477a91b7eddf7b8a52e`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 2.2 MB (2213405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f247d995a3ae71677f28f85c2a18b1d23e5b8a28769d2b6ef194abdecbb421`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5040924d8cae58de447cac2538953c0d38463ef3749670b33f848681ca1ca311`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:728e1af9660a821665c45011a5d850c63f62fb2a9540869a43bc346c503657ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361b203565198d09c6b972d6b1d1ede12450d64006fee8f967ecdf618408f711`

```dockerfile
```

-	Layers:
	-	`sha256:d1677330f5354aaac96722bd9945f96880a1ebbb0853b3ff9bd3cf9f5f4d90f0`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30e121d7c106e56e3f8887641f204f3b1efebbaf3acfdc39df0b4364200deafb`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:0123e4f283d5c214a2b6a869877e340605d643820a80181c91c52c7dd4444ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bce53dca81c89f0805d495f76d5086059a05e02dac0e6493f9fd191dec0df19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:21:10 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:21:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:24:24 GMT
USER memcache
# Wed, 28 Oct 2026 01:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649a599b1825228a69b115268e3e45e215fa2a02c64c8224c7eb973c13a48a5e`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4674069bf5805b52027c9235b22e0effc90c724bffe59d8b28e1d2e4325d88`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 140.5 KB (140529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5bfba6aef2c98abca120477198790741746ccc15958ee417a162a9cc1b59c0f`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.3 MB (2301394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5959aa1f6f4952b4becf1c70d051b89052a529684072d67c78e3af86bc5f28ae`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c7028af7754e3953cac08753a34ec84cb694487d5013d27c39025e451523f`  
		Last Modified: Wed, 28 Oct 2026 01:24:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:83d6021acb2f4d077dc3686fdff247bf78acd9b38f067a20b49a3eef395e247f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067485a6f4000d4afd1f3edc93629b47689e257c2dae1064a832df211c71ec0d`

```dockerfile
```

-	Layers:
	-	`sha256:11d15bbd787dda2044eac691ada10d6e145c5355e6ce1abc6f5973b9660fa8f1`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bca97f396107f7b75b3f6349d095172cd8a52c65d5216cd770866b67c11c692`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45`

```console
$ docker pull memcached@sha256:aea0d81d101a9b64fe30cf2cf2f96144e284f8e9552bb084a03f4e12e9043bab
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
$ docker pull memcached@sha256:a433b62b243c3c5be2ce9ec535e4f6d07444fde28af84a4d6231136eb711e8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32279855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e942fea2de0cc77a4cf1a921c8f0648473662526b7b4b1abc3947e5497e0e815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:21:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:21:01 GMT
USER memcache
# Wed, 28 Oct 2026 01:21:01 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:21:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209627aaf9465cf5a23ad44dd127f8268ad9c8a1de9294041e12ffa63472cf3a`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2c866e3863828773fe0f0bd6310b610682c1fc23a258b227c7582657aaecc8`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 136.7 KB (136735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab327c05fb9921f89553c63529b100aab88272876203a4bd7c245ecdae0c5e4d`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.3 MB (2286369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb146c0330eed945cc3884b6b187955d0fcba57d8927a36d8855c19ab6c77b6`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318826f315496f8db59036a364b3700186570f5b5bd39b4f53b3dbb54809877e`  
		Last Modified: Wed, 28 Oct 2026 01:21:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:81ac942bb7da9a5a8237a0b7b47ef346ef9134e4b625058be33cb663c73fc8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5809f2d1ada67cc45f0df45a03ff12d7ab836a21e86c29c92d97d6f2629a1a82`

```dockerfile
```

-	Layers:
	-	`sha256:b81c29e255feb266678835c83810fb7967805b28b53eef6594819f7fe3991f4c`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e70831e42c241090f52ce2192637e5b18eeec1bfcc9c78e5f04244f521bdf9e3`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v5

```console
$ docker pull memcached@sha256:560df9a73a38d6e58c090131bb38c4c2c2618768095da08c0731b2cdaa3e9b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30381640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95e160a8d8f32cafc8b918846531ffdba447a301f5ee7f395ff215332d7e385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:51 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:13 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:13 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fadbeffce953e32298903ba0425e372dbf6442c1daed7d4d2f1b0cb9c7d654`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf53481f75220b3402d4e4a69e8d958771fc58b84c21587695e1fd5f1cc8830`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 144.2 KB (144201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fbf61a6188f1049287715a31d1212ad5380a7b573df353841545339d495a72`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.2 MB (2217257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ad00431f5dddb1d9e65a21db40d11ff6ac7ad8eaf6b6d87eae01344f21d2de`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105ef2a7d6592262556bbb46c58264c515abb8fa4fa6e2accfe0b59b5231a352`  
		Last Modified: Wed, 28 Oct 2026 01:18:20 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:036cf314818c9b860dd3f7703dacdf7ce25ce4348e0f8d349b6fe4bb87558795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca7b7babdca76907931c4f422e1a1b159e60370f25304a26118c0f8e460c7ed`

```dockerfile
```

-	Layers:
	-	`sha256:eb0bb1c06b52d258579712644a6ca2b70a48886aa53d1e63c9e0bb70aff383a7`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad1175dc9d3fb6379eec5a7bea7fbb868c921f55b2b1dcbf8755b96b58962bbe`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 22.3 KB (22303 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1b351dc02fc59788ad1d79afd032b27cceb6c43b86b0e62683359afd037c91ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28580672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb9793d6d7642cc91ae42aac2fcbe5ad3ae36f908bc70ce7abc3a9ddb414453`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:47 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:47 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cf0b0dbf1775b908d155e383610e5a6ec54989f0f82f09f2287bdc69fb7902`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79e6124d4fbed41afbe1b4df2b1c446f7cddc093bdf8bdf6f83f6a24e691b40`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 135.4 KB (135390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beaededacd4949c42f17ec99d43782d97f36fd062a1bbbc86ec51cdcfe7b4774`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.2 MB (2171599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224773b7a5f7907c7641217155b2312d825d75abca179af90146da9b43af8bae`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6a13e4438c3f2ae0a847b095b0192a73993106ee7d047a6173950d876cf3ec`  
		Last Modified: Wed, 28 Oct 2026 01:20:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:03f1fdbc82de779a7d08925e5dbee64be14c8b25cb7d03611b1dfb22adfaa65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0cf61be4f4109ca88bd8810e28429b9a6d6b5b39d4a9c35d09fb0024cef515`

```dockerfile
```

-	Layers:
	-	`sha256:44ff7402696d05e5a46f6fc8ba25638bdcfc4dca3a029c6ef9e8a0890465c911`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc0374c9d64cb1d154a47de7523d4aa6d61fff68c1b00fe62d7ecdfa43cf3d47`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:3aa8696ba2e0867e8eae7524f13ee53b6681285540374a094db63d6a3423b9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174ced90d486effb7046362100fd96125f8035207ff0f7ec0e8b7c44f69cc458`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:54 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:54 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ac9aa9df3a31c3b1f2c6e381ef880d762c136af9eaaf87ac4798505f06f189`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ccff826c7d29c2a9fd64e1f0e4d384075ba4a09cd8a3a717652fcaa2dc1393`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 153.5 KB (153547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5219f2630854b4f5a3a1bf44af6c56935b83937c2ab24674af70aa5b3634945d`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.3 MB (2266845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feab8f5b2d6c7d70277e4c96e251b7a8d46bdf7e62af4ef27b3fd09b1cb17af`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c70915f69af0dafb575462acebd95abb2403673eacb5d0fff519a44f217239`  
		Last Modified: Wed, 28 Oct 2026 01:21:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:ab42a0cefb9509e838d361be74f622b54ee08292107758035ce833f95b2b458d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf12cb8b059fa4878e867455a6c0461ef6ba6aff6f88ac9406db10b70e0de49`

```dockerfile
```

-	Layers:
	-	`sha256:86cc9313ccb4f2c0ec34aa38e899bcd7e8367bbc46f0ff347f76f607e31eaea2`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa62a77874413e982aa053dea5a910500b398a7ac9b938799baca5fcdbf66c0`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; 386

```console
$ docker pull memcached@sha256:687c48bfcee5db59d97dde415ab0d1e2a7e141c7fc8226bd2f71e58459200448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33748872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95da998de17604fc7cd5b670314c97280bd9c07e9a64c60042a4d908bab7b5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:15:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:15:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:38 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:38 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6457ce19f6bb200fa4a518a61ca0ee82e7970b7f2a354e3b9306e64952507324`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e0b332b4b8fdffbded9c35085c6063b53bf8753b9512e0edab8adad5d6bd04`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 147.5 KB (147546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b61e444bb69bd92d38409fa90ca1533e7fcee1c0d3792794ea4b00db9f96d3d`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.2 MB (2231223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02d6b77a6594327a207b546fb1236d5f55d130c506765d633642ed8730ea1b8`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59efaba98924bf6e61e0261fbf2482911bc58a10eaf6f3f3eca2b546763de25b`  
		Last Modified: Wed, 28 Oct 2026 01:18:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:678b218638a1786213b8173245eb8ad194d021ddc42e2dfe79c46e5c18b9eb03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d07408dcd2966bf6db9511ede182bf8617030cf94568a658b9dde26b4e2365`

```dockerfile
```

-	Layers:
	-	`sha256:dd7bca36bb286b41af7581a4c8b9b6ee88b779409bd5ce0ce99e250b3946db64`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c88e12412b908f75635d70e93e8317deb962c398e29f8763d07e37abed51e6a6`  
		Last Modified: Wed, 28 Oct 2026 01:18:43 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; ppc64le

```console
$ docker pull memcached@sha256:2a99e4c5d68a6085ad576836267dbe3167c0e5a0af940b12f89ee451843eadd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36238051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e419750fa5913f42b7baf0fe6e2ff1305b06d90ed0b0832c6984c956c531b98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:44:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:58:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:58:37 GMT
USER memcache
# Wed, 28 Oct 2026 01:58:37 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:58:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553d4762b7e72ac16c28776146dae7eb134c1e8f0636762aa04b112ede0d6249`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6149d602ec9c822c02c6c527f3e8a4a3c91d4174041c17ef22a3bc61cd787b28`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 170.4 KB (170401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0501c6ab0a14ef2ed7f64f06d19a6826280c647e85260fed17074f506c236119`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.4 MB (2399868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce3fa3c63f015bb3a9f43d9589858934cdd6077416e8e3ea5ed164aa39f48ea`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddadb07e80bd1fd3c86a8e388d7438e05985ceab6f882700b1f6b58b5f0038d`  
		Last Modified: Wed, 28 Oct 2026 01:59:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:ccea5428428738e5dd1fc70f5994bf1213ce9fa837c8f542257dde1d2f2f7e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e7008c7684003bf14ee74b23e78d56919eb7efe0b5837f91f6f5263586d5e0`

```dockerfile
```

-	Layers:
	-	`sha256:5472e99ec9d5c3ccee31d8b95d5ce44d7811c2de04fe456425758c4426a1cfa8`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:289d83bfa3a7251f849cf1b851fb01d39265b474cdf030e7a0c319e340259548`  
		Last Modified: Wed, 28 Oct 2026 01:59:02 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; riscv64

```console
$ docker pull memcached@sha256:4e70d70b01076b61a46e3dd96ff3143c03a6323e4b9197fd884e0aca6c2fd2ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30693720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f112b60b2e9b88544be62407c72603f28eb1148180bd08216b74171643f0047`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:57:57 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 30 Oct 2026 11:58:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 30 Oct 2026 12:40:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Oct 2026 12:40:37 GMT
USER memcache
# Fri, 30 Oct 2026 12:40:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 30 Oct 2026 12:40:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d3b30f41ea61874852a7ba683b2c09acb9299f2dff492a314f472fff0ffbdd`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698bab39896e9dfe70a9dfe56045a9da4becacd41c8ea9d04937ca4ecd0989ff`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f931229426941d75692ffdb892e62462fa0771e32adcd477a91b7eddf7b8a52e`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 2.2 MB (2213405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f247d995a3ae71677f28f85c2a18b1d23e5b8a28769d2b6ef194abdecbb421`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5040924d8cae58de447cac2538953c0d38463ef3749670b33f848681ca1ca311`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:728e1af9660a821665c45011a5d850c63f62fb2a9540869a43bc346c503657ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361b203565198d09c6b972d6b1d1ede12450d64006fee8f967ecdf618408f711`

```dockerfile
```

-	Layers:
	-	`sha256:d1677330f5354aaac96722bd9945f96880a1ebbb0853b3ff9bd3cf9f5f4d90f0`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30e121d7c106e56e3f8887641f204f3b1efebbaf3acfdc39df0b4364200deafb`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; s390x

```console
$ docker pull memcached@sha256:0123e4f283d5c214a2b6a869877e340605d643820a80181c91c52c7dd4444ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bce53dca81c89f0805d495f76d5086059a05e02dac0e6493f9fd191dec0df19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:21:10 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:21:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:24:24 GMT
USER memcache
# Wed, 28 Oct 2026 01:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649a599b1825228a69b115268e3e45e215fa2a02c64c8224c7eb973c13a48a5e`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4674069bf5805b52027c9235b22e0effc90c724bffe59d8b28e1d2e4325d88`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 140.5 KB (140529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5bfba6aef2c98abca120477198790741746ccc15958ee417a162a9cc1b59c0f`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.3 MB (2301394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5959aa1f6f4952b4becf1c70d051b89052a529684072d67c78e3af86bc5f28ae`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c7028af7754e3953cac08753a34ec84cb694487d5013d27c39025e451523f`  
		Last Modified: Wed, 28 Oct 2026 01:24:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:83d6021acb2f4d077dc3686fdff247bf78acd9b38f067a20b49a3eef395e247f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067485a6f4000d4afd1f3edc93629b47689e257c2dae1064a832df211c71ec0d`

```dockerfile
```

-	Layers:
	-	`sha256:11d15bbd787dda2044eac691ada10d6e145c5355e6ce1abc6f5973b9660fa8f1`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bca97f396107f7b75b3f6349d095172cd8a52c65d5216cd770866b67c11c692`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
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
$ docker pull memcached@sha256:aea0d81d101a9b64fe30cf2cf2f96144e284f8e9552bb084a03f4e12e9043bab
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
$ docker pull memcached@sha256:a433b62b243c3c5be2ce9ec535e4f6d07444fde28af84a4d6231136eb711e8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32279855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e942fea2de0cc77a4cf1a921c8f0648473662526b7b4b1abc3947e5497e0e815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:21:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:21:01 GMT
USER memcache
# Wed, 28 Oct 2026 01:21:01 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:21:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209627aaf9465cf5a23ad44dd127f8268ad9c8a1de9294041e12ffa63472cf3a`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2c866e3863828773fe0f0bd6310b610682c1fc23a258b227c7582657aaecc8`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 136.7 KB (136735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab327c05fb9921f89553c63529b100aab88272876203a4bd7c245ecdae0c5e4d`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.3 MB (2286369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb146c0330eed945cc3884b6b187955d0fcba57d8927a36d8855c19ab6c77b6`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318826f315496f8db59036a364b3700186570f5b5bd39b4f53b3dbb54809877e`  
		Last Modified: Wed, 28 Oct 2026 01:21:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:81ac942bb7da9a5a8237a0b7b47ef346ef9134e4b625058be33cb663c73fc8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5809f2d1ada67cc45f0df45a03ff12d7ab836a21e86c29c92d97d6f2629a1a82`

```dockerfile
```

-	Layers:
	-	`sha256:b81c29e255feb266678835c83810fb7967805b28b53eef6594819f7fe3991f4c`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e70831e42c241090f52ce2192637e5b18eeec1bfcc9c78e5f04244f521bdf9e3`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:560df9a73a38d6e58c090131bb38c4c2c2618768095da08c0731b2cdaa3e9b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30381640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95e160a8d8f32cafc8b918846531ffdba447a301f5ee7f395ff215332d7e385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:51 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:13 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:13 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fadbeffce953e32298903ba0425e372dbf6442c1daed7d4d2f1b0cb9c7d654`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf53481f75220b3402d4e4a69e8d958771fc58b84c21587695e1fd5f1cc8830`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 144.2 KB (144201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fbf61a6188f1049287715a31d1212ad5380a7b573df353841545339d495a72`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.2 MB (2217257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ad00431f5dddb1d9e65a21db40d11ff6ac7ad8eaf6b6d87eae01344f21d2de`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105ef2a7d6592262556bbb46c58264c515abb8fa4fa6e2accfe0b59b5231a352`  
		Last Modified: Wed, 28 Oct 2026 01:18:20 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:036cf314818c9b860dd3f7703dacdf7ce25ce4348e0f8d349b6fe4bb87558795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca7b7babdca76907931c4f422e1a1b159e60370f25304a26118c0f8e460c7ed`

```dockerfile
```

-	Layers:
	-	`sha256:eb0bb1c06b52d258579712644a6ca2b70a48886aa53d1e63c9e0bb70aff383a7`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad1175dc9d3fb6379eec5a7bea7fbb868c921f55b2b1dcbf8755b96b58962bbe`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 22.3 KB (22303 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1b351dc02fc59788ad1d79afd032b27cceb6c43b86b0e62683359afd037c91ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28580672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb9793d6d7642cc91ae42aac2fcbe5ad3ae36f908bc70ce7abc3a9ddb414453`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:47 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:47 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cf0b0dbf1775b908d155e383610e5a6ec54989f0f82f09f2287bdc69fb7902`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79e6124d4fbed41afbe1b4df2b1c446f7cddc093bdf8bdf6f83f6a24e691b40`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 135.4 KB (135390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beaededacd4949c42f17ec99d43782d97f36fd062a1bbbc86ec51cdcfe7b4774`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.2 MB (2171599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224773b7a5f7907c7641217155b2312d825d75abca179af90146da9b43af8bae`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6a13e4438c3f2ae0a847b095b0192a73993106ee7d047a6173950d876cf3ec`  
		Last Modified: Wed, 28 Oct 2026 01:20:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:03f1fdbc82de779a7d08925e5dbee64be14c8b25cb7d03611b1dfb22adfaa65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0cf61be4f4109ca88bd8810e28429b9a6d6b5b39d4a9c35d09fb0024cef515`

```dockerfile
```

-	Layers:
	-	`sha256:44ff7402696d05e5a46f6fc8ba25638bdcfc4dca3a029c6ef9e8a0890465c911`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc0374c9d64cb1d154a47de7523d4aa6d61fff68c1b00fe62d7ecdfa43cf3d47`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:3aa8696ba2e0867e8eae7524f13ee53b6681285540374a094db63d6a3423b9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174ced90d486effb7046362100fd96125f8035207ff0f7ec0e8b7c44f69cc458`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:54 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:54 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ac9aa9df3a31c3b1f2c6e381ef880d762c136af9eaaf87ac4798505f06f189`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ccff826c7d29c2a9fd64e1f0e4d384075ba4a09cd8a3a717652fcaa2dc1393`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 153.5 KB (153547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5219f2630854b4f5a3a1bf44af6c56935b83937c2ab24674af70aa5b3634945d`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.3 MB (2266845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feab8f5b2d6c7d70277e4c96e251b7a8d46bdf7e62af4ef27b3fd09b1cb17af`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c70915f69af0dafb575462acebd95abb2403673eacb5d0fff519a44f217239`  
		Last Modified: Wed, 28 Oct 2026 01:21:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ab42a0cefb9509e838d361be74f622b54ee08292107758035ce833f95b2b458d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf12cb8b059fa4878e867455a6c0461ef6ba6aff6f88ac9406db10b70e0de49`

```dockerfile
```

-	Layers:
	-	`sha256:86cc9313ccb4f2c0ec34aa38e899bcd7e8367bbc46f0ff347f76f607e31eaea2`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa62a77874413e982aa053dea5a910500b398a7ac9b938799baca5fcdbf66c0`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; 386

```console
$ docker pull memcached@sha256:687c48bfcee5db59d97dde415ab0d1e2a7e141c7fc8226bd2f71e58459200448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33748872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95da998de17604fc7cd5b670314c97280bd9c07e9a64c60042a4d908bab7b5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:15:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:15:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:38 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:38 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6457ce19f6bb200fa4a518a61ca0ee82e7970b7f2a354e3b9306e64952507324`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e0b332b4b8fdffbded9c35085c6063b53bf8753b9512e0edab8adad5d6bd04`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 147.5 KB (147546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b61e444bb69bd92d38409fa90ca1533e7fcee1c0d3792794ea4b00db9f96d3d`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.2 MB (2231223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02d6b77a6594327a207b546fb1236d5f55d130c506765d633642ed8730ea1b8`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59efaba98924bf6e61e0261fbf2482911bc58a10eaf6f3f3eca2b546763de25b`  
		Last Modified: Wed, 28 Oct 2026 01:18:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:678b218638a1786213b8173245eb8ad194d021ddc42e2dfe79c46e5c18b9eb03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d07408dcd2966bf6db9511ede182bf8617030cf94568a658b9dde26b4e2365`

```dockerfile
```

-	Layers:
	-	`sha256:dd7bca36bb286b41af7581a4c8b9b6ee88b779409bd5ce0ce99e250b3946db64`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c88e12412b908f75635d70e93e8317deb962c398e29f8763d07e37abed51e6a6`  
		Last Modified: Wed, 28 Oct 2026 01:18:43 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:2a99e4c5d68a6085ad576836267dbe3167c0e5a0af940b12f89ee451843eadd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36238051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e419750fa5913f42b7baf0fe6e2ff1305b06d90ed0b0832c6984c956c531b98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:44:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:58:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:58:37 GMT
USER memcache
# Wed, 28 Oct 2026 01:58:37 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:58:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553d4762b7e72ac16c28776146dae7eb134c1e8f0636762aa04b112ede0d6249`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6149d602ec9c822c02c6c527f3e8a4a3c91d4174041c17ef22a3bc61cd787b28`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 170.4 KB (170401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0501c6ab0a14ef2ed7f64f06d19a6826280c647e85260fed17074f506c236119`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.4 MB (2399868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce3fa3c63f015bb3a9f43d9589858934cdd6077416e8e3ea5ed164aa39f48ea`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddadb07e80bd1fd3c86a8e388d7438e05985ceab6f882700b1f6b58b5f0038d`  
		Last Modified: Wed, 28 Oct 2026 01:59:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ccea5428428738e5dd1fc70f5994bf1213ce9fa837c8f542257dde1d2f2f7e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e7008c7684003bf14ee74b23e78d56919eb7efe0b5837f91f6f5263586d5e0`

```dockerfile
```

-	Layers:
	-	`sha256:5472e99ec9d5c3ccee31d8b95d5ce44d7811c2de04fe456425758c4426a1cfa8`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:289d83bfa3a7251f849cf1b851fb01d39265b474cdf030e7a0c319e340259548`  
		Last Modified: Wed, 28 Oct 2026 01:59:02 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:4e70d70b01076b61a46e3dd96ff3143c03a6323e4b9197fd884e0aca6c2fd2ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30693720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f112b60b2e9b88544be62407c72603f28eb1148180bd08216b74171643f0047`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:57:57 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 30 Oct 2026 11:58:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 30 Oct 2026 12:40:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Oct 2026 12:40:37 GMT
USER memcache
# Fri, 30 Oct 2026 12:40:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 30 Oct 2026 12:40:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d3b30f41ea61874852a7ba683b2c09acb9299f2dff492a314f472fff0ffbdd`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698bab39896e9dfe70a9dfe56045a9da4becacd41c8ea9d04937ca4ecd0989ff`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f931229426941d75692ffdb892e62462fa0771e32adcd477a91b7eddf7b8a52e`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 2.2 MB (2213405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f247d995a3ae71677f28f85c2a18b1d23e5b8a28769d2b6ef194abdecbb421`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5040924d8cae58de447cac2538953c0d38463ef3749670b33f848681ca1ca311`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:728e1af9660a821665c45011a5d850c63f62fb2a9540869a43bc346c503657ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361b203565198d09c6b972d6b1d1ede12450d64006fee8f967ecdf618408f711`

```dockerfile
```

-	Layers:
	-	`sha256:d1677330f5354aaac96722bd9945f96880a1ebbb0853b3ff9bd3cf9f5f4d90f0`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30e121d7c106e56e3f8887641f204f3b1efebbaf3acfdc39df0b4364200deafb`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:0123e4f283d5c214a2b6a869877e340605d643820a80181c91c52c7dd4444ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bce53dca81c89f0805d495f76d5086059a05e02dac0e6493f9fd191dec0df19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:21:10 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:21:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:24:24 GMT
USER memcache
# Wed, 28 Oct 2026 01:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649a599b1825228a69b115268e3e45e215fa2a02c64c8224c7eb973c13a48a5e`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4674069bf5805b52027c9235b22e0effc90c724bffe59d8b28e1d2e4325d88`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 140.5 KB (140529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5bfba6aef2c98abca120477198790741746ccc15958ee417a162a9cc1b59c0f`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.3 MB (2301394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5959aa1f6f4952b4becf1c70d051b89052a529684072d67c78e3af86bc5f28ae`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c7028af7754e3953cac08753a34ec84cb694487d5013d27c39025e451523f`  
		Last Modified: Wed, 28 Oct 2026 01:24:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:83d6021acb2f4d077dc3686fdff247bf78acd9b38f067a20b49a3eef395e247f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067485a6f4000d4afd1f3edc93629b47689e257c2dae1064a832df211c71ec0d`

```dockerfile
```

-	Layers:
	-	`sha256:11d15bbd787dda2044eac691ada10d6e145c5355e6ce1abc6f5973b9660fa8f1`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bca97f396107f7b75b3f6349d095172cd8a52c65d5216cd770866b67c11c692`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
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
$ docker pull memcached@sha256:aea0d81d101a9b64fe30cf2cf2f96144e284f8e9552bb084a03f4e12e9043bab
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
$ docker pull memcached@sha256:a433b62b243c3c5be2ce9ec535e4f6d07444fde28af84a4d6231136eb711e8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32279855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e942fea2de0cc77a4cf1a921c8f0648473662526b7b4b1abc3947e5497e0e815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:21:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:21:01 GMT
USER memcache
# Wed, 28 Oct 2026 01:21:01 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:21:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209627aaf9465cf5a23ad44dd127f8268ad9c8a1de9294041e12ffa63472cf3a`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2c866e3863828773fe0f0bd6310b610682c1fc23a258b227c7582657aaecc8`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 136.7 KB (136735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab327c05fb9921f89553c63529b100aab88272876203a4bd7c245ecdae0c5e4d`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.3 MB (2286369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb146c0330eed945cc3884b6b187955d0fcba57d8927a36d8855c19ab6c77b6`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318826f315496f8db59036a364b3700186570f5b5bd39b4f53b3dbb54809877e`  
		Last Modified: Wed, 28 Oct 2026 01:21:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:81ac942bb7da9a5a8237a0b7b47ef346ef9134e4b625058be33cb663c73fc8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5809f2d1ada67cc45f0df45a03ff12d7ab836a21e86c29c92d97d6f2629a1a82`

```dockerfile
```

-	Layers:
	-	`sha256:b81c29e255feb266678835c83810fb7967805b28b53eef6594819f7fe3991f4c`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e70831e42c241090f52ce2192637e5b18eeec1bfcc9c78e5f04244f521bdf9e3`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:560df9a73a38d6e58c090131bb38c4c2c2618768095da08c0731b2cdaa3e9b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30381640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95e160a8d8f32cafc8b918846531ffdba447a301f5ee7f395ff215332d7e385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:51 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:13 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:13 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fadbeffce953e32298903ba0425e372dbf6442c1daed7d4d2f1b0cb9c7d654`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf53481f75220b3402d4e4a69e8d958771fc58b84c21587695e1fd5f1cc8830`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 144.2 KB (144201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fbf61a6188f1049287715a31d1212ad5380a7b573df353841545339d495a72`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.2 MB (2217257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ad00431f5dddb1d9e65a21db40d11ff6ac7ad8eaf6b6d87eae01344f21d2de`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105ef2a7d6592262556bbb46c58264c515abb8fa4fa6e2accfe0b59b5231a352`  
		Last Modified: Wed, 28 Oct 2026 01:18:20 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:036cf314818c9b860dd3f7703dacdf7ce25ce4348e0f8d349b6fe4bb87558795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca7b7babdca76907931c4f422e1a1b159e60370f25304a26118c0f8e460c7ed`

```dockerfile
```

-	Layers:
	-	`sha256:eb0bb1c06b52d258579712644a6ca2b70a48886aa53d1e63c9e0bb70aff383a7`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad1175dc9d3fb6379eec5a7bea7fbb868c921f55b2b1dcbf8755b96b58962bbe`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 22.3 KB (22303 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1b351dc02fc59788ad1d79afd032b27cceb6c43b86b0e62683359afd037c91ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28580672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb9793d6d7642cc91ae42aac2fcbe5ad3ae36f908bc70ce7abc3a9ddb414453`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:47 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:47 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cf0b0dbf1775b908d155e383610e5a6ec54989f0f82f09f2287bdc69fb7902`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79e6124d4fbed41afbe1b4df2b1c446f7cddc093bdf8bdf6f83f6a24e691b40`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 135.4 KB (135390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beaededacd4949c42f17ec99d43782d97f36fd062a1bbbc86ec51cdcfe7b4774`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.2 MB (2171599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224773b7a5f7907c7641217155b2312d825d75abca179af90146da9b43af8bae`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6a13e4438c3f2ae0a847b095b0192a73993106ee7d047a6173950d876cf3ec`  
		Last Modified: Wed, 28 Oct 2026 01:20:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:03f1fdbc82de779a7d08925e5dbee64be14c8b25cb7d03611b1dfb22adfaa65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0cf61be4f4109ca88bd8810e28429b9a6d6b5b39d4a9c35d09fb0024cef515`

```dockerfile
```

-	Layers:
	-	`sha256:44ff7402696d05e5a46f6fc8ba25638bdcfc4dca3a029c6ef9e8a0890465c911`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc0374c9d64cb1d154a47de7523d4aa6d61fff68c1b00fe62d7ecdfa43cf3d47`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:3aa8696ba2e0867e8eae7524f13ee53b6681285540374a094db63d6a3423b9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174ced90d486effb7046362100fd96125f8035207ff0f7ec0e8b7c44f69cc458`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:54 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:54 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ac9aa9df3a31c3b1f2c6e381ef880d762c136af9eaaf87ac4798505f06f189`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ccff826c7d29c2a9fd64e1f0e4d384075ba4a09cd8a3a717652fcaa2dc1393`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 153.5 KB (153547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5219f2630854b4f5a3a1bf44af6c56935b83937c2ab24674af70aa5b3634945d`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.3 MB (2266845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feab8f5b2d6c7d70277e4c96e251b7a8d46bdf7e62af4ef27b3fd09b1cb17af`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c70915f69af0dafb575462acebd95abb2403673eacb5d0fff519a44f217239`  
		Last Modified: Wed, 28 Oct 2026 01:21:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:ab42a0cefb9509e838d361be74f622b54ee08292107758035ce833f95b2b458d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf12cb8b059fa4878e867455a6c0461ef6ba6aff6f88ac9406db10b70e0de49`

```dockerfile
```

-	Layers:
	-	`sha256:86cc9313ccb4f2c0ec34aa38e899bcd7e8367bbc46f0ff347f76f607e31eaea2`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa62a77874413e982aa053dea5a910500b398a7ac9b938799baca5fcdbf66c0`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:687c48bfcee5db59d97dde415ab0d1e2a7e141c7fc8226bd2f71e58459200448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33748872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95da998de17604fc7cd5b670314c97280bd9c07e9a64c60042a4d908bab7b5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:15:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:15:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:38 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:38 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6457ce19f6bb200fa4a518a61ca0ee82e7970b7f2a354e3b9306e64952507324`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e0b332b4b8fdffbded9c35085c6063b53bf8753b9512e0edab8adad5d6bd04`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 147.5 KB (147546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b61e444bb69bd92d38409fa90ca1533e7fcee1c0d3792794ea4b00db9f96d3d`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.2 MB (2231223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02d6b77a6594327a207b546fb1236d5f55d130c506765d633642ed8730ea1b8`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59efaba98924bf6e61e0261fbf2482911bc58a10eaf6f3f3eca2b546763de25b`  
		Last Modified: Wed, 28 Oct 2026 01:18:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:678b218638a1786213b8173245eb8ad194d021ddc42e2dfe79c46e5c18b9eb03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d07408dcd2966bf6db9511ede182bf8617030cf94568a658b9dde26b4e2365`

```dockerfile
```

-	Layers:
	-	`sha256:dd7bca36bb286b41af7581a4c8b9b6ee88b779409bd5ce0ce99e250b3946db64`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c88e12412b908f75635d70e93e8317deb962c398e29f8763d07e37abed51e6a6`  
		Last Modified: Wed, 28 Oct 2026 01:18:43 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:2a99e4c5d68a6085ad576836267dbe3167c0e5a0af940b12f89ee451843eadd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36238051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e419750fa5913f42b7baf0fe6e2ff1305b06d90ed0b0832c6984c956c531b98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:44:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:58:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:58:37 GMT
USER memcache
# Wed, 28 Oct 2026 01:58:37 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:58:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553d4762b7e72ac16c28776146dae7eb134c1e8f0636762aa04b112ede0d6249`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6149d602ec9c822c02c6c527f3e8a4a3c91d4174041c17ef22a3bc61cd787b28`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 170.4 KB (170401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0501c6ab0a14ef2ed7f64f06d19a6826280c647e85260fed17074f506c236119`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.4 MB (2399868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce3fa3c63f015bb3a9f43d9589858934cdd6077416e8e3ea5ed164aa39f48ea`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddadb07e80bd1fd3c86a8e388d7438e05985ceab6f882700b1f6b58b5f0038d`  
		Last Modified: Wed, 28 Oct 2026 01:59:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:ccea5428428738e5dd1fc70f5994bf1213ce9fa837c8f542257dde1d2f2f7e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e7008c7684003bf14ee74b23e78d56919eb7efe0b5837f91f6f5263586d5e0`

```dockerfile
```

-	Layers:
	-	`sha256:5472e99ec9d5c3ccee31d8b95d5ce44d7811c2de04fe456425758c4426a1cfa8`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:289d83bfa3a7251f849cf1b851fb01d39265b474cdf030e7a0c319e340259548`  
		Last Modified: Wed, 28 Oct 2026 01:59:02 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; riscv64

```console
$ docker pull memcached@sha256:4e70d70b01076b61a46e3dd96ff3143c03a6323e4b9197fd884e0aca6c2fd2ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30693720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f112b60b2e9b88544be62407c72603f28eb1148180bd08216b74171643f0047`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:57:57 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 30 Oct 2026 11:58:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 30 Oct 2026 12:40:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Oct 2026 12:40:37 GMT
USER memcache
# Fri, 30 Oct 2026 12:40:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 30 Oct 2026 12:40:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d3b30f41ea61874852a7ba683b2c09acb9299f2dff492a314f472fff0ffbdd`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698bab39896e9dfe70a9dfe56045a9da4becacd41c8ea9d04937ca4ecd0989ff`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f931229426941d75692ffdb892e62462fa0771e32adcd477a91b7eddf7b8a52e`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 2.2 MB (2213405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f247d995a3ae71677f28f85c2a18b1d23e5b8a28769d2b6ef194abdecbb421`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5040924d8cae58de447cac2538953c0d38463ef3749670b33f848681ca1ca311`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:728e1af9660a821665c45011a5d850c63f62fb2a9540869a43bc346c503657ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361b203565198d09c6b972d6b1d1ede12450d64006fee8f967ecdf618408f711`

```dockerfile
```

-	Layers:
	-	`sha256:d1677330f5354aaac96722bd9945f96880a1ebbb0853b3ff9bd3cf9f5f4d90f0`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30e121d7c106e56e3f8887641f204f3b1efebbaf3acfdc39df0b4364200deafb`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:0123e4f283d5c214a2b6a869877e340605d643820a80181c91c52c7dd4444ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bce53dca81c89f0805d495f76d5086059a05e02dac0e6493f9fd191dec0df19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:21:10 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:21:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:24:24 GMT
USER memcache
# Wed, 28 Oct 2026 01:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649a599b1825228a69b115268e3e45e215fa2a02c64c8224c7eb973c13a48a5e`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4674069bf5805b52027c9235b22e0effc90c724bffe59d8b28e1d2e4325d88`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 140.5 KB (140529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5bfba6aef2c98abca120477198790741746ccc15958ee417a162a9cc1b59c0f`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.3 MB (2301394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5959aa1f6f4952b4becf1c70d051b89052a529684072d67c78e3af86bc5f28ae`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c7028af7754e3953cac08753a34ec84cb694487d5013d27c39025e451523f`  
		Last Modified: Wed, 28 Oct 2026 01:24:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:83d6021acb2f4d077dc3686fdff247bf78acd9b38f067a20b49a3eef395e247f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067485a6f4000d4afd1f3edc93629b47689e257c2dae1064a832df211c71ec0d`

```dockerfile
```

-	Layers:
	-	`sha256:11d15bbd787dda2044eac691ada10d6e145c5355e6ce1abc6f5973b9660fa8f1`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bca97f396107f7b75b3f6349d095172cd8a52c65d5216cd770866b67c11c692`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:trixie`

```console
$ docker pull memcached@sha256:aea0d81d101a9b64fe30cf2cf2f96144e284f8e9552bb084a03f4e12e9043bab
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
$ docker pull memcached@sha256:a433b62b243c3c5be2ce9ec535e4f6d07444fde28af84a4d6231136eb711e8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32279855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e942fea2de0cc77a4cf1a921c8f0648473662526b7b4b1abc3947e5497e0e815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:04 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:21:01 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:21:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:21:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:21:01 GMT
USER memcache
# Wed, 28 Oct 2026 01:21:01 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:21:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209627aaf9465cf5a23ad44dd127f8268ad9c8a1de9294041e12ffa63472cf3a`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2c866e3863828773fe0f0bd6310b610682c1fc23a258b227c7582657aaecc8`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 136.7 KB (136735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab327c05fb9921f89553c63529b100aab88272876203a4bd7c245ecdae0c5e4d`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.3 MB (2286369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb146c0330eed945cc3884b6b187955d0fcba57d8927a36d8855c19ab6c77b6`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318826f315496f8db59036a364b3700186570f5b5bd39b4f53b3dbb54809877e`  
		Last Modified: Wed, 28 Oct 2026 01:21:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:81ac942bb7da9a5a8237a0b7b47ef346ef9134e4b625058be33cb663c73fc8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5809f2d1ada67cc45f0df45a03ff12d7ab836a21e86c29c92d97d6f2629a1a82`

```dockerfile
```

-	Layers:
	-	`sha256:b81c29e255feb266678835c83810fb7967805b28b53eef6594819f7fe3991f4c`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e70831e42c241090f52ce2192637e5b18eeec1bfcc9c78e5f04244f521bdf9e3`  
		Last Modified: Wed, 28 Oct 2026 01:21:08 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:560df9a73a38d6e58c090131bb38c4c2c2618768095da08c0731b2cdaa3e9b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30381640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95e160a8d8f32cafc8b918846531ffdba447a301f5ee7f395ff215332d7e385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:51 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:12 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:13 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:13 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fadbeffce953e32298903ba0425e372dbf6442c1daed7d4d2f1b0cb9c7d654`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf53481f75220b3402d4e4a69e8d958771fc58b84c21587695e1fd5f1cc8830`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 144.2 KB (144201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fbf61a6188f1049287715a31d1212ad5380a7b573df353841545339d495a72`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.2 MB (2217257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ad00431f5dddb1d9e65a21db40d11ff6ac7ad8eaf6b6d87eae01344f21d2de`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105ef2a7d6592262556bbb46c58264c515abb8fa4fa6e2accfe0b59b5231a352`  
		Last Modified: Wed, 28 Oct 2026 01:18:20 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:036cf314818c9b860dd3f7703dacdf7ce25ce4348e0f8d349b6fe4bb87558795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca7b7babdca76907931c4f422e1a1b159e60370f25304a26118c0f8e460c7ed`

```dockerfile
```

-	Layers:
	-	`sha256:eb0bb1c06b52d258579712644a6ca2b70a48886aa53d1e63c9e0bb70aff383a7`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad1175dc9d3fb6379eec5a7bea7fbb868c921f55b2b1dcbf8755b96b58962bbe`  
		Last Modified: Wed, 28 Oct 2026 01:18:19 GMT  
		Size: 22.3 KB (22303 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:1b351dc02fc59788ad1d79afd032b27cceb6c43b86b0e62683359afd037c91ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28580672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb9793d6d7642cc91ae42aac2fcbe5ad3ae36f908bc70ce7abc3a9ddb414453`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:47 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:47 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:47 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cf0b0dbf1775b908d155e383610e5a6ec54989f0f82f09f2287bdc69fb7902`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79e6124d4fbed41afbe1b4df2b1c446f7cddc093bdf8bdf6f83f6a24e691b40`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 135.4 KB (135390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beaededacd4949c42f17ec99d43782d97f36fd062a1bbbc86ec51cdcfe7b4774`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.2 MB (2171599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224773b7a5f7907c7641217155b2312d825d75abca179af90146da9b43af8bae`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6a13e4438c3f2ae0a847b095b0192a73993106ee7d047a6173950d876cf3ec`  
		Last Modified: Wed, 28 Oct 2026 01:20:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:03f1fdbc82de779a7d08925e5dbee64be14c8b25cb7d03611b1dfb22adfaa65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0cf61be4f4109ca88bd8810e28429b9a6d6b5b39d4a9c35d09fb0024cef515`

```dockerfile
```

-	Layers:
	-	`sha256:44ff7402696d05e5a46f6fc8ba25638bdcfc4dca3a029c6ef9e8a0890465c911`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc0374c9d64cb1d154a47de7523d4aa6d61fff68c1b00fe62d7ecdfa43cf3d47`  
		Last Modified: Wed, 28 Oct 2026 01:20:53 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:3aa8696ba2e0867e8eae7524f13ee53b6681285540374a094db63d6a3423b9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32635402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174ced90d486effb7046362100fd96125f8035207ff0f7ec0e8b7c44f69cc458`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:17:53 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:17:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:20:54 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:20:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:20:54 GMT
USER memcache
# Wed, 28 Oct 2026 01:20:54 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:20:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ac9aa9df3a31c3b1f2c6e381ef880d762c136af9eaaf87ac4798505f06f189`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ccff826c7d29c2a9fd64e1f0e4d384075ba4a09cd8a3a717652fcaa2dc1393`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 153.5 KB (153547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5219f2630854b4f5a3a1bf44af6c56935b83937c2ab24674af70aa5b3634945d`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.3 MB (2266845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feab8f5b2d6c7d70277e4c96e251b7a8d46bdf7e62af4ef27b3fd09b1cb17af`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c70915f69af0dafb575462acebd95abb2403673eacb5d0fff519a44f217239`  
		Last Modified: Wed, 28 Oct 2026 01:21:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ab42a0cefb9509e838d361be74f622b54ee08292107758035ce833f95b2b458d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf12cb8b059fa4878e867455a6c0461ef6ba6aff6f88ac9406db10b70e0de49`

```dockerfile
```

-	Layers:
	-	`sha256:86cc9313ccb4f2c0ec34aa38e899bcd7e8367bbc46f0ff347f76f607e31eaea2`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa62a77874413e982aa053dea5a910500b398a7ac9b938799baca5fcdbf66c0`  
		Last Modified: Wed, 28 Oct 2026 01:21:00 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; 386

```console
$ docker pull memcached@sha256:687c48bfcee5db59d97dde415ab0d1e2a7e141c7fc8226bd2f71e58459200448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33748872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95da998de17604fc7cd5b670314c97280bd9c07e9a64c60042a4d908bab7b5d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:15:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:15:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:18:38 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:18:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:18:38 GMT
USER memcache
# Wed, 28 Oct 2026 01:18:38 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:18:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6457ce19f6bb200fa4a518a61ca0ee82e7970b7f2a354e3b9306e64952507324`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e0b332b4b8fdffbded9c35085c6063b53bf8753b9512e0edab8adad5d6bd04`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 147.5 KB (147546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b61e444bb69bd92d38409fa90ca1533e7fcee1c0d3792794ea4b00db9f96d3d`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.2 MB (2231223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02d6b77a6594327a207b546fb1236d5f55d130c506765d633642ed8730ea1b8`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59efaba98924bf6e61e0261fbf2482911bc58a10eaf6f3f3eca2b546763de25b`  
		Last Modified: Wed, 28 Oct 2026 01:18:45 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:678b218638a1786213b8173245eb8ad194d021ddc42e2dfe79c46e5c18b9eb03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d07408dcd2966bf6db9511ede182bf8617030cf94568a658b9dde26b4e2365`

```dockerfile
```

-	Layers:
	-	`sha256:dd7bca36bb286b41af7581a4c8b9b6ee88b779409bd5ce0ce99e250b3946db64`  
		Last Modified: Wed, 28 Oct 2026 01:18:44 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c88e12412b908f75635d70e93e8317deb962c398e29f8763d07e37abed51e6a6`  
		Last Modified: Wed, 28 Oct 2026 01:18:43 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:2a99e4c5d68a6085ad576836267dbe3167c0e5a0af940b12f89ee451843eadd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36238051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e419750fa5913f42b7baf0fe6e2ff1305b06d90ed0b0832c6984c956c531b98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:44:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:58:36 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:58:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:58:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:58:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:58:37 GMT
USER memcache
# Wed, 28 Oct 2026 01:58:37 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:58:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553d4762b7e72ac16c28776146dae7eb134c1e8f0636762aa04b112ede0d6249`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6149d602ec9c822c02c6c527f3e8a4a3c91d4174041c17ef22a3bc61cd787b28`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 170.4 KB (170401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0501c6ab0a14ef2ed7f64f06d19a6826280c647e85260fed17074f506c236119`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.4 MB (2399868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce3fa3c63f015bb3a9f43d9589858934cdd6077416e8e3ea5ed164aa39f48ea`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 285.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddadb07e80bd1fd3c86a8e388d7438e05985ceab6f882700b1f6b58b5f0038d`  
		Last Modified: Wed, 28 Oct 2026 01:59:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ccea5428428738e5dd1fc70f5994bf1213ce9fa837c8f542257dde1d2f2f7e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e7008c7684003bf14ee74b23e78d56919eb7efe0b5837f91f6f5263586d5e0`

```dockerfile
```

-	Layers:
	-	`sha256:5472e99ec9d5c3ccee31d8b95d5ce44d7811c2de04fe456425758c4426a1cfa8`  
		Last Modified: Wed, 28 Oct 2026 01:59:03 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:289d83bfa3a7251f849cf1b851fb01d39265b474cdf030e7a0c319e340259548`  
		Last Modified: Wed, 28 Oct 2026 01:59:02 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:4e70d70b01076b61a46e3dd96ff3143c03a6323e4b9197fd884e0aca6c2fd2ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30693720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f112b60b2e9b88544be62407c72603f28eb1148180bd08216b74171643f0047`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 11:57:57 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Fri, 30 Oct 2026 11:58:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Fri, 30 Oct 2026 12:40:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Fri, 30 Oct 2026 12:40:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 30 Oct 2026 12:40:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Oct 2026 12:40:37 GMT
USER memcache
# Fri, 30 Oct 2026 12:40:37 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 30 Oct 2026 12:40:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d3b30f41ea61874852a7ba683b2c09acb9299f2dff492a314f472fff0ffbdd`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698bab39896e9dfe70a9dfe56045a9da4becacd41c8ea9d04937ca4ecd0989ff`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f931229426941d75692ffdb892e62462fa0771e32adcd477a91b7eddf7b8a52e`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 2.2 MB (2213405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f247d995a3ae71677f28f85c2a18b1d23e5b8a28769d2b6ef194abdecbb421`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5040924d8cae58de447cac2538953c0d38463ef3749670b33f848681ca1ca311`  
		Last Modified: Fri, 30 Oct 2026 12:41:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:728e1af9660a821665c45011a5d850c63f62fb2a9540869a43bc346c503657ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361b203565198d09c6b972d6b1d1ede12450d64006fee8f967ecdf618408f711`

```dockerfile
```

-	Layers:
	-	`sha256:d1677330f5354aaac96722bd9945f96880a1ebbb0853b3ff9bd3cf9f5f4d90f0`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30e121d7c106e56e3f8887641f204f3b1efebbaf3acfdc39df0b4364200deafb`  
		Last Modified: Fri, 30 Oct 2026 12:41:25 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; s390x

```console
$ docker pull memcached@sha256:0123e4f283d5c214a2b6a869877e340605d643820a80181c91c52c7dd4444ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32366358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bce53dca81c89f0805d495f76d5086059a05e02dac0e6493f9fd191dec0df19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:21:10 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 28 Oct 2026 01:21:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 28 Oct 2026 01:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 28 Oct 2026 01:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:24:24 GMT
USER memcache
# Wed, 28 Oct 2026 01:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 28 Oct 2026 01:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649a599b1825228a69b115268e3e45e215fa2a02c64c8224c7eb973c13a48a5e`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4674069bf5805b52027c9235b22e0effc90c724bffe59d8b28e1d2e4325d88`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 140.5 KB (140529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5bfba6aef2c98abca120477198790741746ccc15958ee417a162a9cc1b59c0f`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.3 MB (2301394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5959aa1f6f4952b4becf1c70d051b89052a529684072d67c78e3af86bc5f28ae`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8c7028af7754e3953cac08753a34ec84cb694487d5013d27c39025e451523f`  
		Last Modified: Wed, 28 Oct 2026 01:24:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:83d6021acb2f4d077dc3686fdff247bf78acd9b38f067a20b49a3eef395e247f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067485a6f4000d4afd1f3edc93629b47689e257c2dae1064a832df211c71ec0d`

```dockerfile
```

-	Layers:
	-	`sha256:11d15bbd787dda2044eac691ada10d6e145c5355e6ce1abc6f5973b9660fa8f1`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bca97f396107f7b75b3f6349d095172cd8a52c65d5216cd770866b67c11c692`  
		Last Modified: Wed, 28 Oct 2026 01:24:35 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json
