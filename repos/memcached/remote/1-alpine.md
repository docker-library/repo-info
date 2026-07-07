## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:cd4b42e6cee87000353712623f8a4be411e5a06f61bc1fbc6864fb9b23402fe4
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
$ docker pull memcached@sha256:d24f1303e8fd2dfb03fcb756adaf6867879cdfece89c08a6e9f4a677ca8dadf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6151f346a2bd04c3b277f22740e18cc3c044354e521cc519c92a8c84451d60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:01 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:02 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72537507ddd4bf18613bb8a53b242da50a994ed2f47cea30e1f6c88efbee2a78`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faa191428d835180295942536af93f611e77740cf097b3e8df24f089e6627e9`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 106.1 KB (106072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a8994078ed716f7b7d9bf0c3d456fc16a781de709310bb595531d35228ff54`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 2.0 MB (1968919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fb68556a5eec82c8c88c2fed3144af0ed956d9f11c575f55e2da6863dda7a5`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:d930c2046b540ebb74e7a5b8fd2a6fdf468da9ff2293cb4dd827472ff5031831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 KB (115428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe897885a6263d1427bd866148b454137670c770f04e071d66d2feff8085250`

```dockerfile
```

-	Layers:
	-	`sha256:51f430a0e1d8ff67dc96eae767c7f0711a583e92c9ff33dd9fe9a50d9efcff88`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 94.9 KB (94897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0743f7aa18fbb7703101bbeab0bd523094977be5ea27494e0164581ec1c92a3b`  
		Last Modified: Mon, 06 Jul 2026 21:41:41 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:73acf9d22c4bdbd48aa2de5bf1e220ce75378480569c24ba9c18811287233a1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5573817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e136b1ff362f5bdc367ccbf1880be64dc78c0fc8b0d253d79c397c576ea533`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:38:33 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:38:34 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:51:09 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:51:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:51:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:51:10 GMT
USER memcache
# Mon, 06 Jul 2026 21:51:10 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:51:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293879983da14bd43faca40a46b9a0ce087b83f1d447e044e4951610593ebc91`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e795a1b77921c10d97c236f11aa756351bf412f979662f1acbc3c2ad62fd05e`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 102.6 KB (102628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ba8eb1b8820dd0e9f0738b9b8e91c53acd9c3d9940d0432e0c8f2ad44217aa`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 1.9 MB (1916390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106dee74d5261f5e566fd9e348ba286421a4d1e483cb173f96bed3521dcc687a`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d806648e37a5bc66afa3a2b45eff733ca3b8570c352bf6036f8b077bfde9bbe5`  
		Last Modified: Mon, 06 Jul 2026 21:51:14 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:bae0d2964b7b9f665f5e8dd26b51a2cfe10653f7ef8757d7d4cc60c4f40ca919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 KB (20467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e30efe0e3752cd34280817d416a8e537c8012155b6178564abb4bb870ef4c5`

```dockerfile
```

-	Layers:
	-	`sha256:c2e8d0f0d8af34b5281ae36052d97c6b73b3fe9383a62a22f836382f3bff4b76`  
		Last Modified: Mon, 06 Jul 2026 21:51:13 GMT  
		Size: 20.5 KB (20467 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:75e71baae6434f00bc3570e729ba883ff0b3934a99ef187ffb20c47bf6515cc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e055b173d6abaed66778f7b1de84e94a2cd5148a272964eac221122af04b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:18 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:19 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:14 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:14 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:14 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a07349f740cf45b2454a9b34effb1074b3eafef6ec97a67946c2bfc8f0a609`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc05d2ae8d54d4f592cc6a72c1f46e7dd676340c1bd306f81a0f773e3a694`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 92.4 KB (92369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30172b660bdb95335d0d41ef5f5865718d434cd394d65a78795782f39fa8a31d`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 1.9 MB (1876756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3279f748468a4e79c099100b34acfca01161d3a4c7e3491050d37b9750ec0de5`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2271c46a5c6b2e2f9a4d581113b47bbc27ae767c172026bb9a21b3532d2e7b33`  
		Last Modified: Mon, 06 Jul 2026 21:42:20 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:ee9bff19b784d2bfc1f4a6c997bda2fe5d2f569951169a6da4490dc9aabf38f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 KB (114993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878949ad5f39565e088eb87ab96a6e6d8be7f7be57e4a3ea2fffe2791f38276f`

```dockerfile
```

-	Layers:
	-	`sha256:8d693e5f45f27e0a1b3a67573b03d554ba4a78bae37e0dfe37efd9bb0ad7aad9`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 94.3 KB (94315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ed989ea1e997e400d8acfe1b1ac32263efc1404a751615fce2355b24920f262`  
		Last Modified: Mon, 06 Jul 2026 21:42:19 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9c1f017b1a9c14d8367d0886615b2f4cf5dbeb0abe803cff62e1ccf763a83309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6251555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2345e75471f47c2aaf508a6c0aed3a6394293ab98a83467476f018dbd966b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:04 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:05 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:51 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:51 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:51 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6611430365db147600c92bd762f806ab97f387ae400dfededdb339ed761b38d7`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba750e4cc6a2574aa4c85ae98490be9a705504b4bacc27dc37393172a38113ad`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 121.9 KB (121857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b15b9832850c680687cd3e192fc2b47f402a577cc7936b1429f8bf960043115`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 1.9 MB (1945317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186ad9601948dfa94625c72f2efeb90cec5a856cf8dfc961fe0fb100a7612ceb`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252c6c60ae667ad99277f31f2eb6995dc3c97517567345a95b9bfb6bfc7f4973`  
		Last Modified: Mon, 06 Jul 2026 21:41:57 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:4bf91160995d46f465e01fc0d092960db99f29c302767ea7693e51fe04664e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 KB (115079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66911cd710529f8661a583ca5293311eab2646f7c5df648420879ccfb96710f`

```dockerfile
```

-	Layers:
	-	`sha256:69745701c406c0a0eaeb9398f5a3408b0ed98dc5f7c9eec5b69224b44fae3a07`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 94.4 KB (94351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd96cdd23bab41a8c795d813ad3bca912cb0390a4664e71979b2ce937af558ce`  
		Last Modified: Mon, 06 Jul 2026 21:41:56 GMT  
		Size: 20.7 KB (20728 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:99e3a43ede008cdb2a7404fba0c0d589df056cf317fc4530a43e9a18432057ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5704609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4259473df875ca4b335a6f5fe39a294e95701a65977bdb72708000b400db44ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:39:47 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Mon, 06 Jul 2026 21:39:48 GMT
RUN apk add --no-cache libsasl # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:42:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:42:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:42:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:42:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e1fdddad44a79ab90599c3a732f61d9fe751fc44b20138c34ddac45fd68ef5`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678ab87dad9650d15a64f037d1c0d3983c1d49b794975d97c2497b8f9fd2bd57`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 110.7 KB (110733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b879347f774880c414c9983ecc840683885be02e16e79eb8c9cdcaac056637d7`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 1.9 MB (1922386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4f23ef17cd394d2b5b3c4ff9ace06ec964a74e6e4b1054ce2dab36ef9cf7ac`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0bb4aee5e6e8f857e6e53c13a85acc2ba624960d52685b39ca7a7824a257d`  
		Last Modified: Mon, 06 Jul 2026 21:42:42 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:39a379ca667774a1849a872c123e3fda6a96b382db34f7ae07976d3ddb3fb1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 KB (115325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30528c0c40b7f3cd7ac8a1d6ba7b49c8754f8382944c04619fb7bf92ed3d05a`

```dockerfile
```

-	Layers:
	-	`sha256:bb24486845b08d5db14f90720802598a00f4e035591469f741bbcb785aa4b0bf`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 94.9 KB (94852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62cc5e8bf2657465cce189ee097f4812ba020e1eebad5596743a2358bce26893`  
		Last Modified: Mon, 06 Jul 2026 21:42:41 GMT  
		Size: 20.5 KB (20473 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:7d2ba96d4241409819ccd5423027938262a071d4072846016da6f9225e4836d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6000224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aeec582954a162c8fb264ed5e6fa0c143bebbe9b755034ea3a2cb6d9ea92fa0`
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
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:44:46 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:44:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:44:46 GMT
USER memcache
# Mon, 06 Jul 2026 21:44:46 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:44:46 GMT
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
	-	`sha256:85d469d6b6b1e3b775fe5fe688def9850c709a6baed475555f1bbf86568749a3`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 2.1 MB (2059215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddc956aa4fc60444b4d8984d1191ef930b711b263d6dba62b3e8109db1dd376`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ede20e44eec94165101cde31c847b60fb02a26d0f32608851af2406139c96d`  
		Last Modified: Mon, 06 Jul 2026 21:45:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:0c8a3274873521aa4eaf05ee6bed653147bf23787d0237504c685fcbcca987b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8b08bf8ba35127924f8bf0a7bd38cdbe4611ca3be7eb03883f11f8a106f60e`

```dockerfile
```

-	Layers:
	-	`sha256:4cd76b089083157c73c2fc7f020e42f03ae6146c8526f3a002aedd79855d755f`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 94.3 KB (94304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1baceadbe03e9e6d2078a0728a365e375cb5a7b949807fbb2d1ad605006f4fbb`  
		Last Modified: Mon, 06 Jul 2026 21:45:00 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; riscv64

```console
$ docker pull memcached@sha256:ba5bf40b4adc1fe04f32e2e239fa9c0020d4e89bf4079493f8bc11a92c8f4b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5738070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d12fbf86d6880aaa9d517425d9cecddcf545ba87e577a039dea9ea99ad53d8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Fri, 19 Jun 2026 08:28:27 GMT
RUN set -eux; 	addgroup -g 11211 memcache; 	adduser -D -u 11211 -G memcache memcache # buildkit
# Fri, 19 Jun 2026 08:28:31 GMT
RUN apk add --no-cache libsasl # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_VERSION=1.6.42
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.42.tar.gz
# Fri, 19 Jun 2026 08:41:52 GMT
ENV MEMCACHED_SHA1=de453f58745238c70091fe243549c406aabdc3c5
# Fri, 19 Jun 2026 08:41:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Fri, 19 Jun 2026 08:41:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Fri, 19 Jun 2026 08:41:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jun 2026 08:41:53 GMT
USER memcache
# Fri, 19 Jun 2026 08:41:53 GMT
EXPOSE map[11211/tcp:{}]
# Fri, 19 Jun 2026 08:41:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09d95a0f414638430c0cd3ecfdcce75606201917a27c7cb2ce1e34cb928b26a`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5335c7af79a1b08af55862ba77644afdae5544d9a7871e45c91b364bd4f71d`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 108.9 KB (108888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3622a6ea71515db1ef566afdbb121daed1f408aacf1519f4173b40dabe2ae627`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 2.1 MB (2053467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1db0e3e31ca3f2830f5404436e92b1862a4078adefacacec09a9580a3ad0a2`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 282.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1463b0fd26a37659aaad7f99696e5213764ad03bb094f40836c3309713d7a60`  
		Last Modified: Fri, 19 Jun 2026 08:42:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:aadb3b9338400b87692f95e00931e43940f8d6ddd13f046bd256848dd825e458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 KB (114905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde4b5a4a468d795a5f58dd934b371adfe72cd2ae24e166e1258ad65aa455a56`

```dockerfile
```

-	Layers:
	-	`sha256:debb70180cf674562f7ca321270e3dfa350c5d1596c05dbfcc27b38c65652528`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 94.3 KB (94300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a895bbe0bfec24678c1c92ddd283cb7392e0e8d229f31c769a23c95224c0d371`  
		Last Modified: Fri, 19 Jun 2026 08:42:17 GMT  
		Size: 20.6 KB (20605 bytes)  
		MIME: application/vnd.in-toto+json

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c86f0452a9f8d13f8b5c712bf53ecad0fa72512a4e6efe178083a86c56d2c212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5825105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512a544a637f08526e42bf2c90d41f3684850faa148de5a7ea4756ee704eb2da`
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
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_VERSION=1.6.43
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_URL=https://memcached.org/files/memcached-1.6.43.tar.gz
# Mon, 06 Jul 2026 21:41:36 GMT
ENV MEMCACHED_SHA1=37307d13528f355fb282bc8841ca033272e44ac9
# Mon, 06 Jul 2026 21:41:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		openssl-dev 		perl 		perl-io-socket-ssl 		perl-utils 	; 		wget -O memcached.tar.gz "$MEMCACHED_URL"; 	echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c -; 	mkdir -p /usr/src/memcached; 	tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1; 	rm memcached.tar.gz; 		cd /usr/src/memcached; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		arm-*abihf) export ac_cv_c_alignment=need ;; 	esac; 	./configure 		--build="$gnuArch" 		--enable-extstore 		--enable-proxy 		--enable-sasl 		--enable-sasl-pwdb 		--enable-tls 	; 	nproc="$(nproc)"; 	make -j "$nproc"; 		make test PARALLEL="$nproc" || make test; 		make install; 		cd /; 	rm -rf /usr/src/memcached; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .memcached-rundeps $runDeps; 	apk del --no-network .build-deps; 		memcached -V # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat # buildkit
# Mon, 06 Jul 2026 21:41:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:41:36 GMT
USER memcache
# Mon, 06 Jul 2026 21:41:36 GMT
EXPOSE map[11211/tcp:{}]
# Mon, 06 Jul 2026 21:41:36 GMT
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
	-	`sha256:953e49ef00d23f602cd8f70ea70fa934c041873b3d03763c44e5882ddace30a4`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 2.0 MB (2000145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53337d858b4e79b1fc2dae92dfdea190a06175a55244c43910ea36be1b4a0e78`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e36d6e60879e2d185ee42a79191f0f8ac04cfc130cc0bebd0beca60d2aa9e4`  
		Last Modified: Mon, 06 Jul 2026 21:41:42 GMT  
		Size: 119.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `memcached:1-alpine` - unknown; unknown

```console
$ docker pull memcached@sha256:16066c85c99eca03d74a3ccb2a1cb6ef26bd70cd1abe603e08b140aad9193229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 KB (114777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a25456e690ef0d7e78b9c4006d6d0a01e3dfa626d96cafca25bc3b3b6f346cc`

```dockerfile
```

-	Layers:
	-	`sha256:31477740d9cd110c119a3d7f77d6662e027c9eff9615b5d8cabba62881b75075`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 94.2 KB (94246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb0231be0d089eb94b312c2bc62bdcae87600bb7fd6f9edfdf6d0ecec53bd57`  
		Last Modified: Mon, 06 Jul 2026 21:41:45 GMT  
		Size: 20.5 KB (20531 bytes)  
		MIME: application/vnd.in-toto+json
