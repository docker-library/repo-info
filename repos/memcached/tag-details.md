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
$ docker pull memcached@sha256:78038eeb5dbd14c3ddf2967794e9e220a6141e9e62bc7fbae0c5f42fa71b666f
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
$ docker pull memcached@sha256:caff88f7360e5ea9026db1efe05691b7cbb5da1177ba93a19bcb7b3dcc8de0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32266837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e214642c1162c79a822fac3c51165a51269645cfb83e03bc7d17278b75df9702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:16 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:04 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:04 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:04 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58783c24fbf0b8b74f585465ea2fb54c9df5018fea8ecc99ffb7d04c5d7e735`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ad127b8d56e06c651c41ace7f7b3eea84fa22d0a5d4d36f689fb49dc55192f`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 136.8 KB (136765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86916fa3fd9b6bba1faf228eea7b96de1282aa82f68f652948ed2e56c34babe`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.3 MB (2286379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d04e2f29aa8c560d13748628644587d05b596fa4a50a5b0569d55adea8a092`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f23ded9e380f3cdbeb63e9f4ac51369b570b0be97a6e4ae8904f13e805520`  
		Last Modified: Tue, 24 Nov 2026 04:20:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:2b40a0458e154c1fa674117a3dfead244621742e08d95b17bb24bd27670c9109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab025b53fa79642cc13e48423b04d7ee7ad70a954a1daaa7303861bd31ab20aa`

```dockerfile
```

-	Layers:
	-	`sha256:64624d4cade09d8060d3f40457e08a7bcb3059f69c8a7edc7d02beb64c3b4a7b`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.0 MB (2014360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d9bb32f9f7b7c426be90461f169a49385d412704f485b16200028990b8c82e2`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:4d226c82cfe815654edc4d354f7dc1f38873e292ed630c6eae1341ef14eb343e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30371831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fd76db1983d5df871ab3582fd7fdf51d61f589fc4a8c6bdcf69b34bbc79f4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:27 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:19:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:19:23 GMT
USER memcache
# Tue, 24 Nov 2026 04:19:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:19:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de84ad85375fadbf262b34555c4c39d9bb50822a1ac1bb04cec119e121b6cc3`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39e45a430d0b5f27b5633114caf0bb83a80f2dfc7848782e7e43a008b68f47a`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 144.2 KB (144216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbf09efd4f198ee508ae029f1d5f09aeacd6c0962be1a8b5ea6fbd1d22a5731`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.2 MB (2217318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935c63fbe975a2d45a37e111bf38d5aa90af14c6301027cad7d3327371eaae67`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed24eaba3090623a0abf9b4ba38d0625cff30c303615b40ed4ce81e15f3f56a`  
		Last Modified: Tue, 24 Nov 2026 04:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:cb2db107084a5a4e4ab6898e02bd5ba4e33270e9f6050ec08e68597cc7423a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450652d608ed0ebbf91af165b42ee98bc744da0886718640cfb74fd81baecdb5`

```dockerfile
```

-	Layers:
	-	`sha256:4c56bf882e3abe1bfd47cf51227311975dfc290a9e598c9ab74613748a981db7`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.0 MB (2017363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0528874a81d19320859e6247b9008ee21f466901ae8210af9572200448fe535c`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a5fd6fd86c1707258994a0a07d8eeb10e88a26d95404ce755a4086514e8a46c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28571022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9efb8ac63455bd86de6fca490cc9c51af22b922d575b52893008dc55ff68f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:20:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:23:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:23:34 GMT
USER memcache
# Tue, 24 Nov 2026 04:23:34 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:23:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3d4939d505a4eb291e6eef8741d5e6d0aad1a5b2ec9082664a5c51eed5e4d2`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c217e4f7532ded47acf6f216b8147775b535ad23e673c7d0e7622c1dfbb6068`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 135.4 KB (135419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5b8326956023a7158d34b9ff51b101ba64b8cc03ac5de98a7f6f606619af44`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.2 MB (2171635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2312ddcadb30db35a11cb7e7ffeacf410b5d65352b6279af98a84a25a6a505e8`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2aaad43af101a34b97ccc6c28daed4f77ca21d6fab63aad46ed739fa2fe87cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:901c9b64b1ea4df1499fc53d6d38daab7de35f9c0174e27a98aeda8140ef9a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347239ceb9172f456af63c3bacab9c26e435477cd09a014437f23c7ad9c2f83`

```dockerfile
```

-	Layers:
	-	`sha256:7683511c775cc01fae4a4d2ecd26029ffdb38ac25f41a164850edae6a2557d55`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.0 MB (2015820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f224cf80aaa6029537bc9d2c738535717445297f11e10fd0a1670a12acf4cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7709768464d1cc6f0e479ec041f850bbe184fb2d370723279c6c4d8b402bc596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee94eec995221f69917c2d228d4fcdaeb18b6a7d2213c39d345a38753fe576b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:50 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7902eb59939e1f19c15d25fbb66645c804f883de9c87baf0d296a8495e65cd95`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9788e82f93faf159906b9ff1e3dee987cc6149f53f8d5e119c5a80f95a238b9d`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 153.6 KB (153566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6115c6225774ddb0011f2b48a26d62a10c0c3dd53a903cd886813782fc9e050`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.3 MB (2266865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51998e6e9845ade47961c0a76eb6410eb156fb5c58a7884f8b756efa4b8d2691`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7572149e7deb55a79454a5df6f78505cd8be9267da94e1fca06d425b2e663a49`  
		Last Modified: Tue, 24 Nov 2026 04:20:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:2e809e42f0c09a4bdeb85d9d5b398a155cab44871188f43d5111ae2b468ebb39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccfe8f00ef02677696fc40dd417939b36e2cb6b4a2a5b568e3722af4fb796fdb`

```dockerfile
```

-	Layers:
	-	`sha256:0b3ff4b198fb07f24a5fbe4e599ed6cb035d90d359a5f002db693c26ff57c364`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.0 MB (2014668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a17a96496c44ec4e764a849e0e7d886d06356d2cc88fd89d5bc87882e1074452`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:9664ee18608625d1884fb8b6c798a43aeb4c19c06a592c5a1ce39281b2f55735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33738182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bfa99ac639d0bcc4ecbdd6b5d47e31be4b28eecefc7bf5190a51339cc6fc6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:15:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:15:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:18 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a59557b2ba711791a0154595624a57d515fc682014689d06e79909f57cfd41c`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd38bd5ce8ad79a7a5c9d62cce78287e0420026a97f26c4b1c3d3f7c814881b`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 147.6 KB (147565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63fff55aa8c627ac96d4e8db0a26705d4cfd2a9ba4799d4ff14c885996b09a7`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.2 MB (2231187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f5078fbdaac0307a1fdcbe1b6233a374e2afa67f564dc6e3ea9291bf76a9d`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1605b6dbe433595711f12aec315420d800125e9915339391bc442dff3e6574`  
		Last Modified: Tue, 24 Nov 2026 04:18:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:e28da22f1494a961c446fa74da37167e9085142e4f457cee204cbbc226c60d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f7aa8fd658ffcd44bb0e9788d0c2245cb4c44f476e61969feabd312c73bfa9`

```dockerfile
```

-	Layers:
	-	`sha256:77395611273904b34912cf21c797c66a457fef4ba1f24da92ebae9becd1dfacd`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.0 MB (2011517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eebe3ed2e561da66e81e0b741cedf594a8bbd4e5b23d000ef38a757a775ac066`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:a602390d6aa03f00e8de8289d9ec867ab894d81996f26458eba0ea75b6cbcc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36224406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6865b6573bafa76b53145da202779723af72cf6729aad843c116ab4a096d4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:28:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:28:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:32:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:32:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:32:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:32:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:32:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b988998d1b2874de4249dfedaddcd2c7162040443b9397ca859c2e9c5a944c7c`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c623467254ea58a849bdfbe68cd1e8ffc0ffbb5cd141f38b781982dbef0a9544`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 170.4 KB (170436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458076179cacbf351db857493f15543be474e6a515306f9e136c740f9403494b`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.4 MB (2399820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e22ddec44426a7040b184a662eefe70fa01bb710fd2aac11241bd723cbdb06`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc6f28b0dbc96b7925f467d55b572e512cd19c7fc74b02eaf4919cd102bdbe`  
		Last Modified: Tue, 24 Nov 2026 04:32:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:cc399a264ddebdcb81cba43c36356608e501d7faa5da95807473a1f51dbbc04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef950347a24ea78081b2fa78b6ae0c3a8b563870b21da47c992c5eefc2ebc4d`

```dockerfile
```

-	Layers:
	-	`sha256:ffae7d1fd6c1477cccd326e8c8eb5b166a5638df50a7e9237c0366cb6447e2a9`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.0 MB (2017961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbe12c2390e8c6e01fdb916debdc7bb7d0e2ed7838f7eb690308bac4bce00492`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 22.2 KB (22227 bytes)  
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
$ docker pull memcached@sha256:c852c5c28658f370cf37ac10efba5c9b7047185e74f90246152e7b4c82a83aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32353544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a45ed8632134c8f6f86175931619773cdeeb9e2cea010d2128b881a6b027ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb5016c1afd5253a936969a911e3dbab7a821f675212d1c1c569f93023def21`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0937adaa4ab0c50c92e4b07e1a949e0655c13fb31e1e96245b35c5d2e375b`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 140.6 KB (140575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6953046d4ff4e9ecbefca45a625454ed8b4f877e8f8b7a85611b18af91822bee`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.3 MB (2301435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ee6cd434db1da5b791317d28d6d9ab1d62dd6fdbbc2ffd869712e14f213bdc`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c46ef951baf02c8413ab6a048c4a93b506cfc35dff327b0f0387a6c3a85675`  
		Last Modified: Tue, 24 Nov 2026 04:18:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:4b5d733add0e62e1d90af1ec9a58d85fc7162edbf56b1f05d82ebcbac6a752ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b71ce63543d6ac99be2a14331d132b3e99c1cad98d9b5ae05fb43b97a737c1`

```dockerfile
```

-	Layers:
	-	`sha256:90d804415da022e4e3d17368956b1ea941062af76442c10e385906539e31c940`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.0 MB (2015797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44773aca08302f9f9aa5a1d323c27c169116d9bf6134c6ebffbc0dd7d31fbb3e`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:084fb554292d1447bc2c68b80c2331b98834514f56c866bc21a61be3c2ee376d
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
$ docker pull memcached@sha256:98a42a5b67ba520ecdfd3e8749c75c693bad2d4a0cbfa58d4522248a42e20ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfea736aafa376f59c9cab3b474fe59494d1b7bee63fb0c58392c357c28fc94b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:07:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 10 Nov 2026 01:07:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 10 Nov 2026 01:21:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 01:21:19 GMT
USER memcache
# Tue, 10 Nov 2026 01:21:19 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 10 Nov 2026 01:21:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1512d56528e93056675884d539ae4a19727b652bf5e65d9d88f44f31e6aa0031`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e11799dec9eb6bcf2c6644925e8b6412b5dff47219d189f2a8a834891f17ba`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e20390140d5397ee05543000d6214e93094ea434d83cd8405c9f63281ef8e1`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 2.1 MB (2057824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963988115aaadd5cc7cc627936082449eebfd627d71c9b7a0e3e033beec3eb5c`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6752b6436ab530f1e5882cfb43502e638d6d7791740851abfb2f397dbb3a5f2c`  
		Last Modified: Tue, 10 Nov 2026 01:21:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:728da476752b13939d3ab21e33830e5b109ce6d52ddcc508c84bd9713aa89dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6e5048892dab4592de00a5df913071336d73336e8676ef5780422afadb611d`

```dockerfile
```

-	Layers:
	-	`sha256:8b7572676f693e82558d1338e6bda5018caa381bc3558321f6af9db8bd1cb6b5`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe1f500c02e865336cff2990fc7eb7f8d58fbdae6b66c52d8b435995af8cb5e`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
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
$ docker pull memcached@sha256:084fb554292d1447bc2c68b80c2331b98834514f56c866bc21a61be3c2ee376d
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
$ docker pull memcached@sha256:98a42a5b67ba520ecdfd3e8749c75c693bad2d4a0cbfa58d4522248a42e20ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfea736aafa376f59c9cab3b474fe59494d1b7bee63fb0c58392c357c28fc94b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:07:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 10 Nov 2026 01:07:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 10 Nov 2026 01:21:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 01:21:19 GMT
USER memcache
# Tue, 10 Nov 2026 01:21:19 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 10 Nov 2026 01:21:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1512d56528e93056675884d539ae4a19727b652bf5e65d9d88f44f31e6aa0031`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e11799dec9eb6bcf2c6644925e8b6412b5dff47219d189f2a8a834891f17ba`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e20390140d5397ee05543000d6214e93094ea434d83cd8405c9f63281ef8e1`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 2.1 MB (2057824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963988115aaadd5cc7cc627936082449eebfd627d71c9b7a0e3e033beec3eb5c`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6752b6436ab530f1e5882cfb43502e638d6d7791740851abfb2f397dbb3a5f2c`  
		Last Modified: Tue, 10 Nov 2026 01:21:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:728da476752b13939d3ab21e33830e5b109ce6d52ddcc508c84bd9713aa89dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6e5048892dab4592de00a5df913071336d73336e8676ef5780422afadb611d`

```dockerfile
```

-	Layers:
	-	`sha256:8b7572676f693e82558d1338e6bda5018caa381bc3558321f6af9db8bd1cb6b5`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe1f500c02e865336cff2990fc7eb7f8d58fbdae6b66c52d8b435995af8cb5e`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
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
$ docker pull memcached@sha256:78038eeb5dbd14c3ddf2967794e9e220a6141e9e62bc7fbae0c5f42fa71b666f
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
$ docker pull memcached@sha256:caff88f7360e5ea9026db1efe05691b7cbb5da1177ba93a19bcb7b3dcc8de0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32266837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e214642c1162c79a822fac3c51165a51269645cfb83e03bc7d17278b75df9702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:16 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:04 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:04 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:04 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58783c24fbf0b8b74f585465ea2fb54c9df5018fea8ecc99ffb7d04c5d7e735`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ad127b8d56e06c651c41ace7f7b3eea84fa22d0a5d4d36f689fb49dc55192f`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 136.8 KB (136765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86916fa3fd9b6bba1faf228eea7b96de1282aa82f68f652948ed2e56c34babe`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.3 MB (2286379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d04e2f29aa8c560d13748628644587d05b596fa4a50a5b0569d55adea8a092`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f23ded9e380f3cdbeb63e9f4ac51369b570b0be97a6e4ae8904f13e805520`  
		Last Modified: Tue, 24 Nov 2026 04:20:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2b40a0458e154c1fa674117a3dfead244621742e08d95b17bb24bd27670c9109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab025b53fa79642cc13e48423b04d7ee7ad70a954a1daaa7303861bd31ab20aa`

```dockerfile
```

-	Layers:
	-	`sha256:64624d4cade09d8060d3f40457e08a7bcb3059f69c8a7edc7d02beb64c3b4a7b`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.0 MB (2014360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d9bb32f9f7b7c426be90461f169a49385d412704f485b16200028990b8c82e2`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:4d226c82cfe815654edc4d354f7dc1f38873e292ed630c6eae1341ef14eb343e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30371831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fd76db1983d5df871ab3582fd7fdf51d61f589fc4a8c6bdcf69b34bbc79f4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:27 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:19:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:19:23 GMT
USER memcache
# Tue, 24 Nov 2026 04:19:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:19:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de84ad85375fadbf262b34555c4c39d9bb50822a1ac1bb04cec119e121b6cc3`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39e45a430d0b5f27b5633114caf0bb83a80f2dfc7848782e7e43a008b68f47a`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 144.2 KB (144216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbf09efd4f198ee508ae029f1d5f09aeacd6c0962be1a8b5ea6fbd1d22a5731`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.2 MB (2217318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935c63fbe975a2d45a37e111bf38d5aa90af14c6301027cad7d3327371eaae67`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed24eaba3090623a0abf9b4ba38d0625cff30c303615b40ed4ce81e15f3f56a`  
		Last Modified: Tue, 24 Nov 2026 04:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cb2db107084a5a4e4ab6898e02bd5ba4e33270e9f6050ec08e68597cc7423a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450652d608ed0ebbf91af165b42ee98bc744da0886718640cfb74fd81baecdb5`

```dockerfile
```

-	Layers:
	-	`sha256:4c56bf882e3abe1bfd47cf51227311975dfc290a9e598c9ab74613748a981db7`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.0 MB (2017363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0528874a81d19320859e6247b9008ee21f466901ae8210af9572200448fe535c`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a5fd6fd86c1707258994a0a07d8eeb10e88a26d95404ce755a4086514e8a46c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28571022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9efb8ac63455bd86de6fca490cc9c51af22b922d575b52893008dc55ff68f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:20:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:23:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:23:34 GMT
USER memcache
# Tue, 24 Nov 2026 04:23:34 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:23:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3d4939d505a4eb291e6eef8741d5e6d0aad1a5b2ec9082664a5c51eed5e4d2`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c217e4f7532ded47acf6f216b8147775b535ad23e673c7d0e7622c1dfbb6068`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 135.4 KB (135419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5b8326956023a7158d34b9ff51b101ba64b8cc03ac5de98a7f6f606619af44`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.2 MB (2171635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2312ddcadb30db35a11cb7e7ffeacf410b5d65352b6279af98a84a25a6a505e8`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2aaad43af101a34b97ccc6c28daed4f77ca21d6fab63aad46ed739fa2fe87cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:901c9b64b1ea4df1499fc53d6d38daab7de35f9c0174e27a98aeda8140ef9a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347239ceb9172f456af63c3bacab9c26e435477cd09a014437f23c7ad9c2f83`

```dockerfile
```

-	Layers:
	-	`sha256:7683511c775cc01fae4a4d2ecd26029ffdb38ac25f41a164850edae6a2557d55`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.0 MB (2015820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f224cf80aaa6029537bc9d2c738535717445297f11e10fd0a1670a12acf4cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7709768464d1cc6f0e479ec041f850bbe184fb2d370723279c6c4d8b402bc596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee94eec995221f69917c2d228d4fcdaeb18b6a7d2213c39d345a38753fe576b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:50 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7902eb59939e1f19c15d25fbb66645c804f883de9c87baf0d296a8495e65cd95`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9788e82f93faf159906b9ff1e3dee987cc6149f53f8d5e119c5a80f95a238b9d`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 153.6 KB (153566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6115c6225774ddb0011f2b48a26d62a10c0c3dd53a903cd886813782fc9e050`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.3 MB (2266865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51998e6e9845ade47961c0a76eb6410eb156fb5c58a7884f8b756efa4b8d2691`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7572149e7deb55a79454a5df6f78505cd8be9267da94e1fca06d425b2e663a49`  
		Last Modified: Tue, 24 Nov 2026 04:20:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2e809e42f0c09a4bdeb85d9d5b398a155cab44871188f43d5111ae2b468ebb39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccfe8f00ef02677696fc40dd417939b36e2cb6b4a2a5b568e3722af4fb796fdb`

```dockerfile
```

-	Layers:
	-	`sha256:0b3ff4b198fb07f24a5fbe4e599ed6cb035d90d359a5f002db693c26ff57c364`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.0 MB (2014668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a17a96496c44ec4e764a849e0e7d886d06356d2cc88fd89d5bc87882e1074452`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; 386

```console
$ docker pull memcached@sha256:9664ee18608625d1884fb8b6c798a43aeb4c19c06a592c5a1ce39281b2f55735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33738182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bfa99ac639d0bcc4ecbdd6b5d47e31be4b28eecefc7bf5190a51339cc6fc6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:15:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:15:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:18 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a59557b2ba711791a0154595624a57d515fc682014689d06e79909f57cfd41c`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd38bd5ce8ad79a7a5c9d62cce78287e0420026a97f26c4b1c3d3f7c814881b`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 147.6 KB (147565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63fff55aa8c627ac96d4e8db0a26705d4cfd2a9ba4799d4ff14c885996b09a7`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.2 MB (2231187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f5078fbdaac0307a1fdcbe1b6233a374e2afa67f564dc6e3ea9291bf76a9d`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1605b6dbe433595711f12aec315420d800125e9915339391bc442dff3e6574`  
		Last Modified: Tue, 24 Nov 2026 04:18:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:e28da22f1494a961c446fa74da37167e9085142e4f457cee204cbbc226c60d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f7aa8fd658ffcd44bb0e9788d0c2245cb4c44f476e61969feabd312c73bfa9`

```dockerfile
```

-	Layers:
	-	`sha256:77395611273904b34912cf21c797c66a457fef4ba1f24da92ebae9becd1dfacd`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.0 MB (2011517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eebe3ed2e561da66e81e0b741cedf594a8bbd4e5b23d000ef38a757a775ac066`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:a602390d6aa03f00e8de8289d9ec867ab894d81996f26458eba0ea75b6cbcc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36224406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6865b6573bafa76b53145da202779723af72cf6729aad843c116ab4a096d4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:28:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:28:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:32:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:32:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:32:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:32:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:32:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b988998d1b2874de4249dfedaddcd2c7162040443b9397ca859c2e9c5a944c7c`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c623467254ea58a849bdfbe68cd1e8ffc0ffbb5cd141f38b781982dbef0a9544`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 170.4 KB (170436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458076179cacbf351db857493f15543be474e6a515306f9e136c740f9403494b`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.4 MB (2399820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e22ddec44426a7040b184a662eefe70fa01bb710fd2aac11241bd723cbdb06`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc6f28b0dbc96b7925f467d55b572e512cd19c7fc74b02eaf4919cd102bdbe`  
		Last Modified: Tue, 24 Nov 2026 04:32:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cc399a264ddebdcb81cba43c36356608e501d7faa5da95807473a1f51dbbc04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef950347a24ea78081b2fa78b6ae0c3a8b563870b21da47c992c5eefc2ebc4d`

```dockerfile
```

-	Layers:
	-	`sha256:ffae7d1fd6c1477cccd326e8c8eb5b166a5638df50a7e9237c0366cb6447e2a9`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.0 MB (2017961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbe12c2390e8c6e01fdb916debdc7bb7d0e2ed7838f7eb690308bac4bce00492`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 22.2 KB (22227 bytes)  
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
$ docker pull memcached@sha256:c852c5c28658f370cf37ac10efba5c9b7047185e74f90246152e7b4c82a83aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32353544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a45ed8632134c8f6f86175931619773cdeeb9e2cea010d2128b881a6b027ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb5016c1afd5253a936969a911e3dbab7a821f675212d1c1c569f93023def21`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0937adaa4ab0c50c92e4b07e1a949e0655c13fb31e1e96245b35c5d2e375b`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 140.6 KB (140575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6953046d4ff4e9ecbefca45a625454ed8b4f877e8f8b7a85611b18af91822bee`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.3 MB (2301435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ee6cd434db1da5b791317d28d6d9ab1d62dd6fdbbc2ffd869712e14f213bdc`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c46ef951baf02c8413ab6a048c4a93b506cfc35dff327b0f0387a6c3a85675`  
		Last Modified: Tue, 24 Nov 2026 04:18:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:4b5d733add0e62e1d90af1ec9a58d85fc7162edbf56b1f05d82ebcbac6a752ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b71ce63543d6ac99be2a14331d132b3e99c1cad98d9b5ae05fb43b97a737c1`

```dockerfile
```

-	Layers:
	-	`sha256:90d804415da022e4e3d17368956b1ea941062af76442c10e385906539e31c940`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.0 MB (2015797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44773aca08302f9f9aa5a1d323c27c169116d9bf6134c6ebffbc0dd7d31fbb3e`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6`

```console
$ docker pull memcached@sha256:78038eeb5dbd14c3ddf2967794e9e220a6141e9e62bc7fbae0c5f42fa71b666f
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
$ docker pull memcached@sha256:caff88f7360e5ea9026db1efe05691b7cbb5da1177ba93a19bcb7b3dcc8de0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32266837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e214642c1162c79a822fac3c51165a51269645cfb83e03bc7d17278b75df9702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:16 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:04 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:04 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:04 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58783c24fbf0b8b74f585465ea2fb54c9df5018fea8ecc99ffb7d04c5d7e735`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ad127b8d56e06c651c41ace7f7b3eea84fa22d0a5d4d36f689fb49dc55192f`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 136.8 KB (136765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86916fa3fd9b6bba1faf228eea7b96de1282aa82f68f652948ed2e56c34babe`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.3 MB (2286379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d04e2f29aa8c560d13748628644587d05b596fa4a50a5b0569d55adea8a092`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f23ded9e380f3cdbeb63e9f4ac51369b570b0be97a6e4ae8904f13e805520`  
		Last Modified: Tue, 24 Nov 2026 04:20:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:2b40a0458e154c1fa674117a3dfead244621742e08d95b17bb24bd27670c9109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab025b53fa79642cc13e48423b04d7ee7ad70a954a1daaa7303861bd31ab20aa`

```dockerfile
```

-	Layers:
	-	`sha256:64624d4cade09d8060d3f40457e08a7bcb3059f69c8a7edc7d02beb64c3b4a7b`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.0 MB (2014360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d9bb32f9f7b7c426be90461f169a49385d412704f485b16200028990b8c82e2`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v5

```console
$ docker pull memcached@sha256:4d226c82cfe815654edc4d354f7dc1f38873e292ed630c6eae1341ef14eb343e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30371831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fd76db1983d5df871ab3582fd7fdf51d61f589fc4a8c6bdcf69b34bbc79f4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:27 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:19:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:19:23 GMT
USER memcache
# Tue, 24 Nov 2026 04:19:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:19:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de84ad85375fadbf262b34555c4c39d9bb50822a1ac1bb04cec119e121b6cc3`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39e45a430d0b5f27b5633114caf0bb83a80f2dfc7848782e7e43a008b68f47a`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 144.2 KB (144216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbf09efd4f198ee508ae029f1d5f09aeacd6c0962be1a8b5ea6fbd1d22a5731`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.2 MB (2217318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935c63fbe975a2d45a37e111bf38d5aa90af14c6301027cad7d3327371eaae67`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed24eaba3090623a0abf9b4ba38d0625cff30c303615b40ed4ce81e15f3f56a`  
		Last Modified: Tue, 24 Nov 2026 04:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:cb2db107084a5a4e4ab6898e02bd5ba4e33270e9f6050ec08e68597cc7423a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450652d608ed0ebbf91af165b42ee98bc744da0886718640cfb74fd81baecdb5`

```dockerfile
```

-	Layers:
	-	`sha256:4c56bf882e3abe1bfd47cf51227311975dfc290a9e598c9ab74613748a981db7`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.0 MB (2017363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0528874a81d19320859e6247b9008ee21f466901ae8210af9572200448fe535c`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a5fd6fd86c1707258994a0a07d8eeb10e88a26d95404ce755a4086514e8a46c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28571022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9efb8ac63455bd86de6fca490cc9c51af22b922d575b52893008dc55ff68f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:20:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:23:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:23:34 GMT
USER memcache
# Tue, 24 Nov 2026 04:23:34 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:23:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3d4939d505a4eb291e6eef8741d5e6d0aad1a5b2ec9082664a5c51eed5e4d2`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c217e4f7532ded47acf6f216b8147775b535ad23e673c7d0e7622c1dfbb6068`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 135.4 KB (135419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5b8326956023a7158d34b9ff51b101ba64b8cc03ac5de98a7f6f606619af44`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.2 MB (2171635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2312ddcadb30db35a11cb7e7ffeacf410b5d65352b6279af98a84a25a6a505e8`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2aaad43af101a34b97ccc6c28daed4f77ca21d6fab63aad46ed739fa2fe87cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:901c9b64b1ea4df1499fc53d6d38daab7de35f9c0174e27a98aeda8140ef9a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347239ceb9172f456af63c3bacab9c26e435477cd09a014437f23c7ad9c2f83`

```dockerfile
```

-	Layers:
	-	`sha256:7683511c775cc01fae4a4d2ecd26029ffdb38ac25f41a164850edae6a2557d55`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.0 MB (2015820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f224cf80aaa6029537bc9d2c738535717445297f11e10fd0a1670a12acf4cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7709768464d1cc6f0e479ec041f850bbe184fb2d370723279c6c4d8b402bc596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee94eec995221f69917c2d228d4fcdaeb18b6a7d2213c39d345a38753fe576b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:50 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7902eb59939e1f19c15d25fbb66645c804f883de9c87baf0d296a8495e65cd95`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9788e82f93faf159906b9ff1e3dee987cc6149f53f8d5e119c5a80f95a238b9d`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 153.6 KB (153566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6115c6225774ddb0011f2b48a26d62a10c0c3dd53a903cd886813782fc9e050`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.3 MB (2266865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51998e6e9845ade47961c0a76eb6410eb156fb5c58a7884f8b756efa4b8d2691`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7572149e7deb55a79454a5df6f78505cd8be9267da94e1fca06d425b2e663a49`  
		Last Modified: Tue, 24 Nov 2026 04:20:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:2e809e42f0c09a4bdeb85d9d5b398a155cab44871188f43d5111ae2b468ebb39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccfe8f00ef02677696fc40dd417939b36e2cb6b4a2a5b568e3722af4fb796fdb`

```dockerfile
```

-	Layers:
	-	`sha256:0b3ff4b198fb07f24a5fbe4e599ed6cb035d90d359a5f002db693c26ff57c364`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.0 MB (2014668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a17a96496c44ec4e764a849e0e7d886d06356d2cc88fd89d5bc87882e1074452`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; 386

```console
$ docker pull memcached@sha256:9664ee18608625d1884fb8b6c798a43aeb4c19c06a592c5a1ce39281b2f55735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33738182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bfa99ac639d0bcc4ecbdd6b5d47e31be4b28eecefc7bf5190a51339cc6fc6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:15:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:15:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:18 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a59557b2ba711791a0154595624a57d515fc682014689d06e79909f57cfd41c`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd38bd5ce8ad79a7a5c9d62cce78287e0420026a97f26c4b1c3d3f7c814881b`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 147.6 KB (147565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63fff55aa8c627ac96d4e8db0a26705d4cfd2a9ba4799d4ff14c885996b09a7`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.2 MB (2231187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f5078fbdaac0307a1fdcbe1b6233a374e2afa67f564dc6e3ea9291bf76a9d`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1605b6dbe433595711f12aec315420d800125e9915339391bc442dff3e6574`  
		Last Modified: Tue, 24 Nov 2026 04:18:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:e28da22f1494a961c446fa74da37167e9085142e4f457cee204cbbc226c60d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f7aa8fd658ffcd44bb0e9788d0c2245cb4c44f476e61969feabd312c73bfa9`

```dockerfile
```

-	Layers:
	-	`sha256:77395611273904b34912cf21c797c66a457fef4ba1f24da92ebae9becd1dfacd`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.0 MB (2011517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eebe3ed2e561da66e81e0b741cedf594a8bbd4e5b23d000ef38a757a775ac066`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; ppc64le

```console
$ docker pull memcached@sha256:a602390d6aa03f00e8de8289d9ec867ab894d81996f26458eba0ea75b6cbcc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36224406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6865b6573bafa76b53145da202779723af72cf6729aad843c116ab4a096d4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:28:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:28:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:32:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:32:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:32:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:32:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:32:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b988998d1b2874de4249dfedaddcd2c7162040443b9397ca859c2e9c5a944c7c`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c623467254ea58a849bdfbe68cd1e8ffc0ffbb5cd141f38b781982dbef0a9544`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 170.4 KB (170436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458076179cacbf351db857493f15543be474e6a515306f9e136c740f9403494b`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.4 MB (2399820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e22ddec44426a7040b184a662eefe70fa01bb710fd2aac11241bd723cbdb06`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc6f28b0dbc96b7925f467d55b572e512cd19c7fc74b02eaf4919cd102bdbe`  
		Last Modified: Tue, 24 Nov 2026 04:32:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:cc399a264ddebdcb81cba43c36356608e501d7faa5da95807473a1f51dbbc04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef950347a24ea78081b2fa78b6ae0c3a8b563870b21da47c992c5eefc2ebc4d`

```dockerfile
```

-	Layers:
	-	`sha256:ffae7d1fd6c1477cccd326e8c8eb5b166a5638df50a7e9237c0366cb6447e2a9`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.0 MB (2017961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbe12c2390e8c6e01fdb916debdc7bb7d0e2ed7838f7eb690308bac4bce00492`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 22.2 KB (22227 bytes)  
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
$ docker pull memcached@sha256:c852c5c28658f370cf37ac10efba5c9b7047185e74f90246152e7b4c82a83aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32353544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a45ed8632134c8f6f86175931619773cdeeb9e2cea010d2128b881a6b027ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb5016c1afd5253a936969a911e3dbab7a821f675212d1c1c569f93023def21`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0937adaa4ab0c50c92e4b07e1a949e0655c13fb31e1e96245b35c5d2e375b`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 140.6 KB (140575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6953046d4ff4e9ecbefca45a625454ed8b4f877e8f8b7a85611b18af91822bee`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.3 MB (2301435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ee6cd434db1da5b791317d28d6d9ab1d62dd6fdbbc2ffd869712e14f213bdc`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c46ef951baf02c8413ab6a048c4a93b506cfc35dff327b0f0387a6c3a85675`  
		Last Modified: Tue, 24 Nov 2026 04:18:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:4b5d733add0e62e1d90af1ec9a58d85fc7162edbf56b1f05d82ebcbac6a752ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b71ce63543d6ac99be2a14331d132b3e99c1cad98d9b5ae05fb43b97a737c1`

```dockerfile
```

-	Layers:
	-	`sha256:90d804415da022e4e3d17368956b1ea941062af76442c10e385906539e31c940`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.0 MB (2015797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44773aca08302f9f9aa5a1d323c27c169116d9bf6134c6ebffbc0dd7d31fbb3e`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6-alpine`

```console
$ docker pull memcached@sha256:084fb554292d1447bc2c68b80c2331b98834514f56c866bc21a61be3c2ee376d
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
$ docker pull memcached@sha256:98a42a5b67ba520ecdfd3e8749c75c693bad2d4a0cbfa58d4522248a42e20ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfea736aafa376f59c9cab3b474fe59494d1b7bee63fb0c58392c357c28fc94b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:07:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 10 Nov 2026 01:07:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 10 Nov 2026 01:21:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 01:21:19 GMT
USER memcache
# Tue, 10 Nov 2026 01:21:19 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 10 Nov 2026 01:21:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1512d56528e93056675884d539ae4a19727b652bf5e65d9d88f44f31e6aa0031`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e11799dec9eb6bcf2c6644925e8b6412b5dff47219d189f2a8a834891f17ba`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e20390140d5397ee05543000d6214e93094ea434d83cd8405c9f63281ef8e1`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 2.1 MB (2057824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963988115aaadd5cc7cc627936082449eebfd627d71c9b7a0e3e033beec3eb5c`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6752b6436ab530f1e5882cfb43502e638d6d7791740851abfb2f397dbb3a5f2c`  
		Last Modified: Tue, 10 Nov 2026 01:21:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:728da476752b13939d3ab21e33830e5b109ce6d52ddcc508c84bd9713aa89dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6e5048892dab4592de00a5df913071336d73336e8676ef5780422afadb611d`

```dockerfile
```

-	Layers:
	-	`sha256:8b7572676f693e82558d1338e6bda5018caa381bc3558321f6af9db8bd1cb6b5`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe1f500c02e865336cff2990fc7eb7f8d58fbdae6b66c52d8b435995af8cb5e`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
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
$ docker pull memcached@sha256:084fb554292d1447bc2c68b80c2331b98834514f56c866bc21a61be3c2ee376d
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
$ docker pull memcached@sha256:98a42a5b67ba520ecdfd3e8749c75c693bad2d4a0cbfa58d4522248a42e20ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfea736aafa376f59c9cab3b474fe59494d1b7bee63fb0c58392c357c28fc94b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:07:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 10 Nov 2026 01:07:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 10 Nov 2026 01:21:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 01:21:19 GMT
USER memcache
# Tue, 10 Nov 2026 01:21:19 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 10 Nov 2026 01:21:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1512d56528e93056675884d539ae4a19727b652bf5e65d9d88f44f31e6aa0031`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e11799dec9eb6bcf2c6644925e8b6412b5dff47219d189f2a8a834891f17ba`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e20390140d5397ee05543000d6214e93094ea434d83cd8405c9f63281ef8e1`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 2.1 MB (2057824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963988115aaadd5cc7cc627936082449eebfd627d71c9b7a0e3e033beec3eb5c`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6752b6436ab530f1e5882cfb43502e638d6d7791740851abfb2f397dbb3a5f2c`  
		Last Modified: Tue, 10 Nov 2026 01:21:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:728da476752b13939d3ab21e33830e5b109ce6d52ddcc508c84bd9713aa89dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6e5048892dab4592de00a5df913071336d73336e8676ef5780422afadb611d`

```dockerfile
```

-	Layers:
	-	`sha256:8b7572676f693e82558d1338e6bda5018caa381bc3558321f6af9db8bd1cb6b5`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe1f500c02e865336cff2990fc7eb7f8d58fbdae6b66c52d8b435995af8cb5e`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
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
$ docker pull memcached@sha256:78038eeb5dbd14c3ddf2967794e9e220a6141e9e62bc7fbae0c5f42fa71b666f
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
$ docker pull memcached@sha256:caff88f7360e5ea9026db1efe05691b7cbb5da1177ba93a19bcb7b3dcc8de0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32266837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e214642c1162c79a822fac3c51165a51269645cfb83e03bc7d17278b75df9702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:16 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:04 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:04 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:04 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58783c24fbf0b8b74f585465ea2fb54c9df5018fea8ecc99ffb7d04c5d7e735`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ad127b8d56e06c651c41ace7f7b3eea84fa22d0a5d4d36f689fb49dc55192f`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 136.8 KB (136765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86916fa3fd9b6bba1faf228eea7b96de1282aa82f68f652948ed2e56c34babe`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.3 MB (2286379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d04e2f29aa8c560d13748628644587d05b596fa4a50a5b0569d55adea8a092`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f23ded9e380f3cdbeb63e9f4ac51369b570b0be97a6e4ae8904f13e805520`  
		Last Modified: Tue, 24 Nov 2026 04:20:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2b40a0458e154c1fa674117a3dfead244621742e08d95b17bb24bd27670c9109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab025b53fa79642cc13e48423b04d7ee7ad70a954a1daaa7303861bd31ab20aa`

```dockerfile
```

-	Layers:
	-	`sha256:64624d4cade09d8060d3f40457e08a7bcb3059f69c8a7edc7d02beb64c3b4a7b`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.0 MB (2014360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d9bb32f9f7b7c426be90461f169a49385d412704f485b16200028990b8c82e2`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:4d226c82cfe815654edc4d354f7dc1f38873e292ed630c6eae1341ef14eb343e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30371831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fd76db1983d5df871ab3582fd7fdf51d61f589fc4a8c6bdcf69b34bbc79f4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:27 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:19:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:19:23 GMT
USER memcache
# Tue, 24 Nov 2026 04:19:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:19:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de84ad85375fadbf262b34555c4c39d9bb50822a1ac1bb04cec119e121b6cc3`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39e45a430d0b5f27b5633114caf0bb83a80f2dfc7848782e7e43a008b68f47a`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 144.2 KB (144216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbf09efd4f198ee508ae029f1d5f09aeacd6c0962be1a8b5ea6fbd1d22a5731`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.2 MB (2217318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935c63fbe975a2d45a37e111bf38d5aa90af14c6301027cad7d3327371eaae67`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed24eaba3090623a0abf9b4ba38d0625cff30c303615b40ed4ce81e15f3f56a`  
		Last Modified: Tue, 24 Nov 2026 04:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cb2db107084a5a4e4ab6898e02bd5ba4e33270e9f6050ec08e68597cc7423a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450652d608ed0ebbf91af165b42ee98bc744da0886718640cfb74fd81baecdb5`

```dockerfile
```

-	Layers:
	-	`sha256:4c56bf882e3abe1bfd47cf51227311975dfc290a9e598c9ab74613748a981db7`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.0 MB (2017363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0528874a81d19320859e6247b9008ee21f466901ae8210af9572200448fe535c`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a5fd6fd86c1707258994a0a07d8eeb10e88a26d95404ce755a4086514e8a46c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28571022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9efb8ac63455bd86de6fca490cc9c51af22b922d575b52893008dc55ff68f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:20:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:23:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:23:34 GMT
USER memcache
# Tue, 24 Nov 2026 04:23:34 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:23:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3d4939d505a4eb291e6eef8741d5e6d0aad1a5b2ec9082664a5c51eed5e4d2`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c217e4f7532ded47acf6f216b8147775b535ad23e673c7d0e7622c1dfbb6068`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 135.4 KB (135419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5b8326956023a7158d34b9ff51b101ba64b8cc03ac5de98a7f6f606619af44`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.2 MB (2171635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2312ddcadb30db35a11cb7e7ffeacf410b5d65352b6279af98a84a25a6a505e8`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2aaad43af101a34b97ccc6c28daed4f77ca21d6fab63aad46ed739fa2fe87cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:901c9b64b1ea4df1499fc53d6d38daab7de35f9c0174e27a98aeda8140ef9a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347239ceb9172f456af63c3bacab9c26e435477cd09a014437f23c7ad9c2f83`

```dockerfile
```

-	Layers:
	-	`sha256:7683511c775cc01fae4a4d2ecd26029ffdb38ac25f41a164850edae6a2557d55`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.0 MB (2015820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f224cf80aaa6029537bc9d2c738535717445297f11e10fd0a1670a12acf4cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7709768464d1cc6f0e479ec041f850bbe184fb2d370723279c6c4d8b402bc596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee94eec995221f69917c2d228d4fcdaeb18b6a7d2213c39d345a38753fe576b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:50 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7902eb59939e1f19c15d25fbb66645c804f883de9c87baf0d296a8495e65cd95`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9788e82f93faf159906b9ff1e3dee987cc6149f53f8d5e119c5a80f95a238b9d`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 153.6 KB (153566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6115c6225774ddb0011f2b48a26d62a10c0c3dd53a903cd886813782fc9e050`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.3 MB (2266865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51998e6e9845ade47961c0a76eb6410eb156fb5c58a7884f8b756efa4b8d2691`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7572149e7deb55a79454a5df6f78505cd8be9267da94e1fca06d425b2e663a49`  
		Last Modified: Tue, 24 Nov 2026 04:20:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2e809e42f0c09a4bdeb85d9d5b398a155cab44871188f43d5111ae2b468ebb39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccfe8f00ef02677696fc40dd417939b36e2cb6b4a2a5b568e3722af4fb796fdb`

```dockerfile
```

-	Layers:
	-	`sha256:0b3ff4b198fb07f24a5fbe4e599ed6cb035d90d359a5f002db693c26ff57c364`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.0 MB (2014668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a17a96496c44ec4e764a849e0e7d886d06356d2cc88fd89d5bc87882e1074452`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; 386

```console
$ docker pull memcached@sha256:9664ee18608625d1884fb8b6c798a43aeb4c19c06a592c5a1ce39281b2f55735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33738182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bfa99ac639d0bcc4ecbdd6b5d47e31be4b28eecefc7bf5190a51339cc6fc6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:15:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:15:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:18 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a59557b2ba711791a0154595624a57d515fc682014689d06e79909f57cfd41c`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd38bd5ce8ad79a7a5c9d62cce78287e0420026a97f26c4b1c3d3f7c814881b`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 147.6 KB (147565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63fff55aa8c627ac96d4e8db0a26705d4cfd2a9ba4799d4ff14c885996b09a7`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.2 MB (2231187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f5078fbdaac0307a1fdcbe1b6233a374e2afa67f564dc6e3ea9291bf76a9d`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1605b6dbe433595711f12aec315420d800125e9915339391bc442dff3e6574`  
		Last Modified: Tue, 24 Nov 2026 04:18:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:e28da22f1494a961c446fa74da37167e9085142e4f457cee204cbbc226c60d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f7aa8fd658ffcd44bb0e9788d0c2245cb4c44f476e61969feabd312c73bfa9`

```dockerfile
```

-	Layers:
	-	`sha256:77395611273904b34912cf21c797c66a457fef4ba1f24da92ebae9becd1dfacd`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.0 MB (2011517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eebe3ed2e561da66e81e0b741cedf594a8bbd4e5b23d000ef38a757a775ac066`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:a602390d6aa03f00e8de8289d9ec867ab894d81996f26458eba0ea75b6cbcc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36224406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6865b6573bafa76b53145da202779723af72cf6729aad843c116ab4a096d4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:28:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:28:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:32:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:32:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:32:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:32:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:32:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b988998d1b2874de4249dfedaddcd2c7162040443b9397ca859c2e9c5a944c7c`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c623467254ea58a849bdfbe68cd1e8ffc0ffbb5cd141f38b781982dbef0a9544`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 170.4 KB (170436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458076179cacbf351db857493f15543be474e6a515306f9e136c740f9403494b`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.4 MB (2399820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e22ddec44426a7040b184a662eefe70fa01bb710fd2aac11241bd723cbdb06`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc6f28b0dbc96b7925f467d55b572e512cd19c7fc74b02eaf4919cd102bdbe`  
		Last Modified: Tue, 24 Nov 2026 04:32:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cc399a264ddebdcb81cba43c36356608e501d7faa5da95807473a1f51dbbc04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef950347a24ea78081b2fa78b6ae0c3a8b563870b21da47c992c5eefc2ebc4d`

```dockerfile
```

-	Layers:
	-	`sha256:ffae7d1fd6c1477cccd326e8c8eb5b166a5638df50a7e9237c0366cb6447e2a9`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.0 MB (2017961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbe12c2390e8c6e01fdb916debdc7bb7d0e2ed7838f7eb690308bac4bce00492`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 22.2 KB (22227 bytes)  
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
$ docker pull memcached@sha256:c852c5c28658f370cf37ac10efba5c9b7047185e74f90246152e7b4c82a83aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32353544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a45ed8632134c8f6f86175931619773cdeeb9e2cea010d2128b881a6b027ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb5016c1afd5253a936969a911e3dbab7a821f675212d1c1c569f93023def21`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0937adaa4ab0c50c92e4b07e1a949e0655c13fb31e1e96245b35c5d2e375b`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 140.6 KB (140575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6953046d4ff4e9ecbefca45a625454ed8b4f877e8f8b7a85611b18af91822bee`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.3 MB (2301435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ee6cd434db1da5b791317d28d6d9ab1d62dd6fdbbc2ffd869712e14f213bdc`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c46ef951baf02c8413ab6a048c4a93b506cfc35dff327b0f0387a6c3a85675`  
		Last Modified: Tue, 24 Nov 2026 04:18:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:4b5d733add0e62e1d90af1ec9a58d85fc7162edbf56b1f05d82ebcbac6a752ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b71ce63543d6ac99be2a14331d132b3e99c1cad98d9b5ae05fb43b97a737c1`

```dockerfile
```

-	Layers:
	-	`sha256:90d804415da022e4e3d17368956b1ea941062af76442c10e385906539e31c940`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.0 MB (2015797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44773aca08302f9f9aa5a1d323c27c169116d9bf6134c6ebffbc0dd7d31fbb3e`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45`

```console
$ docker pull memcached@sha256:78038eeb5dbd14c3ddf2967794e9e220a6141e9e62bc7fbae0c5f42fa71b666f
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
$ docker pull memcached@sha256:caff88f7360e5ea9026db1efe05691b7cbb5da1177ba93a19bcb7b3dcc8de0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32266837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e214642c1162c79a822fac3c51165a51269645cfb83e03bc7d17278b75df9702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:16 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:04 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:04 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:04 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58783c24fbf0b8b74f585465ea2fb54c9df5018fea8ecc99ffb7d04c5d7e735`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ad127b8d56e06c651c41ace7f7b3eea84fa22d0a5d4d36f689fb49dc55192f`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 136.8 KB (136765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86916fa3fd9b6bba1faf228eea7b96de1282aa82f68f652948ed2e56c34babe`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.3 MB (2286379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d04e2f29aa8c560d13748628644587d05b596fa4a50a5b0569d55adea8a092`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f23ded9e380f3cdbeb63e9f4ac51369b570b0be97a6e4ae8904f13e805520`  
		Last Modified: Tue, 24 Nov 2026 04:20:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:2b40a0458e154c1fa674117a3dfead244621742e08d95b17bb24bd27670c9109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab025b53fa79642cc13e48423b04d7ee7ad70a954a1daaa7303861bd31ab20aa`

```dockerfile
```

-	Layers:
	-	`sha256:64624d4cade09d8060d3f40457e08a7bcb3059f69c8a7edc7d02beb64c3b4a7b`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.0 MB (2014360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d9bb32f9f7b7c426be90461f169a49385d412704f485b16200028990b8c82e2`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v5

```console
$ docker pull memcached@sha256:4d226c82cfe815654edc4d354f7dc1f38873e292ed630c6eae1341ef14eb343e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30371831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fd76db1983d5df871ab3582fd7fdf51d61f589fc4a8c6bdcf69b34bbc79f4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:27 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:19:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:19:23 GMT
USER memcache
# Tue, 24 Nov 2026 04:19:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:19:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de84ad85375fadbf262b34555c4c39d9bb50822a1ac1bb04cec119e121b6cc3`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39e45a430d0b5f27b5633114caf0bb83a80f2dfc7848782e7e43a008b68f47a`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 144.2 KB (144216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbf09efd4f198ee508ae029f1d5f09aeacd6c0962be1a8b5ea6fbd1d22a5731`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.2 MB (2217318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935c63fbe975a2d45a37e111bf38d5aa90af14c6301027cad7d3327371eaae67`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed24eaba3090623a0abf9b4ba38d0625cff30c303615b40ed4ce81e15f3f56a`  
		Last Modified: Tue, 24 Nov 2026 04:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:cb2db107084a5a4e4ab6898e02bd5ba4e33270e9f6050ec08e68597cc7423a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450652d608ed0ebbf91af165b42ee98bc744da0886718640cfb74fd81baecdb5`

```dockerfile
```

-	Layers:
	-	`sha256:4c56bf882e3abe1bfd47cf51227311975dfc290a9e598c9ab74613748a981db7`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.0 MB (2017363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0528874a81d19320859e6247b9008ee21f466901ae8210af9572200448fe535c`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a5fd6fd86c1707258994a0a07d8eeb10e88a26d95404ce755a4086514e8a46c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28571022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9efb8ac63455bd86de6fca490cc9c51af22b922d575b52893008dc55ff68f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:20:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:23:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:23:34 GMT
USER memcache
# Tue, 24 Nov 2026 04:23:34 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:23:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3d4939d505a4eb291e6eef8741d5e6d0aad1a5b2ec9082664a5c51eed5e4d2`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c217e4f7532ded47acf6f216b8147775b535ad23e673c7d0e7622c1dfbb6068`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 135.4 KB (135419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5b8326956023a7158d34b9ff51b101ba64b8cc03ac5de98a7f6f606619af44`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.2 MB (2171635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2312ddcadb30db35a11cb7e7ffeacf410b5d65352b6279af98a84a25a6a505e8`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2aaad43af101a34b97ccc6c28daed4f77ca21d6fab63aad46ed739fa2fe87cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:901c9b64b1ea4df1499fc53d6d38daab7de35f9c0174e27a98aeda8140ef9a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347239ceb9172f456af63c3bacab9c26e435477cd09a014437f23c7ad9c2f83`

```dockerfile
```

-	Layers:
	-	`sha256:7683511c775cc01fae4a4d2ecd26029ffdb38ac25f41a164850edae6a2557d55`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.0 MB (2015820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f224cf80aaa6029537bc9d2c738535717445297f11e10fd0a1670a12acf4cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7709768464d1cc6f0e479ec041f850bbe184fb2d370723279c6c4d8b402bc596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee94eec995221f69917c2d228d4fcdaeb18b6a7d2213c39d345a38753fe576b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:50 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7902eb59939e1f19c15d25fbb66645c804f883de9c87baf0d296a8495e65cd95`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9788e82f93faf159906b9ff1e3dee987cc6149f53f8d5e119c5a80f95a238b9d`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 153.6 KB (153566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6115c6225774ddb0011f2b48a26d62a10c0c3dd53a903cd886813782fc9e050`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.3 MB (2266865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51998e6e9845ade47961c0a76eb6410eb156fb5c58a7884f8b756efa4b8d2691`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7572149e7deb55a79454a5df6f78505cd8be9267da94e1fca06d425b2e663a49`  
		Last Modified: Tue, 24 Nov 2026 04:20:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:2e809e42f0c09a4bdeb85d9d5b398a155cab44871188f43d5111ae2b468ebb39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccfe8f00ef02677696fc40dd417939b36e2cb6b4a2a5b568e3722af4fb796fdb`

```dockerfile
```

-	Layers:
	-	`sha256:0b3ff4b198fb07f24a5fbe4e599ed6cb035d90d359a5f002db693c26ff57c364`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.0 MB (2014668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a17a96496c44ec4e764a849e0e7d886d06356d2cc88fd89d5bc87882e1074452`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; 386

```console
$ docker pull memcached@sha256:9664ee18608625d1884fb8b6c798a43aeb4c19c06a592c5a1ce39281b2f55735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33738182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bfa99ac639d0bcc4ecbdd6b5d47e31be4b28eecefc7bf5190a51339cc6fc6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:15:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:15:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:18 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a59557b2ba711791a0154595624a57d515fc682014689d06e79909f57cfd41c`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd38bd5ce8ad79a7a5c9d62cce78287e0420026a97f26c4b1c3d3f7c814881b`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 147.6 KB (147565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63fff55aa8c627ac96d4e8db0a26705d4cfd2a9ba4799d4ff14c885996b09a7`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.2 MB (2231187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f5078fbdaac0307a1fdcbe1b6233a374e2afa67f564dc6e3ea9291bf76a9d`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1605b6dbe433595711f12aec315420d800125e9915339391bc442dff3e6574`  
		Last Modified: Tue, 24 Nov 2026 04:18:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:e28da22f1494a961c446fa74da37167e9085142e4f457cee204cbbc226c60d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f7aa8fd658ffcd44bb0e9788d0c2245cb4c44f476e61969feabd312c73bfa9`

```dockerfile
```

-	Layers:
	-	`sha256:77395611273904b34912cf21c797c66a457fef4ba1f24da92ebae9becd1dfacd`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.0 MB (2011517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eebe3ed2e561da66e81e0b741cedf594a8bbd4e5b23d000ef38a757a775ac066`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; ppc64le

```console
$ docker pull memcached@sha256:a602390d6aa03f00e8de8289d9ec867ab894d81996f26458eba0ea75b6cbcc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36224406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6865b6573bafa76b53145da202779723af72cf6729aad843c116ab4a096d4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:28:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:28:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:32:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:32:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:32:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:32:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:32:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b988998d1b2874de4249dfedaddcd2c7162040443b9397ca859c2e9c5a944c7c`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c623467254ea58a849bdfbe68cd1e8ffc0ffbb5cd141f38b781982dbef0a9544`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 170.4 KB (170436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458076179cacbf351db857493f15543be474e6a515306f9e136c740f9403494b`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.4 MB (2399820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e22ddec44426a7040b184a662eefe70fa01bb710fd2aac11241bd723cbdb06`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc6f28b0dbc96b7925f467d55b572e512cd19c7fc74b02eaf4919cd102bdbe`  
		Last Modified: Tue, 24 Nov 2026 04:32:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:cc399a264ddebdcb81cba43c36356608e501d7faa5da95807473a1f51dbbc04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef950347a24ea78081b2fa78b6ae0c3a8b563870b21da47c992c5eefc2ebc4d`

```dockerfile
```

-	Layers:
	-	`sha256:ffae7d1fd6c1477cccd326e8c8eb5b166a5638df50a7e9237c0366cb6447e2a9`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.0 MB (2017961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbe12c2390e8c6e01fdb916debdc7bb7d0e2ed7838f7eb690308bac4bce00492`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 22.2 KB (22227 bytes)  
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
$ docker pull memcached@sha256:c852c5c28658f370cf37ac10efba5c9b7047185e74f90246152e7b4c82a83aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32353544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a45ed8632134c8f6f86175931619773cdeeb9e2cea010d2128b881a6b027ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb5016c1afd5253a936969a911e3dbab7a821f675212d1c1c569f93023def21`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0937adaa4ab0c50c92e4b07e1a949e0655c13fb31e1e96245b35c5d2e375b`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 140.6 KB (140575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6953046d4ff4e9ecbefca45a625454ed8b4f877e8f8b7a85611b18af91822bee`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.3 MB (2301435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ee6cd434db1da5b791317d28d6d9ab1d62dd6fdbbc2ffd869712e14f213bdc`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c46ef951baf02c8413ab6a048c4a93b506cfc35dff327b0f0387a6c3a85675`  
		Last Modified: Tue, 24 Nov 2026 04:18:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:4b5d733add0e62e1d90af1ec9a58d85fc7162edbf56b1f05d82ebcbac6a752ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b71ce63543d6ac99be2a14331d132b3e99c1cad98d9b5ae05fb43b97a737c1`

```dockerfile
```

-	Layers:
	-	`sha256:90d804415da022e4e3d17368956b1ea941062af76442c10e385906539e31c940`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.0 MB (2015797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44773aca08302f9f9aa5a1d323c27c169116d9bf6134c6ebffbc0dd7d31fbb3e`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45-alpine`

```console
$ docker pull memcached@sha256:084fb554292d1447bc2c68b80c2331b98834514f56c866bc21a61be3c2ee376d
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
$ docker pull memcached@sha256:98a42a5b67ba520ecdfd3e8749c75c693bad2d4a0cbfa58d4522248a42e20ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfea736aafa376f59c9cab3b474fe59494d1b7bee63fb0c58392c357c28fc94b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:07:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 10 Nov 2026 01:07:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 10 Nov 2026 01:21:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 01:21:19 GMT
USER memcache
# Tue, 10 Nov 2026 01:21:19 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 10 Nov 2026 01:21:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1512d56528e93056675884d539ae4a19727b652bf5e65d9d88f44f31e6aa0031`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e11799dec9eb6bcf2c6644925e8b6412b5dff47219d189f2a8a834891f17ba`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e20390140d5397ee05543000d6214e93094ea434d83cd8405c9f63281ef8e1`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 2.1 MB (2057824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963988115aaadd5cc7cc627936082449eebfd627d71c9b7a0e3e033beec3eb5c`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6752b6436ab530f1e5882cfb43502e638d6d7791740851abfb2f397dbb3a5f2c`  
		Last Modified: Tue, 10 Nov 2026 01:21:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:728da476752b13939d3ab21e33830e5b109ce6d52ddcc508c84bd9713aa89dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6e5048892dab4592de00a5df913071336d73336e8676ef5780422afadb611d`

```dockerfile
```

-	Layers:
	-	`sha256:8b7572676f693e82558d1338e6bda5018caa381bc3558321f6af9db8bd1cb6b5`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe1f500c02e865336cff2990fc7eb7f8d58fbdae6b66c52d8b435995af8cb5e`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
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
$ docker pull memcached@sha256:084fb554292d1447bc2c68b80c2331b98834514f56c866bc21a61be3c2ee376d
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
$ docker pull memcached@sha256:98a42a5b67ba520ecdfd3e8749c75c693bad2d4a0cbfa58d4522248a42e20ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfea736aafa376f59c9cab3b474fe59494d1b7bee63fb0c58392c357c28fc94b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:07:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 10 Nov 2026 01:07:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 10 Nov 2026 01:21:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 01:21:19 GMT
USER memcache
# Tue, 10 Nov 2026 01:21:19 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 10 Nov 2026 01:21:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1512d56528e93056675884d539ae4a19727b652bf5e65d9d88f44f31e6aa0031`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e11799dec9eb6bcf2c6644925e8b6412b5dff47219d189f2a8a834891f17ba`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e20390140d5397ee05543000d6214e93094ea434d83cd8405c9f63281ef8e1`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 2.1 MB (2057824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963988115aaadd5cc7cc627936082449eebfd627d71c9b7a0e3e033beec3eb5c`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6752b6436ab530f1e5882cfb43502e638d6d7791740851abfb2f397dbb3a5f2c`  
		Last Modified: Tue, 10 Nov 2026 01:21:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:728da476752b13939d3ab21e33830e5b109ce6d52ddcc508c84bd9713aa89dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6e5048892dab4592de00a5df913071336d73336e8676ef5780422afadb611d`

```dockerfile
```

-	Layers:
	-	`sha256:8b7572676f693e82558d1338e6bda5018caa381bc3558321f6af9db8bd1cb6b5`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe1f500c02e865336cff2990fc7eb7f8d58fbdae6b66c52d8b435995af8cb5e`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
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
$ docker pull memcached@sha256:78038eeb5dbd14c3ddf2967794e9e220a6141e9e62bc7fbae0c5f42fa71b666f
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
$ docker pull memcached@sha256:caff88f7360e5ea9026db1efe05691b7cbb5da1177ba93a19bcb7b3dcc8de0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32266837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e214642c1162c79a822fac3c51165a51269645cfb83e03bc7d17278b75df9702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:16 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:04 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:04 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:04 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58783c24fbf0b8b74f585465ea2fb54c9df5018fea8ecc99ffb7d04c5d7e735`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ad127b8d56e06c651c41ace7f7b3eea84fa22d0a5d4d36f689fb49dc55192f`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 136.8 KB (136765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86916fa3fd9b6bba1faf228eea7b96de1282aa82f68f652948ed2e56c34babe`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.3 MB (2286379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d04e2f29aa8c560d13748628644587d05b596fa4a50a5b0569d55adea8a092`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f23ded9e380f3cdbeb63e9f4ac51369b570b0be97a6e4ae8904f13e805520`  
		Last Modified: Tue, 24 Nov 2026 04:20:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2b40a0458e154c1fa674117a3dfead244621742e08d95b17bb24bd27670c9109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab025b53fa79642cc13e48423b04d7ee7ad70a954a1daaa7303861bd31ab20aa`

```dockerfile
```

-	Layers:
	-	`sha256:64624d4cade09d8060d3f40457e08a7bcb3059f69c8a7edc7d02beb64c3b4a7b`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.0 MB (2014360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d9bb32f9f7b7c426be90461f169a49385d412704f485b16200028990b8c82e2`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:4d226c82cfe815654edc4d354f7dc1f38873e292ed630c6eae1341ef14eb343e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30371831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fd76db1983d5df871ab3582fd7fdf51d61f589fc4a8c6bdcf69b34bbc79f4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:27 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:19:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:19:23 GMT
USER memcache
# Tue, 24 Nov 2026 04:19:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:19:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de84ad85375fadbf262b34555c4c39d9bb50822a1ac1bb04cec119e121b6cc3`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39e45a430d0b5f27b5633114caf0bb83a80f2dfc7848782e7e43a008b68f47a`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 144.2 KB (144216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbf09efd4f198ee508ae029f1d5f09aeacd6c0962be1a8b5ea6fbd1d22a5731`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.2 MB (2217318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935c63fbe975a2d45a37e111bf38d5aa90af14c6301027cad7d3327371eaae67`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed24eaba3090623a0abf9b4ba38d0625cff30c303615b40ed4ce81e15f3f56a`  
		Last Modified: Tue, 24 Nov 2026 04:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cb2db107084a5a4e4ab6898e02bd5ba4e33270e9f6050ec08e68597cc7423a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450652d608ed0ebbf91af165b42ee98bc744da0886718640cfb74fd81baecdb5`

```dockerfile
```

-	Layers:
	-	`sha256:4c56bf882e3abe1bfd47cf51227311975dfc290a9e598c9ab74613748a981db7`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.0 MB (2017363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0528874a81d19320859e6247b9008ee21f466901ae8210af9572200448fe535c`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a5fd6fd86c1707258994a0a07d8eeb10e88a26d95404ce755a4086514e8a46c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28571022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9efb8ac63455bd86de6fca490cc9c51af22b922d575b52893008dc55ff68f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:20:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:23:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:23:34 GMT
USER memcache
# Tue, 24 Nov 2026 04:23:34 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:23:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3d4939d505a4eb291e6eef8741d5e6d0aad1a5b2ec9082664a5c51eed5e4d2`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c217e4f7532ded47acf6f216b8147775b535ad23e673c7d0e7622c1dfbb6068`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 135.4 KB (135419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5b8326956023a7158d34b9ff51b101ba64b8cc03ac5de98a7f6f606619af44`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.2 MB (2171635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2312ddcadb30db35a11cb7e7ffeacf410b5d65352b6279af98a84a25a6a505e8`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2aaad43af101a34b97ccc6c28daed4f77ca21d6fab63aad46ed739fa2fe87cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:901c9b64b1ea4df1499fc53d6d38daab7de35f9c0174e27a98aeda8140ef9a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347239ceb9172f456af63c3bacab9c26e435477cd09a014437f23c7ad9c2f83`

```dockerfile
```

-	Layers:
	-	`sha256:7683511c775cc01fae4a4d2ecd26029ffdb38ac25f41a164850edae6a2557d55`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.0 MB (2015820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f224cf80aaa6029537bc9d2c738535717445297f11e10fd0a1670a12acf4cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7709768464d1cc6f0e479ec041f850bbe184fb2d370723279c6c4d8b402bc596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee94eec995221f69917c2d228d4fcdaeb18b6a7d2213c39d345a38753fe576b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:50 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7902eb59939e1f19c15d25fbb66645c804f883de9c87baf0d296a8495e65cd95`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9788e82f93faf159906b9ff1e3dee987cc6149f53f8d5e119c5a80f95a238b9d`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 153.6 KB (153566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6115c6225774ddb0011f2b48a26d62a10c0c3dd53a903cd886813782fc9e050`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.3 MB (2266865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51998e6e9845ade47961c0a76eb6410eb156fb5c58a7884f8b756efa4b8d2691`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7572149e7deb55a79454a5df6f78505cd8be9267da94e1fca06d425b2e663a49`  
		Last Modified: Tue, 24 Nov 2026 04:20:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2e809e42f0c09a4bdeb85d9d5b398a155cab44871188f43d5111ae2b468ebb39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccfe8f00ef02677696fc40dd417939b36e2cb6b4a2a5b568e3722af4fb796fdb`

```dockerfile
```

-	Layers:
	-	`sha256:0b3ff4b198fb07f24a5fbe4e599ed6cb035d90d359a5f002db693c26ff57c364`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.0 MB (2014668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a17a96496c44ec4e764a849e0e7d886d06356d2cc88fd89d5bc87882e1074452`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; 386

```console
$ docker pull memcached@sha256:9664ee18608625d1884fb8b6c798a43aeb4c19c06a592c5a1ce39281b2f55735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33738182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bfa99ac639d0bcc4ecbdd6b5d47e31be4b28eecefc7bf5190a51339cc6fc6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:15:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:15:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:18 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a59557b2ba711791a0154595624a57d515fc682014689d06e79909f57cfd41c`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd38bd5ce8ad79a7a5c9d62cce78287e0420026a97f26c4b1c3d3f7c814881b`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 147.6 KB (147565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63fff55aa8c627ac96d4e8db0a26705d4cfd2a9ba4799d4ff14c885996b09a7`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.2 MB (2231187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f5078fbdaac0307a1fdcbe1b6233a374e2afa67f564dc6e3ea9291bf76a9d`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1605b6dbe433595711f12aec315420d800125e9915339391bc442dff3e6574`  
		Last Modified: Tue, 24 Nov 2026 04:18:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:e28da22f1494a961c446fa74da37167e9085142e4f457cee204cbbc226c60d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f7aa8fd658ffcd44bb0e9788d0c2245cb4c44f476e61969feabd312c73bfa9`

```dockerfile
```

-	Layers:
	-	`sha256:77395611273904b34912cf21c797c66a457fef4ba1f24da92ebae9becd1dfacd`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.0 MB (2011517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eebe3ed2e561da66e81e0b741cedf594a8bbd4e5b23d000ef38a757a775ac066`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:a602390d6aa03f00e8de8289d9ec867ab894d81996f26458eba0ea75b6cbcc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36224406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6865b6573bafa76b53145da202779723af72cf6729aad843c116ab4a096d4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:28:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:28:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:32:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:32:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:32:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:32:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:32:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b988998d1b2874de4249dfedaddcd2c7162040443b9397ca859c2e9c5a944c7c`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c623467254ea58a849bdfbe68cd1e8ffc0ffbb5cd141f38b781982dbef0a9544`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 170.4 KB (170436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458076179cacbf351db857493f15543be474e6a515306f9e136c740f9403494b`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.4 MB (2399820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e22ddec44426a7040b184a662eefe70fa01bb710fd2aac11241bd723cbdb06`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc6f28b0dbc96b7925f467d55b572e512cd19c7fc74b02eaf4919cd102bdbe`  
		Last Modified: Tue, 24 Nov 2026 04:32:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cc399a264ddebdcb81cba43c36356608e501d7faa5da95807473a1f51dbbc04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef950347a24ea78081b2fa78b6ae0c3a8b563870b21da47c992c5eefc2ebc4d`

```dockerfile
```

-	Layers:
	-	`sha256:ffae7d1fd6c1477cccd326e8c8eb5b166a5638df50a7e9237c0366cb6447e2a9`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.0 MB (2017961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbe12c2390e8c6e01fdb916debdc7bb7d0e2ed7838f7eb690308bac4bce00492`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 22.2 KB (22227 bytes)  
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
$ docker pull memcached@sha256:c852c5c28658f370cf37ac10efba5c9b7047185e74f90246152e7b4c82a83aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32353544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a45ed8632134c8f6f86175931619773cdeeb9e2cea010d2128b881a6b027ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb5016c1afd5253a936969a911e3dbab7a821f675212d1c1c569f93023def21`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0937adaa4ab0c50c92e4b07e1a949e0655c13fb31e1e96245b35c5d2e375b`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 140.6 KB (140575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6953046d4ff4e9ecbefca45a625454ed8b4f877e8f8b7a85611b18af91822bee`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.3 MB (2301435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ee6cd434db1da5b791317d28d6d9ab1d62dd6fdbbc2ffd869712e14f213bdc`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c46ef951baf02c8413ab6a048c4a93b506cfc35dff327b0f0387a6c3a85675`  
		Last Modified: Tue, 24 Nov 2026 04:18:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:4b5d733add0e62e1d90af1ec9a58d85fc7162edbf56b1f05d82ebcbac6a752ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b71ce63543d6ac99be2a14331d132b3e99c1cad98d9b5ae05fb43b97a737c1`

```dockerfile
```

-	Layers:
	-	`sha256:90d804415da022e4e3d17368956b1ea941062af76442c10e385906539e31c940`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.0 MB (2015797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44773aca08302f9f9aa5a1d323c27c169116d9bf6134c6ebffbc0dd7d31fbb3e`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:alpine`

```console
$ docker pull memcached@sha256:084fb554292d1447bc2c68b80c2331b98834514f56c866bc21a61be3c2ee376d
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
$ docker pull memcached@sha256:98a42a5b67ba520ecdfd3e8749c75c693bad2d4a0cbfa58d4522248a42e20ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfea736aafa376f59c9cab3b474fe59494d1b7bee63fb0c58392c357c28fc94b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:07:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 10 Nov 2026 01:07:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 10 Nov 2026 01:21:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 01:21:19 GMT
USER memcache
# Tue, 10 Nov 2026 01:21:19 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 10 Nov 2026 01:21:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1512d56528e93056675884d539ae4a19727b652bf5e65d9d88f44f31e6aa0031`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e11799dec9eb6bcf2c6644925e8b6412b5dff47219d189f2a8a834891f17ba`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e20390140d5397ee05543000d6214e93094ea434d83cd8405c9f63281ef8e1`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 2.1 MB (2057824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963988115aaadd5cc7cc627936082449eebfd627d71c9b7a0e3e033beec3eb5c`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6752b6436ab530f1e5882cfb43502e638d6d7791740851abfb2f397dbb3a5f2c`  
		Last Modified: Tue, 10 Nov 2026 01:21:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:728da476752b13939d3ab21e33830e5b109ce6d52ddcc508c84bd9713aa89dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6e5048892dab4592de00a5df913071336d73336e8676ef5780422afadb611d`

```dockerfile
```

-	Layers:
	-	`sha256:8b7572676f693e82558d1338e6bda5018caa381bc3558321f6af9db8bd1cb6b5`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe1f500c02e865336cff2990fc7eb7f8d58fbdae6b66c52d8b435995af8cb5e`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
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
$ docker pull memcached@sha256:084fb554292d1447bc2c68b80c2331b98834514f56c866bc21a61be3c2ee376d
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
$ docker pull memcached@sha256:98a42a5b67ba520ecdfd3e8749c75c693bad2d4a0cbfa58d4522248a42e20ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5748682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfea736aafa376f59c9cab3b474fe59494d1b7bee63fb0c58392c357c28fc94b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:07:26 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Tue, 10 Nov 2026 01:07:29 GMT
RUN apk add --no-cache libsasl # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 10 Nov 2026 01:21:19 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 10 Nov 2026 01:21:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 10 Nov 2026 01:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 01:21:19 GMT
USER memcache
# Tue, 10 Nov 2026 01:21:19 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 10 Nov 2026 01:21:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1512d56528e93056675884d539ae4a19727b652bf5e65d9d88f44f31e6aa0031`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e11799dec9eb6bcf2c6644925e8b6412b5dff47219d189f2a8a834891f17ba`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 108.9 KB (108895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e20390140d5397ee05543000d6214e93094ea434d83cd8405c9f63281ef8e1`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 2.1 MB (2057824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963988115aaadd5cc7cc627936082449eebfd627d71c9b7a0e3e033beec3eb5c`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6752b6436ab530f1e5882cfb43502e638d6d7791740851abfb2f397dbb3a5f2c`  
		Last Modified: Tue, 10 Nov 2026 01:21:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:alpine3.24` - unknown; unknown

```console
$ docker pull memcached@sha256:728da476752b13939d3ab21e33830e5b109ce6d52ddcc508c84bd9713aa89dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6e5048892dab4592de00a5df913071336d73336e8676ef5780422afadb611d`

```dockerfile
```

-	Layers:
	-	`sha256:8b7572676f693e82558d1338e6bda5018caa381bc3558321f6af9db8bd1cb6b5`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe1f500c02e865336cff2990fc7eb7f8d58fbdae6b66c52d8b435995af8cb5e`  
		Last Modified: Tue, 10 Nov 2026 01:21:54 GMT  
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
$ docker pull memcached@sha256:78038eeb5dbd14c3ddf2967794e9e220a6141e9e62bc7fbae0c5f42fa71b666f
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
$ docker pull memcached@sha256:caff88f7360e5ea9026db1efe05691b7cbb5da1177ba93a19bcb7b3dcc8de0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32266837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e214642c1162c79a822fac3c51165a51269645cfb83e03bc7d17278b75df9702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:16 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:04 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:04 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:04 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58783c24fbf0b8b74f585465ea2fb54c9df5018fea8ecc99ffb7d04c5d7e735`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ad127b8d56e06c651c41ace7f7b3eea84fa22d0a5d4d36f689fb49dc55192f`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 136.8 KB (136765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86916fa3fd9b6bba1faf228eea7b96de1282aa82f68f652948ed2e56c34babe`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.3 MB (2286379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d04e2f29aa8c560d13748628644587d05b596fa4a50a5b0569d55adea8a092`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f23ded9e380f3cdbeb63e9f4ac51369b570b0be97a6e4ae8904f13e805520`  
		Last Modified: Tue, 24 Nov 2026 04:20:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:2b40a0458e154c1fa674117a3dfead244621742e08d95b17bb24bd27670c9109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab025b53fa79642cc13e48423b04d7ee7ad70a954a1daaa7303861bd31ab20aa`

```dockerfile
```

-	Layers:
	-	`sha256:64624d4cade09d8060d3f40457e08a7bcb3059f69c8a7edc7d02beb64c3b4a7b`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.0 MB (2014360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d9bb32f9f7b7c426be90461f169a49385d412704f485b16200028990b8c82e2`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:4d226c82cfe815654edc4d354f7dc1f38873e292ed630c6eae1341ef14eb343e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30371831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fd76db1983d5df871ab3582fd7fdf51d61f589fc4a8c6bdcf69b34bbc79f4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:27 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:19:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:19:23 GMT
USER memcache
# Tue, 24 Nov 2026 04:19:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:19:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de84ad85375fadbf262b34555c4c39d9bb50822a1ac1bb04cec119e121b6cc3`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39e45a430d0b5f27b5633114caf0bb83a80f2dfc7848782e7e43a008b68f47a`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 144.2 KB (144216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbf09efd4f198ee508ae029f1d5f09aeacd6c0962be1a8b5ea6fbd1d22a5731`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.2 MB (2217318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935c63fbe975a2d45a37e111bf38d5aa90af14c6301027cad7d3327371eaae67`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed24eaba3090623a0abf9b4ba38d0625cff30c303615b40ed4ce81e15f3f56a`  
		Last Modified: Tue, 24 Nov 2026 04:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:cb2db107084a5a4e4ab6898e02bd5ba4e33270e9f6050ec08e68597cc7423a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450652d608ed0ebbf91af165b42ee98bc744da0886718640cfb74fd81baecdb5`

```dockerfile
```

-	Layers:
	-	`sha256:4c56bf882e3abe1bfd47cf51227311975dfc290a9e598c9ab74613748a981db7`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.0 MB (2017363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0528874a81d19320859e6247b9008ee21f466901ae8210af9572200448fe535c`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a5fd6fd86c1707258994a0a07d8eeb10e88a26d95404ce755a4086514e8a46c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28571022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9efb8ac63455bd86de6fca490cc9c51af22b922d575b52893008dc55ff68f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:20:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:23:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:23:34 GMT
USER memcache
# Tue, 24 Nov 2026 04:23:34 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:23:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3d4939d505a4eb291e6eef8741d5e6d0aad1a5b2ec9082664a5c51eed5e4d2`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c217e4f7532ded47acf6f216b8147775b535ad23e673c7d0e7622c1dfbb6068`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 135.4 KB (135419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5b8326956023a7158d34b9ff51b101ba64b8cc03ac5de98a7f6f606619af44`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.2 MB (2171635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2312ddcadb30db35a11cb7e7ffeacf410b5d65352b6279af98a84a25a6a505e8`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2aaad43af101a34b97ccc6c28daed4f77ca21d6fab63aad46ed739fa2fe87cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:901c9b64b1ea4df1499fc53d6d38daab7de35f9c0174e27a98aeda8140ef9a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347239ceb9172f456af63c3bacab9c26e435477cd09a014437f23c7ad9c2f83`

```dockerfile
```

-	Layers:
	-	`sha256:7683511c775cc01fae4a4d2ecd26029ffdb38ac25f41a164850edae6a2557d55`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.0 MB (2015820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f224cf80aaa6029537bc9d2c738535717445297f11e10fd0a1670a12acf4cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7709768464d1cc6f0e479ec041f850bbe184fb2d370723279c6c4d8b402bc596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee94eec995221f69917c2d228d4fcdaeb18b6a7d2213c39d345a38753fe576b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:50 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7902eb59939e1f19c15d25fbb66645c804f883de9c87baf0d296a8495e65cd95`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9788e82f93faf159906b9ff1e3dee987cc6149f53f8d5e119c5a80f95a238b9d`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 153.6 KB (153566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6115c6225774ddb0011f2b48a26d62a10c0c3dd53a903cd886813782fc9e050`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.3 MB (2266865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51998e6e9845ade47961c0a76eb6410eb156fb5c58a7884f8b756efa4b8d2691`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7572149e7deb55a79454a5df6f78505cd8be9267da94e1fca06d425b2e663a49`  
		Last Modified: Tue, 24 Nov 2026 04:20:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:2e809e42f0c09a4bdeb85d9d5b398a155cab44871188f43d5111ae2b468ebb39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccfe8f00ef02677696fc40dd417939b36e2cb6b4a2a5b568e3722af4fb796fdb`

```dockerfile
```

-	Layers:
	-	`sha256:0b3ff4b198fb07f24a5fbe4e599ed6cb035d90d359a5f002db693c26ff57c364`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.0 MB (2014668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a17a96496c44ec4e764a849e0e7d886d06356d2cc88fd89d5bc87882e1074452`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:9664ee18608625d1884fb8b6c798a43aeb4c19c06a592c5a1ce39281b2f55735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33738182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bfa99ac639d0bcc4ecbdd6b5d47e31be4b28eecefc7bf5190a51339cc6fc6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:15:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:15:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:18 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a59557b2ba711791a0154595624a57d515fc682014689d06e79909f57cfd41c`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd38bd5ce8ad79a7a5c9d62cce78287e0420026a97f26c4b1c3d3f7c814881b`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 147.6 KB (147565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63fff55aa8c627ac96d4e8db0a26705d4cfd2a9ba4799d4ff14c885996b09a7`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.2 MB (2231187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f5078fbdaac0307a1fdcbe1b6233a374e2afa67f564dc6e3ea9291bf76a9d`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1605b6dbe433595711f12aec315420d800125e9915339391bc442dff3e6574`  
		Last Modified: Tue, 24 Nov 2026 04:18:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:e28da22f1494a961c446fa74da37167e9085142e4f457cee204cbbc226c60d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f7aa8fd658ffcd44bb0e9788d0c2245cb4c44f476e61969feabd312c73bfa9`

```dockerfile
```

-	Layers:
	-	`sha256:77395611273904b34912cf21c797c66a457fef4ba1f24da92ebae9becd1dfacd`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.0 MB (2011517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eebe3ed2e561da66e81e0b741cedf594a8bbd4e5b23d000ef38a757a775ac066`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:a602390d6aa03f00e8de8289d9ec867ab894d81996f26458eba0ea75b6cbcc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36224406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6865b6573bafa76b53145da202779723af72cf6729aad843c116ab4a096d4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:28:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:28:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:32:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:32:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:32:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:32:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:32:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b988998d1b2874de4249dfedaddcd2c7162040443b9397ca859c2e9c5a944c7c`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c623467254ea58a849bdfbe68cd1e8ffc0ffbb5cd141f38b781982dbef0a9544`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 170.4 KB (170436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458076179cacbf351db857493f15543be474e6a515306f9e136c740f9403494b`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.4 MB (2399820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e22ddec44426a7040b184a662eefe70fa01bb710fd2aac11241bd723cbdb06`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc6f28b0dbc96b7925f467d55b572e512cd19c7fc74b02eaf4919cd102bdbe`  
		Last Modified: Tue, 24 Nov 2026 04:32:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:cc399a264ddebdcb81cba43c36356608e501d7faa5da95807473a1f51dbbc04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef950347a24ea78081b2fa78b6ae0c3a8b563870b21da47c992c5eefc2ebc4d`

```dockerfile
```

-	Layers:
	-	`sha256:ffae7d1fd6c1477cccd326e8c8eb5b166a5638df50a7e9237c0366cb6447e2a9`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.0 MB (2017961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbe12c2390e8c6e01fdb916debdc7bb7d0e2ed7838f7eb690308bac4bce00492`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 22.2 KB (22227 bytes)  
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
$ docker pull memcached@sha256:c852c5c28658f370cf37ac10efba5c9b7047185e74f90246152e7b4c82a83aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32353544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a45ed8632134c8f6f86175931619773cdeeb9e2cea010d2128b881a6b027ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb5016c1afd5253a936969a911e3dbab7a821f675212d1c1c569f93023def21`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0937adaa4ab0c50c92e4b07e1a949e0655c13fb31e1e96245b35c5d2e375b`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 140.6 KB (140575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6953046d4ff4e9ecbefca45a625454ed8b4f877e8f8b7a85611b18af91822bee`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.3 MB (2301435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ee6cd434db1da5b791317d28d6d9ab1d62dd6fdbbc2ffd869712e14f213bdc`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c46ef951baf02c8413ab6a048c4a93b506cfc35dff327b0f0387a6c3a85675`  
		Last Modified: Tue, 24 Nov 2026 04:18:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:4b5d733add0e62e1d90af1ec9a58d85fc7162edbf56b1f05d82ebcbac6a752ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b71ce63543d6ac99be2a14331d132b3e99c1cad98d9b5ae05fb43b97a737c1`

```dockerfile
```

-	Layers:
	-	`sha256:90d804415da022e4e3d17368956b1ea941062af76442c10e385906539e31c940`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.0 MB (2015797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44773aca08302f9f9aa5a1d323c27c169116d9bf6134c6ebffbc0dd7d31fbb3e`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:trixie`

```console
$ docker pull memcached@sha256:78038eeb5dbd14c3ddf2967794e9e220a6141e9e62bc7fbae0c5f42fa71b666f
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
$ docker pull memcached@sha256:caff88f7360e5ea9026db1efe05691b7cbb5da1177ba93a19bcb7b3dcc8de0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32266837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e214642c1162c79a822fac3c51165a51269645cfb83e03bc7d17278b75df9702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:16 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:04 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:04 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:04 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:04 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58783c24fbf0b8b74f585465ea2fb54c9df5018fea8ecc99ffb7d04c5d7e735`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ad127b8d56e06c651c41ace7f7b3eea84fa22d0a5d4d36f689fb49dc55192f`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 136.8 KB (136765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86916fa3fd9b6bba1faf228eea7b96de1282aa82f68f652948ed2e56c34babe`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.3 MB (2286379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d04e2f29aa8c560d13748628644587d05b596fa4a50a5b0569d55adea8a092`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f23ded9e380f3cdbeb63e9f4ac51369b570b0be97a6e4ae8904f13e805520`  
		Last Modified: Tue, 24 Nov 2026 04:20:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2b40a0458e154c1fa674117a3dfead244621742e08d95b17bb24bd27670c9109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab025b53fa79642cc13e48423b04d7ee7ad70a954a1daaa7303861bd31ab20aa`

```dockerfile
```

-	Layers:
	-	`sha256:64624d4cade09d8060d3f40457e08a7bcb3059f69c8a7edc7d02beb64c3b4a7b`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 2.0 MB (2014360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d9bb32f9f7b7c426be90461f169a49385d412704f485b16200028990b8c82e2`  
		Last Modified: Tue, 24 Nov 2026 04:20:10 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:4d226c82cfe815654edc4d354f7dc1f38873e292ed630c6eae1341ef14eb343e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30371831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fd76db1983d5df871ab3582fd7fdf51d61f589fc4a8c6bdcf69b34bbc79f4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:27 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:19:23 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:19:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:19:23 GMT
USER memcache
# Tue, 24 Nov 2026 04:19:23 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:19:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de84ad85375fadbf262b34555c4c39d9bb50822a1ac1bb04cec119e121b6cc3`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39e45a430d0b5f27b5633114caf0bb83a80f2dfc7848782e7e43a008b68f47a`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 144.2 KB (144216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbf09efd4f198ee508ae029f1d5f09aeacd6c0962be1a8b5ea6fbd1d22a5731`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.2 MB (2217318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935c63fbe975a2d45a37e111bf38d5aa90af14c6301027cad7d3327371eaae67`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed24eaba3090623a0abf9b4ba38d0625cff30c303615b40ed4ce81e15f3f56a`  
		Last Modified: Tue, 24 Nov 2026 04:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cb2db107084a5a4e4ab6898e02bd5ba4e33270e9f6050ec08e68597cc7423a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450652d608ed0ebbf91af165b42ee98bc744da0886718640cfb74fd81baecdb5`

```dockerfile
```

-	Layers:
	-	`sha256:4c56bf882e3abe1bfd47cf51227311975dfc290a9e598c9ab74613748a981db7`  
		Last Modified: Tue, 24 Nov 2026 04:19:29 GMT  
		Size: 2.0 MB (2017363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0528874a81d19320859e6247b9008ee21f466901ae8210af9572200448fe535c`  
		Last Modified: Tue, 24 Nov 2026 04:19:28 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a5fd6fd86c1707258994a0a07d8eeb10e88a26d95404ce755a4086514e8a46c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28571022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9efb8ac63455bd86de6fca490cc9c51af22b922d575b52893008dc55ff68f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:23 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:20:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:23:34 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:23:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:23:34 GMT
USER memcache
# Tue, 24 Nov 2026 04:23:34 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:23:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3d4939d505a4eb291e6eef8741d5e6d0aad1a5b2ec9082664a5c51eed5e4d2`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c217e4f7532ded47acf6f216b8147775b535ad23e673c7d0e7622c1dfbb6068`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 135.4 KB (135419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5b8326956023a7158d34b9ff51b101ba64b8cc03ac5de98a7f6f606619af44`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.2 MB (2171635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2312ddcadb30db35a11cb7e7ffeacf410b5d65352b6279af98a84a25a6a505e8`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2aaad43af101a34b97ccc6c28daed4f77ca21d6fab63aad46ed739fa2fe87cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:901c9b64b1ea4df1499fc53d6d38daab7de35f9c0174e27a98aeda8140ef9a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347239ceb9172f456af63c3bacab9c26e435477cd09a014437f23c7ad9c2f83`

```dockerfile
```

-	Layers:
	-	`sha256:7683511c775cc01fae4a4d2ecd26029ffdb38ac25f41a164850edae6a2557d55`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 2.0 MB (2015820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f224cf80aaa6029537bc9d2c738535717445297f11e10fd0a1670a12acf4cd`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7709768464d1cc6f0e479ec041f850bbe184fb2d370723279c6c4d8b402bc596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee94eec995221f69917c2d228d4fcdaeb18b6a7d2213c39d345a38753fe576b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:48 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:17:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:20:50 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:20:50 GMT
USER memcache
# Tue, 24 Nov 2026 04:20:50 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:20:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7902eb59939e1f19c15d25fbb66645c804f883de9c87baf0d296a8495e65cd95`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9788e82f93faf159906b9ff1e3dee987cc6149f53f8d5e119c5a80f95a238b9d`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 153.6 KB (153566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6115c6225774ddb0011f2b48a26d62a10c0c3dd53a903cd886813782fc9e050`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.3 MB (2266865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51998e6e9845ade47961c0a76eb6410eb156fb5c58a7884f8b756efa4b8d2691`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7572149e7deb55a79454a5df6f78505cd8be9267da94e1fca06d425b2e663a49`  
		Last Modified: Tue, 24 Nov 2026 04:20:58 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2e809e42f0c09a4bdeb85d9d5b398a155cab44871188f43d5111ae2b468ebb39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccfe8f00ef02677696fc40dd417939b36e2cb6b4a2a5b568e3722af4fb796fdb`

```dockerfile
```

-	Layers:
	-	`sha256:0b3ff4b198fb07f24a5fbe4e599ed6cb035d90d359a5f002db693c26ff57c364`  
		Last Modified: Tue, 24 Nov 2026 04:20:57 GMT  
		Size: 2.0 MB (2014668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a17a96496c44ec4e764a849e0e7d886d06356d2cc88fd89d5bc87882e1074452`  
		Last Modified: Tue, 24 Nov 2026 04:20:56 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; 386

```console
$ docker pull memcached@sha256:9664ee18608625d1884fb8b6c798a43aeb4c19c06a592c5a1ce39281b2f55735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33738182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bfa99ac639d0bcc4ecbdd6b5d47e31be4b28eecefc7bf5190a51339cc6fc6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:15:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:15:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:18 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:18 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:18 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a59557b2ba711791a0154595624a57d515fc682014689d06e79909f57cfd41c`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd38bd5ce8ad79a7a5c9d62cce78287e0420026a97f26c4b1c3d3f7c814881b`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 147.6 KB (147565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63fff55aa8c627ac96d4e8db0a26705d4cfd2a9ba4799d4ff14c885996b09a7`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.2 MB (2231187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854f5078fbdaac0307a1fdcbe1b6233a374e2afa67f564dc6e3ea9291bf76a9d`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1605b6dbe433595711f12aec315420d800125e9915339391bc442dff3e6574`  
		Last Modified: Tue, 24 Nov 2026 04:18:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:e28da22f1494a961c446fa74da37167e9085142e4f457cee204cbbc226c60d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f7aa8fd658ffcd44bb0e9788d0c2245cb4c44f476e61969feabd312c73bfa9`

```dockerfile
```

-	Layers:
	-	`sha256:77395611273904b34912cf21c797c66a457fef4ba1f24da92ebae9becd1dfacd`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 2.0 MB (2011517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eebe3ed2e561da66e81e0b741cedf594a8bbd4e5b23d000ef38a757a775ac066`  
		Last Modified: Tue, 24 Nov 2026 04:18:24 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:a602390d6aa03f00e8de8289d9ec867ab894d81996f26458eba0ea75b6cbcc1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36224406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6865b6573bafa76b53145da202779723af72cf6729aad843c116ab4a096d4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:28:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:28:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:32:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:32:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:32:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:32:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:32:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:32:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b988998d1b2874de4249dfedaddcd2c7162040443b9397ca859c2e9c5a944c7c`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c623467254ea58a849bdfbe68cd1e8ffc0ffbb5cd141f38b781982dbef0a9544`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 170.4 KB (170436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458076179cacbf351db857493f15543be474e6a515306f9e136c740f9403494b`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.4 MB (2399820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e22ddec44426a7040b184a662eefe70fa01bb710fd2aac11241bd723cbdb06`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc6f28b0dbc96b7925f467d55b572e512cd19c7fc74b02eaf4919cd102bdbe`  
		Last Modified: Tue, 24 Nov 2026 04:32:15 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cc399a264ddebdcb81cba43c36356608e501d7faa5da95807473a1f51dbbc04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef950347a24ea78081b2fa78b6ae0c3a8b563870b21da47c992c5eefc2ebc4d`

```dockerfile
```

-	Layers:
	-	`sha256:ffae7d1fd6c1477cccd326e8c8eb5b166a5638df50a7e9237c0366cb6447e2a9`  
		Last Modified: Tue, 24 Nov 2026 04:32:14 GMT  
		Size: 2.0 MB (2017961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbe12c2390e8c6e01fdb916debdc7bb7d0e2ed7838f7eb690308bac4bce00492`  
		Last Modified: Tue, 24 Nov 2026 04:32:13 GMT  
		Size: 22.2 KB (22227 bytes)  
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
$ docker pull memcached@sha256:c852c5c28658f370cf37ac10efba5c9b7047185e74f90246152e7b4c82a83aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32353544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a45ed8632134c8f6f86175931619773cdeeb9e2cea010d2128b881a6b027ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:14:50 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 24 Nov 2026 04:14:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 24 Nov 2026 04:18:02 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 24 Nov 2026 04:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:18:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:18:02 GMT
USER memcache
# Tue, 24 Nov 2026 04:18:02 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 24 Nov 2026 04:18:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb5016c1afd5253a936969a911e3dbab7a821f675212d1c1c569f93023def21`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da0937adaa4ab0c50c92e4b07e1a949e0655c13fb31e1e96245b35c5d2e375b`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 140.6 KB (140575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6953046d4ff4e9ecbefca45a625454ed8b4f877e8f8b7a85611b18af91822bee`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.3 MB (2301435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ee6cd434db1da5b791317d28d6d9ab1d62dd6fdbbc2ffd869712e14f213bdc`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c46ef951baf02c8413ab6a048c4a93b506cfc35dff327b0f0387a6c3a85675`  
		Last Modified: Tue, 24 Nov 2026 04:18:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:4b5d733add0e62e1d90af1ec9a58d85fc7162edbf56b1f05d82ebcbac6a752ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b71ce63543d6ac99be2a14331d132b3e99c1cad98d9b5ae05fb43b97a737c1`

```dockerfile
```

-	Layers:
	-	`sha256:90d804415da022e4e3d17368956b1ea941062af76442c10e385906539e31c940`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 2.0 MB (2015797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44773aca08302f9f9aa5a1d323c27c169116d9bf6134c6ebffbc0dd7d31fbb3e`  
		Last Modified: Tue, 24 Nov 2026 04:18:13 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json
