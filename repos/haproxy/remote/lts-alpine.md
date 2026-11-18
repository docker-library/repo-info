## `haproxy:lts-alpine`

```console
$ docker pull haproxy@sha256:0b1577b028feaa4687221516742aca62829598ad105084bd7d6f5df260d284a5
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
$ docker pull haproxy@sha256:58706d9d772602f369bac3604be2303dce0ebc795d1178ac496eb1d0d2528a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20583725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997b0363a3729dea6b1dab86830e83acb38d4c6b98303dc2134126c73e3732d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 22:29:04 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 18 Nov 2026 22:29:04 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:29:51 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:29:51 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:29:51 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:29:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:29:51 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:29:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:29:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:29:51 GMT
USER haproxy
# Wed, 18 Nov 2026 22:29:51 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:29:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31025f46c8fb735bcf905463cc845d021261bc37fdc4ef7adefff4b0e76101a`  
		Last Modified: Wed, 18 Nov 2026 22:29:59 GMT  
		Size: 785.4 KB (785362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5796de6c1aa0a4e2731ecbe53863f60ac98906c13ece5f3917adf5c1b314280e`  
		Last Modified: Wed, 18 Nov 2026 22:29:59 GMT  
		Size: 961.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb59eb50598a48cd01761b5729228e23239702152b45294427273b786468ac4`  
		Last Modified: Wed, 18 Nov 2026 22:29:59 GMT  
		Size: 15.9 MB (15943255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7712edbd8197fa2e386b2ec784e1c30f38abc3bf73ebe8c97b10f2da25a3c02`  
		Last Modified: Wed, 18 Nov 2026 22:29:59 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:0314c5cb3df3ef3630bb43ce401b4093a79ddc2033cd5a1f68a109437304ccda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 KB (230158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef52e85a77002d9d22091589c08b832c8ac400254f52febb5ce022e83da34678`

```dockerfile
```

-	Layers:
	-	`sha256:de127189bd8aa70d5431e9fec14b7bb02b1b976983e33a4bf8e6edc3c97094a9`  
		Last Modified: Wed, 18 Nov 2026 22:29:59 GMT  
		Size: 208.4 KB (208365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46686a0bfcfa802a17a9f3adee22be659f6c6a97a38617bcfa1443f50cc29414`  
		Last Modified: Wed, 18 Nov 2026 22:29:59 GMT  
		Size: 21.8 KB (21793 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:e556fecd110ea0fcfccae37a33bfa26d785202148853e2821cb31fbd1edcae06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 MB (20526612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52f04857374c3c737a19b4ace0d102e501ecfefba476972e4c3339671ca723a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 22:28:52 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 18 Nov 2026 22:28:52 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:29:42 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:29:42 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:29:42 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:29:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:29:42 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:29:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:29:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:29:42 GMT
USER haproxy
# Wed, 18 Nov 2026 22:29:42 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:29:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248aa0813db9b4c7eb32477fc18500bedafcb94add1c65ec1555e5f47d4f0987`  
		Last Modified: Wed, 18 Nov 2026 22:29:48 GMT  
		Size: 776.9 KB (776865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe42145e1358ed2a8c433dcccfda9e36e6701bc83e337abf3a953a6ffa9da77`  
		Last Modified: Wed, 18 Nov 2026 22:29:48 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dedd665370afdadd141ef0eb547cb3b442ad8b4120442b302391b4ca08a53bf5`  
		Last Modified: Wed, 18 Nov 2026 22:29:48 GMT  
		Size: 16.2 MB (16189909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f131e9c6d8630e68b0cbadbb682addfb5ffdcae7e29b21f8c0c971afd0cee6ba`  
		Last Modified: Wed, 18 Nov 2026 22:29:48 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:1cee67fa555595be6e5cca7318f8194e7a5f182f96456a0bde562c8618e7cf90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 KB (21715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b126948303dbc5907f407a0826c6493959812886ba411ac24b1b06699b23187b`

```dockerfile
```

-	Layers:
	-	`sha256:4b3cb55b0b413409b05bc4a991b2182db7362bd971fefbcabf4fab7e06c3f276`  
		Last Modified: Wed, 18 Nov 2026 22:29:48 GMT  
		Size: 21.7 KB (21715 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:6c7701c8bcb14b3cb1cd4773f433d7d31b0bbfad1e8bad41f0e2788cfc897f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 MB (20016778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25411578a5f6bb5192c07dfa5119b69afa6dd0d43436fd9391610727bc0d0d92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 22:28:54 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 18 Nov 2026 22:28:54 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:29:44 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:29:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:29:44 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:29:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:29:44 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:29:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:29:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:29:44 GMT
USER haproxy
# Wed, 18 Nov 2026 22:29:44 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:29:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f28883f7c52fc16d9a6f628594d74f6fdc91e46f83f5a0aa96321102737bdf50`  
		Last Modified: Wed, 18 Nov 2026 22:29:51 GMT  
		Size: 731.5 KB (731485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6aad08cd18a5853698a4f87bfa5b64b09d3f61a39655bbfaf5cc229b9defc1`  
		Last Modified: Wed, 18 Nov 2026 22:29:51 GMT  
		Size: 962.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02b924747d54bccbcc973a01ec99a2793da755e5665f6c7e9d224dc7648dffdc`  
		Last Modified: Wed, 18 Nov 2026 22:29:52 GMT  
		Size: 16.0 MB (16016124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27f49ed26c90940ba434902030a26bad7413157c5b9df01d68b869ad120b7c4`  
		Last Modified: Wed, 18 Nov 2026 22:29:51 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:8debcac533a8ab3b5d4c07dead433fe49a92a667c8ab5233bc07b8d52c0bef0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 KB (229714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829ba44d8c3259fa7b523b3bfcc15fdafb146f2e487f33e71c4de6aa0cdb80c9`

```dockerfile
```

-	Layers:
	-	`sha256:94dd05b0a4a99423032ae888755172991d0c8f981f720b89e8653cab62293c34`  
		Last Modified: Wed, 18 Nov 2026 22:29:51 GMT  
		Size: 207.8 KB (207783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef4284dc80c1bb48422cbdc7a6b528b1794e3dcae63c6921f58193ad7ccfee2`  
		Last Modified: Wed, 18 Nov 2026 22:29:51 GMT  
		Size: 21.9 KB (21931 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:ad1bb9e0745430a6126befde0e5d01b779a6eb28545d7f97074f4e4d9986772a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20680311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a465a9d059d9ca4f561ae904cff23cef906d8d7e0ad4c0bc9824806d256dfe94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 22:29:01 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 18 Nov 2026 22:29:01 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:29:42 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:29:42 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:29:42 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:29:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:29:42 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:29:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:29:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:29:42 GMT
USER haproxy
# Wed, 18 Nov 2026 22:29:42 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:29:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c25b42478bc673905d8dafc500f7c1e644cf23727278f2be43040011f771ee5`  
		Last Modified: Wed, 18 Nov 2026 22:29:49 GMT  
		Size: 798.5 KB (798472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe0f9d0bfe5e6aa9e650dccb0f4da0b6e3436290183c3e218489b31c8777978`  
		Last Modified: Wed, 18 Nov 2026 22:29:49 GMT  
		Size: 961.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a80cd09a090eaa9cece4724075dc305f201c0426350a903ce972b7d584946d5f`  
		Last Modified: Wed, 18 Nov 2026 22:29:49 GMT  
		Size: 15.7 MB (15689809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14193c30bb9d486a9405ee77aaa434444f1f93fabe8e38da78986819137f20e7`  
		Last Modified: Wed, 18 Nov 2026 22:29:49 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:06da6aafc6cbd19294df664b69e671b3820572850d9e778d057fe55499bed505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 KB (229794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14454899c272901e677eb3282ae8211200ef96072c6fb22e83c3ed6e7487b6e3`

```dockerfile
```

-	Layers:
	-	`sha256:6b10cff88751cc812a792aaa634f09c7e907e95b113096b05547c7c10109f81b`  
		Last Modified: Wed, 18 Nov 2026 22:29:49 GMT  
		Size: 207.8 KB (207819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8331f05c97fb68d659fdbef9ae6b502140a3281751dfbddb6a891ccd476694d8`  
		Last Modified: Wed, 18 Nov 2026 22:29:49 GMT  
		Size: 22.0 KB (21975 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:20603857a92df781a141a1921de768bec241c782b05f9e1dc021fb0802eabb7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20193116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1afad1b41675532ee77f551049af577d757018f1559790ceede9243eedc06a17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 22:29:06 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 18 Nov 2026 22:29:06 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:30:03 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:30:03 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:30:03 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:30:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:30:03 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:30:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:30:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:30:03 GMT
USER haproxy
# Wed, 18 Nov 2026 22:30:03 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:30:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5b5f711a78222bc4ceb71b88c55c0b0de6022c143a39d258195932f588cad4`  
		Last Modified: Wed, 18 Nov 2026 22:30:10 GMT  
		Size: 790.3 KB (790316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827bc4ed26168a993068a21d487a759089eb2e3d54786a81eb8c8cb6b6352177`  
		Last Modified: Wed, 18 Nov 2026 22:30:10 GMT  
		Size: 960.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9490689e3b99477ad8accab89461236c79f747de0d9c09e91acde273f927e9ca`  
		Last Modified: Wed, 18 Nov 2026 22:30:10 GMT  
		Size: 15.7 MB (15721005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2134cc857f82002e5ba7e2c9aadf6c99e741eb4623b5673b9e32bdba039962b`  
		Last Modified: Wed, 18 Nov 2026 22:30:10 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:7f309d5e6abf15161e6077287b27f675c17fd5808c1c03d75bcccfdb3211aad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.1 KB (230057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa4726debb4bb043c42ec206b3d71ed31e32a54896e4a3f5d4247c7e959bfe0`

```dockerfile
```

-	Layers:
	-	`sha256:b53ade58006167be53bb1ec7d3f78d9a23ab372fb8d1ccc368be13e640cc3d61`  
		Last Modified: Wed, 18 Nov 2026 22:30:09 GMT  
		Size: 208.3 KB (208320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:900a7231db1b8b40e376799434cc5dac534a158a736bd100b3d6b065de7e8fa1`  
		Last Modified: Wed, 18 Nov 2026 22:30:10 GMT  
		Size: 21.7 KB (21737 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:9424d523e1396c896b9e4d1da810cbd056d6dfd3e6afc89945af001bc1b05361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21422692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31a29e49959f55f226377e5868bd90d6ecf1c79581aa59179fef95676bbb235`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:25:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Thu, 05 Nov 2026 21:25:42 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 18 Nov 2026 22:30:29 GMT
ENV HAPROXY_VERSION=3.4.8
# Wed, 18 Nov 2026 22:30:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.8.tar.gz
# Wed, 18 Nov 2026 22:30:29 GMT
ENV HAPROXY_SHA256=024bd521a6cbbe32b426853147e6bbd6a89b107c5a34144846193fee5b7c6ed1
# Wed, 18 Nov 2026 22:30:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 18 Nov 2026 22:30:29 GMT
STOPSIGNAL SIGUSR1
# Wed, 18 Nov 2026 22:30:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:30:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:30:30 GMT
USER haproxy
# Wed, 18 Nov 2026 22:30:31 GMT
WORKDIR /var/lib/haproxy
# Wed, 18 Nov 2026 22:30:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6d5b24291d6f352f899fd532b41468114718cda599fe9ab7f99d6d27c1d259`  
		Last Modified: Thu, 05 Nov 2026 21:27:13 GMT  
		Size: 820.1 KB (820129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6296ce30ed59a677efeca40ad5531e07540f7d680650dbf66fcd0f15a584255`  
		Last Modified: Thu, 05 Nov 2026 21:27:13 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f7bb3f6298eac61c34654ae20bbe4c2d6f6fc74ebea9aa0f306f330b789398`  
		Last Modified: Wed, 18 Nov 2026 22:30:44 GMT  
		Size: 16.8 MB (16779203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de9152e1ec7e1299ad389134f4e9567d0ac3154cc463dbdb1798e6e73c8188b`  
		Last Modified: Wed, 18 Nov 2026 22:30:43 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:f4c83e5f008502c8f642c50058e903fb800fb70b7fc7dccd7194bcf03fddee73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 KB (229637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ed28023383b02cb74b2db7eeb642e4775c7161d4d602bf96e3fd6dfc240f3d`

```dockerfile
```

-	Layers:
	-	`sha256:39b7a177679bb4993a5a044e14aa686e52be3dfb893be7cc301c24bd738e598c`  
		Last Modified: Wed, 18 Nov 2026 22:30:43 GMT  
		Size: 207.8 KB (207772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e426346c6a8143f0c8364ede2c2089c99e8c9e0c28b994e60d4ace1d11cc453`  
		Last Modified: Wed, 18 Nov 2026 22:30:43 GMT  
		Size: 21.9 KB (21865 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; riscv64

```console
$ docker pull haproxy@sha256:a4295e6b8aeede231effdb4d3cf13e5380520a41624bd533445729bcffc22ca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21532026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de11ec7efb6dbfeb51cd7595943b3501410afc8891ef8d6599110d11d63727a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 22:49:46 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Mon, 09 Nov 2026 22:49:47 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 09 Nov 2026 23:28:45 GMT
ENV HAPROXY_VERSION=3.4.7
# Mon, 09 Nov 2026 23:28:45 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Mon, 09 Nov 2026 23:28:45 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Mon, 09 Nov 2026 23:28:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Mon, 09 Nov 2026 23:28:45 GMT
STOPSIGNAL SIGUSR1
# Mon, 09 Nov 2026 23:28:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 09 Nov 2026 23:28:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Nov 2026 23:28:46 GMT
USER haproxy
# Mon, 09 Nov 2026 23:28:46 GMT
WORKDIR /var/lib/haproxy
# Mon, 09 Nov 2026 23:28:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea53636635b4e232efe75c63b2fb1892cc2073b432b5cacd58f63c59bbeb729`  
		Last Modified: Mon, 09 Nov 2026 23:08:48 GMT  
		Size: 805.0 KB (805030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2935853d1cba32ef560e8d86c5bb5fe8dcc3fec6ccebc5b59dfb5f46d8eac6c`  
		Last Modified: Mon, 09 Nov 2026 23:08:48 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc40f16806d6e5384aa3c004875e8c69cd6537939067e48356c0b5c23d3bf2fa`  
		Last Modified: Mon, 09 Nov 2026 23:29:46 GMT  
		Size: 17.1 MB (17144942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a82613bd0e82d1c05ae5dc7d98f317cbfc22512166f3d58f898a995792eeece`  
		Last Modified: Mon, 09 Nov 2026 23:29:43 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:113b2d7d40b62cc1eb275ade6fef7ab2293083e232929d1159767eea10e2b990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 KB (229633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cacc6b0c9f4d18d061e8c955c91ae74dc7ab072a618429cd790d3ebaeefd6a2`

```dockerfile
```

-	Layers:
	-	`sha256:b1a7fa7783bfe9b9f7d1328f947ee7d3c504d3650d9d9952bd41d83cff1c9591`  
		Last Modified: Mon, 09 Nov 2026 23:29:43 GMT  
		Size: 207.8 KB (207768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb749c2582635db63c8d33f9ce4927959c096f8e474d2296c067ae41c56d38eb`  
		Last Modified: Mon, 09 Nov 2026 23:29:43 GMT  
		Size: 21.9 KB (21865 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:4f4324752ac5833fdf7bb59f0847210313d9eda4f7a72fa3517cd32bc2a9ade7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20863823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1ff729401c90a9e24999aea624bedc99afade174acc27b7e2c7b03566b535f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:14:15 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Thu, 05 Nov 2026 18:14:15 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 05 Nov 2026 18:15:30 GMT
ENV HAPROXY_VERSION=3.4.7
# Thu, 05 Nov 2026 18:15:30 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Thu, 05 Nov 2026 18:15:30 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Thu, 05 Nov 2026 18:15:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Thu, 05 Nov 2026 18:15:30 GMT
STOPSIGNAL SIGUSR1
# Thu, 05 Nov 2026 18:15:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:15:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:15:31 GMT
USER haproxy
# Thu, 05 Nov 2026 18:15:31 GMT
WORKDIR /var/lib/haproxy
# Thu, 05 Nov 2026 18:15:31 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48079471761191bee11cbc751da705475534bc4c55883329325eadf0f645998f`  
		Last Modified: Thu, 05 Nov 2026 18:15:34 GMT  
		Size: 848.3 KB (848291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fdc283abe56274b05ecc7f2117277f80e6141ae73cc4c5bc1d528585473d0fc`  
		Last Modified: Thu, 05 Nov 2026 18:15:34 GMT  
		Size: 962.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c3fb15550a400e1235152535a112571bf65d7322a72e5d3ce1591b6e70bf70c`  
		Last Modified: Thu, 05 Nov 2026 18:15:41 GMT  
		Size: 16.3 MB (16293422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5bba3e9a6343291d552d77fc0ff13a204bd91a6286cc87aee97e7325f50b9e9`  
		Last Modified: Thu, 05 Nov 2026 18:15:40 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:aeef9e0e571da0e8a5f0e15d1974345ee03bf5a6b84a3e8c77db69a009ea6206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 KB (229513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e91c25bd4a4bd8feb53ec7c32d7e1de9c307f27a71f817c28bcc13d5f915bd`

```dockerfile
```

-	Layers:
	-	`sha256:b14172a40dcd5012ce1a4cf23f6930549c31ebb0fc8a18f5beee25726716f805`  
		Last Modified: Thu, 05 Nov 2026 18:15:40 GMT  
		Size: 207.7 KB (207720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d454983ac9acd406da5bba8baa1e21e2405155f3e08fe3f424c4fef8d97cf82f`  
		Last Modified: Thu, 05 Nov 2026 18:15:40 GMT  
		Size: 21.8 KB (21793 bytes)  
		MIME: application/vnd.in-toto+json
