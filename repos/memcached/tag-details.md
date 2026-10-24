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
$ docker pull memcached@sha256:ab65f39bfa5b1e31bff3bdccfd48af85fee6fdcbf0eb877175fcb170a4e1bd2f
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
$ docker pull memcached@sha256:944116c797245b0fc4c7f40b21fbb09279bdaa61bdbc90096ab54e553f5b4c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32268188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b313232b4d0d2ad4bb4ae366dddcb943252a987cdee73b8a5ac60de2b69485b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:19:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:19:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:22:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:22:30 GMT
USER memcache
# Wed, 21 Oct 2026 00:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d42ffafdd2fc34bda4f58d4502b0891798a9f3be0d611a857431b2184e5140`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56da813fbb88940e53c2d5bb49f0b718eaded7f7092aa3409ef15e4a61affb08`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 136.7 KB (136730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55c88bdf736644f60c865f26eff26d70012111e84c7527ccd1acd01aa499fe0`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.3 MB (2286365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88004839e2874e521e8ee05182241adc9a9ec17e0db21d59e6dbe95c8b535903`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76a164aa3b7877e3e8cdc58ff3dc0644504d8ac0dfecf6ed94249ff5693da03`  
		Last Modified: Wed, 21 Oct 2026 00:22:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:72db79008d92934b0de5f4d7f57a3221fd4c92516800e3ee4c81b481443d2b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a9a647743c10e71a1ace444b541e7d501d5e96e94f486826450fe9509ea566`

```dockerfile
```

-	Layers:
	-	`sha256:ede5848b3bf46da98d95030ad35e7885a0a9a8ef5b108518bb68dad0221b5b36`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3c82d6d3a9508e7388a3ca9fa8ab396af4c068257cc2d1f448fbf031e630e1`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:48a34bce2b46df10fbac4812bf242dffad75bbb63c375dbf24a28d7cc2bfc6df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0e4cee39b02ca3eeaba6dc02a7a58a705b8dd71ca303dee0784c82cb69371c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:01 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:22 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:22 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca85f4dc5b131158188d5f165d11da3d989c67b002001c1a637d531906b0428`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734e58ebc054a9b66e71fe61486ad7d9fb341c3d69a3d24ced9d6d5e2a4a9a2a`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 144.2 KB (144189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c0ebfb1e5267105a33ca9ad4eda8c8634d26c7e1a1d0c53985a0b1672ff792`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.2 MB (2217264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3b1931981085f8d64226bfbf2b4d11f37405251dcb2b1721e7639a4c15e8ff`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36e86131fea102ea4b26b1b8f363c4aa51206fce51fb77a3ccc3dbf1dbb1d18`  
		Last Modified: Wed, 21 Oct 2026 00:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:034516d433c6eaa6c5a68e6394540c52b17cddc7e13ece4e5f16ff48425f30c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7543e01f89cb50686d2767e606aa4fdbc106128aa8f4d35162689ace138a552c`

```dockerfile
```

-	Layers:
	-	`sha256:44cb5b0d78723bdb5c55c9b14585ad5bb26364f34b30aaa212f8cddd35fddbdf`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75a94bdad3c22654947ebce1e8ace7ee9764c4f67e1a8913e9e7ab17127b7b02`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b5eb4f05ebd23c822cfa8a6d2a30d11f57de00e5ce84ed9b36f55e928b979aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8768a44c745454aab3aa6ae8cd8adc69afd67d05f999d7f4f337fd402965e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:21:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:24:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:24:46 GMT
USER memcache
# Wed, 21 Oct 2026 00:24:46 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:24:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef860c09830f242b510bd21830be41048e726b8247f9e3e6ca960df5aa70b091`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369f29451a3da0636f38f97b7814d38058e7a89f9f5e02e55acbd06d10cb65be`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 135.4 KB (135406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865b110dbcf7a46dcceadd0d2dcb0affb52c9ffa477509e8a40982dc8b2b9df0`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 2.2 MB (2171639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1591c9168aff2ae015310546d217e90a11081b00a8aa067fd84e20f36918b1cf`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13125f0da15b1171fad06722663fa99b476bb8c2a45c6f6b903a910794c2d968`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:869caad97945d570a3aaf3212f830013244598b0cd80712837f205ec18dbfea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4383497527ebfa53c7f7b8f7f34bc1381f8474d52741b37fbaab3fa25cc8f7`

```dockerfile
```

-	Layers:
	-	`sha256:e4b44f137263c271873c34130d62d7ff490e95720c6ce5f9218e755891c2153d`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ec7b6ef915d77389be3e949bea6ca62683bf2a2114bca576a4c2a66aff65889`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d931ae954035796f5280028f7a69466acf84e64a7f49e8212c9d389ca18f3a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ab1308386fbf8e0a3b3af71b291010ddc6182e0fc888e92a53cd2afad9edaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:45 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0b0df3b9fee704c536551180639798b24e4db788452d8aad10aa59fdafe4a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259e38514f5df58844e199b77de4b9a83681410e009135a56a5b69fd406fcef5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 153.5 KB (153537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6140ed673ccd18638ac7fc5d51995e03b5068f8f07c69e48f831a2fa953f7dee`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.3 MB (2266870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf3980258ddc215dbab1ae72102219aab8ace400c770facc1c386379d8a1a22`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84d44fc30b4a3ff1a73e1d4989b8cf935850bd82a7d4fac3a6bc8e03520ff5e`  
		Last Modified: Wed, 21 Oct 2026 00:21:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:1ca77cbcc279c21fa6346a99dc8a34c9d46f194d6549d76824dd59784b3a096f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78529a2a214f27b350e2d1f4bd5f591b39a264c69170a90f8231810acf86cff`

```dockerfile
```

-	Layers:
	-	`sha256:05a3885b59a70ee721a25f7e0cb95ed0ad7ce5a4e55caa9e850bd1d4f48f90e5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b963475c30bde686cee21d53730e8e936d6b990510fd38c35e012f0385485ad2`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:3ef96294d03ef986d2c884df2bda367a4064a14b9adfdabb7468fd2add7fe17b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b95bc1d6349b39e6512611c95cbfd5e7408831cf24932ebbf5e649ea378b8f41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:40 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d221d2a1c8ef54b8aabc532f31d7516e6b07f25b2cd51d19c66850f47a6a62e7`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a5193e96b710aa8ce5332c65dcb80a82ebb1640d9aeaa7d1b91abb75e7393d`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 147.5 KB (147541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea7f4457bbf4d5fd7460823f416b9a25d15c44e6da4cfd2e05c7023da95e8fd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.2 MB (2231206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d1606806deed52e00fa1497c76d9c58cb2bda48237ac2bf5ef910d7bee1970`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4231a4337b389168a66ee9bfb7bbe2cabcf7c40e31829bf319ea10bde131bb0f`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:9a7da5b653199ec55efd87f4364209865961be9b7f6c0d3ecf1b92a5e748b106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9616497bbca6f74053251e779aa49613081d82b6f5a49029bad91be207011925`

```dockerfile
```

-	Layers:
	-	`sha256:7a885ad870936dbaa4c9e8f514280fd029fbbb64dd5ed62f6dbfa406106aa56e`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c43b1de7f03ebe34c0fbae2dbf1e7f19448e3f5944e8f788cbdabad55e9e10bd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 22.1 KB (22094 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:92f0edc3aed16f2b75e46eb1684674d03ed5dd0a22d6037acb0b1e9004f89ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36223726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68344b7edb0321fb25a79eec6ae9f3bbb3d19b00f7424acf5268754e6691ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:37:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:37:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:41:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:41:39 GMT
USER memcache
# Wed, 21 Oct 2026 00:41:39 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:41:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed0a06bf95c2ad52951b4b05ac45e7352bdd49a297fde2783f54ff7b13f964a`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0594bb91d5f4c9183f9c12d34b2f9ee1728341dafb447152e1b7b8e1f28d3bae`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288cddf22e0d395f6251b131c67d94505b0af604ea847d4b3f58eeb8eb2361cb`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.4 MB (2399889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac1f2f55bd6905775e83e35e18b857debac2d792625b52ab8587870859f3182`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c7a848cd976bc4612e7a4d5beed94e148e4ef510292011035a80a316195f70`  
		Last Modified: Wed, 21 Oct 2026 00:41:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:ce71593e6788dc45452f65572fa35f61942d7c3352b03a789fbc2a78c836e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acba1f4e8dd1e0b94def660a8832a1ca0258751b8d917c19826aeadb0e0c3fbc`

```dockerfile
```

-	Layers:
	-	`sha256:f36698561e9037022c7e9cbd6ed6a9269b2d3b7eb72a08d4c9074a023a0104db`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82465130551e7f1d2505c78eb707852d9b2370403afe8921c0e12937230302`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; riscv64

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

### `memcached:1` - unknown; unknown

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

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:cc9d277ea9149dbc992ece77b2b9a05b22e7c3d97bfb54751f6cdf2043ec3e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a84eca603adf0b8a2864e4f2684ab55815af464e2cabf36daff38311506720`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:14 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:28 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6e7db5edad5d5d77bd578d428573e7e2b113cc96c063ae2bfaef22233258c9`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8e8b1ce582e8a042921cb84abad1bb6b019085f50d6d78443639bb7c16a2f`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 140.5 KB (140539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179204f888c3b252201b6be3789344ea11a9c52ffa7562d02545c30323c4d9ed`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.3 MB (2301432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef064678b41c0fef00e1197d43d29e35f56e2de4cc60c02be4f6d84201b1d548`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcce6247e54a545b4cd116264e5e70c3a5568f72f3d3c11cae0e6004ed0d9fa`  
		Last Modified: Wed, 21 Oct 2026 00:21:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:bea8dab22ada52b04f0fc5c686d7de19107ac75bd355294bd55f53d923796a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296e416020b7119fe4fa8a7197fbcded3aa978ff117c1f197a35b1d29d3d4193`

```dockerfile
```

-	Layers:
	-	`sha256:db1cb1162d178395480407cce2d85c3d808dc8c646db60aa345d4be8cae39efb`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69afc2ff3d9830e4fcc26d942a923485a5bc1b5279bf7add2e93d4668854b51b`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
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
$ docker pull memcached@sha256:ab65f39bfa5b1e31bff3bdccfd48af85fee6fdcbf0eb877175fcb170a4e1bd2f
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
$ docker pull memcached@sha256:944116c797245b0fc4c7f40b21fbb09279bdaa61bdbc90096ab54e553f5b4c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32268188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b313232b4d0d2ad4bb4ae366dddcb943252a987cdee73b8a5ac60de2b69485b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:19:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:19:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:22:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:22:30 GMT
USER memcache
# Wed, 21 Oct 2026 00:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d42ffafdd2fc34bda4f58d4502b0891798a9f3be0d611a857431b2184e5140`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56da813fbb88940e53c2d5bb49f0b718eaded7f7092aa3409ef15e4a61affb08`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 136.7 KB (136730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55c88bdf736644f60c865f26eff26d70012111e84c7527ccd1acd01aa499fe0`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.3 MB (2286365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88004839e2874e521e8ee05182241adc9a9ec17e0db21d59e6dbe95c8b535903`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76a164aa3b7877e3e8cdc58ff3dc0644504d8ac0dfecf6ed94249ff5693da03`  
		Last Modified: Wed, 21 Oct 2026 00:22:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:72db79008d92934b0de5f4d7f57a3221fd4c92516800e3ee4c81b481443d2b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a9a647743c10e71a1ace444b541e7d501d5e96e94f486826450fe9509ea566`

```dockerfile
```

-	Layers:
	-	`sha256:ede5848b3bf46da98d95030ad35e7885a0a9a8ef5b108518bb68dad0221b5b36`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3c82d6d3a9508e7388a3ca9fa8ab396af4c068257cc2d1f448fbf031e630e1`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:48a34bce2b46df10fbac4812bf242dffad75bbb63c375dbf24a28d7cc2bfc6df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0e4cee39b02ca3eeaba6dc02a7a58a705b8dd71ca303dee0784c82cb69371c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:01 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:22 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:22 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca85f4dc5b131158188d5f165d11da3d989c67b002001c1a637d531906b0428`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734e58ebc054a9b66e71fe61486ad7d9fb341c3d69a3d24ced9d6d5e2a4a9a2a`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 144.2 KB (144189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c0ebfb1e5267105a33ca9ad4eda8c8634d26c7e1a1d0c53985a0b1672ff792`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.2 MB (2217264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3b1931981085f8d64226bfbf2b4d11f37405251dcb2b1721e7639a4c15e8ff`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36e86131fea102ea4b26b1b8f363c4aa51206fce51fb77a3ccc3dbf1dbb1d18`  
		Last Modified: Wed, 21 Oct 2026 00:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:034516d433c6eaa6c5a68e6394540c52b17cddc7e13ece4e5f16ff48425f30c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7543e01f89cb50686d2767e606aa4fdbc106128aa8f4d35162689ace138a552c`

```dockerfile
```

-	Layers:
	-	`sha256:44cb5b0d78723bdb5c55c9b14585ad5bb26364f34b30aaa212f8cddd35fddbdf`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75a94bdad3c22654947ebce1e8ace7ee9764c4f67e1a8913e9e7ab17127b7b02`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b5eb4f05ebd23c822cfa8a6d2a30d11f57de00e5ce84ed9b36f55e928b979aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8768a44c745454aab3aa6ae8cd8adc69afd67d05f999d7f4f337fd402965e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:21:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:24:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:24:46 GMT
USER memcache
# Wed, 21 Oct 2026 00:24:46 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:24:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef860c09830f242b510bd21830be41048e726b8247f9e3e6ca960df5aa70b091`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369f29451a3da0636f38f97b7814d38058e7a89f9f5e02e55acbd06d10cb65be`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 135.4 KB (135406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865b110dbcf7a46dcceadd0d2dcb0affb52c9ffa477509e8a40982dc8b2b9df0`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 2.2 MB (2171639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1591c9168aff2ae015310546d217e90a11081b00a8aa067fd84e20f36918b1cf`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13125f0da15b1171fad06722663fa99b476bb8c2a45c6f6b903a910794c2d968`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:869caad97945d570a3aaf3212f830013244598b0cd80712837f205ec18dbfea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4383497527ebfa53c7f7b8f7f34bc1381f8474d52741b37fbaab3fa25cc8f7`

```dockerfile
```

-	Layers:
	-	`sha256:e4b44f137263c271873c34130d62d7ff490e95720c6ce5f9218e755891c2153d`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ec7b6ef915d77389be3e949bea6ca62683bf2a2114bca576a4c2a66aff65889`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d931ae954035796f5280028f7a69466acf84e64a7f49e8212c9d389ca18f3a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ab1308386fbf8e0a3b3af71b291010ddc6182e0fc888e92a53cd2afad9edaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:45 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0b0df3b9fee704c536551180639798b24e4db788452d8aad10aa59fdafe4a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259e38514f5df58844e199b77de4b9a83681410e009135a56a5b69fd406fcef5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 153.5 KB (153537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6140ed673ccd18638ac7fc5d51995e03b5068f8f07c69e48f831a2fa953f7dee`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.3 MB (2266870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf3980258ddc215dbab1ae72102219aab8ace400c770facc1c386379d8a1a22`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84d44fc30b4a3ff1a73e1d4989b8cf935850bd82a7d4fac3a6bc8e03520ff5e`  
		Last Modified: Wed, 21 Oct 2026 00:21:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:1ca77cbcc279c21fa6346a99dc8a34c9d46f194d6549d76824dd59784b3a096f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78529a2a214f27b350e2d1f4bd5f591b39a264c69170a90f8231810acf86cff`

```dockerfile
```

-	Layers:
	-	`sha256:05a3885b59a70ee721a25f7e0cb95ed0ad7ce5a4e55caa9e850bd1d4f48f90e5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b963475c30bde686cee21d53730e8e936d6b990510fd38c35e012f0385485ad2`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; 386

```console
$ docker pull memcached@sha256:3ef96294d03ef986d2c884df2bda367a4064a14b9adfdabb7468fd2add7fe17b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b95bc1d6349b39e6512611c95cbfd5e7408831cf24932ebbf5e649ea378b8f41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:40 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d221d2a1c8ef54b8aabc532f31d7516e6b07f25b2cd51d19c66850f47a6a62e7`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a5193e96b710aa8ce5332c65dcb80a82ebb1640d9aeaa7d1b91abb75e7393d`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 147.5 KB (147541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea7f4457bbf4d5fd7460823f416b9a25d15c44e6da4cfd2e05c7023da95e8fd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.2 MB (2231206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d1606806deed52e00fa1497c76d9c58cb2bda48237ac2bf5ef910d7bee1970`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4231a4337b389168a66ee9bfb7bbe2cabcf7c40e31829bf319ea10bde131bb0f`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:9a7da5b653199ec55efd87f4364209865961be9b7f6c0d3ecf1b92a5e748b106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9616497bbca6f74053251e779aa49613081d82b6f5a49029bad91be207011925`

```dockerfile
```

-	Layers:
	-	`sha256:7a885ad870936dbaa4c9e8f514280fd029fbbb64dd5ed62f6dbfa406106aa56e`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c43b1de7f03ebe34c0fbae2dbf1e7f19448e3f5944e8f788cbdabad55e9e10bd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 22.1 KB (22094 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:92f0edc3aed16f2b75e46eb1684674d03ed5dd0a22d6037acb0b1e9004f89ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36223726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68344b7edb0321fb25a79eec6ae9f3bbb3d19b00f7424acf5268754e6691ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:37:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:37:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:41:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:41:39 GMT
USER memcache
# Wed, 21 Oct 2026 00:41:39 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:41:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed0a06bf95c2ad52951b4b05ac45e7352bdd49a297fde2783f54ff7b13f964a`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0594bb91d5f4c9183f9c12d34b2f9ee1728341dafb447152e1b7b8e1f28d3bae`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288cddf22e0d395f6251b131c67d94505b0af604ea847d4b3f58eeb8eb2361cb`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.4 MB (2399889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac1f2f55bd6905775e83e35e18b857debac2d792625b52ab8587870859f3182`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c7a848cd976bc4612e7a4d5beed94e148e4ef510292011035a80a316195f70`  
		Last Modified: Wed, 21 Oct 2026 00:41:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ce71593e6788dc45452f65572fa35f61942d7c3352b03a789fbc2a78c836e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acba1f4e8dd1e0b94def660a8832a1ca0258751b8d917c19826aeadb0e0c3fbc`

```dockerfile
```

-	Layers:
	-	`sha256:f36698561e9037022c7e9cbd6ed6a9269b2d3b7eb72a08d4c9074a023a0104db`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82465130551e7f1d2505c78eb707852d9b2370403afe8921c0e12937230302`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; riscv64

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

### `memcached:1-trixie` - unknown; unknown

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

### `memcached:1-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:cc9d277ea9149dbc992ece77b2b9a05b22e7c3d97bfb54751f6cdf2043ec3e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a84eca603adf0b8a2864e4f2684ab55815af464e2cabf36daff38311506720`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:14 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:28 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6e7db5edad5d5d77bd578d428573e7e2b113cc96c063ae2bfaef22233258c9`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8e8b1ce582e8a042921cb84abad1bb6b019085f50d6d78443639bb7c16a2f`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 140.5 KB (140539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179204f888c3b252201b6be3789344ea11a9c52ffa7562d02545c30323c4d9ed`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.3 MB (2301432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef064678b41c0fef00e1197d43d29e35f56e2de4cc60c02be4f6d84201b1d548`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcce6247e54a545b4cd116264e5e70c3a5568f72f3d3c11cae0e6004ed0d9fa`  
		Last Modified: Wed, 21 Oct 2026 00:21:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:bea8dab22ada52b04f0fc5c686d7de19107ac75bd355294bd55f53d923796a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296e416020b7119fe4fa8a7197fbcded3aa978ff117c1f197a35b1d29d3d4193`

```dockerfile
```

-	Layers:
	-	`sha256:db1cb1162d178395480407cce2d85c3d808dc8c646db60aa345d4be8cae39efb`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69afc2ff3d9830e4fcc26d942a923485a5bc1b5279bf7add2e93d4668854b51b`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6`

```console
$ docker pull memcached@sha256:ab65f39bfa5b1e31bff3bdccfd48af85fee6fdcbf0eb877175fcb170a4e1bd2f
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
$ docker pull memcached@sha256:944116c797245b0fc4c7f40b21fbb09279bdaa61bdbc90096ab54e553f5b4c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32268188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b313232b4d0d2ad4bb4ae366dddcb943252a987cdee73b8a5ac60de2b69485b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:19:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:19:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:22:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:22:30 GMT
USER memcache
# Wed, 21 Oct 2026 00:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d42ffafdd2fc34bda4f58d4502b0891798a9f3be0d611a857431b2184e5140`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56da813fbb88940e53c2d5bb49f0b718eaded7f7092aa3409ef15e4a61affb08`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 136.7 KB (136730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55c88bdf736644f60c865f26eff26d70012111e84c7527ccd1acd01aa499fe0`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.3 MB (2286365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88004839e2874e521e8ee05182241adc9a9ec17e0db21d59e6dbe95c8b535903`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76a164aa3b7877e3e8cdc58ff3dc0644504d8ac0dfecf6ed94249ff5693da03`  
		Last Modified: Wed, 21 Oct 2026 00:22:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:72db79008d92934b0de5f4d7f57a3221fd4c92516800e3ee4c81b481443d2b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a9a647743c10e71a1ace444b541e7d501d5e96e94f486826450fe9509ea566`

```dockerfile
```

-	Layers:
	-	`sha256:ede5848b3bf46da98d95030ad35e7885a0a9a8ef5b108518bb68dad0221b5b36`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3c82d6d3a9508e7388a3ca9fa8ab396af4c068257cc2d1f448fbf031e630e1`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v5

```console
$ docker pull memcached@sha256:48a34bce2b46df10fbac4812bf242dffad75bbb63c375dbf24a28d7cc2bfc6df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0e4cee39b02ca3eeaba6dc02a7a58a705b8dd71ca303dee0784c82cb69371c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:01 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:22 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:22 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca85f4dc5b131158188d5f165d11da3d989c67b002001c1a637d531906b0428`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734e58ebc054a9b66e71fe61486ad7d9fb341c3d69a3d24ced9d6d5e2a4a9a2a`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 144.2 KB (144189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c0ebfb1e5267105a33ca9ad4eda8c8634d26c7e1a1d0c53985a0b1672ff792`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.2 MB (2217264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3b1931981085f8d64226bfbf2b4d11f37405251dcb2b1721e7639a4c15e8ff`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36e86131fea102ea4b26b1b8f363c4aa51206fce51fb77a3ccc3dbf1dbb1d18`  
		Last Modified: Wed, 21 Oct 2026 00:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:034516d433c6eaa6c5a68e6394540c52b17cddc7e13ece4e5f16ff48425f30c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7543e01f89cb50686d2767e606aa4fdbc106128aa8f4d35162689ace138a552c`

```dockerfile
```

-	Layers:
	-	`sha256:44cb5b0d78723bdb5c55c9b14585ad5bb26364f34b30aaa212f8cddd35fddbdf`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75a94bdad3c22654947ebce1e8ace7ee9764c4f67e1a8913e9e7ab17127b7b02`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b5eb4f05ebd23c822cfa8a6d2a30d11f57de00e5ce84ed9b36f55e928b979aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8768a44c745454aab3aa6ae8cd8adc69afd67d05f999d7f4f337fd402965e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:21:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:24:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:24:46 GMT
USER memcache
# Wed, 21 Oct 2026 00:24:46 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:24:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef860c09830f242b510bd21830be41048e726b8247f9e3e6ca960df5aa70b091`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369f29451a3da0636f38f97b7814d38058e7a89f9f5e02e55acbd06d10cb65be`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 135.4 KB (135406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865b110dbcf7a46dcceadd0d2dcb0affb52c9ffa477509e8a40982dc8b2b9df0`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 2.2 MB (2171639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1591c9168aff2ae015310546d217e90a11081b00a8aa067fd84e20f36918b1cf`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13125f0da15b1171fad06722663fa99b476bb8c2a45c6f6b903a910794c2d968`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:869caad97945d570a3aaf3212f830013244598b0cd80712837f205ec18dbfea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4383497527ebfa53c7f7b8f7f34bc1381f8474d52741b37fbaab3fa25cc8f7`

```dockerfile
```

-	Layers:
	-	`sha256:e4b44f137263c271873c34130d62d7ff490e95720c6ce5f9218e755891c2153d`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ec7b6ef915d77389be3e949bea6ca62683bf2a2114bca576a4c2a66aff65889`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d931ae954035796f5280028f7a69466acf84e64a7f49e8212c9d389ca18f3a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ab1308386fbf8e0a3b3af71b291010ddc6182e0fc888e92a53cd2afad9edaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:45 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0b0df3b9fee704c536551180639798b24e4db788452d8aad10aa59fdafe4a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259e38514f5df58844e199b77de4b9a83681410e009135a56a5b69fd406fcef5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 153.5 KB (153537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6140ed673ccd18638ac7fc5d51995e03b5068f8f07c69e48f831a2fa953f7dee`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.3 MB (2266870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf3980258ddc215dbab1ae72102219aab8ace400c770facc1c386379d8a1a22`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84d44fc30b4a3ff1a73e1d4989b8cf935850bd82a7d4fac3a6bc8e03520ff5e`  
		Last Modified: Wed, 21 Oct 2026 00:21:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:1ca77cbcc279c21fa6346a99dc8a34c9d46f194d6549d76824dd59784b3a096f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78529a2a214f27b350e2d1f4bd5f591b39a264c69170a90f8231810acf86cff`

```dockerfile
```

-	Layers:
	-	`sha256:05a3885b59a70ee721a25f7e0cb95ed0ad7ce5a4e55caa9e850bd1d4f48f90e5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b963475c30bde686cee21d53730e8e936d6b990510fd38c35e012f0385485ad2`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; 386

```console
$ docker pull memcached@sha256:3ef96294d03ef986d2c884df2bda367a4064a14b9adfdabb7468fd2add7fe17b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b95bc1d6349b39e6512611c95cbfd5e7408831cf24932ebbf5e649ea378b8f41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:40 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d221d2a1c8ef54b8aabc532f31d7516e6b07f25b2cd51d19c66850f47a6a62e7`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a5193e96b710aa8ce5332c65dcb80a82ebb1640d9aeaa7d1b91abb75e7393d`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 147.5 KB (147541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea7f4457bbf4d5fd7460823f416b9a25d15c44e6da4cfd2e05c7023da95e8fd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.2 MB (2231206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d1606806deed52e00fa1497c76d9c58cb2bda48237ac2bf5ef910d7bee1970`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4231a4337b389168a66ee9bfb7bbe2cabcf7c40e31829bf319ea10bde131bb0f`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:9a7da5b653199ec55efd87f4364209865961be9b7f6c0d3ecf1b92a5e748b106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9616497bbca6f74053251e779aa49613081d82b6f5a49029bad91be207011925`

```dockerfile
```

-	Layers:
	-	`sha256:7a885ad870936dbaa4c9e8f514280fd029fbbb64dd5ed62f6dbfa406106aa56e`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c43b1de7f03ebe34c0fbae2dbf1e7f19448e3f5944e8f788cbdabad55e9e10bd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 22.1 KB (22094 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; ppc64le

```console
$ docker pull memcached@sha256:92f0edc3aed16f2b75e46eb1684674d03ed5dd0a22d6037acb0b1e9004f89ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36223726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68344b7edb0321fb25a79eec6ae9f3bbb3d19b00f7424acf5268754e6691ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:37:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:37:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:41:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:41:39 GMT
USER memcache
# Wed, 21 Oct 2026 00:41:39 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:41:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed0a06bf95c2ad52951b4b05ac45e7352bdd49a297fde2783f54ff7b13f964a`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0594bb91d5f4c9183f9c12d34b2f9ee1728341dafb447152e1b7b8e1f28d3bae`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288cddf22e0d395f6251b131c67d94505b0af604ea847d4b3f58eeb8eb2361cb`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.4 MB (2399889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac1f2f55bd6905775e83e35e18b857debac2d792625b52ab8587870859f3182`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c7a848cd976bc4612e7a4d5beed94e148e4ef510292011035a80a316195f70`  
		Last Modified: Wed, 21 Oct 2026 00:41:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:ce71593e6788dc45452f65572fa35f61942d7c3352b03a789fbc2a78c836e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acba1f4e8dd1e0b94def660a8832a1ca0258751b8d917c19826aeadb0e0c3fbc`

```dockerfile
```

-	Layers:
	-	`sha256:f36698561e9037022c7e9cbd6ed6a9269b2d3b7eb72a08d4c9074a023a0104db`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82465130551e7f1d2505c78eb707852d9b2370403afe8921c0e12937230302`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; riscv64

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

### `memcached:1.6` - unknown; unknown

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

### `memcached:1.6` - linux; s390x

```console
$ docker pull memcached@sha256:cc9d277ea9149dbc992ece77b2b9a05b22e7c3d97bfb54751f6cdf2043ec3e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a84eca603adf0b8a2864e4f2684ab55815af464e2cabf36daff38311506720`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:14 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:28 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6e7db5edad5d5d77bd578d428573e7e2b113cc96c063ae2bfaef22233258c9`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8e8b1ce582e8a042921cb84abad1bb6b019085f50d6d78443639bb7c16a2f`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 140.5 KB (140539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179204f888c3b252201b6be3789344ea11a9c52ffa7562d02545c30323c4d9ed`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.3 MB (2301432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef064678b41c0fef00e1197d43d29e35f56e2de4cc60c02be4f6d84201b1d548`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcce6247e54a545b4cd116264e5e70c3a5568f72f3d3c11cae0e6004ed0d9fa`  
		Last Modified: Wed, 21 Oct 2026 00:21:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:bea8dab22ada52b04f0fc5c686d7de19107ac75bd355294bd55f53d923796a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296e416020b7119fe4fa8a7197fbcded3aa978ff117c1f197a35b1d29d3d4193`

```dockerfile
```

-	Layers:
	-	`sha256:db1cb1162d178395480407cce2d85c3d808dc8c646db60aa345d4be8cae39efb`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69afc2ff3d9830e4fcc26d942a923485a5bc1b5279bf7add2e93d4668854b51b`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
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
$ docker pull memcached@sha256:ab65f39bfa5b1e31bff3bdccfd48af85fee6fdcbf0eb877175fcb170a4e1bd2f
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
$ docker pull memcached@sha256:944116c797245b0fc4c7f40b21fbb09279bdaa61bdbc90096ab54e553f5b4c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32268188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b313232b4d0d2ad4bb4ae366dddcb943252a987cdee73b8a5ac60de2b69485b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:19:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:19:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:22:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:22:30 GMT
USER memcache
# Wed, 21 Oct 2026 00:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d42ffafdd2fc34bda4f58d4502b0891798a9f3be0d611a857431b2184e5140`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56da813fbb88940e53c2d5bb49f0b718eaded7f7092aa3409ef15e4a61affb08`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 136.7 KB (136730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55c88bdf736644f60c865f26eff26d70012111e84c7527ccd1acd01aa499fe0`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.3 MB (2286365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88004839e2874e521e8ee05182241adc9a9ec17e0db21d59e6dbe95c8b535903`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76a164aa3b7877e3e8cdc58ff3dc0644504d8ac0dfecf6ed94249ff5693da03`  
		Last Modified: Wed, 21 Oct 2026 00:22:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:72db79008d92934b0de5f4d7f57a3221fd4c92516800e3ee4c81b481443d2b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a9a647743c10e71a1ace444b541e7d501d5e96e94f486826450fe9509ea566`

```dockerfile
```

-	Layers:
	-	`sha256:ede5848b3bf46da98d95030ad35e7885a0a9a8ef5b108518bb68dad0221b5b36`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3c82d6d3a9508e7388a3ca9fa8ab396af4c068257cc2d1f448fbf031e630e1`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:48a34bce2b46df10fbac4812bf242dffad75bbb63c375dbf24a28d7cc2bfc6df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0e4cee39b02ca3eeaba6dc02a7a58a705b8dd71ca303dee0784c82cb69371c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:01 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:22 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:22 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca85f4dc5b131158188d5f165d11da3d989c67b002001c1a637d531906b0428`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734e58ebc054a9b66e71fe61486ad7d9fb341c3d69a3d24ced9d6d5e2a4a9a2a`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 144.2 KB (144189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c0ebfb1e5267105a33ca9ad4eda8c8634d26c7e1a1d0c53985a0b1672ff792`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.2 MB (2217264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3b1931981085f8d64226bfbf2b4d11f37405251dcb2b1721e7639a4c15e8ff`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36e86131fea102ea4b26b1b8f363c4aa51206fce51fb77a3ccc3dbf1dbb1d18`  
		Last Modified: Wed, 21 Oct 2026 00:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:034516d433c6eaa6c5a68e6394540c52b17cddc7e13ece4e5f16ff48425f30c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7543e01f89cb50686d2767e606aa4fdbc106128aa8f4d35162689ace138a552c`

```dockerfile
```

-	Layers:
	-	`sha256:44cb5b0d78723bdb5c55c9b14585ad5bb26364f34b30aaa212f8cddd35fddbdf`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75a94bdad3c22654947ebce1e8ace7ee9764c4f67e1a8913e9e7ab17127b7b02`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b5eb4f05ebd23c822cfa8a6d2a30d11f57de00e5ce84ed9b36f55e928b979aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8768a44c745454aab3aa6ae8cd8adc69afd67d05f999d7f4f337fd402965e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:21:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:24:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:24:46 GMT
USER memcache
# Wed, 21 Oct 2026 00:24:46 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:24:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef860c09830f242b510bd21830be41048e726b8247f9e3e6ca960df5aa70b091`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369f29451a3da0636f38f97b7814d38058e7a89f9f5e02e55acbd06d10cb65be`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 135.4 KB (135406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865b110dbcf7a46dcceadd0d2dcb0affb52c9ffa477509e8a40982dc8b2b9df0`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 2.2 MB (2171639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1591c9168aff2ae015310546d217e90a11081b00a8aa067fd84e20f36918b1cf`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13125f0da15b1171fad06722663fa99b476bb8c2a45c6f6b903a910794c2d968`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:869caad97945d570a3aaf3212f830013244598b0cd80712837f205ec18dbfea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4383497527ebfa53c7f7b8f7f34bc1381f8474d52741b37fbaab3fa25cc8f7`

```dockerfile
```

-	Layers:
	-	`sha256:e4b44f137263c271873c34130d62d7ff490e95720c6ce5f9218e755891c2153d`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ec7b6ef915d77389be3e949bea6ca62683bf2a2114bca576a4c2a66aff65889`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d931ae954035796f5280028f7a69466acf84e64a7f49e8212c9d389ca18f3a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ab1308386fbf8e0a3b3af71b291010ddc6182e0fc888e92a53cd2afad9edaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:45 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0b0df3b9fee704c536551180639798b24e4db788452d8aad10aa59fdafe4a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259e38514f5df58844e199b77de4b9a83681410e009135a56a5b69fd406fcef5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 153.5 KB (153537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6140ed673ccd18638ac7fc5d51995e03b5068f8f07c69e48f831a2fa953f7dee`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.3 MB (2266870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf3980258ddc215dbab1ae72102219aab8ace400c770facc1c386379d8a1a22`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84d44fc30b4a3ff1a73e1d4989b8cf935850bd82a7d4fac3a6bc8e03520ff5e`  
		Last Modified: Wed, 21 Oct 2026 00:21:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:1ca77cbcc279c21fa6346a99dc8a34c9d46f194d6549d76824dd59784b3a096f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78529a2a214f27b350e2d1f4bd5f591b39a264c69170a90f8231810acf86cff`

```dockerfile
```

-	Layers:
	-	`sha256:05a3885b59a70ee721a25f7e0cb95ed0ad7ce5a4e55caa9e850bd1d4f48f90e5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b963475c30bde686cee21d53730e8e936d6b990510fd38c35e012f0385485ad2`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; 386

```console
$ docker pull memcached@sha256:3ef96294d03ef986d2c884df2bda367a4064a14b9adfdabb7468fd2add7fe17b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b95bc1d6349b39e6512611c95cbfd5e7408831cf24932ebbf5e649ea378b8f41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:40 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d221d2a1c8ef54b8aabc532f31d7516e6b07f25b2cd51d19c66850f47a6a62e7`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a5193e96b710aa8ce5332c65dcb80a82ebb1640d9aeaa7d1b91abb75e7393d`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 147.5 KB (147541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea7f4457bbf4d5fd7460823f416b9a25d15c44e6da4cfd2e05c7023da95e8fd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.2 MB (2231206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d1606806deed52e00fa1497c76d9c58cb2bda48237ac2bf5ef910d7bee1970`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4231a4337b389168a66ee9bfb7bbe2cabcf7c40e31829bf319ea10bde131bb0f`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:9a7da5b653199ec55efd87f4364209865961be9b7f6c0d3ecf1b92a5e748b106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9616497bbca6f74053251e779aa49613081d82b6f5a49029bad91be207011925`

```dockerfile
```

-	Layers:
	-	`sha256:7a885ad870936dbaa4c9e8f514280fd029fbbb64dd5ed62f6dbfa406106aa56e`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c43b1de7f03ebe34c0fbae2dbf1e7f19448e3f5944e8f788cbdabad55e9e10bd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 22.1 KB (22094 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:92f0edc3aed16f2b75e46eb1684674d03ed5dd0a22d6037acb0b1e9004f89ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36223726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68344b7edb0321fb25a79eec6ae9f3bbb3d19b00f7424acf5268754e6691ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:37:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:37:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:41:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:41:39 GMT
USER memcache
# Wed, 21 Oct 2026 00:41:39 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:41:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed0a06bf95c2ad52951b4b05ac45e7352bdd49a297fde2783f54ff7b13f964a`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0594bb91d5f4c9183f9c12d34b2f9ee1728341dafb447152e1b7b8e1f28d3bae`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288cddf22e0d395f6251b131c67d94505b0af604ea847d4b3f58eeb8eb2361cb`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.4 MB (2399889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac1f2f55bd6905775e83e35e18b857debac2d792625b52ab8587870859f3182`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c7a848cd976bc4612e7a4d5beed94e148e4ef510292011035a80a316195f70`  
		Last Modified: Wed, 21 Oct 2026 00:41:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ce71593e6788dc45452f65572fa35f61942d7c3352b03a789fbc2a78c836e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acba1f4e8dd1e0b94def660a8832a1ca0258751b8d917c19826aeadb0e0c3fbc`

```dockerfile
```

-	Layers:
	-	`sha256:f36698561e9037022c7e9cbd6ed6a9269b2d3b7eb72a08d4c9074a023a0104db`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82465130551e7f1d2505c78eb707852d9b2370403afe8921c0e12937230302`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; riscv64

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

### `memcached:1.6-trixie` - unknown; unknown

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

### `memcached:1.6-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:cc9d277ea9149dbc992ece77b2b9a05b22e7c3d97bfb54751f6cdf2043ec3e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a84eca603adf0b8a2864e4f2684ab55815af464e2cabf36daff38311506720`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:14 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:28 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6e7db5edad5d5d77bd578d428573e7e2b113cc96c063ae2bfaef22233258c9`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8e8b1ce582e8a042921cb84abad1bb6b019085f50d6d78443639bb7c16a2f`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 140.5 KB (140539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179204f888c3b252201b6be3789344ea11a9c52ffa7562d02545c30323c4d9ed`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.3 MB (2301432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef064678b41c0fef00e1197d43d29e35f56e2de4cc60c02be4f6d84201b1d548`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcce6247e54a545b4cd116264e5e70c3a5568f72f3d3c11cae0e6004ed0d9fa`  
		Last Modified: Wed, 21 Oct 2026 00:21:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:bea8dab22ada52b04f0fc5c686d7de19107ac75bd355294bd55f53d923796a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296e416020b7119fe4fa8a7197fbcded3aa978ff117c1f197a35b1d29d3d4193`

```dockerfile
```

-	Layers:
	-	`sha256:db1cb1162d178395480407cce2d85c3d808dc8c646db60aa345d4be8cae39efb`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69afc2ff3d9830e4fcc26d942a923485a5bc1b5279bf7add2e93d4668854b51b`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45`

```console
$ docker pull memcached@sha256:ab65f39bfa5b1e31bff3bdccfd48af85fee6fdcbf0eb877175fcb170a4e1bd2f
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
$ docker pull memcached@sha256:944116c797245b0fc4c7f40b21fbb09279bdaa61bdbc90096ab54e553f5b4c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32268188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b313232b4d0d2ad4bb4ae366dddcb943252a987cdee73b8a5ac60de2b69485b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:19:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:19:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:22:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:22:30 GMT
USER memcache
# Wed, 21 Oct 2026 00:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d42ffafdd2fc34bda4f58d4502b0891798a9f3be0d611a857431b2184e5140`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56da813fbb88940e53c2d5bb49f0b718eaded7f7092aa3409ef15e4a61affb08`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 136.7 KB (136730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55c88bdf736644f60c865f26eff26d70012111e84c7527ccd1acd01aa499fe0`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.3 MB (2286365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88004839e2874e521e8ee05182241adc9a9ec17e0db21d59e6dbe95c8b535903`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76a164aa3b7877e3e8cdc58ff3dc0644504d8ac0dfecf6ed94249ff5693da03`  
		Last Modified: Wed, 21 Oct 2026 00:22:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:72db79008d92934b0de5f4d7f57a3221fd4c92516800e3ee4c81b481443d2b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a9a647743c10e71a1ace444b541e7d501d5e96e94f486826450fe9509ea566`

```dockerfile
```

-	Layers:
	-	`sha256:ede5848b3bf46da98d95030ad35e7885a0a9a8ef5b108518bb68dad0221b5b36`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3c82d6d3a9508e7388a3ca9fa8ab396af4c068257cc2d1f448fbf031e630e1`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v5

```console
$ docker pull memcached@sha256:48a34bce2b46df10fbac4812bf242dffad75bbb63c375dbf24a28d7cc2bfc6df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0e4cee39b02ca3eeaba6dc02a7a58a705b8dd71ca303dee0784c82cb69371c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:01 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:22 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:22 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca85f4dc5b131158188d5f165d11da3d989c67b002001c1a637d531906b0428`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734e58ebc054a9b66e71fe61486ad7d9fb341c3d69a3d24ced9d6d5e2a4a9a2a`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 144.2 KB (144189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c0ebfb1e5267105a33ca9ad4eda8c8634d26c7e1a1d0c53985a0b1672ff792`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.2 MB (2217264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3b1931981085f8d64226bfbf2b4d11f37405251dcb2b1721e7639a4c15e8ff`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36e86131fea102ea4b26b1b8f363c4aa51206fce51fb77a3ccc3dbf1dbb1d18`  
		Last Modified: Wed, 21 Oct 2026 00:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:034516d433c6eaa6c5a68e6394540c52b17cddc7e13ece4e5f16ff48425f30c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7543e01f89cb50686d2767e606aa4fdbc106128aa8f4d35162689ace138a552c`

```dockerfile
```

-	Layers:
	-	`sha256:44cb5b0d78723bdb5c55c9b14585ad5bb26364f34b30aaa212f8cddd35fddbdf`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75a94bdad3c22654947ebce1e8ace7ee9764c4f67e1a8913e9e7ab17127b7b02`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b5eb4f05ebd23c822cfa8a6d2a30d11f57de00e5ce84ed9b36f55e928b979aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8768a44c745454aab3aa6ae8cd8adc69afd67d05f999d7f4f337fd402965e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:21:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:24:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:24:46 GMT
USER memcache
# Wed, 21 Oct 2026 00:24:46 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:24:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef860c09830f242b510bd21830be41048e726b8247f9e3e6ca960df5aa70b091`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369f29451a3da0636f38f97b7814d38058e7a89f9f5e02e55acbd06d10cb65be`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 135.4 KB (135406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865b110dbcf7a46dcceadd0d2dcb0affb52c9ffa477509e8a40982dc8b2b9df0`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 2.2 MB (2171639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1591c9168aff2ae015310546d217e90a11081b00a8aa067fd84e20f36918b1cf`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13125f0da15b1171fad06722663fa99b476bb8c2a45c6f6b903a910794c2d968`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:869caad97945d570a3aaf3212f830013244598b0cd80712837f205ec18dbfea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4383497527ebfa53c7f7b8f7f34bc1381f8474d52741b37fbaab3fa25cc8f7`

```dockerfile
```

-	Layers:
	-	`sha256:e4b44f137263c271873c34130d62d7ff490e95720c6ce5f9218e755891c2153d`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ec7b6ef915d77389be3e949bea6ca62683bf2a2114bca576a4c2a66aff65889`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d931ae954035796f5280028f7a69466acf84e64a7f49e8212c9d389ca18f3a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ab1308386fbf8e0a3b3af71b291010ddc6182e0fc888e92a53cd2afad9edaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:45 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0b0df3b9fee704c536551180639798b24e4db788452d8aad10aa59fdafe4a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259e38514f5df58844e199b77de4b9a83681410e009135a56a5b69fd406fcef5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 153.5 KB (153537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6140ed673ccd18638ac7fc5d51995e03b5068f8f07c69e48f831a2fa953f7dee`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.3 MB (2266870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf3980258ddc215dbab1ae72102219aab8ace400c770facc1c386379d8a1a22`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84d44fc30b4a3ff1a73e1d4989b8cf935850bd82a7d4fac3a6bc8e03520ff5e`  
		Last Modified: Wed, 21 Oct 2026 00:21:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:1ca77cbcc279c21fa6346a99dc8a34c9d46f194d6549d76824dd59784b3a096f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78529a2a214f27b350e2d1f4bd5f591b39a264c69170a90f8231810acf86cff`

```dockerfile
```

-	Layers:
	-	`sha256:05a3885b59a70ee721a25f7e0cb95ed0ad7ce5a4e55caa9e850bd1d4f48f90e5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b963475c30bde686cee21d53730e8e936d6b990510fd38c35e012f0385485ad2`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; 386

```console
$ docker pull memcached@sha256:3ef96294d03ef986d2c884df2bda367a4064a14b9adfdabb7468fd2add7fe17b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b95bc1d6349b39e6512611c95cbfd5e7408831cf24932ebbf5e649ea378b8f41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:40 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d221d2a1c8ef54b8aabc532f31d7516e6b07f25b2cd51d19c66850f47a6a62e7`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a5193e96b710aa8ce5332c65dcb80a82ebb1640d9aeaa7d1b91abb75e7393d`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 147.5 KB (147541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea7f4457bbf4d5fd7460823f416b9a25d15c44e6da4cfd2e05c7023da95e8fd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.2 MB (2231206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d1606806deed52e00fa1497c76d9c58cb2bda48237ac2bf5ef910d7bee1970`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4231a4337b389168a66ee9bfb7bbe2cabcf7c40e31829bf319ea10bde131bb0f`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:9a7da5b653199ec55efd87f4364209865961be9b7f6c0d3ecf1b92a5e748b106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9616497bbca6f74053251e779aa49613081d82b6f5a49029bad91be207011925`

```dockerfile
```

-	Layers:
	-	`sha256:7a885ad870936dbaa4c9e8f514280fd029fbbb64dd5ed62f6dbfa406106aa56e`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c43b1de7f03ebe34c0fbae2dbf1e7f19448e3f5944e8f788cbdabad55e9e10bd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 22.1 KB (22094 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; ppc64le

```console
$ docker pull memcached@sha256:92f0edc3aed16f2b75e46eb1684674d03ed5dd0a22d6037acb0b1e9004f89ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36223726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68344b7edb0321fb25a79eec6ae9f3bbb3d19b00f7424acf5268754e6691ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:37:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:37:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:41:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:41:39 GMT
USER memcache
# Wed, 21 Oct 2026 00:41:39 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:41:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed0a06bf95c2ad52951b4b05ac45e7352bdd49a297fde2783f54ff7b13f964a`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0594bb91d5f4c9183f9c12d34b2f9ee1728341dafb447152e1b7b8e1f28d3bae`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288cddf22e0d395f6251b131c67d94505b0af604ea847d4b3f58eeb8eb2361cb`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.4 MB (2399889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac1f2f55bd6905775e83e35e18b857debac2d792625b52ab8587870859f3182`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c7a848cd976bc4612e7a4d5beed94e148e4ef510292011035a80a316195f70`  
		Last Modified: Wed, 21 Oct 2026 00:41:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:ce71593e6788dc45452f65572fa35f61942d7c3352b03a789fbc2a78c836e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acba1f4e8dd1e0b94def660a8832a1ca0258751b8d917c19826aeadb0e0c3fbc`

```dockerfile
```

-	Layers:
	-	`sha256:f36698561e9037022c7e9cbd6ed6a9269b2d3b7eb72a08d4c9074a023a0104db`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82465130551e7f1d2505c78eb707852d9b2370403afe8921c0e12937230302`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; riscv64

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

### `memcached:1.6.45` - unknown; unknown

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

### `memcached:1.6.45` - linux; s390x

```console
$ docker pull memcached@sha256:cc9d277ea9149dbc992ece77b2b9a05b22e7c3d97bfb54751f6cdf2043ec3e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a84eca603adf0b8a2864e4f2684ab55815af464e2cabf36daff38311506720`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:14 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:28 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6e7db5edad5d5d77bd578d428573e7e2b113cc96c063ae2bfaef22233258c9`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8e8b1ce582e8a042921cb84abad1bb6b019085f50d6d78443639bb7c16a2f`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 140.5 KB (140539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179204f888c3b252201b6be3789344ea11a9c52ffa7562d02545c30323c4d9ed`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.3 MB (2301432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef064678b41c0fef00e1197d43d29e35f56e2de4cc60c02be4f6d84201b1d548`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcce6247e54a545b4cd116264e5e70c3a5568f72f3d3c11cae0e6004ed0d9fa`  
		Last Modified: Wed, 21 Oct 2026 00:21:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:bea8dab22ada52b04f0fc5c686d7de19107ac75bd355294bd55f53d923796a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296e416020b7119fe4fa8a7197fbcded3aa978ff117c1f197a35b1d29d3d4193`

```dockerfile
```

-	Layers:
	-	`sha256:db1cb1162d178395480407cce2d85c3d808dc8c646db60aa345d4be8cae39efb`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69afc2ff3d9830e4fcc26d942a923485a5bc1b5279bf7add2e93d4668854b51b`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
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
$ docker pull memcached@sha256:ab65f39bfa5b1e31bff3bdccfd48af85fee6fdcbf0eb877175fcb170a4e1bd2f
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
$ docker pull memcached@sha256:944116c797245b0fc4c7f40b21fbb09279bdaa61bdbc90096ab54e553f5b4c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32268188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b313232b4d0d2ad4bb4ae366dddcb943252a987cdee73b8a5ac60de2b69485b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:19:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:19:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:22:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:22:30 GMT
USER memcache
# Wed, 21 Oct 2026 00:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d42ffafdd2fc34bda4f58d4502b0891798a9f3be0d611a857431b2184e5140`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56da813fbb88940e53c2d5bb49f0b718eaded7f7092aa3409ef15e4a61affb08`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 136.7 KB (136730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55c88bdf736644f60c865f26eff26d70012111e84c7527ccd1acd01aa499fe0`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.3 MB (2286365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88004839e2874e521e8ee05182241adc9a9ec17e0db21d59e6dbe95c8b535903`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76a164aa3b7877e3e8cdc58ff3dc0644504d8ac0dfecf6ed94249ff5693da03`  
		Last Modified: Wed, 21 Oct 2026 00:22:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:72db79008d92934b0de5f4d7f57a3221fd4c92516800e3ee4c81b481443d2b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a9a647743c10e71a1ace444b541e7d501d5e96e94f486826450fe9509ea566`

```dockerfile
```

-	Layers:
	-	`sha256:ede5848b3bf46da98d95030ad35e7885a0a9a8ef5b108518bb68dad0221b5b36`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3c82d6d3a9508e7388a3ca9fa8ab396af4c068257cc2d1f448fbf031e630e1`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:48a34bce2b46df10fbac4812bf242dffad75bbb63c375dbf24a28d7cc2bfc6df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0e4cee39b02ca3eeaba6dc02a7a58a705b8dd71ca303dee0784c82cb69371c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:01 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:22 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:22 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca85f4dc5b131158188d5f165d11da3d989c67b002001c1a637d531906b0428`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734e58ebc054a9b66e71fe61486ad7d9fb341c3d69a3d24ced9d6d5e2a4a9a2a`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 144.2 KB (144189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c0ebfb1e5267105a33ca9ad4eda8c8634d26c7e1a1d0c53985a0b1672ff792`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.2 MB (2217264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3b1931981085f8d64226bfbf2b4d11f37405251dcb2b1721e7639a4c15e8ff`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36e86131fea102ea4b26b1b8f363c4aa51206fce51fb77a3ccc3dbf1dbb1d18`  
		Last Modified: Wed, 21 Oct 2026 00:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:034516d433c6eaa6c5a68e6394540c52b17cddc7e13ece4e5f16ff48425f30c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7543e01f89cb50686d2767e606aa4fdbc106128aa8f4d35162689ace138a552c`

```dockerfile
```

-	Layers:
	-	`sha256:44cb5b0d78723bdb5c55c9b14585ad5bb26364f34b30aaa212f8cddd35fddbdf`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75a94bdad3c22654947ebce1e8ace7ee9764c4f67e1a8913e9e7ab17127b7b02`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b5eb4f05ebd23c822cfa8a6d2a30d11f57de00e5ce84ed9b36f55e928b979aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8768a44c745454aab3aa6ae8cd8adc69afd67d05f999d7f4f337fd402965e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:21:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:24:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:24:46 GMT
USER memcache
# Wed, 21 Oct 2026 00:24:46 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:24:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef860c09830f242b510bd21830be41048e726b8247f9e3e6ca960df5aa70b091`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369f29451a3da0636f38f97b7814d38058e7a89f9f5e02e55acbd06d10cb65be`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 135.4 KB (135406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865b110dbcf7a46dcceadd0d2dcb0affb52c9ffa477509e8a40982dc8b2b9df0`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 2.2 MB (2171639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1591c9168aff2ae015310546d217e90a11081b00a8aa067fd84e20f36918b1cf`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13125f0da15b1171fad06722663fa99b476bb8c2a45c6f6b903a910794c2d968`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:869caad97945d570a3aaf3212f830013244598b0cd80712837f205ec18dbfea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4383497527ebfa53c7f7b8f7f34bc1381f8474d52741b37fbaab3fa25cc8f7`

```dockerfile
```

-	Layers:
	-	`sha256:e4b44f137263c271873c34130d62d7ff490e95720c6ce5f9218e755891c2153d`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ec7b6ef915d77389be3e949bea6ca62683bf2a2114bca576a4c2a66aff65889`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d931ae954035796f5280028f7a69466acf84e64a7f49e8212c9d389ca18f3a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ab1308386fbf8e0a3b3af71b291010ddc6182e0fc888e92a53cd2afad9edaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:45 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0b0df3b9fee704c536551180639798b24e4db788452d8aad10aa59fdafe4a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259e38514f5df58844e199b77de4b9a83681410e009135a56a5b69fd406fcef5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 153.5 KB (153537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6140ed673ccd18638ac7fc5d51995e03b5068f8f07c69e48f831a2fa953f7dee`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.3 MB (2266870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf3980258ddc215dbab1ae72102219aab8ace400c770facc1c386379d8a1a22`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84d44fc30b4a3ff1a73e1d4989b8cf935850bd82a7d4fac3a6bc8e03520ff5e`  
		Last Modified: Wed, 21 Oct 2026 00:21:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:1ca77cbcc279c21fa6346a99dc8a34c9d46f194d6549d76824dd59784b3a096f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78529a2a214f27b350e2d1f4bd5f591b39a264c69170a90f8231810acf86cff`

```dockerfile
```

-	Layers:
	-	`sha256:05a3885b59a70ee721a25f7e0cb95ed0ad7ce5a4e55caa9e850bd1d4f48f90e5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b963475c30bde686cee21d53730e8e936d6b990510fd38c35e012f0385485ad2`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; 386

```console
$ docker pull memcached@sha256:3ef96294d03ef986d2c884df2bda367a4064a14b9adfdabb7468fd2add7fe17b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b95bc1d6349b39e6512611c95cbfd5e7408831cf24932ebbf5e649ea378b8f41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:40 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d221d2a1c8ef54b8aabc532f31d7516e6b07f25b2cd51d19c66850f47a6a62e7`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a5193e96b710aa8ce5332c65dcb80a82ebb1640d9aeaa7d1b91abb75e7393d`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 147.5 KB (147541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea7f4457bbf4d5fd7460823f416b9a25d15c44e6da4cfd2e05c7023da95e8fd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.2 MB (2231206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d1606806deed52e00fa1497c76d9c58cb2bda48237ac2bf5ef910d7bee1970`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4231a4337b389168a66ee9bfb7bbe2cabcf7c40e31829bf319ea10bde131bb0f`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:9a7da5b653199ec55efd87f4364209865961be9b7f6c0d3ecf1b92a5e748b106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9616497bbca6f74053251e779aa49613081d82b6f5a49029bad91be207011925`

```dockerfile
```

-	Layers:
	-	`sha256:7a885ad870936dbaa4c9e8f514280fd029fbbb64dd5ed62f6dbfa406106aa56e`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c43b1de7f03ebe34c0fbae2dbf1e7f19448e3f5944e8f788cbdabad55e9e10bd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 22.1 KB (22094 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:92f0edc3aed16f2b75e46eb1684674d03ed5dd0a22d6037acb0b1e9004f89ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36223726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68344b7edb0321fb25a79eec6ae9f3bbb3d19b00f7424acf5268754e6691ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:37:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:37:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:41:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:41:39 GMT
USER memcache
# Wed, 21 Oct 2026 00:41:39 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:41:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed0a06bf95c2ad52951b4b05ac45e7352bdd49a297fde2783f54ff7b13f964a`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0594bb91d5f4c9183f9c12d34b2f9ee1728341dafb447152e1b7b8e1f28d3bae`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288cddf22e0d395f6251b131c67d94505b0af604ea847d4b3f58eeb8eb2361cb`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.4 MB (2399889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac1f2f55bd6905775e83e35e18b857debac2d792625b52ab8587870859f3182`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c7a848cd976bc4612e7a4d5beed94e148e4ef510292011035a80a316195f70`  
		Last Modified: Wed, 21 Oct 2026 00:41:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ce71593e6788dc45452f65572fa35f61942d7c3352b03a789fbc2a78c836e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acba1f4e8dd1e0b94def660a8832a1ca0258751b8d917c19826aeadb0e0c3fbc`

```dockerfile
```

-	Layers:
	-	`sha256:f36698561e9037022c7e9cbd6ed6a9269b2d3b7eb72a08d4c9074a023a0104db`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82465130551e7f1d2505c78eb707852d9b2370403afe8921c0e12937230302`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; riscv64

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

### `memcached:1.6.45-trixie` - unknown; unknown

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

### `memcached:1.6.45-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:cc9d277ea9149dbc992ece77b2b9a05b22e7c3d97bfb54751f6cdf2043ec3e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a84eca603adf0b8a2864e4f2684ab55815af464e2cabf36daff38311506720`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:14 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:28 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6e7db5edad5d5d77bd578d428573e7e2b113cc96c063ae2bfaef22233258c9`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8e8b1ce582e8a042921cb84abad1bb6b019085f50d6d78443639bb7c16a2f`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 140.5 KB (140539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179204f888c3b252201b6be3789344ea11a9c52ffa7562d02545c30323c4d9ed`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.3 MB (2301432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef064678b41c0fef00e1197d43d29e35f56e2de4cc60c02be4f6d84201b1d548`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcce6247e54a545b4cd116264e5e70c3a5568f72f3d3c11cae0e6004ed0d9fa`  
		Last Modified: Wed, 21 Oct 2026 00:21:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:bea8dab22ada52b04f0fc5c686d7de19107ac75bd355294bd55f53d923796a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296e416020b7119fe4fa8a7197fbcded3aa978ff117c1f197a35b1d29d3d4193`

```dockerfile
```

-	Layers:
	-	`sha256:db1cb1162d178395480407cce2d85c3d808dc8c646db60aa345d4be8cae39efb`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69afc2ff3d9830e4fcc26d942a923485a5bc1b5279bf7add2e93d4668854b51b`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
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
$ docker pull memcached@sha256:ab65f39bfa5b1e31bff3bdccfd48af85fee6fdcbf0eb877175fcb170a4e1bd2f
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
$ docker pull memcached@sha256:944116c797245b0fc4c7f40b21fbb09279bdaa61bdbc90096ab54e553f5b4c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32268188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b313232b4d0d2ad4bb4ae366dddcb943252a987cdee73b8a5ac60de2b69485b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:19:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:19:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:22:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:22:30 GMT
USER memcache
# Wed, 21 Oct 2026 00:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d42ffafdd2fc34bda4f58d4502b0891798a9f3be0d611a857431b2184e5140`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56da813fbb88940e53c2d5bb49f0b718eaded7f7092aa3409ef15e4a61affb08`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 136.7 KB (136730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55c88bdf736644f60c865f26eff26d70012111e84c7527ccd1acd01aa499fe0`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.3 MB (2286365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88004839e2874e521e8ee05182241adc9a9ec17e0db21d59e6dbe95c8b535903`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76a164aa3b7877e3e8cdc58ff3dc0644504d8ac0dfecf6ed94249ff5693da03`  
		Last Modified: Wed, 21 Oct 2026 00:22:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:72db79008d92934b0de5f4d7f57a3221fd4c92516800e3ee4c81b481443d2b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a9a647743c10e71a1ace444b541e7d501d5e96e94f486826450fe9509ea566`

```dockerfile
```

-	Layers:
	-	`sha256:ede5848b3bf46da98d95030ad35e7885a0a9a8ef5b108518bb68dad0221b5b36`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3c82d6d3a9508e7388a3ca9fa8ab396af4c068257cc2d1f448fbf031e630e1`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:48a34bce2b46df10fbac4812bf242dffad75bbb63c375dbf24a28d7cc2bfc6df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0e4cee39b02ca3eeaba6dc02a7a58a705b8dd71ca303dee0784c82cb69371c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:01 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:22 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:22 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca85f4dc5b131158188d5f165d11da3d989c67b002001c1a637d531906b0428`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734e58ebc054a9b66e71fe61486ad7d9fb341c3d69a3d24ced9d6d5e2a4a9a2a`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 144.2 KB (144189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c0ebfb1e5267105a33ca9ad4eda8c8634d26c7e1a1d0c53985a0b1672ff792`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.2 MB (2217264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3b1931981085f8d64226bfbf2b4d11f37405251dcb2b1721e7639a4c15e8ff`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36e86131fea102ea4b26b1b8f363c4aa51206fce51fb77a3ccc3dbf1dbb1d18`  
		Last Modified: Wed, 21 Oct 2026 00:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:034516d433c6eaa6c5a68e6394540c52b17cddc7e13ece4e5f16ff48425f30c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7543e01f89cb50686d2767e606aa4fdbc106128aa8f4d35162689ace138a552c`

```dockerfile
```

-	Layers:
	-	`sha256:44cb5b0d78723bdb5c55c9b14585ad5bb26364f34b30aaa212f8cddd35fddbdf`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75a94bdad3c22654947ebce1e8ace7ee9764c4f67e1a8913e9e7ab17127b7b02`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b5eb4f05ebd23c822cfa8a6d2a30d11f57de00e5ce84ed9b36f55e928b979aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8768a44c745454aab3aa6ae8cd8adc69afd67d05f999d7f4f337fd402965e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:21:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:24:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:24:46 GMT
USER memcache
# Wed, 21 Oct 2026 00:24:46 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:24:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef860c09830f242b510bd21830be41048e726b8247f9e3e6ca960df5aa70b091`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369f29451a3da0636f38f97b7814d38058e7a89f9f5e02e55acbd06d10cb65be`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 135.4 KB (135406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865b110dbcf7a46dcceadd0d2dcb0affb52c9ffa477509e8a40982dc8b2b9df0`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 2.2 MB (2171639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1591c9168aff2ae015310546d217e90a11081b00a8aa067fd84e20f36918b1cf`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13125f0da15b1171fad06722663fa99b476bb8c2a45c6f6b903a910794c2d968`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:869caad97945d570a3aaf3212f830013244598b0cd80712837f205ec18dbfea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4383497527ebfa53c7f7b8f7f34bc1381f8474d52741b37fbaab3fa25cc8f7`

```dockerfile
```

-	Layers:
	-	`sha256:e4b44f137263c271873c34130d62d7ff490e95720c6ce5f9218e755891c2153d`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ec7b6ef915d77389be3e949bea6ca62683bf2a2114bca576a4c2a66aff65889`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d931ae954035796f5280028f7a69466acf84e64a7f49e8212c9d389ca18f3a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ab1308386fbf8e0a3b3af71b291010ddc6182e0fc888e92a53cd2afad9edaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:45 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0b0df3b9fee704c536551180639798b24e4db788452d8aad10aa59fdafe4a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259e38514f5df58844e199b77de4b9a83681410e009135a56a5b69fd406fcef5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 153.5 KB (153537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6140ed673ccd18638ac7fc5d51995e03b5068f8f07c69e48f831a2fa953f7dee`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.3 MB (2266870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf3980258ddc215dbab1ae72102219aab8ace400c770facc1c386379d8a1a22`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84d44fc30b4a3ff1a73e1d4989b8cf935850bd82a7d4fac3a6bc8e03520ff5e`  
		Last Modified: Wed, 21 Oct 2026 00:21:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:1ca77cbcc279c21fa6346a99dc8a34c9d46f194d6549d76824dd59784b3a096f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78529a2a214f27b350e2d1f4bd5f591b39a264c69170a90f8231810acf86cff`

```dockerfile
```

-	Layers:
	-	`sha256:05a3885b59a70ee721a25f7e0cb95ed0ad7ce5a4e55caa9e850bd1d4f48f90e5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b963475c30bde686cee21d53730e8e936d6b990510fd38c35e012f0385485ad2`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:3ef96294d03ef986d2c884df2bda367a4064a14b9adfdabb7468fd2add7fe17b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b95bc1d6349b39e6512611c95cbfd5e7408831cf24932ebbf5e649ea378b8f41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:40 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d221d2a1c8ef54b8aabc532f31d7516e6b07f25b2cd51d19c66850f47a6a62e7`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a5193e96b710aa8ce5332c65dcb80a82ebb1640d9aeaa7d1b91abb75e7393d`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 147.5 KB (147541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea7f4457bbf4d5fd7460823f416b9a25d15c44e6da4cfd2e05c7023da95e8fd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.2 MB (2231206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d1606806deed52e00fa1497c76d9c58cb2bda48237ac2bf5ef910d7bee1970`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4231a4337b389168a66ee9bfb7bbe2cabcf7c40e31829bf319ea10bde131bb0f`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:9a7da5b653199ec55efd87f4364209865961be9b7f6c0d3ecf1b92a5e748b106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9616497bbca6f74053251e779aa49613081d82b6f5a49029bad91be207011925`

```dockerfile
```

-	Layers:
	-	`sha256:7a885ad870936dbaa4c9e8f514280fd029fbbb64dd5ed62f6dbfa406106aa56e`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c43b1de7f03ebe34c0fbae2dbf1e7f19448e3f5944e8f788cbdabad55e9e10bd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 22.1 KB (22094 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:92f0edc3aed16f2b75e46eb1684674d03ed5dd0a22d6037acb0b1e9004f89ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36223726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68344b7edb0321fb25a79eec6ae9f3bbb3d19b00f7424acf5268754e6691ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:37:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:37:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:41:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:41:39 GMT
USER memcache
# Wed, 21 Oct 2026 00:41:39 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:41:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed0a06bf95c2ad52951b4b05ac45e7352bdd49a297fde2783f54ff7b13f964a`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0594bb91d5f4c9183f9c12d34b2f9ee1728341dafb447152e1b7b8e1f28d3bae`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288cddf22e0d395f6251b131c67d94505b0af604ea847d4b3f58eeb8eb2361cb`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.4 MB (2399889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac1f2f55bd6905775e83e35e18b857debac2d792625b52ab8587870859f3182`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c7a848cd976bc4612e7a4d5beed94e148e4ef510292011035a80a316195f70`  
		Last Modified: Wed, 21 Oct 2026 00:41:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:ce71593e6788dc45452f65572fa35f61942d7c3352b03a789fbc2a78c836e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acba1f4e8dd1e0b94def660a8832a1ca0258751b8d917c19826aeadb0e0c3fbc`

```dockerfile
```

-	Layers:
	-	`sha256:f36698561e9037022c7e9cbd6ed6a9269b2d3b7eb72a08d4c9074a023a0104db`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82465130551e7f1d2505c78eb707852d9b2370403afe8921c0e12937230302`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; riscv64

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

### `memcached:latest` - unknown; unknown

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

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:cc9d277ea9149dbc992ece77b2b9a05b22e7c3d97bfb54751f6cdf2043ec3e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a84eca603adf0b8a2864e4f2684ab55815af464e2cabf36daff38311506720`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:14 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:28 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6e7db5edad5d5d77bd578d428573e7e2b113cc96c063ae2bfaef22233258c9`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8e8b1ce582e8a042921cb84abad1bb6b019085f50d6d78443639bb7c16a2f`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 140.5 KB (140539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179204f888c3b252201b6be3789344ea11a9c52ffa7562d02545c30323c4d9ed`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.3 MB (2301432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef064678b41c0fef00e1197d43d29e35f56e2de4cc60c02be4f6d84201b1d548`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcce6247e54a545b4cd116264e5e70c3a5568f72f3d3c11cae0e6004ed0d9fa`  
		Last Modified: Wed, 21 Oct 2026 00:21:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:bea8dab22ada52b04f0fc5c686d7de19107ac75bd355294bd55f53d923796a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296e416020b7119fe4fa8a7197fbcded3aa978ff117c1f197a35b1d29d3d4193`

```dockerfile
```

-	Layers:
	-	`sha256:db1cb1162d178395480407cce2d85c3d808dc8c646db60aa345d4be8cae39efb`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69afc2ff3d9830e4fcc26d942a923485a5bc1b5279bf7add2e93d4668854b51b`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:trixie`

```console
$ docker pull memcached@sha256:ab65f39bfa5b1e31bff3bdccfd48af85fee6fdcbf0eb877175fcb170a4e1bd2f
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
$ docker pull memcached@sha256:944116c797245b0fc4c7f40b21fbb09279bdaa61bdbc90096ab54e553f5b4c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32268188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b313232b4d0d2ad4bb4ae366dddcb943252a987cdee73b8a5ac60de2b69485b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:19:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:19:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:22:30 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:22:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:22:30 GMT
USER memcache
# Wed, 21 Oct 2026 00:22:30 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:22:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d42ffafdd2fc34bda4f58d4502b0891798a9f3be0d611a857431b2184e5140`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56da813fbb88940e53c2d5bb49f0b718eaded7f7092aa3409ef15e4a61affb08`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 136.7 KB (136730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55c88bdf736644f60c865f26eff26d70012111e84c7527ccd1acd01aa499fe0`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.3 MB (2286365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88004839e2874e521e8ee05182241adc9a9ec17e0db21d59e6dbe95c8b535903`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76a164aa3b7877e3e8cdc58ff3dc0644504d8ac0dfecf6ed94249ff5693da03`  
		Last Modified: Wed, 21 Oct 2026 00:22:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:72db79008d92934b0de5f4d7f57a3221fd4c92516800e3ee4c81b481443d2b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a9a647743c10e71a1ace444b541e7d501d5e96e94f486826450fe9509ea566`

```dockerfile
```

-	Layers:
	-	`sha256:ede5848b3bf46da98d95030ad35e7885a0a9a8ef5b108518bb68dad0221b5b36`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 2.0 MB (2014332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3c82d6d3a9508e7388a3ca9fa8ab396af4c068257cc2d1f448fbf031e630e1`  
		Last Modified: Wed, 21 Oct 2026 00:22:36 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:48a34bce2b46df10fbac4812bf242dffad75bbb63c375dbf24a28d7cc2bfc6df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30370759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0e4cee39b02ca3eeaba6dc02a7a58a705b8dd71ca303dee0784c82cb69371c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:01 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:22 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:22 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:22 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca85f4dc5b131158188d5f165d11da3d989c67b002001c1a637d531906b0428`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734e58ebc054a9b66e71fe61486ad7d9fb341c3d69a3d24ced9d6d5e2a4a9a2a`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 144.2 KB (144189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c0ebfb1e5267105a33ca9ad4eda8c8634d26c7e1a1d0c53985a0b1672ff792`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.2 MB (2217264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3b1931981085f8d64226bfbf2b4d11f37405251dcb2b1721e7639a4c15e8ff`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36e86131fea102ea4b26b1b8f363c4aa51206fce51fb77a3ccc3dbf1dbb1d18`  
		Last Modified: Wed, 21 Oct 2026 00:19:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:034516d433c6eaa6c5a68e6394540c52b17cddc7e13ece4e5f16ff48425f30c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2039639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7543e01f89cb50686d2767e606aa4fdbc106128aa8f4d35162689ace138a552c`

```dockerfile
```

-	Layers:
	-	`sha256:44cb5b0d78723bdb5c55c9b14585ad5bb26364f34b30aaa212f8cddd35fddbdf`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 2.0 MB (2017335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75a94bdad3c22654947ebce1e8ace7ee9764c4f67e1a8913e9e7ab17127b7b02`  
		Last Modified: Wed, 21 Oct 2026 00:19:29 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b5eb4f05ebd23c822cfa8a6d2a30d11f57de00e5ce84ed9b36f55e928b979aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28566953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8768a44c745454aab3aa6ae8cd8adc69afd67d05f999d7f4f337fd402965e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:21:35 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:21:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:24:46 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:24:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:24:46 GMT
USER memcache
# Wed, 21 Oct 2026 00:24:46 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:24:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef860c09830f242b510bd21830be41048e726b8247f9e3e6ca960df5aa70b091`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369f29451a3da0636f38f97b7814d38058e7a89f9f5e02e55acbd06d10cb65be`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 135.4 KB (135406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865b110dbcf7a46dcceadd0d2dcb0affb52c9ffa477509e8a40982dc8b2b9df0`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 2.2 MB (2171639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1591c9168aff2ae015310546d217e90a11081b00a8aa067fd84e20f36918b1cf`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13125f0da15b1171fad06722663fa99b476bb8c2a45c6f6b903a910794c2d968`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:869caad97945d570a3aaf3212f830013244598b0cd80712837f205ec18dbfea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2038096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4383497527ebfa53c7f7b8f7f34bc1381f8474d52741b37fbaab3fa25cc8f7`

```dockerfile
```

-	Layers:
	-	`sha256:e4b44f137263c271873c34130d62d7ff490e95720c6ce5f9218e755891c2153d`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 2.0 MB (2015792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ec7b6ef915d77389be3e949bea6ca62683bf2a2114bca576a4c2a66aff65889`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:d931ae954035796f5280028f7a69466acf84e64a7f49e8212c9d389ca18f3a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32622398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ab1308386fbf8e0a3b3af71b291010ddc6182e0fc888e92a53cd2afad9edaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:45 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:45 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:45 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:45 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0b0df3b9fee704c536551180639798b24e4db788452d8aad10aa59fdafe4a3`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259e38514f5df58844e199b77de4b9a83681410e009135a56a5b69fd406fcef5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 153.5 KB (153537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6140ed673ccd18638ac7fc5d51995e03b5068f8f07c69e48f831a2fa953f7dee`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.3 MB (2266870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf3980258ddc215dbab1ae72102219aab8ace400c770facc1c386379d8a1a22`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84d44fc30b4a3ff1a73e1d4989b8cf935850bd82a7d4fac3a6bc8e03520ff5e`  
		Last Modified: Wed, 21 Oct 2026 00:21:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:1ca77cbcc279c21fa6346a99dc8a34c9d46f194d6549d76824dd59784b3a096f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2036990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78529a2a214f27b350e2d1f4bd5f591b39a264c69170a90f8231810acf86cff`

```dockerfile
```

-	Layers:
	-	`sha256:05a3885b59a70ee721a25f7e0cb95ed0ad7ce5a4e55caa9e850bd1d4f48f90e5`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 2.0 MB (2014640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b963475c30bde686cee21d53730e8e936d6b990510fd38c35e012f0385485ad2`  
		Last Modified: Wed, 21 Oct 2026 00:21:52 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; 386

```console
$ docker pull memcached@sha256:3ef96294d03ef986d2c884df2bda367a4064a14b9adfdabb7468fd2add7fe17b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33733797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b95bc1d6349b39e6512611c95cbfd5e7408831cf24932ebbf5e649ea378b8f41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:42 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:16:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:19:40 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:19:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:19:40 GMT
USER memcache
# Wed, 21 Oct 2026 00:19:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:19:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d221d2a1c8ef54b8aabc532f31d7516e6b07f25b2cd51d19c66850f47a6a62e7`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a5193e96b710aa8ce5332c65dcb80a82ebb1640d9aeaa7d1b91abb75e7393d`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 147.5 KB (147541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea7f4457bbf4d5fd7460823f416b9a25d15c44e6da4cfd2e05c7023da95e8fd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.2 MB (2231206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d1606806deed52e00fa1497c76d9c58cb2bda48237ac2bf5ef910d7bee1970`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4231a4337b389168a66ee9bfb7bbe2cabcf7c40e31829bf319ea10bde131bb0f`  
		Last Modified: Wed, 21 Oct 2026 00:19:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:9a7da5b653199ec55efd87f4364209865961be9b7f6c0d3ecf1b92a5e748b106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9616497bbca6f74053251e779aa49613081d82b6f5a49029bad91be207011925`

```dockerfile
```

-	Layers:
	-	`sha256:7a885ad870936dbaa4c9e8f514280fd029fbbb64dd5ed62f6dbfa406106aa56e`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 2.0 MB (2011489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c43b1de7f03ebe34c0fbae2dbf1e7f19448e3f5944e8f788cbdabad55e9e10bd`  
		Last Modified: Wed, 21 Oct 2026 00:19:46 GMT  
		Size: 22.1 KB (22094 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:92f0edc3aed16f2b75e46eb1684674d03ed5dd0a22d6037acb0b1e9004f89ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36223726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68344b7edb0321fb25a79eec6ae9f3bbb3d19b00f7424acf5268754e6691ff78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:37:44 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:37:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:41:37 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:41:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:41:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:41:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:41:39 GMT
USER memcache
# Wed, 21 Oct 2026 00:41:39 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:41:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed0a06bf95c2ad52951b4b05ac45e7352bdd49a297fde2783f54ff7b13f964a`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0594bb91d5f4c9183f9c12d34b2f9ee1728341dafb447152e1b7b8e1f28d3bae`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 170.4 KB (170390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288cddf22e0d395f6251b131c67d94505b0af604ea847d4b3f58eeb8eb2361cb`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.4 MB (2399889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac1f2f55bd6905775e83e35e18b857debac2d792625b52ab8587870859f3182`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c7a848cd976bc4612e7a4d5beed94e148e4ef510292011035a80a316195f70`  
		Last Modified: Wed, 21 Oct 2026 00:41:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ce71593e6788dc45452f65572fa35f61942d7c3352b03a789fbc2a78c836e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2040160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acba1f4e8dd1e0b94def660a8832a1ca0258751b8d917c19826aeadb0e0c3fbc`

```dockerfile
```

-	Layers:
	-	`sha256:f36698561e9037022c7e9cbd6ed6a9269b2d3b7eb72a08d4c9074a023a0104db`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 2.0 MB (2017933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c82465130551e7f1d2505c78eb707852d9b2370403afe8921c0e12937230302`  
		Last Modified: Wed, 21 Oct 2026 00:41:52 GMT  
		Size: 22.2 KB (22227 bytes)  
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
$ docker pull memcached@sha256:cc9d277ea9149dbc992ece77b2b9a05b22e7c3d97bfb54751f6cdf2043ec3e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32354924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a84eca603adf0b8a2864e4f2684ab55815af464e2cabf36daff38311506720`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:18:14 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 21 Oct 2026 00:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 21 Oct 2026 00:21:28 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 21 Oct 2026 00:21:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:21:28 GMT
USER memcache
# Wed, 21 Oct 2026 00:21:28 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 21 Oct 2026 00:21:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6e7db5edad5d5d77bd578d428573e7e2b113cc96c063ae2bfaef22233258c9`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8e8b1ce582e8a042921cb84abad1bb6b019085f50d6d78443639bb7c16a2f`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 140.5 KB (140539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179204f888c3b252201b6be3789344ea11a9c52ffa7562d02545c30323c4d9ed`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.3 MB (2301432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef064678b41c0fef00e1197d43d29e35f56e2de4cc60c02be4f6d84201b1d548`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcce6247e54a545b4cd116264e5e70c3a5568f72f3d3c11cae0e6004ed0d9fa`  
		Last Modified: Wed, 21 Oct 2026 00:21:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:bea8dab22ada52b04f0fc5c686d7de19107ac75bd355294bd55f53d923796a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2037921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296e416020b7119fe4fa8a7197fbcded3aa978ff117c1f197a35b1d29d3d4193`

```dockerfile
```

-	Layers:
	-	`sha256:db1cb1162d178395480407cce2d85c3d808dc8c646db60aa345d4be8cae39efb`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 2.0 MB (2015769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69afc2ff3d9830e4fcc26d942a923485a5bc1b5279bf7add2e93d4668854b51b`  
		Last Modified: Wed, 21 Oct 2026 00:21:39 GMT  
		Size: 22.2 KB (22152 bytes)  
		MIME: application/vnd.in-toto+json
