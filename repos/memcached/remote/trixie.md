## `memcached:trixie`

```console
$ docker pull memcached@sha256:9c50e44b81bda45b1214ed4f3e11a4b96721a05728279775c7f76f7b06a804d6
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
$ docker pull memcached@sha256:7baf395ab23e569f1aeb2d4fa33ad424b8d3eac40a482c2bd7a0310366b4b7dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30681852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1a59c27c14a0beef3c6fd3b596c806006f48fd3e9661793f54f0df9d6518d63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Sat, 24 Oct 2026 11:17:59 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Sat, 24 Oct 2026 11:18:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 24 Oct 2026 11:45:17 GMT
ENV MEMCACHED_VERSION=1.6.45
# Sat, 24 Oct 2026 11:45:17 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Sat, 24 Oct 2026 11:45:17 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Sat, 24 Oct 2026 11:45:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Sat, 24 Oct 2026 11:45:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 11:45:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Sat, 24 Oct 2026 11:45:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 24 Oct 2026 11:45:17 GMT
USER memcache
# Sat, 24 Oct 2026 11:45:17 GMT
EXPOSE map[11211/tcp:{}]
# Sat, 24 Oct 2026 11:45:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0353fb48db74fae5f9fe56496d5755d51e07212aeafc0b8efc3ca65cb2cfe6cf`  
		Last Modified: Sat, 24 Oct 2026 11:46:14 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf43ca570d910612c7bdaa51a7e402b78df20ba1b4fe4cb553b4356daac5aae`  
		Last Modified: Sat, 24 Oct 2026 11:46:14 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdaa5758a34568bc0e67fa92350fadc62e7215de34e1beaa1b09619c9cb566dc`  
		Last Modified: Sat, 24 Oct 2026 11:46:14 GMT  
		Size: 2.2 MB (2213337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2525878e23810adec2809c50db5436e01d2024e9e723c72707da6625857c450a`  
		Last Modified: Sat, 24 Oct 2026 11:46:14 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e23e96646f0e974cf864d7b4ff0d29eb9fa6838b3abb02420072ee3c862cfe`  
		Last Modified: Sat, 24 Oct 2026 11:46:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:de8dfeb831273001a8f581d40d2ffd7554152723ce89af79b8b88cd2136fb901
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:695bfa97b19e682979a0ee5e7b4de3071f93103c27f234b6d182c9b707d16fd9`

```dockerfile
```

-	Layers:
	-	`sha256:d7f955037fffaab47f5e5e2a59054bc561bc97ef518304c0e884e4d843aad39d`  
		Last Modified: Sat, 24 Oct 2026 11:46:14 GMT  
		Size: 2.0 MB (2008296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebe7fe93071b7e49f983e4ea28b32a053ff7bf92917aaaaec86bcaf1819c520f`  
		Last Modified: Sat, 24 Oct 2026 11:46:14 GMT  
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
