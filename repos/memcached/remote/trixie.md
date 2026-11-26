## `memcached:trixie`

```console
$ docker pull memcached@sha256:6b0fd5e4e0d5cce66bb9262363324e35fa3873866aa6f6f8f31acb4a10934923
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
$ docker pull memcached@sha256:a72cdc16790776d51120b22dbffdc3886255ed56c0b90bc13eb9184c14310780
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30681702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ad65519ea29ed26ec822a0311c84b1de592af7c2a952c2e0685cd8ae1c1d15c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1795392000'
# Wed, 25 Nov 2026 01:45:34 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 25 Nov 2026 01:46:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 25 Nov 2026 02:19:07 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 25 Nov 2026 02:19:07 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 25 Nov 2026 02:19:07 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 25 Nov 2026 02:19:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 25 Nov 2026 02:19:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 02:19:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 25 Nov 2026 02:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Nov 2026 02:19:08 GMT
USER memcache
# Wed, 25 Nov 2026 02:19:08 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 25 Nov 2026 02:19:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b07b5cc48f273ac97ec9a206cde2c52bcddea72c7c92bb45fdccce25449d7ee7`  
		Last Modified: Tue, 24 Nov 2026 03:57:16 GMT  
		Size: 28.3 MB (28333648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d82221534e39b0cd3ddea28c8982254cd5db77540dea35805149cc3e370ff31`  
		Last Modified: Wed, 25 Nov 2026 02:19:55 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39173649c751debe7a16c7152d007020c222c533cd57fe3a821a4c344c490320`  
		Last Modified: Wed, 25 Nov 2026 02:19:55 GMT  
		Size: 133.2 KB (133157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed70f7b7b5c56f63b2c0210cbcb0d58e6a0cc3633683ccf7b9fcb194958b6126`  
		Last Modified: Wed, 25 Nov 2026 02:19:56 GMT  
		Size: 2.2 MB (2213382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:451930ad5f9c210de25e35f4af1aed95fd4b12ba196abec22accaa73b9096fc1`  
		Last Modified: Wed, 25 Nov 2026 02:19:55 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd6419dd06a1b6ffbb7b466732d9a9854342e23273dc8bf9661e027e77ce8c8`  
		Last Modified: Wed, 25 Nov 2026 02:19:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:28e061d6e836dccc1f0ba502b27bb128c51bb1ac12810aa7489d0001fc635e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2193466244e58106e3478b34c13f04f7490f7b4d255a6edb1911e59ea20a83`

```dockerfile
```

-	Layers:
	-	`sha256:362eec74f446f16459c6c323c9239ce89ea4c0d1b1b28504ac141fa8a5552f1a`  
		Last Modified: Wed, 25 Nov 2026 02:19:55 GMT  
		Size: 2.0 MB (2008324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:603fd0f75820dea24c9ae4438a7f3b77311cad050c6cbf98ea814d5fbf858f10`  
		Last Modified: Wed, 25 Nov 2026 02:19:55 GMT  
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
