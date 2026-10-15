## `haproxy:lts-alpine`

```console
$ docker pull haproxy@sha256:251da69821897ec8c4819f12b1babbc4b71f562943addc9b9eb14bb6ece40dc6
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

### `haproxy:lts-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:c2c6824bd9bf9b4c1dd28864a3110b37774b28566c2e4a34bc0eed16d18d329a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23140815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738369331ed78dab06586ed1270da14fe2bdebff59114904d8cd42846246f54b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:16:55 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 14 Oct 2026 20:16:55 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:17:40 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:17:40 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:17:40 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:17:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:17:40 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:17:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:17:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:17:40 GMT
USER haproxy
# Wed, 14 Oct 2026 20:17:40 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:17:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f13183a43635451736cf63e1c29c5657c08a730e3742ecedff4e8ae216f0aa`  
		Last Modified: Wed, 14 Oct 2026 20:17:47 GMT  
		Size: 788.7 KB (788662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3ea2131341f0cc98daf1a6fcedb83f07bca378f81bf268e17b39ada4be790c`  
		Last Modified: Wed, 14 Oct 2026 20:17:47 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eccc009e91507db6396b94bd25a1c776436c20a8a70d297ce858514f80f7753`  
		Last Modified: Wed, 14 Oct 2026 20:17:47 GMT  
		Size: 18.5 MB (18500978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8ccda1f150e2827e82c73906ab77133cce7450312f2134ef4712926eb46078`  
		Last Modified: Wed, 14 Oct 2026 20:17:47 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:5c5997944050fc20a9ba43fcdd2deef998b7fad9ce939d3a57d48863965ec037
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 KB (232100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a5fd05de0801fafec0962dffebf3693f121d2f56835a76f33466d5e78ae9f7`

```dockerfile
```

-	Layers:
	-	`sha256:049e9b8afd960f068d95a1dab8573dc4769bb10873ece607609866f168bde786`  
		Last Modified: Wed, 14 Oct 2026 20:17:47 GMT  
		Size: 210.3 KB (210308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:596f45838b6a4f94a73db9388c7177b37e3e3a1ae399d5c6044a6680cb9401b5`  
		Last Modified: Wed, 14 Oct 2026 20:17:47 GMT  
		Size: 21.8 KB (21792 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:c4670ce61ea66c8f31a1c3648d7529e3132fed5020acd364da46aa3acbbe7971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22717809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c612da0666375821f02d7b5e15eb132bdca153b2d61dc18cce5fe4ba2f325f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:16:12 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 14 Oct 2026 20:16:12 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:17:02 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:17:02 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:17:02 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:17:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:17:02 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:17:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:17:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:17:02 GMT
USER haproxy
# Wed, 14 Oct 2026 20:17:02 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:17:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea446912e1fd7deabc637d1deb1dd2784e850a25a4073d7bcc8b9c76fbe7f273`  
		Last Modified: Wed, 14 Oct 2026 20:17:07 GMT  
		Size: 781.3 KB (781300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad04051c3e7246ecb88cccf00b7a860b066d675b17cd0570f11db16c8fb5252e`  
		Last Modified: Wed, 14 Oct 2026 20:17:07 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34aa5c1aa2099f994ddabddb7fb4b86de16c895e527ed71ee3097cd64d29a24`  
		Last Modified: Wed, 14 Oct 2026 20:17:08 GMT  
		Size: 18.4 MB (18379952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15c112354e63f867493fc6e97cb713eee7c67aefe87032cd597ba129196325a4`  
		Last Modified: Wed, 14 Oct 2026 20:17:07 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:f3219326b5c8182218b4765b38c9fa19e622a6a5091b8ae7016a33fcd899b5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 KB (21715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3ec20108db51b1cafcf0ecb40200320c8e455435291cdb3d98c17e06688603`

```dockerfile
```

-	Layers:
	-	`sha256:7e067eb6776302c56dc81e76436b233412e79da361e01c6b605b9094033a7957`  
		Last Modified: Wed, 14 Oct 2026 20:17:07 GMT  
		Size: 21.7 KB (21715 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:9e8c772498cbe4337f07ce36bdc8c942609b609c2c7ed98b6b8044ce5d109448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22049304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d175dc79b99855b09b6648b2e43c27fab1e88f46e15d44080b479c689af6154`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:16:32 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 14 Oct 2026 20:16:32 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:17:22 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:17:22 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:17:22 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:17:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:17:22 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:17:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:17:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:17:22 GMT
USER haproxy
# Wed, 14 Oct 2026 20:17:22 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:17:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503747246b6b8d3b0d72ec1a5012ed3d46bcc8ef9eda1f30a0f732f0bc9fcfe2`  
		Last Modified: Wed, 14 Oct 2026 20:17:30 GMT  
		Size: 736.0 KB (735965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30d5e85e317c2021dfa8d7e59890be4d596d9d142eed41fd4246c1c27320fe2`  
		Last Modified: Wed, 14 Oct 2026 20:17:29 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d50023f05193b72acd8b91cb73c25b36285e716281c53e0ee2b3254484aed92`  
		Last Modified: Wed, 14 Oct 2026 20:17:30 GMT  
		Size: 18.0 MB (18046698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae2bd8b0f2e82f4019e8aba52336724112071b192a0f6c2f09598edaa5474ce`  
		Last Modified: Wed, 14 Oct 2026 20:17:30 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:bad9f2682f2a768c8527e7190970866fe486861198f2e5d3a16a0e31414c2761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.7 KB (231656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a390e07e6a6e8eaa8714f0572da71d17bcce8946ca5fbd4c684aad1bfa2e366f`

```dockerfile
```

-	Layers:
	-	`sha256:7f9e88d705ddbf8bbb998cd1344bad1ad537cc20243b8a8765629fcab32d64d2`  
		Last Modified: Wed, 14 Oct 2026 20:17:30 GMT  
		Size: 209.7 KB (209726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d6f1bf764cd2c3ddfb07f1e67f6b20b9f67d662bbab7edd8d30e8e3a1df1948`  
		Last Modified: Wed, 14 Oct 2026 20:17:30 GMT  
		Size: 21.9 KB (21930 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:e2db83aaab7df9242951e74c23f350bafc55efab6bb1a52fbcc28be203f4f5cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23545364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e280b265d31021c86a7a65ea0556fce262ae48530deb6e049c5b796cdd8df39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:16:08 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 14 Oct 2026 20:16:08 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:16:49 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:16:49 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:16:49 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:16:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:16:49 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:16:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:16:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:16:49 GMT
USER haproxy
# Wed, 14 Oct 2026 20:16:49 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:16:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99597ef512a3fbf257bede38ac65e7c60131acfb99361ccdba2bb233cb136b8`  
		Last Modified: Wed, 14 Oct 2026 20:16:56 GMT  
		Size: 802.5 KB (802542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9e1f98ce53dffa78c05350714a7a2ee1a9f5e6223b9369224dd7be0652215e`  
		Last Modified: Wed, 14 Oct 2026 20:16:56 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1943ec261ce03820da833ab8a75970cd791f74f50a91e121ff9b45ce9ee0d7c5`  
		Last Modified: Wed, 14 Oct 2026 20:16:57 GMT  
		Size: 18.6 MB (18553726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790a1d3c7f63386cefe5dc445bfac5b1654d95a631f373b190e088bbf8d89eaa`  
		Last Modified: Wed, 14 Oct 2026 20:16:56 GMT  
		Size: 441.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:bb97f98199ff202e194d7f6ec5ef3ce38a81014fb41e255dbf69724aa922d135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.7 KB (231737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f2bf72b5e8813f1c2921fab51304cd27c65307dea95f54c2d04c5dae9638ad`

```dockerfile
```

-	Layers:
	-	`sha256:2cbe6c14e428c4b0c04ada9144d151a314283ca82c951a8549166ee19dd08dc9`  
		Last Modified: Wed, 14 Oct 2026 20:16:56 GMT  
		Size: 209.8 KB (209762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddaf98dc9ce4b5067b7724e4e336b379067521f90e1641034dc53278e2592dc9`  
		Last Modified: Wed, 14 Oct 2026 20:16:56 GMT  
		Size: 22.0 KB (21975 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:d11a4fb0fd8744c205f1067b77a494920046751ef279cec1b2321983a439d946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 MB (22561857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b7621fd8a06996c21e29d693c554411fbe741c0e9ebbaeb4612586735e1c5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:16:51 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 14 Oct 2026 20:16:51 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:17:38 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:17:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:17:38 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:17:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:17:38 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:17:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:17:38 GMT
USER haproxy
# Wed, 14 Oct 2026 20:17:38 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:17:38 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241bf4af455a9b8e4d4a9c6131d6113591fa3849446660f485f5c7d6edc3c6b4`  
		Last Modified: Wed, 14 Oct 2026 20:17:44 GMT  
		Size: 793.4 KB (793401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61bdc3aa7a1eadb7b9be7c250e1ab6b03fee1c033022ca45790cc526f0cd069b`  
		Last Modified: Wed, 14 Oct 2026 20:17:44 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd24ccfaf1130c9384c65d3431d38a745837cda8684d27ce74b8c0996236aea8`  
		Last Modified: Wed, 14 Oct 2026 20:17:45 GMT  
		Size: 18.1 MB (18090238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f73e5d35e9adf0391172a8da1d539db7046f66351f77f3e2be9dd4f95951ee`  
		Last Modified: Wed, 14 Oct 2026 20:17:44 GMT  
		Size: 441.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:5262467133ab6fd0c6b445cbddd8033d0fbd04eca7e2b7e77a2dae8140fd5d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.0 KB (232000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09a472a4d616bd3941d93d8b5d6b5bd07798ce7d82481ce079e895b354f3316`

```dockerfile
```

-	Layers:
	-	`sha256:c08384af0eb24b8aa6305e0844476e9be8f9d87cdcf58453d64da5a72ed06a01`  
		Last Modified: Wed, 14 Oct 2026 20:17:44 GMT  
		Size: 210.3 KB (210263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f61dbec2ebeca4a1bf86f4e25e256ff2305e4d19929b4c6b7017040dff883a`  
		Last Modified: Wed, 14 Oct 2026 20:17:44 GMT  
		Size: 21.7 KB (21737 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:34fe9ae1166c7fa5ed99fbdea9d006b80ceb90a92bff59d3413ab3f205c102fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23851075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a16b39dcef3e0710b5cc31f8f2d8bdb5365e75116983df54156da2b61eac1f64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:15:07 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 14 Oct 2026 20:15:08 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:18:36 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:18:36 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:18:36 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:18:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:18:36 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:18:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:18:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:18:38 GMT
USER haproxy
# Wed, 14 Oct 2026 20:18:40 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:18:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578a200be3df47fff9789ade603656d2224a34228c50b82022b911ddbb0f39fb`  
		Last Modified: Wed, 14 Oct 2026 20:16:25 GMT  
		Size: 824.3 KB (824268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595d9f39d8f651e92a50f8abf57ef74a8cf8853ab13f9d3bbb67abd02f894433`  
		Last Modified: Wed, 14 Oct 2026 20:16:25 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018942aceeb96911a4115963f3109e9f3717377f1738454be9b39d7b57d7331d`  
		Last Modified: Wed, 14 Oct 2026 20:18:56 GMT  
		Size: 19.2 MB (19207890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5389ccf29b54dd24f4fabd93708cf647521f72c8a514f7607b6b51ba850981d`  
		Last Modified: Wed, 14 Oct 2026 20:18:55 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:10cf68e249db5c1fed928acfda81b7efdc3940a3c8b285adfaf41941887311a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 KB (231579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d6cd930634ee8622fa0a5b1789993918d13d80fe898940c27d4c42651f559d`

```dockerfile
```

-	Layers:
	-	`sha256:dbb5dde3ae5fbcddbcb153e295127a79ea58fd8e5d70c989aaa47d6292fbc834`  
		Last Modified: Wed, 14 Oct 2026 20:18:55 GMT  
		Size: 209.7 KB (209715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bf7a943f55df5c45396485c5f51a235eb3010e4dd450c8ab83da3ca7602047c`  
		Last Modified: Wed, 14 Oct 2026 20:18:55 GMT  
		Size: 21.9 KB (21864 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; riscv64

```console
$ docker pull haproxy@sha256:20e8d50d81cbaa504a0c05dd92d9263785952e18dfc9d2a1076a000775761012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23781508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc520154ef6fe1db3100901d5dba2987fa33c4091a25009bc56c3fedeac7fbbc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 04:13:34 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Sat, 19 Sep 2026 04:13:35 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 15 Oct 2026 08:20:05 GMT
ENV HAPROXY_VERSION=3.4.7
# Thu, 15 Oct 2026 08:20:05 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Thu, 15 Oct 2026 08:20:05 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Thu, 15 Oct 2026 08:20:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Thu, 15 Oct 2026 08:20:05 GMT
STOPSIGNAL SIGUSR1
# Thu, 15 Oct 2026 08:20:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 15 Oct 2026 08:20:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Oct 2026 08:20:06 GMT
USER haproxy
# Thu, 15 Oct 2026 08:20:06 GMT
WORKDIR /var/lib/haproxy
# Thu, 15 Oct 2026 08:20:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f269fd233de21cd3b6c6e7b4094011399cd12291e4e579cf26565a8976754c96`  
		Last Modified: Sat, 19 Sep 2026 04:32:24 GMT  
		Size: 808.4 KB (808407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c1e451653ce86fec9f15a363fc47b51efd3a030cee657592dd6ca65cc0ec15`  
		Last Modified: Sat, 19 Sep 2026 04:32:24 GMT  
		Size: 962.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39cf8d0a6b2d3861839f6c27feaa7496cb65f96ef3d1be4aa712512a991d9a0`  
		Last Modified: Thu, 15 Oct 2026 08:20:59 GMT  
		Size: 19.4 MB (19396289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c72fee76ae05f7c7f88795ad458dd10f9ba6fd6f38765e48e81a08630cebd3`  
		Last Modified: Thu, 15 Oct 2026 08:20:56 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:ce51f8d5328697924fc70845eabfbae1ad1811cb83bc779c34e7a0646b2f5b34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 KB (231576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9185a72b287b260eb5187e830734f61d5bc292543c8e0ead3dc109f8843959ce`

```dockerfile
```

-	Layers:
	-	`sha256:fffe26b2ef425a5889888e97e24c19b4b13aebb438093cdfcbf4d5ffe43fa6eb`  
		Last Modified: Thu, 15 Oct 2026 08:20:56 GMT  
		Size: 209.7 KB (209711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebe3559484f9e5847841de443a440197dc43c45c9f900b50ab0030df731e5424`  
		Last Modified: Thu, 15 Oct 2026 08:20:56 GMT  
		Size: 21.9 KB (21865 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:36287fad21f216fea1ad199fdb7257b11d579c28362093c879b133c12d01b211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23278016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72da82d231981e54428e8b6e5fc3d92528d5356a8f4a04dcce2db1112d7da1ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Wed, 14 Oct 2026 20:14:58 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 14 Oct 2026 20:14:58 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 14 Oct 2026 20:15:57 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 14 Oct 2026 20:15:57 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 14 Oct 2026 20:15:57 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 14 Oct 2026 20:15:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 14 Oct 2026 20:15:57 GMT
STOPSIGNAL SIGUSR1
# Wed, 14 Oct 2026 20:15:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 20:15:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 20:15:57 GMT
USER haproxy
# Wed, 14 Oct 2026 20:15:57 GMT
WORKDIR /var/lib/haproxy
# Wed, 14 Oct 2026 20:15:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062ca8940a8bdb4c4be08853a682d9b0173e1cc58ebaec536b89a16913471f7a`  
		Last Modified: Wed, 14 Oct 2026 20:16:10 GMT  
		Size: 852.2 KB (852168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a77f3041a31bfa619a3d70b7b8c7acc0b6f011a82785c661aa6cf4ac186d9df`  
		Last Modified: Wed, 14 Oct 2026 20:16:10 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855cd8ed19d5feef2f74033560225fe71c4f997848c713490bafe4c62a807c79`  
		Last Modified: Wed, 14 Oct 2026 20:16:10 GMT  
		Size: 18.7 MB (18709073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968f0418c0b763de71c05b61a987ba56168ba05b5b342e82149bd44a597217a6`  
		Last Modified: Wed, 14 Oct 2026 20:16:10 GMT  
		Size: 441.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:3c6c18a8d3d92f8a417acc9db9d84a06fb21a5fdb276a6182b4ae66aaa14a221
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 KB (231450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dccf49b15f6b7978f0dee39a0822534546d6bffe7a77bc1a2279ae202398368`

```dockerfile
```

-	Layers:
	-	`sha256:dcbb86258b3a7450d68a4322ece351044c211b59985727d670d5df93326bcd88`  
		Last Modified: Wed, 14 Oct 2026 20:16:10 GMT  
		Size: 209.7 KB (209657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d8dc7301e867829bac1f4dfc910ed35abf42828a7714261f66c3ef1a5645d3c`  
		Last Modified: Wed, 14 Oct 2026 20:16:10 GMT  
		Size: 21.8 KB (21793 bytes)  
		MIME: application/vnd.in-toto+json
