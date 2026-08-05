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
$ docker pull memcached@sha256:0af07b27b7dd46da5ea64e963619aaef2ba43e301a5695c9d995ca02b62c8bd7
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
$ docker pull memcached@sha256:ccb35654049b320579c935b2b1e9f85ee5a44a39f7610f882f94d7f601a6a50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a4ce1d1bec64953298b869a1badf3450104d48e5f4a3858f20b4f305c3208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:14 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:14 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a096f15d16849ee4f16e3b41f4e48d008fe43a72a7a112ea870b002efc8356`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f5e6ef359677bef530149505b6189d9f0933293da3a15a3a8f59eecdbaced6`  
		Last Modified: Wed, 05 Aug 2026 00:24:20 GMT  
		Size: 136.7 KB (136749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c48aad2dfa59b64f33b785c20a5b89cce95c449c18b7311238031bfec947f8`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.3 MB (2285907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae52c0b672cfc5e973a71da19c243bca7ded28515d73209552ebbdb58949027`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f69ba15052d912c083e0ab55990e2ce3038dd57a45f5a6434d498d8c57fc129`  
		Last Modified: Wed, 05 Aug 2026 00:24:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:df46cd58b8bae4beaaa6aaf3aa82222bfef830751bea8e88c5cd88c960c25b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46095dfa57949fd96eae724d47834edd2d4403ea859090b89df9d5199e529b89`

```dockerfile
```

-	Layers:
	-	`sha256:95377610a6a6f8825acf7368a5bd0d1d049d2441a5fccb21f7b754f3bb016a44`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.0 MB (2008404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bab95fb87e90aa875a77aacc6ddab575696f1c26b95c563a1e231a2c3f3b924`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b7d2148d60048c4a49f4ba1363cb3e92980ba0892d37554f8d2b6e482174bcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffb87534a30c8ad833ceb444fddaa50b2b9d7d261b529951e16d2ceadf96260`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:31 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:31 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c25f5576b8a521d149322bd7272e53658bd730f3d4f31f63eb561514891c10f`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5454f1006ebaa859bd817b78f44b648ae518610a504f2795c764ed8db8ba78`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 135.4 KB (135430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502b95b9c118080a67abdfae0a6079d280edcc5ad958a323c11775c13de0c875`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 2.2 MB (2171157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfacf40d76ccf4298c63fa2d5df2be1d480c0c33a18328c3575c4d9ce5e7149`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514d4e18048f2b128d9ffd944f966f67baf0c8eceffe379789c37b89cd586e12`  
		Last Modified: Wed, 05 Aug 2026 00:24:39 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:ff5385209c0b68bcbce8d8552227812a58ec3b6da96bb283719006d54f0a33e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8173d5f99a78873c419614afc4eb8f328223745bc3aa3ae681102256b50cf36d`

```dockerfile
```

-	Layers:
	-	`sha256:f7d091bc1548c8a9b1c3ddda29767b1243ac9ba9b2163bea37a0e91f88c4424b`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 2.0 MB (2009864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62394eef9f950016112f6eddee93fc5a31d9c824883409d90254a8a706522aa5`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c26e2dbb705767b0fe54266d3799c5fa462a4c007968e112cd955f7f5defe16f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32565258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37e3f7732ad15a639ea52f41c683cceeb10795d22fa8e557a0e963db247fde2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:24 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79566b6be2f0f0f064e109b85a6ed2c8cf1a9bd28e1d560657249390e01805e7`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cba6742a07d9fa168a009d0d76eaf6bdca97a401b656b78228c6992d2c0cb0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 153.6 KB (153562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046ead1d74b2c959dfa03d852794ac216e13b1445b2239c7aea023bd14a0c8fd`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.3 MB (2266579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73df53c49bedf5493189f5b7f0c2ea86c412745f9a16773d585d616bf877634b`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b10dbce7d68e27ed4fe604a0b7a35076c7c08bd0fcf1ffc5148c37c1017c3b4`  
		Last Modified: Wed, 05 Aug 2026 00:24:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:cd8749a2f0ddf3ac4f9a853703e230470f5a57d38d2334c61689cb8c8c1b9fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254b4e580eab27155d005f12b86039576decb47b7db4c58484299a1d564302cd`

```dockerfile
```

-	Layers:
	-	`sha256:ee4994e31bf079d903969ee84ea81d848a67ccc5295978218b61b31f3a2a9d0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.0 MB (2008712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90a432a5aabf8f55050245e3a0650271404d6999cb76621fa523871364526b44`  
		Last Modified: Wed, 05 Aug 2026 00:24:30 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; riscv64

```console
$ docker pull memcached@sha256:e58d81ee4ec0beee328698e52027a4c467560d25140c0067de8bd073f595d345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedd5ee0078cedb482992b2bb7939073f75cb88da1f0cdf8b295dc47e17ac410`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:48:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 14 Jul 2026 03:49:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 14 Jul 2026 04:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:27 GMT
USER memcache
# Tue, 14 Jul 2026 04:21:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 14 Jul 2026 04:21:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd68048ed888ccb62d214c610c38f54688272440b1ad77ee4f609cfc15d1eb2b`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372629535cb7f3efb388f29ed865961910501043e179c32197ed26756d1a3486`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee948a50e3a5e03d401da8f5126af26ec7909b8e2296fa556f5efbfb2111743e`  
		Last Modified: Tue, 14 Jul 2026 04:22:13 GMT  
		Size: 2.2 MB (2212877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fad32a0dcd7b477c1e1429936306f0908186518b1774693b51e692e9e7878e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4064931bd82f5a4040e384b47a49d9527b183a69e143ed785daeb1c1e41fefd9`  
		Last Modified: Tue, 14 Jul 2026 04:22:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:a1c8255458da1b4cdbc93657869386f3145f7c80ea743b0088d190c939dd3150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca9f22cfd4be96886740197f7e426c6021f0463f1ba83dc4212cdb7f5b9602`

```dockerfile
```

-	Layers:
	-	`sha256:3ececf73360df7dfa9116918db610eb8e3a96cf5512d12070861b656b6a4408e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da1aeb2b8da75a5f42c6b321ee75d40f768084ccb7412cce71efc09f340471eb`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:082094e01eb3e909cf30f1afc77e99b38d6804ade74f0ecd79d9848392b48fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32290102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa924aef4001ac273bcb67aadff058abce64a40310faa01d03cf1cf0e897aa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:22:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:22:00 GMT
USER memcache
# Wed, 05 Aug 2026 00:22:00 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:22:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2b8541d688d5621e59a9c8baa14a49aad2148b9bad2194ab63c33fdb408e77`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d55578296b59bdab8b27002b870921e96c6490b964497665ac6dfcdaf2d4f1`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 140.6 KB (140603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de2e9aed2d4564b6f23a88b8dcb96b624c4f4f71b9cc06d85a13193a0cb93b7`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.3 MB (2301413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7e72b31c51234471453a220a96ac9460837c1d8a29ad9c9ffd7f8feb3ead43`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189dbbaacaa70a3fad49811ecc19de57f34921b1db609c08728261ea560a4838`  
		Last Modified: Wed, 05 Aug 2026 00:22:13 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1` - unknown; unknown

```console
$ docker pull memcached@sha256:64b14b3ad36e4754e2fa859e80a2f74fc83f253b397ec0cb6b4b6ea3290a9f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896a68a5b7b962c83d564ad25e0d32831a67c27b0d362499b7f108acad12e613`

```dockerfile
```

-	Layers:
	-	`sha256:50443fc8ffa0a5e008855e436b8048d180adae91b4dee739a316dce06eea2217`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.0 MB (2009841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:604e1167091382c3e29010b5d1d1c2cab2e3a6ae68984433167509cd347c6c3b`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
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
$ docker pull memcached@sha256:0af07b27b7dd46da5ea64e963619aaef2ba43e301a5695c9d995ca02b62c8bd7
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
$ docker pull memcached@sha256:ccb35654049b320579c935b2b1e9f85ee5a44a39f7610f882f94d7f601a6a50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a4ce1d1bec64953298b869a1badf3450104d48e5f4a3858f20b4f305c3208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:14 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:14 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a096f15d16849ee4f16e3b41f4e48d008fe43a72a7a112ea870b002efc8356`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f5e6ef359677bef530149505b6189d9f0933293da3a15a3a8f59eecdbaced6`  
		Last Modified: Wed, 05 Aug 2026 00:24:20 GMT  
		Size: 136.7 KB (136749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c48aad2dfa59b64f33b785c20a5b89cce95c449c18b7311238031bfec947f8`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.3 MB (2285907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae52c0b672cfc5e973a71da19c243bca7ded28515d73209552ebbdb58949027`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f69ba15052d912c083e0ab55990e2ce3038dd57a45f5a6434d498d8c57fc129`  
		Last Modified: Wed, 05 Aug 2026 00:24:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:df46cd58b8bae4beaaa6aaf3aa82222bfef830751bea8e88c5cd88c960c25b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46095dfa57949fd96eae724d47834edd2d4403ea859090b89df9d5199e529b89`

```dockerfile
```

-	Layers:
	-	`sha256:95377610a6a6f8825acf7368a5bd0d1d049d2441a5fccb21f7b754f3bb016a44`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.0 MB (2008404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bab95fb87e90aa875a77aacc6ddab575696f1c26b95c563a1e231a2c3f3b924`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b7d2148d60048c4a49f4ba1363cb3e92980ba0892d37554f8d2b6e482174bcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffb87534a30c8ad833ceb444fddaa50b2b9d7d261b529951e16d2ceadf96260`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:31 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:31 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c25f5576b8a521d149322bd7272e53658bd730f3d4f31f63eb561514891c10f`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5454f1006ebaa859bd817b78f44b648ae518610a504f2795c764ed8db8ba78`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 135.4 KB (135430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502b95b9c118080a67abdfae0a6079d280edcc5ad958a323c11775c13de0c875`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 2.2 MB (2171157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfacf40d76ccf4298c63fa2d5df2be1d480c0c33a18328c3575c4d9ce5e7149`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514d4e18048f2b128d9ffd944f966f67baf0c8eceffe379789c37b89cd586e12`  
		Last Modified: Wed, 05 Aug 2026 00:24:39 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ff5385209c0b68bcbce8d8552227812a58ec3b6da96bb283719006d54f0a33e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8173d5f99a78873c419614afc4eb8f328223745bc3aa3ae681102256b50cf36d`

```dockerfile
```

-	Layers:
	-	`sha256:f7d091bc1548c8a9b1c3ddda29767b1243ac9ba9b2163bea37a0e91f88c4424b`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 2.0 MB (2009864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62394eef9f950016112f6eddee93fc5a31d9c824883409d90254a8a706522aa5`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c26e2dbb705767b0fe54266d3799c5fa462a4c007968e112cd955f7f5defe16f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32565258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37e3f7732ad15a639ea52f41c683cceeb10795d22fa8e557a0e963db247fde2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:24 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79566b6be2f0f0f064e109b85a6ed2c8cf1a9bd28e1d560657249390e01805e7`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cba6742a07d9fa168a009d0d76eaf6bdca97a401b656b78228c6992d2c0cb0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 153.6 KB (153562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046ead1d74b2c959dfa03d852794ac216e13b1445b2239c7aea023bd14a0c8fd`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.3 MB (2266579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73df53c49bedf5493189f5b7f0c2ea86c412745f9a16773d585d616bf877634b`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b10dbce7d68e27ed4fe604a0b7a35076c7c08bd0fcf1ffc5148c37c1017c3b4`  
		Last Modified: Wed, 05 Aug 2026 00:24:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cd8749a2f0ddf3ac4f9a853703e230470f5a57d38d2334c61689cb8c8c1b9fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254b4e580eab27155d005f12b86039576decb47b7db4c58484299a1d564302cd`

```dockerfile
```

-	Layers:
	-	`sha256:ee4994e31bf079d903969ee84ea81d848a67ccc5295978218b61b31f3a2a9d0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.0 MB (2008712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90a432a5aabf8f55050245e3a0650271404d6999cb76621fa523871364526b44`  
		Last Modified: Wed, 05 Aug 2026 00:24:30 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:e58d81ee4ec0beee328698e52027a4c467560d25140c0067de8bd073f595d345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedd5ee0078cedb482992b2bb7939073f75cb88da1f0cdf8b295dc47e17ac410`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:48:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 14 Jul 2026 03:49:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 14 Jul 2026 04:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:27 GMT
USER memcache
# Tue, 14 Jul 2026 04:21:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 14 Jul 2026 04:21:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd68048ed888ccb62d214c610c38f54688272440b1ad77ee4f609cfc15d1eb2b`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372629535cb7f3efb388f29ed865961910501043e179c32197ed26756d1a3486`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee948a50e3a5e03d401da8f5126af26ec7909b8e2296fa556f5efbfb2111743e`  
		Last Modified: Tue, 14 Jul 2026 04:22:13 GMT  
		Size: 2.2 MB (2212877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fad32a0dcd7b477c1e1429936306f0908186518b1774693b51e692e9e7878e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4064931bd82f5a4040e384b47a49d9527b183a69e143ed785daeb1c1e41fefd9`  
		Last Modified: Tue, 14 Jul 2026 04:22:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:a1c8255458da1b4cdbc93657869386f3145f7c80ea743b0088d190c939dd3150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca9f22cfd4be96886740197f7e426c6021f0463f1ba83dc4212cdb7f5b9602`

```dockerfile
```

-	Layers:
	-	`sha256:3ececf73360df7dfa9116918db610eb8e3a96cf5512d12070861b656b6a4408e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da1aeb2b8da75a5f42c6b321ee75d40f768084ccb7412cce71efc09f340471eb`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:082094e01eb3e909cf30f1afc77e99b38d6804ade74f0ecd79d9848392b48fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32290102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa924aef4001ac273bcb67aadff058abce64a40310faa01d03cf1cf0e897aa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:22:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:22:00 GMT
USER memcache
# Wed, 05 Aug 2026 00:22:00 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:22:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2b8541d688d5621e59a9c8baa14a49aad2148b9bad2194ab63c33fdb408e77`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d55578296b59bdab8b27002b870921e96c6490b964497665ac6dfcdaf2d4f1`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 140.6 KB (140603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de2e9aed2d4564b6f23a88b8dcb96b624c4f4f71b9cc06d85a13193a0cb93b7`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.3 MB (2301413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7e72b31c51234471453a220a96ac9460837c1d8a29ad9c9ffd7f8feb3ead43`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189dbbaacaa70a3fad49811ecc19de57f34921b1db609c08728261ea560a4838`  
		Last Modified: Wed, 05 Aug 2026 00:22:13 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:64b14b3ad36e4754e2fa859e80a2f74fc83f253b397ec0cb6b4b6ea3290a9f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896a68a5b7b962c83d564ad25e0d32831a67c27b0d362499b7f108acad12e613`

```dockerfile
```

-	Layers:
	-	`sha256:50443fc8ffa0a5e008855e436b8048d180adae91b4dee739a316dce06eea2217`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.0 MB (2009841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:604e1167091382c3e29010b5d1d1c2cab2e3a6ae68984433167509cd347c6c3b`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6`

```console
$ docker pull memcached@sha256:0af07b27b7dd46da5ea64e963619aaef2ba43e301a5695c9d995ca02b62c8bd7
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
$ docker pull memcached@sha256:ccb35654049b320579c935b2b1e9f85ee5a44a39f7610f882f94d7f601a6a50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a4ce1d1bec64953298b869a1badf3450104d48e5f4a3858f20b4f305c3208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:14 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:14 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a096f15d16849ee4f16e3b41f4e48d008fe43a72a7a112ea870b002efc8356`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f5e6ef359677bef530149505b6189d9f0933293da3a15a3a8f59eecdbaced6`  
		Last Modified: Wed, 05 Aug 2026 00:24:20 GMT  
		Size: 136.7 KB (136749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c48aad2dfa59b64f33b785c20a5b89cce95c449c18b7311238031bfec947f8`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.3 MB (2285907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae52c0b672cfc5e973a71da19c243bca7ded28515d73209552ebbdb58949027`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f69ba15052d912c083e0ab55990e2ce3038dd57a45f5a6434d498d8c57fc129`  
		Last Modified: Wed, 05 Aug 2026 00:24:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:df46cd58b8bae4beaaa6aaf3aa82222bfef830751bea8e88c5cd88c960c25b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46095dfa57949fd96eae724d47834edd2d4403ea859090b89df9d5199e529b89`

```dockerfile
```

-	Layers:
	-	`sha256:95377610a6a6f8825acf7368a5bd0d1d049d2441a5fccb21f7b754f3bb016a44`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.0 MB (2008404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bab95fb87e90aa875a77aacc6ddab575696f1c26b95c563a1e231a2c3f3b924`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b7d2148d60048c4a49f4ba1363cb3e92980ba0892d37554f8d2b6e482174bcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffb87534a30c8ad833ceb444fddaa50b2b9d7d261b529951e16d2ceadf96260`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:31 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:31 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c25f5576b8a521d149322bd7272e53658bd730f3d4f31f63eb561514891c10f`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5454f1006ebaa859bd817b78f44b648ae518610a504f2795c764ed8db8ba78`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 135.4 KB (135430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502b95b9c118080a67abdfae0a6079d280edcc5ad958a323c11775c13de0c875`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 2.2 MB (2171157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfacf40d76ccf4298c63fa2d5df2be1d480c0c33a18328c3575c4d9ce5e7149`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514d4e18048f2b128d9ffd944f966f67baf0c8eceffe379789c37b89cd586e12`  
		Last Modified: Wed, 05 Aug 2026 00:24:39 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:ff5385209c0b68bcbce8d8552227812a58ec3b6da96bb283719006d54f0a33e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8173d5f99a78873c419614afc4eb8f328223745bc3aa3ae681102256b50cf36d`

```dockerfile
```

-	Layers:
	-	`sha256:f7d091bc1548c8a9b1c3ddda29767b1243ac9ba9b2163bea37a0e91f88c4424b`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 2.0 MB (2009864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62394eef9f950016112f6eddee93fc5a31d9c824883409d90254a8a706522aa5`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c26e2dbb705767b0fe54266d3799c5fa462a4c007968e112cd955f7f5defe16f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32565258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37e3f7732ad15a639ea52f41c683cceeb10795d22fa8e557a0e963db247fde2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:24 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79566b6be2f0f0f064e109b85a6ed2c8cf1a9bd28e1d560657249390e01805e7`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cba6742a07d9fa168a009d0d76eaf6bdca97a401b656b78228c6992d2c0cb0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 153.6 KB (153562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046ead1d74b2c959dfa03d852794ac216e13b1445b2239c7aea023bd14a0c8fd`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.3 MB (2266579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73df53c49bedf5493189f5b7f0c2ea86c412745f9a16773d585d616bf877634b`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b10dbce7d68e27ed4fe604a0b7a35076c7c08bd0fcf1ffc5148c37c1017c3b4`  
		Last Modified: Wed, 05 Aug 2026 00:24:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:cd8749a2f0ddf3ac4f9a853703e230470f5a57d38d2334c61689cb8c8c1b9fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254b4e580eab27155d005f12b86039576decb47b7db4c58484299a1d564302cd`

```dockerfile
```

-	Layers:
	-	`sha256:ee4994e31bf079d903969ee84ea81d848a67ccc5295978218b61b31f3a2a9d0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.0 MB (2008712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90a432a5aabf8f55050245e3a0650271404d6999cb76621fa523871364526b44`  
		Last Modified: Wed, 05 Aug 2026 00:24:30 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; riscv64

```console
$ docker pull memcached@sha256:e58d81ee4ec0beee328698e52027a4c467560d25140c0067de8bd073f595d345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedd5ee0078cedb482992b2bb7939073f75cb88da1f0cdf8b295dc47e17ac410`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:48:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 14 Jul 2026 03:49:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 14 Jul 2026 04:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:27 GMT
USER memcache
# Tue, 14 Jul 2026 04:21:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 14 Jul 2026 04:21:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd68048ed888ccb62d214c610c38f54688272440b1ad77ee4f609cfc15d1eb2b`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372629535cb7f3efb388f29ed865961910501043e179c32197ed26756d1a3486`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee948a50e3a5e03d401da8f5126af26ec7909b8e2296fa556f5efbfb2111743e`  
		Last Modified: Tue, 14 Jul 2026 04:22:13 GMT  
		Size: 2.2 MB (2212877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fad32a0dcd7b477c1e1429936306f0908186518b1774693b51e692e9e7878e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4064931bd82f5a4040e384b47a49d9527b183a69e143ed785daeb1c1e41fefd9`  
		Last Modified: Tue, 14 Jul 2026 04:22:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:a1c8255458da1b4cdbc93657869386f3145f7c80ea743b0088d190c939dd3150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca9f22cfd4be96886740197f7e426c6021f0463f1ba83dc4212cdb7f5b9602`

```dockerfile
```

-	Layers:
	-	`sha256:3ececf73360df7dfa9116918db610eb8e3a96cf5512d12070861b656b6a4408e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da1aeb2b8da75a5f42c6b321ee75d40f768084ccb7412cce71efc09f340471eb`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6` - linux; s390x

```console
$ docker pull memcached@sha256:082094e01eb3e909cf30f1afc77e99b38d6804ade74f0ecd79d9848392b48fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32290102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa924aef4001ac273bcb67aadff058abce64a40310faa01d03cf1cf0e897aa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:22:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:22:00 GMT
USER memcache
# Wed, 05 Aug 2026 00:22:00 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:22:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2b8541d688d5621e59a9c8baa14a49aad2148b9bad2194ab63c33fdb408e77`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d55578296b59bdab8b27002b870921e96c6490b964497665ac6dfcdaf2d4f1`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 140.6 KB (140603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de2e9aed2d4564b6f23a88b8dcb96b624c4f4f71b9cc06d85a13193a0cb93b7`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.3 MB (2301413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7e72b31c51234471453a220a96ac9460837c1d8a29ad9c9ffd7f8feb3ead43`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189dbbaacaa70a3fad49811ecc19de57f34921b1db609c08728261ea560a4838`  
		Last Modified: Wed, 05 Aug 2026 00:22:13 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6` - unknown; unknown

```console
$ docker pull memcached@sha256:64b14b3ad36e4754e2fa859e80a2f74fc83f253b397ec0cb6b4b6ea3290a9f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896a68a5b7b962c83d564ad25e0d32831a67c27b0d362499b7f108acad12e613`

```dockerfile
```

-	Layers:
	-	`sha256:50443fc8ffa0a5e008855e436b8048d180adae91b4dee739a316dce06eea2217`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.0 MB (2009841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:604e1167091382c3e29010b5d1d1c2cab2e3a6ae68984433167509cd347c6c3b`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
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
$ docker pull memcached@sha256:0af07b27b7dd46da5ea64e963619aaef2ba43e301a5695c9d995ca02b62c8bd7
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
$ docker pull memcached@sha256:ccb35654049b320579c935b2b1e9f85ee5a44a39f7610f882f94d7f601a6a50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a4ce1d1bec64953298b869a1badf3450104d48e5f4a3858f20b4f305c3208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:14 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:14 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a096f15d16849ee4f16e3b41f4e48d008fe43a72a7a112ea870b002efc8356`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f5e6ef359677bef530149505b6189d9f0933293da3a15a3a8f59eecdbaced6`  
		Last Modified: Wed, 05 Aug 2026 00:24:20 GMT  
		Size: 136.7 KB (136749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c48aad2dfa59b64f33b785c20a5b89cce95c449c18b7311238031bfec947f8`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.3 MB (2285907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae52c0b672cfc5e973a71da19c243bca7ded28515d73209552ebbdb58949027`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f69ba15052d912c083e0ab55990e2ce3038dd57a45f5a6434d498d8c57fc129`  
		Last Modified: Wed, 05 Aug 2026 00:24:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:df46cd58b8bae4beaaa6aaf3aa82222bfef830751bea8e88c5cd88c960c25b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46095dfa57949fd96eae724d47834edd2d4403ea859090b89df9d5199e529b89`

```dockerfile
```

-	Layers:
	-	`sha256:95377610a6a6f8825acf7368a5bd0d1d049d2441a5fccb21f7b754f3bb016a44`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.0 MB (2008404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bab95fb87e90aa875a77aacc6ddab575696f1c26b95c563a1e231a2c3f3b924`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b7d2148d60048c4a49f4ba1363cb3e92980ba0892d37554f8d2b6e482174bcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffb87534a30c8ad833ceb444fddaa50b2b9d7d261b529951e16d2ceadf96260`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:31 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:31 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c25f5576b8a521d149322bd7272e53658bd730f3d4f31f63eb561514891c10f`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5454f1006ebaa859bd817b78f44b648ae518610a504f2795c764ed8db8ba78`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 135.4 KB (135430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502b95b9c118080a67abdfae0a6079d280edcc5ad958a323c11775c13de0c875`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 2.2 MB (2171157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfacf40d76ccf4298c63fa2d5df2be1d480c0c33a18328c3575c4d9ce5e7149`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514d4e18048f2b128d9ffd944f966f67baf0c8eceffe379789c37b89cd586e12`  
		Last Modified: Wed, 05 Aug 2026 00:24:39 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ff5385209c0b68bcbce8d8552227812a58ec3b6da96bb283719006d54f0a33e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8173d5f99a78873c419614afc4eb8f328223745bc3aa3ae681102256b50cf36d`

```dockerfile
```

-	Layers:
	-	`sha256:f7d091bc1548c8a9b1c3ddda29767b1243ac9ba9b2163bea37a0e91f88c4424b`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 2.0 MB (2009864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62394eef9f950016112f6eddee93fc5a31d9c824883409d90254a8a706522aa5`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c26e2dbb705767b0fe54266d3799c5fa462a4c007968e112cd955f7f5defe16f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32565258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37e3f7732ad15a639ea52f41c683cceeb10795d22fa8e557a0e963db247fde2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:24 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79566b6be2f0f0f064e109b85a6ed2c8cf1a9bd28e1d560657249390e01805e7`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cba6742a07d9fa168a009d0d76eaf6bdca97a401b656b78228c6992d2c0cb0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 153.6 KB (153562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046ead1d74b2c959dfa03d852794ac216e13b1445b2239c7aea023bd14a0c8fd`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.3 MB (2266579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73df53c49bedf5493189f5b7f0c2ea86c412745f9a16773d585d616bf877634b`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b10dbce7d68e27ed4fe604a0b7a35076c7c08bd0fcf1ffc5148c37c1017c3b4`  
		Last Modified: Wed, 05 Aug 2026 00:24:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cd8749a2f0ddf3ac4f9a853703e230470f5a57d38d2334c61689cb8c8c1b9fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254b4e580eab27155d005f12b86039576decb47b7db4c58484299a1d564302cd`

```dockerfile
```

-	Layers:
	-	`sha256:ee4994e31bf079d903969ee84ea81d848a67ccc5295978218b61b31f3a2a9d0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.0 MB (2008712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90a432a5aabf8f55050245e3a0650271404d6999cb76621fa523871364526b44`  
		Last Modified: Wed, 05 Aug 2026 00:24:30 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:e58d81ee4ec0beee328698e52027a4c467560d25140c0067de8bd073f595d345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedd5ee0078cedb482992b2bb7939073f75cb88da1f0cdf8b295dc47e17ac410`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:48:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 14 Jul 2026 03:49:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 14 Jul 2026 04:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:27 GMT
USER memcache
# Tue, 14 Jul 2026 04:21:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 14 Jul 2026 04:21:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd68048ed888ccb62d214c610c38f54688272440b1ad77ee4f609cfc15d1eb2b`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372629535cb7f3efb388f29ed865961910501043e179c32197ed26756d1a3486`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee948a50e3a5e03d401da8f5126af26ec7909b8e2296fa556f5efbfb2111743e`  
		Last Modified: Tue, 14 Jul 2026 04:22:13 GMT  
		Size: 2.2 MB (2212877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fad32a0dcd7b477c1e1429936306f0908186518b1774693b51e692e9e7878e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4064931bd82f5a4040e384b47a49d9527b183a69e143ed785daeb1c1e41fefd9`  
		Last Modified: Tue, 14 Jul 2026 04:22:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:a1c8255458da1b4cdbc93657869386f3145f7c80ea743b0088d190c939dd3150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca9f22cfd4be96886740197f7e426c6021f0463f1ba83dc4212cdb7f5b9602`

```dockerfile
```

-	Layers:
	-	`sha256:3ececf73360df7dfa9116918db610eb8e3a96cf5512d12070861b656b6a4408e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da1aeb2b8da75a5f42c6b321ee75d40f768084ccb7412cce71efc09f340471eb`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:082094e01eb3e909cf30f1afc77e99b38d6804ade74f0ecd79d9848392b48fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32290102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa924aef4001ac273bcb67aadff058abce64a40310faa01d03cf1cf0e897aa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:22:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:22:00 GMT
USER memcache
# Wed, 05 Aug 2026 00:22:00 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:22:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2b8541d688d5621e59a9c8baa14a49aad2148b9bad2194ab63c33fdb408e77`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d55578296b59bdab8b27002b870921e96c6490b964497665ac6dfcdaf2d4f1`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 140.6 KB (140603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de2e9aed2d4564b6f23a88b8dcb96b624c4f4f71b9cc06d85a13193a0cb93b7`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.3 MB (2301413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7e72b31c51234471453a220a96ac9460837c1d8a29ad9c9ffd7f8feb3ead43`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189dbbaacaa70a3fad49811ecc19de57f34921b1db609c08728261ea560a4838`  
		Last Modified: Wed, 05 Aug 2026 00:22:13 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:64b14b3ad36e4754e2fa859e80a2f74fc83f253b397ec0cb6b4b6ea3290a9f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896a68a5b7b962c83d564ad25e0d32831a67c27b0d362499b7f108acad12e613`

```dockerfile
```

-	Layers:
	-	`sha256:50443fc8ffa0a5e008855e436b8048d180adae91b4dee739a316dce06eea2217`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.0 MB (2009841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:604e1167091382c3e29010b5d1d1c2cab2e3a6ae68984433167509cd347c6c3b`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:1.6.45`

```console
$ docker pull memcached@sha256:0af07b27b7dd46da5ea64e963619aaef2ba43e301a5695c9d995ca02b62c8bd7
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
$ docker pull memcached@sha256:ccb35654049b320579c935b2b1e9f85ee5a44a39f7610f882f94d7f601a6a50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a4ce1d1bec64953298b869a1badf3450104d48e5f4a3858f20b4f305c3208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:14 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:14 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a096f15d16849ee4f16e3b41f4e48d008fe43a72a7a112ea870b002efc8356`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f5e6ef359677bef530149505b6189d9f0933293da3a15a3a8f59eecdbaced6`  
		Last Modified: Wed, 05 Aug 2026 00:24:20 GMT  
		Size: 136.7 KB (136749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c48aad2dfa59b64f33b785c20a5b89cce95c449c18b7311238031bfec947f8`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.3 MB (2285907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae52c0b672cfc5e973a71da19c243bca7ded28515d73209552ebbdb58949027`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f69ba15052d912c083e0ab55990e2ce3038dd57a45f5a6434d498d8c57fc129`  
		Last Modified: Wed, 05 Aug 2026 00:24:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:df46cd58b8bae4beaaa6aaf3aa82222bfef830751bea8e88c5cd88c960c25b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46095dfa57949fd96eae724d47834edd2d4403ea859090b89df9d5199e529b89`

```dockerfile
```

-	Layers:
	-	`sha256:95377610a6a6f8825acf7368a5bd0d1d049d2441a5fccb21f7b754f3bb016a44`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.0 MB (2008404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bab95fb87e90aa875a77aacc6ddab575696f1c26b95c563a1e231a2c3f3b924`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b7d2148d60048c4a49f4ba1363cb3e92980ba0892d37554f8d2b6e482174bcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffb87534a30c8ad833ceb444fddaa50b2b9d7d261b529951e16d2ceadf96260`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:31 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:31 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c25f5576b8a521d149322bd7272e53658bd730f3d4f31f63eb561514891c10f`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5454f1006ebaa859bd817b78f44b648ae518610a504f2795c764ed8db8ba78`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 135.4 KB (135430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502b95b9c118080a67abdfae0a6079d280edcc5ad958a323c11775c13de0c875`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 2.2 MB (2171157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfacf40d76ccf4298c63fa2d5df2be1d480c0c33a18328c3575c4d9ce5e7149`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514d4e18048f2b128d9ffd944f966f67baf0c8eceffe379789c37b89cd586e12`  
		Last Modified: Wed, 05 Aug 2026 00:24:39 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:ff5385209c0b68bcbce8d8552227812a58ec3b6da96bb283719006d54f0a33e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8173d5f99a78873c419614afc4eb8f328223745bc3aa3ae681102256b50cf36d`

```dockerfile
```

-	Layers:
	-	`sha256:f7d091bc1548c8a9b1c3ddda29767b1243ac9ba9b2163bea37a0e91f88c4424b`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 2.0 MB (2009864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62394eef9f950016112f6eddee93fc5a31d9c824883409d90254a8a706522aa5`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c26e2dbb705767b0fe54266d3799c5fa462a4c007968e112cd955f7f5defe16f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32565258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37e3f7732ad15a639ea52f41c683cceeb10795d22fa8e557a0e963db247fde2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:24 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79566b6be2f0f0f064e109b85a6ed2c8cf1a9bd28e1d560657249390e01805e7`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cba6742a07d9fa168a009d0d76eaf6bdca97a401b656b78228c6992d2c0cb0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 153.6 KB (153562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046ead1d74b2c959dfa03d852794ac216e13b1445b2239c7aea023bd14a0c8fd`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.3 MB (2266579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73df53c49bedf5493189f5b7f0c2ea86c412745f9a16773d585d616bf877634b`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b10dbce7d68e27ed4fe604a0b7a35076c7c08bd0fcf1ffc5148c37c1017c3b4`  
		Last Modified: Wed, 05 Aug 2026 00:24:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:cd8749a2f0ddf3ac4f9a853703e230470f5a57d38d2334c61689cb8c8c1b9fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254b4e580eab27155d005f12b86039576decb47b7db4c58484299a1d564302cd`

```dockerfile
```

-	Layers:
	-	`sha256:ee4994e31bf079d903969ee84ea81d848a67ccc5295978218b61b31f3a2a9d0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.0 MB (2008712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90a432a5aabf8f55050245e3a0650271404d6999cb76621fa523871364526b44`  
		Last Modified: Wed, 05 Aug 2026 00:24:30 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; riscv64

```console
$ docker pull memcached@sha256:e58d81ee4ec0beee328698e52027a4c467560d25140c0067de8bd073f595d345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedd5ee0078cedb482992b2bb7939073f75cb88da1f0cdf8b295dc47e17ac410`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:48:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 14 Jul 2026 03:49:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 14 Jul 2026 04:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:27 GMT
USER memcache
# Tue, 14 Jul 2026 04:21:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 14 Jul 2026 04:21:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd68048ed888ccb62d214c610c38f54688272440b1ad77ee4f609cfc15d1eb2b`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372629535cb7f3efb388f29ed865961910501043e179c32197ed26756d1a3486`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee948a50e3a5e03d401da8f5126af26ec7909b8e2296fa556f5efbfb2111743e`  
		Last Modified: Tue, 14 Jul 2026 04:22:13 GMT  
		Size: 2.2 MB (2212877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fad32a0dcd7b477c1e1429936306f0908186518b1774693b51e692e9e7878e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4064931bd82f5a4040e384b47a49d9527b183a69e143ed785daeb1c1e41fefd9`  
		Last Modified: Tue, 14 Jul 2026 04:22:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:a1c8255458da1b4cdbc93657869386f3145f7c80ea743b0088d190c939dd3150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca9f22cfd4be96886740197f7e426c6021f0463f1ba83dc4212cdb7f5b9602`

```dockerfile
```

-	Layers:
	-	`sha256:3ececf73360df7dfa9116918db610eb8e3a96cf5512d12070861b656b6a4408e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da1aeb2b8da75a5f42c6b321ee75d40f768084ccb7412cce71efc09f340471eb`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45` - linux; s390x

```console
$ docker pull memcached@sha256:082094e01eb3e909cf30f1afc77e99b38d6804ade74f0ecd79d9848392b48fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32290102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa924aef4001ac273bcb67aadff058abce64a40310faa01d03cf1cf0e897aa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:22:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:22:00 GMT
USER memcache
# Wed, 05 Aug 2026 00:22:00 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:22:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2b8541d688d5621e59a9c8baa14a49aad2148b9bad2194ab63c33fdb408e77`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d55578296b59bdab8b27002b870921e96c6490b964497665ac6dfcdaf2d4f1`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 140.6 KB (140603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de2e9aed2d4564b6f23a88b8dcb96b624c4f4f71b9cc06d85a13193a0cb93b7`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.3 MB (2301413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7e72b31c51234471453a220a96ac9460837c1d8a29ad9c9ffd7f8feb3ead43`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189dbbaacaa70a3fad49811ecc19de57f34921b1db609c08728261ea560a4838`  
		Last Modified: Wed, 05 Aug 2026 00:22:13 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45` - unknown; unknown

```console
$ docker pull memcached@sha256:64b14b3ad36e4754e2fa859e80a2f74fc83f253b397ec0cb6b4b6ea3290a9f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896a68a5b7b962c83d564ad25e0d32831a67c27b0d362499b7f108acad12e613`

```dockerfile
```

-	Layers:
	-	`sha256:50443fc8ffa0a5e008855e436b8048d180adae91b4dee739a316dce06eea2217`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.0 MB (2009841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:604e1167091382c3e29010b5d1d1c2cab2e3a6ae68984433167509cd347c6c3b`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
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
$ docker pull memcached@sha256:0af07b27b7dd46da5ea64e963619aaef2ba43e301a5695c9d995ca02b62c8bd7
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
$ docker pull memcached@sha256:ccb35654049b320579c935b2b1e9f85ee5a44a39f7610f882f94d7f601a6a50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a4ce1d1bec64953298b869a1badf3450104d48e5f4a3858f20b4f305c3208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:14 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:14 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a096f15d16849ee4f16e3b41f4e48d008fe43a72a7a112ea870b002efc8356`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f5e6ef359677bef530149505b6189d9f0933293da3a15a3a8f59eecdbaced6`  
		Last Modified: Wed, 05 Aug 2026 00:24:20 GMT  
		Size: 136.7 KB (136749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c48aad2dfa59b64f33b785c20a5b89cce95c449c18b7311238031bfec947f8`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.3 MB (2285907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae52c0b672cfc5e973a71da19c243bca7ded28515d73209552ebbdb58949027`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f69ba15052d912c083e0ab55990e2ce3038dd57a45f5a6434d498d8c57fc129`  
		Last Modified: Wed, 05 Aug 2026 00:24:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:df46cd58b8bae4beaaa6aaf3aa82222bfef830751bea8e88c5cd88c960c25b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46095dfa57949fd96eae724d47834edd2d4403ea859090b89df9d5199e529b89`

```dockerfile
```

-	Layers:
	-	`sha256:95377610a6a6f8825acf7368a5bd0d1d049d2441a5fccb21f7b754f3bb016a44`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.0 MB (2008404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bab95fb87e90aa875a77aacc6ddab575696f1c26b95c563a1e231a2c3f3b924`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b7d2148d60048c4a49f4ba1363cb3e92980ba0892d37554f8d2b6e482174bcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffb87534a30c8ad833ceb444fddaa50b2b9d7d261b529951e16d2ceadf96260`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:31 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:31 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c25f5576b8a521d149322bd7272e53658bd730f3d4f31f63eb561514891c10f`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5454f1006ebaa859bd817b78f44b648ae518610a504f2795c764ed8db8ba78`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 135.4 KB (135430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502b95b9c118080a67abdfae0a6079d280edcc5ad958a323c11775c13de0c875`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 2.2 MB (2171157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfacf40d76ccf4298c63fa2d5df2be1d480c0c33a18328c3575c4d9ce5e7149`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514d4e18048f2b128d9ffd944f966f67baf0c8eceffe379789c37b89cd586e12`  
		Last Modified: Wed, 05 Aug 2026 00:24:39 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ff5385209c0b68bcbce8d8552227812a58ec3b6da96bb283719006d54f0a33e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8173d5f99a78873c419614afc4eb8f328223745bc3aa3ae681102256b50cf36d`

```dockerfile
```

-	Layers:
	-	`sha256:f7d091bc1548c8a9b1c3ddda29767b1243ac9ba9b2163bea37a0e91f88c4424b`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 2.0 MB (2009864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62394eef9f950016112f6eddee93fc5a31d9c824883409d90254a8a706522aa5`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c26e2dbb705767b0fe54266d3799c5fa462a4c007968e112cd955f7f5defe16f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32565258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37e3f7732ad15a639ea52f41c683cceeb10795d22fa8e557a0e963db247fde2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:24 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79566b6be2f0f0f064e109b85a6ed2c8cf1a9bd28e1d560657249390e01805e7`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cba6742a07d9fa168a009d0d76eaf6bdca97a401b656b78228c6992d2c0cb0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 153.6 KB (153562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046ead1d74b2c959dfa03d852794ac216e13b1445b2239c7aea023bd14a0c8fd`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.3 MB (2266579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73df53c49bedf5493189f5b7f0c2ea86c412745f9a16773d585d616bf877634b`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b10dbce7d68e27ed4fe604a0b7a35076c7c08bd0fcf1ffc5148c37c1017c3b4`  
		Last Modified: Wed, 05 Aug 2026 00:24:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cd8749a2f0ddf3ac4f9a853703e230470f5a57d38d2334c61689cb8c8c1b9fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254b4e580eab27155d005f12b86039576decb47b7db4c58484299a1d564302cd`

```dockerfile
```

-	Layers:
	-	`sha256:ee4994e31bf079d903969ee84ea81d848a67ccc5295978218b61b31f3a2a9d0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.0 MB (2008712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90a432a5aabf8f55050245e3a0650271404d6999cb76621fa523871364526b44`  
		Last Modified: Wed, 05 Aug 2026 00:24:30 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:e58d81ee4ec0beee328698e52027a4c467560d25140c0067de8bd073f595d345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedd5ee0078cedb482992b2bb7939073f75cb88da1f0cdf8b295dc47e17ac410`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:48:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 14 Jul 2026 03:49:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 14 Jul 2026 04:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:27 GMT
USER memcache
# Tue, 14 Jul 2026 04:21:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 14 Jul 2026 04:21:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd68048ed888ccb62d214c610c38f54688272440b1ad77ee4f609cfc15d1eb2b`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372629535cb7f3efb388f29ed865961910501043e179c32197ed26756d1a3486`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee948a50e3a5e03d401da8f5126af26ec7909b8e2296fa556f5efbfb2111743e`  
		Last Modified: Tue, 14 Jul 2026 04:22:13 GMT  
		Size: 2.2 MB (2212877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fad32a0dcd7b477c1e1429936306f0908186518b1774693b51e692e9e7878e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4064931bd82f5a4040e384b47a49d9527b183a69e143ed785daeb1c1e41fefd9`  
		Last Modified: Tue, 14 Jul 2026 04:22:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:a1c8255458da1b4cdbc93657869386f3145f7c80ea743b0088d190c939dd3150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca9f22cfd4be96886740197f7e426c6021f0463f1ba83dc4212cdb7f5b9602`

```dockerfile
```

-	Layers:
	-	`sha256:3ececf73360df7dfa9116918db610eb8e3a96cf5512d12070861b656b6a4408e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da1aeb2b8da75a5f42c6b321ee75d40f768084ccb7412cce71efc09f340471eb`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1.6.45-trixie` - linux; s390x

```console
$ docker pull memcached@sha256:082094e01eb3e909cf30f1afc77e99b38d6804ade74f0ecd79d9848392b48fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32290102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa924aef4001ac273bcb67aadff058abce64a40310faa01d03cf1cf0e897aa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:22:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:22:00 GMT
USER memcache
# Wed, 05 Aug 2026 00:22:00 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:22:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2b8541d688d5621e59a9c8baa14a49aad2148b9bad2194ab63c33fdb408e77`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d55578296b59bdab8b27002b870921e96c6490b964497665ac6dfcdaf2d4f1`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 140.6 KB (140603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de2e9aed2d4564b6f23a88b8dcb96b624c4f4f71b9cc06d85a13193a0cb93b7`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.3 MB (2301413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7e72b31c51234471453a220a96ac9460837c1d8a29ad9c9ffd7f8feb3ead43`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189dbbaacaa70a3fad49811ecc19de57f34921b1db609c08728261ea560a4838`  
		Last Modified: Wed, 05 Aug 2026 00:22:13 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1.6.45-trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:64b14b3ad36e4754e2fa859e80a2f74fc83f253b397ec0cb6b4b6ea3290a9f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896a68a5b7b962c83d564ad25e0d32831a67c27b0d362499b7f108acad12e613`

```dockerfile
```

-	Layers:
	-	`sha256:50443fc8ffa0a5e008855e436b8048d180adae91b4dee739a316dce06eea2217`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.0 MB (2009841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:604e1167091382c3e29010b5d1d1c2cab2e3a6ae68984433167509cd347c6c3b`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
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
$ docker pull memcached@sha256:0af07b27b7dd46da5ea64e963619aaef2ba43e301a5695c9d995ca02b62c8bd7
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
$ docker pull memcached@sha256:ccb35654049b320579c935b2b1e9f85ee5a44a39f7610f882f94d7f601a6a50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a4ce1d1bec64953298b869a1badf3450104d48e5f4a3858f20b4f305c3208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:14 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:14 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a096f15d16849ee4f16e3b41f4e48d008fe43a72a7a112ea870b002efc8356`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f5e6ef359677bef530149505b6189d9f0933293da3a15a3a8f59eecdbaced6`  
		Last Modified: Wed, 05 Aug 2026 00:24:20 GMT  
		Size: 136.7 KB (136749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c48aad2dfa59b64f33b785c20a5b89cce95c449c18b7311238031bfec947f8`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.3 MB (2285907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae52c0b672cfc5e973a71da19c243bca7ded28515d73209552ebbdb58949027`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f69ba15052d912c083e0ab55990e2ce3038dd57a45f5a6434d498d8c57fc129`  
		Last Modified: Wed, 05 Aug 2026 00:24:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:df46cd58b8bae4beaaa6aaf3aa82222bfef830751bea8e88c5cd88c960c25b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46095dfa57949fd96eae724d47834edd2d4403ea859090b89df9d5199e529b89`

```dockerfile
```

-	Layers:
	-	`sha256:95377610a6a6f8825acf7368a5bd0d1d049d2441a5fccb21f7b754f3bb016a44`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.0 MB (2008404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bab95fb87e90aa875a77aacc6ddab575696f1c26b95c563a1e231a2c3f3b924`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b7d2148d60048c4a49f4ba1363cb3e92980ba0892d37554f8d2b6e482174bcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffb87534a30c8ad833ceb444fddaa50b2b9d7d261b529951e16d2ceadf96260`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:31 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:31 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c25f5576b8a521d149322bd7272e53658bd730f3d4f31f63eb561514891c10f`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5454f1006ebaa859bd817b78f44b648ae518610a504f2795c764ed8db8ba78`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 135.4 KB (135430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502b95b9c118080a67abdfae0a6079d280edcc5ad958a323c11775c13de0c875`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 2.2 MB (2171157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfacf40d76ccf4298c63fa2d5df2be1d480c0c33a18328c3575c4d9ce5e7149`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514d4e18048f2b128d9ffd944f966f67baf0c8eceffe379789c37b89cd586e12`  
		Last Modified: Wed, 05 Aug 2026 00:24:39 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:ff5385209c0b68bcbce8d8552227812a58ec3b6da96bb283719006d54f0a33e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8173d5f99a78873c419614afc4eb8f328223745bc3aa3ae681102256b50cf36d`

```dockerfile
```

-	Layers:
	-	`sha256:f7d091bc1548c8a9b1c3ddda29767b1243ac9ba9b2163bea37a0e91f88c4424b`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 2.0 MB (2009864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62394eef9f950016112f6eddee93fc5a31d9c824883409d90254a8a706522aa5`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c26e2dbb705767b0fe54266d3799c5fa462a4c007968e112cd955f7f5defe16f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32565258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37e3f7732ad15a639ea52f41c683cceeb10795d22fa8e557a0e963db247fde2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:24 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79566b6be2f0f0f064e109b85a6ed2c8cf1a9bd28e1d560657249390e01805e7`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cba6742a07d9fa168a009d0d76eaf6bdca97a401b656b78228c6992d2c0cb0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 153.6 KB (153562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046ead1d74b2c959dfa03d852794ac216e13b1445b2239c7aea023bd14a0c8fd`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.3 MB (2266579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73df53c49bedf5493189f5b7f0c2ea86c412745f9a16773d585d616bf877634b`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b10dbce7d68e27ed4fe604a0b7a35076c7c08bd0fcf1ffc5148c37c1017c3b4`  
		Last Modified: Wed, 05 Aug 2026 00:24:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:cd8749a2f0ddf3ac4f9a853703e230470f5a57d38d2334c61689cb8c8c1b9fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254b4e580eab27155d005f12b86039576decb47b7db4c58484299a1d564302cd`

```dockerfile
```

-	Layers:
	-	`sha256:ee4994e31bf079d903969ee84ea81d848a67ccc5295978218b61b31f3a2a9d0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.0 MB (2008712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90a432a5aabf8f55050245e3a0650271404d6999cb76621fa523871364526b44`  
		Last Modified: Wed, 05 Aug 2026 00:24:30 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; riscv64

```console
$ docker pull memcached@sha256:e58d81ee4ec0beee328698e52027a4c467560d25140c0067de8bd073f595d345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedd5ee0078cedb482992b2bb7939073f75cb88da1f0cdf8b295dc47e17ac410`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:48:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 14 Jul 2026 03:49:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 14 Jul 2026 04:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:27 GMT
USER memcache
# Tue, 14 Jul 2026 04:21:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 14 Jul 2026 04:21:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd68048ed888ccb62d214c610c38f54688272440b1ad77ee4f609cfc15d1eb2b`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372629535cb7f3efb388f29ed865961910501043e179c32197ed26756d1a3486`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee948a50e3a5e03d401da8f5126af26ec7909b8e2296fa556f5efbfb2111743e`  
		Last Modified: Tue, 14 Jul 2026 04:22:13 GMT  
		Size: 2.2 MB (2212877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fad32a0dcd7b477c1e1429936306f0908186518b1774693b51e692e9e7878e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4064931bd82f5a4040e384b47a49d9527b183a69e143ed785daeb1c1e41fefd9`  
		Last Modified: Tue, 14 Jul 2026 04:22:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:a1c8255458da1b4cdbc93657869386f3145f7c80ea743b0088d190c939dd3150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca9f22cfd4be96886740197f7e426c6021f0463f1ba83dc4212cdb7f5b9602`

```dockerfile
```

-	Layers:
	-	`sha256:3ececf73360df7dfa9116918db610eb8e3a96cf5512d12070861b656b6a4408e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da1aeb2b8da75a5f42c6b321ee75d40f768084ccb7412cce71efc09f340471eb`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:082094e01eb3e909cf30f1afc77e99b38d6804ade74f0ecd79d9848392b48fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32290102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa924aef4001ac273bcb67aadff058abce64a40310faa01d03cf1cf0e897aa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:22:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:22:00 GMT
USER memcache
# Wed, 05 Aug 2026 00:22:00 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:22:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2b8541d688d5621e59a9c8baa14a49aad2148b9bad2194ab63c33fdb408e77`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d55578296b59bdab8b27002b870921e96c6490b964497665ac6dfcdaf2d4f1`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 140.6 KB (140603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de2e9aed2d4564b6f23a88b8dcb96b624c4f4f71b9cc06d85a13193a0cb93b7`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.3 MB (2301413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7e72b31c51234471453a220a96ac9460837c1d8a29ad9c9ffd7f8feb3ead43`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189dbbaacaa70a3fad49811ecc19de57f34921b1db609c08728261ea560a4838`  
		Last Modified: Wed, 05 Aug 2026 00:22:13 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:latest` - unknown; unknown

```console
$ docker pull memcached@sha256:64b14b3ad36e4754e2fa859e80a2f74fc83f253b397ec0cb6b4b6ea3290a9f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896a68a5b7b962c83d564ad25e0d32831a67c27b0d362499b7f108acad12e613`

```dockerfile
```

-	Layers:
	-	`sha256:50443fc8ffa0a5e008855e436b8048d180adae91b4dee739a316dce06eea2217`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.0 MB (2009841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:604e1167091382c3e29010b5d1d1c2cab2e3a6ae68984433167509cd347c6c3b`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

## `memcached:trixie`

```console
$ docker pull memcached@sha256:0af07b27b7dd46da5ea64e963619aaef2ba43e301a5695c9d995ca02b62c8bd7
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
$ docker pull memcached@sha256:ccb35654049b320579c935b2b1e9f85ee5a44a39f7610f882f94d7f601a6a50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32204934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a4ce1d1bec64953298b869a1badf3450104d48e5f4a3858f20b4f305c3208f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:32 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:14 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:14 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:14 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a096f15d16849ee4f16e3b41f4e48d008fe43a72a7a112ea870b002efc8356`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f5e6ef359677bef530149505b6189d9f0933293da3a15a3a8f59eecdbaced6`  
		Last Modified: Wed, 05 Aug 2026 00:24:20 GMT  
		Size: 136.7 KB (136749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c48aad2dfa59b64f33b785c20a5b89cce95c449c18b7311238031bfec947f8`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.3 MB (2285907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae52c0b672cfc5e973a71da19c243bca7ded28515d73209552ebbdb58949027`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f69ba15052d912c083e0ab55990e2ce3038dd57a45f5a6434d498d8c57fc129`  
		Last Modified: Wed, 05 Aug 2026 00:24:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:df46cd58b8bae4beaaa6aaf3aa82222bfef830751bea8e88c5cd88c960c25b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2030557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46095dfa57949fd96eae724d47834edd2d4403ea859090b89df9d5199e529b89`

```dockerfile
```

-	Layers:
	-	`sha256:95377610a6a6f8825acf7368a5bd0d1d049d2441a5fccb21f7b754f3bb016a44`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 2.0 MB (2008404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bab95fb87e90aa875a77aacc6ddab575696f1c26b95c563a1e231a2c3f3b924`  
		Last Modified: Wed, 05 Aug 2026 00:24:21 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v5

```console
$ docker pull memcached@sha256:42b8ef2fcc6d4a3977a6b997242f17d79f5aa1ba21eb5ba26e8064c42be45507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30317447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525aadb7c39bf048e9022acdcdbd75ab03a0b2f461d339091746c131233f0a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:16:12 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:19:35 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:19:36 GMT
USER memcache
# Wed, 05 Aug 2026 00:19:36 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:19:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb7e497eaed5818151e05595c8e6a427defc2170bb2ada9825cba0722fc529`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61292562e04cd8491ee8dfdd0e067d3fcb6fc132250958d490acf4a137a32f6f`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 144.2 KB (144232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0bd83b372e9decbbc6395fa2bdb25ddb282ee40de901754a04c68c93c9a6b`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.2 MB (2216988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9cffb19c5df3b9088afd7e0c78823079c73badefa975058d22c1bd9414d932`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24848254836274e60fa8bb01d8752337a07bf89b8bc1f6fdf88676e5c6603a6c`  
		Last Modified: Wed, 05 Aug 2026 00:19:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:93ca3ef16a7374cf0bfdac757a4c5d762819cda3e1f19b7727b903d7bcfc6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2033711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f2a2a32be3ab8bc3413e827e248fabfcc6323aa71ee9739d10359b2ba06b2e`

```dockerfile
```

-	Layers:
	-	`sha256:01dc097ffa53e1aa01457559fe46d850b7783021b8a6a7dabb4ce30d0359f32c`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 2.0 MB (2011407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d78ebd1e3e0d7b483b1852e14f6c3fad97e2455e07b9554e24e392844675f3`  
		Last Modified: Wed, 05 Aug 2026 00:19:42 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm variant v7

```console
$ docker pull memcached@sha256:b7d2148d60048c4a49f4ba1363cb3e92980ba0892d37554f8d2b6e482174bcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28514470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffb87534a30c8ad833ceb444fddaa50b2b9d7d261b529951e16d2ceadf96260`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:17 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:31 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:31 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:31 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c25f5576b8a521d149322bd7272e53658bd730f3d4f31f63eb561514891c10f`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5454f1006ebaa859bd817b78f44b648ae518610a504f2795c764ed8db8ba78`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 135.4 KB (135430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502b95b9c118080a67abdfae0a6079d280edcc5ad958a323c11775c13de0c875`  
		Last Modified: Wed, 05 Aug 2026 00:24:37 GMT  
		Size: 2.2 MB (2171157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfacf40d76ccf4298c63fa2d5df2be1d480c0c33a18328c3575c4d9ce5e7149`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514d4e18048f2b128d9ffd944f966f67baf0c8eceffe379789c37b89cd586e12`  
		Last Modified: Wed, 05 Aug 2026 00:24:39 GMT  
		Size: 120.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:ff5385209c0b68bcbce8d8552227812a58ec3b6da96bb283719006d54f0a33e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2032168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8173d5f99a78873c419614afc4eb8f328223745bc3aa3ae681102256b50cf36d`

```dockerfile
```

-	Layers:
	-	`sha256:f7d091bc1548c8a9b1c3ddda29767b1243ac9ba9b2163bea37a0e91f88c4424b`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 2.0 MB (2009864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62394eef9f950016112f6eddee93fc5a31d9c824883409d90254a8a706522aa5`  
		Last Modified: Wed, 05 Aug 2026 00:24:38 GMT  
		Size: 22.3 KB (22304 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c26e2dbb705767b0fe54266d3799c5fa462a4c007968e112cd955f7f5defe16f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32565258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37e3f7732ad15a639ea52f41c683cceeb10795d22fa8e557a0e963db247fde2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:21:20 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:21:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:24:24 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:24:24 GMT
USER memcache
# Wed, 05 Aug 2026 00:24:24 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:24:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79566b6be2f0f0f064e109b85a6ed2c8cf1a9bd28e1d560657249390e01805e7`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cba6742a07d9fa168a009d0d76eaf6bdca97a401b656b78228c6992d2c0cb0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 153.6 KB (153562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046ead1d74b2c959dfa03d852794ac216e13b1445b2239c7aea023bd14a0c8fd`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.3 MB (2266579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73df53c49bedf5493189f5b7f0c2ea86c412745f9a16773d585d616bf877634b`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b10dbce7d68e27ed4fe604a0b7a35076c7c08bd0fcf1ffc5148c37c1017c3b4`  
		Last Modified: Wed, 05 Aug 2026 00:24:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:cd8749a2f0ddf3ac4f9a853703e230470f5a57d38d2334c61689cb8c8c1b9fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254b4e580eab27155d005f12b86039576decb47b7db4c58484299a1d564302cd`

```dockerfile
```

-	Layers:
	-	`sha256:ee4994e31bf079d903969ee84ea81d848a67ccc5295978218b61b31f3a2a9d0a`  
		Last Modified: Wed, 05 Aug 2026 00:24:31 GMT  
		Size: 2.0 MB (2008712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90a432a5aabf8f55050245e3a0650271404d6999cb76621fa523871364526b44`  
		Last Modified: Wed, 05 Aug 2026 00:24:30 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; 386

```console
$ docker pull memcached@sha256:42f5523e47b281adcca5d0cebd3844f855fecd7a9f708403e56ea9fb0cbd58cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33675665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74c65ce70cad4c25cd2061b0da97569628e3b6aef4f60770df011270b42e882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:17:40 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:17:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:20:41 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:20:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:20:41 GMT
USER memcache
# Wed, 05 Aug 2026 00:20:41 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:20:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ad7cd33399b532a3adc210ea833908fe36fb09fee3a8ab9030dede1cf3bef8`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ed0587353b4c25c94f561caeeb6842c501e85ca6e4ac045c7da0ed4839586`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 147.6 KB (147568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c63519ec9c8a17c539520ac98846c35f8de359cd450ed45205145e1c8ed2374`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.2 MB (2230315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abb04de1ee555c685d4c1e83cd328fd1cabe254c7682d9ceebe649098bad56`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f48baec0e93d7f91dcb2455abfe7e10b80602f92fb266dbadb1a3bdb5dbaaf0`  
		Last Modified: Wed, 05 Aug 2026 00:20:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:f2f930e4e1831b76872148553bc59a63608a4ba6c2999202adb8716ff7ab1545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2027656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed5178bf49db4988064cf679d6a88707d8482d418722fcfcf054b032533029b`

```dockerfile
```

-	Layers:
	-	`sha256:26a61286bf68edb1a879fb8d057544a1ba829d417dfa5cc04912f26ea390054e`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 2.0 MB (2005561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366cf903da97e2dd7d8b2e272f78a4bba6dca8b6d5df257c432386d16b391cc0`  
		Last Modified: Wed, 05 Aug 2026 00:20:47 GMT  
		Size: 22.1 KB (22095 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; ppc64le

```console
$ docker pull memcached@sha256:dc9f2e8ea6d83e91e2cda283a339e044f25635e910dae91a158794136a6acfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36172903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db27f0a78448689839e0933292b52e353789181fa01af869db0fadbe4f78b0cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 04:04:11 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 04:04:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 04:07:39 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 04:07:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 04:07:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 04:07:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 04:07:40 GMT
USER memcache
# Wed, 05 Aug 2026 04:07:40 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 04:07:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf73975e4c228bc1f1c2e5aee110e0dc8bb32ef7745c628d9ffb60928be1b06`  
		Last Modified: Wed, 05 Aug 2026 04:07:50 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de69cee14cbe59bb0422bf49ba1638dad62a5bd896b1ebec182e2f9d5c603914`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 170.4 KB (170429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e06271a938eec2beb8913ddc1991aede0a5a6eec64f6b8e1da935987e70faf`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.4 MB (2399617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa4c11f35c03888c04fc71b1e942d51a2b073b497c57a742c3bce012d93258`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 283.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a13efb381a27ed84efffa8b63531d70b9d44e4aa0eb549f913685b908cdda`  
		Last Modified: Wed, 05 Aug 2026 04:07:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:2720672589afcb040180eb4a4db805cd477c95539abf05805f81e301288b8291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2034232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f054f14c2f8939cd1ac82baecf3ede7892c7c063ab6d29e301726d9af2771a90`

```dockerfile
```

-	Layers:
	-	`sha256:7581c1be5128c0e5d9907a32e32731951c6ea0234dc67ba011bf9259b2dec226`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 2.0 MB (2012005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705495a8c8168a90a0e421f0b0bce7391a2e18648ef29b44362d3b304e017edb`  
		Last Modified: Wed, 05 Aug 2026 04:07:51 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; riscv64

```console
$ docker pull memcached@sha256:e58d81ee4ec0beee328698e52027a4c467560d25140c0067de8bd073f595d345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30625722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedd5ee0078cedb482992b2bb7939073f75cb88da1f0cdf8b295dc47e17ac410`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:48:24 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Tue, 14 Jul 2026 03:49:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_VERSION=1.6.45
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Tue, 14 Jul 2026 04:21:27 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Tue, 14 Jul 2026 04:21:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 04:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:27 GMT
USER memcache
# Tue, 14 Jul 2026 04:21:27 GMT
EXPOSE map[11211/tcp:{}]
# Tue, 14 Jul 2026 04:21:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd68048ed888ccb62d214c610c38f54688272440b1ad77ee4f609cfc15d1eb2b`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372629535cb7f3efb388f29ed865961910501043e179c32197ed26756d1a3486`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 133.1 KB (133131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee948a50e3a5e03d401da8f5126af26ec7909b8e2296fa556f5efbfb2111743e`  
		Last Modified: Tue, 14 Jul 2026 04:22:13 GMT  
		Size: 2.2 MB (2212877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fad32a0dcd7b477c1e1429936306f0908186518b1774693b51e692e9e7878e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4064931bd82f5a4040e384b47a49d9527b183a69e143ed785daeb1c1e41fefd9`  
		Last Modified: Tue, 14 Jul 2026 04:22:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:a1c8255458da1b4cdbc93657869386f3145f7c80ea743b0088d190c939dd3150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2024595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca9f22cfd4be96886740197f7e426c6021f0463f1ba83dc4212cdb7f5b9602`

```dockerfile
```

-	Layers:
	-	`sha256:3ececf73360df7dfa9116918db610eb8e3a96cf5512d12070861b656b6a4408e`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 2.0 MB (2002368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da1aeb2b8da75a5f42c6b321ee75d40f768084ccb7412cce71efc09f340471eb`  
		Last Modified: Tue, 14 Jul 2026 04:22:12 GMT  
		Size: 22.2 KB (22227 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:trixie` - linux; s390x

```console
$ docker pull memcached@sha256:082094e01eb3e909cf30f1afc77e99b38d6804ade74f0ecd79d9848392b48fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32290102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa924aef4001ac273bcb67aadff058abce64a40310faa01d03cf1cf0e897aa2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:18:38 GMT
RUN set -eux; 	groupadd --system --gid 11211 memcache; 	useradd --system --gid memcache --uid 11211 memcache # buildkit
# Wed, 05 Aug 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_VERSION=1.6.45
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.45.tar.gz
# Wed, 05 Aug 2026 00:22:00 GMT
ENV MEMCACHED_SHA1=45038980ea7045a548b9b5b5125ef7116312a768
# Wed, 05 Aug 2026 00:22:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libio-socket-ssl-perl 		libsasl2-dev 		libssl-dev 		make 		perl 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		sed -i.bak 's/SECLEVEL=2/SECLEVEL=1/g' /etc/ssl/openssl.cnf; 	make test PARALLEL="$nproc" || make test; 	mv /etc/ssl/openssl.cnf.bak /etc/ssl/openssl.cnf; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		memcached -V # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:22:00 GMT
USER memcache
# Wed, 05 Aug 2026 00:22:00 GMT
EXPOSE map[11211/tcp:{}]
# Wed, 05 Aug 2026 00:22:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2b8541d688d5621e59a9c8baa14a49aad2148b9bad2194ab63c33fdb408e77`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d55578296b59bdab8b27002b870921e96c6490b964497665ac6dfcdaf2d4f1`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 140.6 KB (140603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de2e9aed2d4564b6f23a88b8dcb96b624c4f4f71b9cc06d85a13193a0cb93b7`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.3 MB (2301413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7e72b31c51234471453a220a96ac9460837c1d8a29ad9c9ffd7f8feb3ead43`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189dbbaacaa70a3fad49811ecc19de57f34921b1db609c08728261ea560a4838`  
		Last Modified: Wed, 05 Aug 2026 00:22:13 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:trixie` - unknown; unknown

```console
$ docker pull memcached@sha256:64b14b3ad36e4754e2fa859e80a2f74fc83f253b397ec0cb6b4b6ea3290a9f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (2031994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896a68a5b7b962c83d564ad25e0d32831a67c27b0d362499b7f108acad12e613`

```dockerfile
```

-	Layers:
	-	`sha256:50443fc8ffa0a5e008855e436b8048d180adae91b4dee739a316dce06eea2217`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 2.0 MB (2009841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:604e1167091382c3e29010b5d1d1c2cab2e3a6ae68984433167509cd347c6c3b`  
		Last Modified: Wed, 05 Aug 2026 00:22:12 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.in-toto+json
