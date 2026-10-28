## `redis:7-bookworm`

```console
$ docker pull redis@sha256:de248056965d51eaccc002214e9ebd9becfc8ca4e1fc76f89286882475b7eca7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `redis:7-bookworm` - linux; amd64

```console
$ docker pull redis@sha256:a7aad82554197a54c653388bfded882a59d6b4a02468484bc31bae6772dcc42c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43606787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9823645c452a9a994f575ed238e1a4f67365acbf8e842db769060820fab06449`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:32:10 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 28 Oct 2026 01:32:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:32:56 GMT
ENV REDIS_VERSION=7.4.12
# Wed, 28 Oct 2026 01:32:56 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Wed, 28 Oct 2026 01:32:56 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Wed, 28 Oct 2026 01:32:56 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 28 Oct 2026 01:32:56 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 28 Oct 2026 01:32:56 GMT
VOLUME [/data]
# Wed, 28 Oct 2026 01:32:57 GMT
WORKDIR /data
# Wed, 28 Oct 2026 01:32:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:32:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:32:57 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 28 Oct 2026 01:32:57 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bd82aed298704d1f1770b30cf003cf1e4daa823f4793c424cad13b5d57a777`  
		Last Modified: Wed, 28 Oct 2026 01:33:04 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142efe7e4cd9c3c847981ffd7c442790ac6308020432b32b6556b2ab445cc959`  
		Last Modified: Wed, 28 Oct 2026 01:33:03 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742179fec70322d41d9123050c36aff1c7fbc20260d6ab055e751a92e02b2cb4`  
		Last Modified: Wed, 28 Oct 2026 01:33:04 GMT  
		Size: 15.4 MB (15356644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ff9d4e92de6be4b375061668e4c024635464590d7e6af2e4e1ae05cb860bc5`  
		Last Modified: Wed, 28 Oct 2026 01:33:04 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6aecb83344b816eec9d4dbb4e5200d9a3ee1beca86747161b8a11b232c8c60b`  
		Last Modified: Wed, 28 Oct 2026 01:33:04 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:453c0892de49c03f4b4de89a2a375f5ba04726ec0486cce6b55f7657138ba003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406a97ce2a3efc8e753f7052e9f43f8ca8feb0d8af998a2f98355891a66a23c3`

```dockerfile
```

-	Layers:
	-	`sha256:6b39f47a897c6a2396f9724f2481c727a57940dd236c8b0913012d5b2c33e241`  
		Last Modified: Wed, 28 Oct 2026 01:33:03 GMT  
		Size: 2.4 MB (2373154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3514c873383575b183b89af5e6068087042bbbb3b130361417be8bf0c3f8de2b`  
		Last Modified: Wed, 28 Oct 2026 01:33:03 GMT  
		Size: 25.1 KB (25149 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; arm variant v7

```console
$ docker pull redis@sha256:1fed4d1dbf48ceb0a7cce8eb57d8d066d1a5f3e013c945ea029dfb50a8eae63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39380335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2191d356ce4d88adf615fe74d6ff641447eafbdb67840f717053ecdf0b1ae6d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 16:36:08 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:36:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:37:04 GMT
ENV REDIS_VERSION=7.4.12
# Mon, 26 Oct 2026 16:37:04 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Mon, 26 Oct 2026 16:37:04 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Mon, 26 Oct 2026 16:37:04 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:37:04 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:37:04 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:37:04 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:37:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:37:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:37:04 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:37:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba54d6154aa98962c077127b9fbb0e092dea8a8fbbbf7ed3128a5f0b38d681a5`  
		Last Modified: Mon, 26 Oct 2026 16:37:11 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e27def59890e203aae9c6f9dfdd86c41927b7c4a954c429ebe321de13d11f67`  
		Last Modified: Mon, 26 Oct 2026 16:37:11 GMT  
		Size: 688.5 KB (688482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49d8800063c95939108c046b1fd36610e15642c1f5197da8685811030cbe40e5`  
		Last Modified: Mon, 26 Oct 2026 16:37:12 GMT  
		Size: 14.7 MB (14728534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d446099fd148f83d432fd283fdaab16f627afb329706f53f2d13d80b36a281`  
		Last Modified: Mon, 26 Oct 2026 16:37:11 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359578e31823985c05ba989b51f6158af13fcaf104a8f2b104628ad14ec55558`  
		Last Modified: Mon, 26 Oct 2026 16:37:12 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:4a40fd24f052fafef3aadff316882bb5d5f0baaa0c8d83c99e531cfff5e7eed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41976cb39c5c9464ca289c0dfcbef272c1bb40f361542ea3f664b868f449ced7`

```dockerfile
```

-	Layers:
	-	`sha256:068088c23db507852432199cf49dcf2535bb39dd1066d30ba47c5b457efe59d9`  
		Last Modified: Mon, 26 Oct 2026 16:37:11 GMT  
		Size: 2.4 MB (2375391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8e480f2aad3cccba4d37cd2aefa23b620e9976c62c22f4f2919c57c36c7f71a`  
		Last Modified: Mon, 26 Oct 2026 16:37:11 GMT  
		Size: 25.3 KB (25299 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:a231dcbb83e4e739e8eac066cb2b1b065211a0f7647b3ad739bd2aa12d3920c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44188506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c63c8c8ad25ce4cb2fad4bc31b9f234f00eb6d9f5318ca64ef6d26dab7d22d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 16:39:39 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:39:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:40:28 GMT
ENV REDIS_VERSION=7.4.12
# Mon, 26 Oct 2026 16:40:28 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Mon, 26 Oct 2026 16:40:28 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Mon, 26 Oct 2026 16:40:28 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:40:28 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:40:28 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:40:28 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:40:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:40:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:40:28 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:40:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf266425f61c3209c14dfc6d61fed9f2bf63d00cb852092399f30931825d4e1`  
		Last Modified: Mon, 26 Oct 2026 16:40:35 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:847c74626187579bf05b3d07a58410abbec4ecdb465deaac8c677ba5ed25bea3`  
		Last Modified: Mon, 26 Oct 2026 16:40:36 GMT  
		Size: 688.5 KB (688544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031e9f264d6966189889d0a226a9968670cb310daafd44865b9608b029093e44`  
		Last Modified: Mon, 26 Oct 2026 16:40:36 GMT  
		Size: 15.4 MB (15359708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb69f7f2c0325d53bc49595dd912d91c310d29cf1a80655173146ea94bd9f3f`  
		Last Modified: Mon, 26 Oct 2026 16:40:36 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c04db61b12a3674c2fc216918edd33e66ab4ffb79896b99cef2a3b1c431927`  
		Last Modified: Mon, 26 Oct 2026 16:40:37 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:dcb017df5b6823621b340f3bececa00f1b11e7ef85abc28f1a0752a9561fc630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a3ffb88bb36e17a0ea79552b5d10da6252e709d396833459b9a0416f91153a`

```dockerfile
```

-	Layers:
	-	`sha256:f1c7765993577eb115df5df906eb90b12c7b060a28604ce20401de9cec6c2139`  
		Last Modified: Mon, 26 Oct 2026 16:40:36 GMT  
		Size: 2.4 MB (2373435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fbf214d6180906ee77dc0c603506473d78b5702852ef62860703a5beca64461`  
		Last Modified: Mon, 26 Oct 2026 16:40:36 GMT  
		Size: 25.3 KB (25337 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; 386

```console
$ docker pull redis@sha256:9ae928481cc4844d62337091f77b1844749d36e23794a6ef546c913f00518009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44114200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cab597710a16ba1a6de75f026e687ba685a37e0fa8a4efb24bb763cb36404d11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:41:44 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 28 Oct 2026 01:41:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:40 GMT
ENV REDIS_VERSION=7.4.12
# Wed, 28 Oct 2026 01:42:40 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Wed, 28 Oct 2026 01:42:40 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Wed, 28 Oct 2026 01:42:40 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 28 Oct 2026 01:42:41 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 28 Oct 2026 01:42:41 GMT
VOLUME [/data]
# Wed, 28 Oct 2026 01:42:41 GMT
WORKDIR /data
# Wed, 28 Oct 2026 01:42:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:42:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:42:41 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 28 Oct 2026 01:42:41 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a92fef5e4003f0c83b5ec41a8575acfe111e7d8f56af12c933f40566989ef4`  
		Last Modified: Wed, 28 Oct 2026 01:42:48 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b9604843894ab29236e5bff858ed393562d86b52b190b035ab3c3250c71486`  
		Last Modified: Wed, 28 Oct 2026 01:42:48 GMT  
		Size: 872.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08faadfeba8c6668670c61e42858fa4007f456d9f4b2515fdd0f55303efb1a95`  
		Last Modified: Wed, 28 Oct 2026 01:42:48 GMT  
		Size: 14.9 MB (14872720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c69f3a5ee68cd4ffdb303dfbb03ac249dece434d264e4d781b886a003f58ce46`  
		Last Modified: Wed, 28 Oct 2026 01:42:48 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a714a1b50c153f046938b3ca1a3d67e1f626f19b376ff25ae3136d6cb19a11f3`  
		Last Modified: Wed, 28 Oct 2026 01:42:49 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:70e2f93d7b31c5db05a1b5d305d5904d61990e1f1397428d6259ba2a607678ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2395428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:265ec0d090769aae2dbc73fe37e5eec65a5ec7bbbe7b62bd1d1747a7dac6d703`

```dockerfile
```

-	Layers:
	-	`sha256:15eee40ab7ea7f7df600dd81b057d72ad1152cc0b65e26a5087753c42ab4d24a`  
		Last Modified: Wed, 28 Oct 2026 01:42:48 GMT  
		Size: 2.4 MB (2370327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e782881ab4d5c01ca65455fa0c27c8bf3ce89c5b6429a339928fc10e34400125`  
		Last Modified: Wed, 28 Oct 2026 01:42:48 GMT  
		Size: 25.1 KB (25101 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; ppc64le

```console
$ docker pull redis@sha256:3595e52dda125582b679425abbbdff9d237d6bb86e190d3e1d3da521578c41fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48616759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:683e868448b3b19d3ac6646fa34ab9bbb3a2a48a4c73fe641b3ad3afeebfb9dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 04:12:50 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 04:12:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:49:07 GMT
ENV REDIS_VERSION=7.4.12
# Mon, 26 Oct 2026 16:49:07 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz
# Mon, 26 Oct 2026 16:49:07 GMT
ARG REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
# Mon, 26 Oct 2026 16:49:07 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:49:08 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.12.tar.gz REDIS_DOWNLOAD_SHA=324ab63d55c607639b419f547b213c62ae39ff50e09870e450a11c272567b84f
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:49:08 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:49:08 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:49:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:49:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:49:08 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:49:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7f8e25d896f6052dae39fef5bce082c21c7ab04d17beb02a929d2a4294f846`  
		Last Modified: Wed, 21 Oct 2026 04:15:27 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e921b88adaa5ced0d36ff4eb4611c8e83009ba4bdb11cf1c265f35769c95b6`  
		Last Modified: Wed, 21 Oct 2026 04:15:27 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22929137618d99afcdd6681446d3bae7f96cab7415cd0eff1178cd124c1dfd09`  
		Last Modified: Mon, 26 Oct 2026 16:49:23 GMT  
		Size: 16.5 MB (16520847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfedd6621451d4ba34dca044a391507cf75fcdb022456c1ab9f8b8dc586fc919`  
		Last Modified: Mon, 26 Oct 2026 16:49:23 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0dae639ca9a0731ccb70fb9f329f8418ad79f8284d2e46e538477a31be20542`  
		Last Modified: Mon, 26 Oct 2026 16:49:23 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:3bf8bc1b1e22c059d0ddb2180c298752a1e7b1187c477d1630ef34f5634de9ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a504010a6ddb77cca964c6eb732d21cc794e25d53b36d37a4ff057c76f5728`

```dockerfile
```

-	Layers:
	-	`sha256:e0c3ec754c6e425a933a759fb7ec441c2acf197c6afe0c72e6a3fd61581133ca`  
		Last Modified: Mon, 26 Oct 2026 16:49:23 GMT  
		Size: 2.4 MB (2377548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34ad82d3f0b341ecc6dd3d48b7fc0ed07fae9b57dac24199f8d0f50f54a80daa`  
		Last Modified: Mon, 26 Oct 2026 16:49:23 GMT  
		Size: 25.2 KB (25211 bytes)  
		MIME: application/vnd.in-toto+json
