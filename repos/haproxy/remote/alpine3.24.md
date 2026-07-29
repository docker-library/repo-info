## `haproxy:alpine3.24`

```console
$ docker pull haproxy@sha256:94d41bea676e989957e9c5815d4a413142d8aa140f0b590b66f4b4edbfbae7e2
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

### `haproxy:alpine3.24` - linux; amd64

```console
$ docker pull haproxy@sha256:c7f5037a567378929d0aba734eb78b73497209c72456519420ce5e68a42d60ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 MB (20456346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfd483e380dd0ab8ef1a6b54fbf4f665bf9c2c9bdb821c97f6f8a9ad731cd4a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 29 Jul 2026 18:56:19 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 29 Jul 2026 18:56:19 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 29 Jul 2026 18:57:07 GMT
ENV HAPROXY_VERSION=3.4.3
# Wed, 29 Jul 2026 18:57:07 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Wed, 29 Jul 2026 18:57:07 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Wed, 29 Jul 2026 18:57:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 29 Jul 2026 18:57:07 GMT
STOPSIGNAL SIGUSR1
# Wed, 29 Jul 2026 18:57:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:57:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:57:07 GMT
USER haproxy
# Wed, 29 Jul 2026 18:57:07 GMT
WORKDIR /var/lib/haproxy
# Wed, 29 Jul 2026 18:57:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4230b14e46d9999c06380cc6396826791f7f8a99268576646a331f561c981944`  
		Last Modified: Wed, 29 Jul 2026 18:57:15 GMT  
		Size: 786.0 KB (786000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7cf0618632d85852914069e7df983e9972b177b18370078f36a4cf073967b5a`  
		Last Modified: Wed, 29 Jul 2026 18:57:15 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74a93ee83735a8d2f00f3e1c16fa1ce801a507b1ba6dcee9b0375e1e91b0e57`  
		Last Modified: Wed, 29 Jul 2026 18:57:15 GMT  
		Size: 15.8 MB (15822518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:844e0f7c7e95b4b85d87c6e2d7407b375daa185b542d13ee944c3d3fd33c21eb`  
		Last Modified: Wed, 29 Jul 2026 18:57:15 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:d5a467dc29f1099ff768a4a72ed6004a4d66de97d85f3ab4195a8277c50e0e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.8 KB (230808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02ddab0f112321b17acec00d8fd9cf7ec30a1831113b3536248c10f6ecbfe44`

```dockerfile
```

-	Layers:
	-	`sha256:934d624b5ea4651181f625883263bbe446f0ac95334ccd1620b335085310eec6`  
		Last Modified: Wed, 29 Jul 2026 18:57:15 GMT  
		Size: 209.0 KB (209015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4b5736ad913f8d951493ed121b1bb6fadbf13a7b07a6d002a6a0970a32869bc`  
		Last Modified: Wed, 29 Jul 2026 18:57:15 GMT  
		Size: 21.8 KB (21793 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:b113aa2c8c3a0be33709c0339b3051b9479a5c36d5bef7de15017b08d63f2e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20407187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04eb10dc53c6316014c64ace69e8edb3d323b65dce245425c9792dd2da9e6f7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 29 Jul 2026 18:42:59 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 29 Jul 2026 18:42:59 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 29 Jul 2026 18:43:51 GMT
ENV HAPROXY_VERSION=3.4.3
# Wed, 29 Jul 2026 18:43:51 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Wed, 29 Jul 2026 18:43:51 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Wed, 29 Jul 2026 18:43:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 29 Jul 2026 18:43:51 GMT
STOPSIGNAL SIGUSR1
# Wed, 29 Jul 2026 18:43:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:43:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:43:51 GMT
USER haproxy
# Wed, 29 Jul 2026 18:43:51 GMT
WORKDIR /var/lib/haproxy
# Wed, 29 Jul 2026 18:43:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e350c07837dd87dcd96b0df11b46c2a2755aa32f6f59030b5a4891e9b79512`  
		Last Modified: Wed, 29 Jul 2026 18:43:56 GMT  
		Size: 777.7 KB (777656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd1cebc7838eb1929407445690b2da7e5bc581d54ed0717a207ec6f136116d6`  
		Last Modified: Wed, 29 Jul 2026 18:43:56 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe3fa44e3f5bacf9ed467d2cf012377e7f43b4812e6c55098e028685d3f8430`  
		Last Modified: Wed, 29 Jul 2026 18:43:57 GMT  
		Size: 16.1 MB (16074642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3ac12aa03c190788d1c0ca24ce65f63b5799924c8b0ff13282b912fa7925f7`  
		Last Modified: Wed, 29 Jul 2026 18:43:56 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:1e9ee3839290572545efaa7377b70ea3169216c3e63f96533c47e9b65adf302e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 KB (21716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6062e3a5b159250e7ec8384fe6303b35470d454a957dab1c50949c771c9fc7a7`

```dockerfile
```

-	Layers:
	-	`sha256:25264738c2f28e2a7f4d763de99bc57c403f9c1e30cc4bcf4c38b959fee3ea38`  
		Last Modified: Wed, 29 Jul 2026 18:43:56 GMT  
		Size: 21.7 KB (21716 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:7b073675879b16cff9f7d3a433de39e6bf5c0bbcfd7b0f6e7175abbd50dded2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19900275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:046bd861ebbd5e0bddd3556667c026dbe2470c816ba475716db24d5111433a96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Wed, 29 Jul 2026 18:43:49 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 29 Jul 2026 18:43:49 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 29 Jul 2026 18:44:38 GMT
ENV HAPROXY_VERSION=3.4.3
# Wed, 29 Jul 2026 18:44:38 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Wed, 29 Jul 2026 18:44:38 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Wed, 29 Jul 2026 18:44:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 29 Jul 2026 18:44:38 GMT
STOPSIGNAL SIGUSR1
# Wed, 29 Jul 2026 18:44:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:44:39 GMT
USER haproxy
# Wed, 29 Jul 2026 18:44:39 GMT
WORKDIR /var/lib/haproxy
# Wed, 29 Jul 2026 18:44:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22543b81378c2e31677f63ae98ed6d643c446e7b45752d0afe3512b5a26f8c0a`  
		Last Modified: Wed, 29 Jul 2026 18:44:45 GMT  
		Size: 732.3 KB (732297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139b379dadfc0a9a86f62fa23c694a494980302b384a3f331e5d066c82f0b826`  
		Last Modified: Wed, 29 Jul 2026 18:44:45 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3d853d2eb9e3f7a42314d0ea4ce041ff44ee7815130854d7c2170645f09aeb`  
		Last Modified: Wed, 29 Jul 2026 18:44:46 GMT  
		Size: 15.9 MB (15905920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206e8375bc16bbe4a2646acb294929468f858c9056464025d89a23beb080d96e`  
		Last Modified: Wed, 29 Jul 2026 18:44:45 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:24d96ebd582da599f3075489885ee27db6b4d37e5d01c83ddf97a7f76cb8ea6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 KB (230364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a722f39625ace44fd140898618dde9335c21346dd204d85038d5aa2b5a33e80f`

```dockerfile
```

-	Layers:
	-	`sha256:9f41d756799c0b317af25f50a8d2aca82afe07503026d7624709675e1d757655`  
		Last Modified: Wed, 29 Jul 2026 18:44:45 GMT  
		Size: 208.4 KB (208433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:661d331b7510c27480a9b330574705d75eb138529a4effa75c598f2a00ff4168`  
		Last Modified: Wed, 29 Jul 2026 18:44:45 GMT  
		Size: 21.9 KB (21931 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:0fe6e31a91ad42440ceba4419694189673f9773f90b985bd883db0054a7c5259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20563783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d297f7ef0f6351a1c848101fcb2452cb3f1ae9bfa067f40e94032d499676ef0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 29 Jul 2026 18:43:01 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 29 Jul 2026 18:43:01 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 29 Jul 2026 18:43:45 GMT
ENV HAPROXY_VERSION=3.4.3
# Wed, 29 Jul 2026 18:43:45 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Wed, 29 Jul 2026 18:43:45 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Wed, 29 Jul 2026 18:43:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 29 Jul 2026 18:43:45 GMT
STOPSIGNAL SIGUSR1
# Wed, 29 Jul 2026 18:43:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:43:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:43:45 GMT
USER haproxy
# Wed, 29 Jul 2026 18:43:45 GMT
WORKDIR /var/lib/haproxy
# Wed, 29 Jul 2026 18:43:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59f2ca4d1654f6b05f63410cf366447e116cdb39fcecc7713cf00d95eb6c3b9`  
		Last Modified: Wed, 29 Jul 2026 18:43:52 GMT  
		Size: 799.2 KB (799204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2cf18ae707a048867a4d5e496c38a79c1d60242c0c2fab1e4bb35621ffb284e`  
		Last Modified: Wed, 29 Jul 2026 18:43:52 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8d6dbfc55d1d87008f123a4d1fbfcbdce80ac40edc444f1e861c1bb2df3375`  
		Last Modified: Wed, 29 Jul 2026 18:43:53 GMT  
		Size: 15.6 MB (15580105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04321a50a12c77abbe9b9248880ffc07ffa6a8feb6a5e533d46760d412bdb5f`  
		Last Modified: Wed, 29 Jul 2026 18:43:52 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:b04d6af2284c20d9425714401f8852814704e7e910e95fc8d6c8d06ac00e990e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 KB (230444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aada95282cf50cd42f35df20231267b249c867e7fd456cdc41a9abd24c80baf`

```dockerfile
```

-	Layers:
	-	`sha256:b5074049fe4cf2d0c5883185dd88364cea6a72568ec60dcf295249fc134f9054`  
		Last Modified: Wed, 29 Jul 2026 18:43:52 GMT  
		Size: 208.5 KB (208469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deae1704959d83243816c6e925bf9a0b6f83739c573b0731c2763b9ac2b33f0e`  
		Last Modified: Wed, 29 Jul 2026 18:43:52 GMT  
		Size: 22.0 KB (21975 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; 386

```console
$ docker pull haproxy@sha256:20ea67e90dad4510445c6a1ef4e4fddaa1dd4c353b081e9a903faf7e0d072e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20066812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52387a03f62650c75f523801be11c3c27ac820b45473ff282f04921736768cae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Wed, 29 Jul 2026 18:43:37 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 29 Jul 2026 18:43:38 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 29 Jul 2026 18:44:30 GMT
ENV HAPROXY_VERSION=3.4.3
# Wed, 29 Jul 2026 18:44:30 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Wed, 29 Jul 2026 18:44:30 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Wed, 29 Jul 2026 18:44:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 29 Jul 2026 18:44:30 GMT
STOPSIGNAL SIGUSR1
# Wed, 29 Jul 2026 18:44:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:44:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:44:30 GMT
USER haproxy
# Wed, 29 Jul 2026 18:44:30 GMT
WORKDIR /var/lib/haproxy
# Wed, 29 Jul 2026 18:44:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0abd2338c9c53a5a213c0064d0de66dc378b4b37e1b4e4cb5855c3090d9cf89d`  
		Last Modified: Wed, 29 Jul 2026 18:44:36 GMT  
		Size: 790.9 KB (790889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c9396ed6a0d487033cc77218889972d5d8e5299569f1e5246d987d81141ba3`  
		Last Modified: Wed, 29 Jul 2026 18:44:36 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79751c10572e87de86f2ed15538ccbb25514c9b04e953b75c3928c70ce48221`  
		Last Modified: Wed, 29 Jul 2026 18:44:37 GMT  
		Size: 15.6 MB (15604340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5808f7ee8c7baee10592484ea49422a40e0b9a784c3ac46f95c10711145443a9`  
		Last Modified: Wed, 29 Jul 2026 18:44:36 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:b0e9bde05506f50e774c1c7e20d18625fefc1ef3501d8b15071506ac159fc912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.7 KB (230707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dee410862da02d3f0b4a8174bcad57ffe75168a14e1fdcddbc4560593263e31`

```dockerfile
```

-	Layers:
	-	`sha256:0b2527d80e2b4534364c7c7585ce8055f355bdd940dae1723d5b58677c4676aa`  
		Last Modified: Wed, 29 Jul 2026 18:44:36 GMT  
		Size: 209.0 KB (208970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c0ee04768073d80f75be33466a26d95b0e35f2861269a15483c93e5e379066`  
		Last Modified: Wed, 29 Jul 2026 18:44:36 GMT  
		Size: 21.7 KB (21737 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; ppc64le

```console
$ docker pull haproxy@sha256:cd8d3905dec96ea23b31e4e8e4316ee25e0e1824294b2edcd54372cc908cbb81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21291358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970e08d03c0f8346e5852d0b7309facf2c4005c18a92f066f521f6ea0b3f861b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 21:26:23 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 22 Jul 2026 21:26:25 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 29 Jul 2026 18:43:56 GMT
ENV HAPROXY_VERSION=3.4.3
# Wed, 29 Jul 2026 18:43:56 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Wed, 29 Jul 2026 18:43:56 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Wed, 29 Jul 2026 18:43:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 29 Jul 2026 18:43:56 GMT
STOPSIGNAL SIGUSR1
# Wed, 29 Jul 2026 18:43:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:43:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:43:56 GMT
USER haproxy
# Wed, 29 Jul 2026 18:43:57 GMT
WORKDIR /var/lib/haproxy
# Wed, 29 Jul 2026 18:43:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a8c081289e7f7da81e41290a04f71bb590b9b77717aaf780ee2b6af2e79d40`  
		Last Modified: Wed, 22 Jul 2026 21:27:36 GMT  
		Size: 820.9 KB (820858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513d3471de8f948d3509a4d0cca1906e0a68902697a7c4cd33e781fac0cde635`  
		Last Modified: Wed, 22 Jul 2026 21:27:36 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32c1cee035f6c2210a7700e05cdb811ff86ab304b31e59dba9bc15e65bdc48d`  
		Last Modified: Wed, 29 Jul 2026 18:44:16 GMT  
		Size: 16.7 MB (16655654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e4e777334201986e86451b1b8de3dc091007b08f730767507ca254a7bb7df8`  
		Last Modified: Wed, 29 Jul 2026 18:44:16 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:6d17a9a1181f41c9a5f0873d8d243fc17a749b14619cb86a0722eee83b713872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 KB (230287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34336981f5444a51768f30d8777338959584762a98f5f583225f3086968aa945`

```dockerfile
```

-	Layers:
	-	`sha256:09667e740980ef2c1b4dafc11a14bb0aa029479d743caefe4a7f1301a1745937`  
		Last Modified: Wed, 29 Jul 2026 18:44:16 GMT  
		Size: 208.4 KB (208422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4474bae0c3064312a10c0d4ace9ad0c4dc6d8ef174e90783de6d76b05aa0c208`  
		Last Modified: Wed, 29 Jul 2026 18:44:16 GMT  
		Size: 21.9 KB (21865 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; riscv64

```console
$ docker pull haproxy@sha256:c16f6c6320de98d233b290bebbac5853da59aba1d5acd1d5f0510f207ab33480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21389367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:609929051a64c0e26c49ca10a2d7ddbd07a1b5a1849963e021d4ed83fe9543b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 09:14:32 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 17 Jun 2026 09:14:33 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 21:53:43 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 21:53:43 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 21:53:43 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 21:53:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 21:53:43 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 21:53:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 21:53:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 21:53:44 GMT
USER haproxy
# Mon, 06 Jul 2026 21:53:44 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 21:53:44 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0e4b27bc76910fa0eb8988c9b1c0d6494b84ba811d1f4336ac9ec50e60576a`  
		Last Modified: Wed, 17 Jun 2026 09:48:17 GMT  
		Size: 805.7 KB (805698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7400c12caf29c98608ef5d6aea6c1ef4d39861f7657de269fbd138bbe5cb756`  
		Last Modified: Wed, 17 Jun 2026 09:48:17 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e410feaf6b688caf09d23b6cd80e2f48d5f5fd5748f3fc2e8c71fa356d82a5`  
		Last Modified: Mon, 06 Jul 2026 21:54:36 GMT  
		Size: 17.0 MB (17007868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8242774dd47f580c28023236e0b9de872cdb5be22c918c8b13e0093bf4ca7257`  
		Last Modified: Mon, 06 Jul 2026 21:54:34 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:2e70b41781ced6f0aa920d008a7212f993c8f85ec3ba72e9c3c1dccf2d10b41a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 KB (230283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd79bed05eea91df4874faafc90154974b6d78c8831d067560bf1f8d4f63a1a8`

```dockerfile
```

-	Layers:
	-	`sha256:a35815dae97c00c3886ef45ff19c90526c22b9b11a46c710d191e23bfec04841`  
		Last Modified: Mon, 06 Jul 2026 21:54:34 GMT  
		Size: 208.4 KB (208418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cfe7d11f2474b62dcb0a01ac6970a6f51d48ae169ee3f01f84d03bc20de6b8f`  
		Last Modified: Mon, 06 Jul 2026 21:54:34 GMT  
		Size: 21.9 KB (21865 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; s390x

```console
$ docker pull haproxy@sha256:3e3d15019e0185781f373400fcaa9a8923f752a83a681df1da98d125e31ca330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20811229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a76686cfeee188e8cd6b7bbd3243be3f0ffb0f97a2db96f811b05a4963c7f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 29 Jul 2026 18:42:38 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 29 Jul 2026 18:42:38 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 29 Jul 2026 18:44:06 GMT
ENV HAPROXY_VERSION=3.4.3
# Wed, 29 Jul 2026 18:44:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.3.tar.gz
# Wed, 29 Jul 2026 18:44:06 GMT
ENV HAPROXY_SHA256=7fa666d36d198275999e2a68dda44d3d37960f2f7aed3a595fb811f4fd0515b5
# Wed, 29 Jul 2026 18:44:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 29 Jul 2026 18:44:06 GMT
STOPSIGNAL SIGUSR1
# Wed, 29 Jul 2026 18:44:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:44:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:44:06 GMT
USER haproxy
# Wed, 29 Jul 2026 18:44:06 GMT
WORKDIR /var/lib/haproxy
# Wed, 29 Jul 2026 18:44:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5833c3f0da8261c88ecc15a916cf2ed227c410d105064a760463a0ac291fca`  
		Last Modified: Wed, 29 Jul 2026 18:44:20 GMT  
		Size: 848.8 KB (848837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db666372177a9d6a9b56167c9663a7f7f74304de495bfb0d61371eac0e95d094`  
		Last Modified: Wed, 29 Jul 2026 18:44:20 GMT  
		Size: 962.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d2815f01920dad6bc4b4d1d52ab6740518e2661f40e354b60fbd8e65752b4e`  
		Last Modified: Wed, 29 Jul 2026 18:44:20 GMT  
		Size: 16.3 MB (16251636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778df93dbb4261aba4f307af1f972fdec3f8e89e2e5129877c73035149fe4f3c`  
		Last Modified: Wed, 29 Jul 2026 18:44:20 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:acacdd62bf7687efd7e26d7bbcfc3aa817109f764458dbf65f46c20467f19b6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 KB (230156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c5f28469a53b6d4ec1828480498b3294033cb57fcf3a46d8430e925f208ee0`

```dockerfile
```

-	Layers:
	-	`sha256:26742d5d8f6682b7957285693439a834244d4a756a390c1306084fe7d8b03d4e`  
		Last Modified: Wed, 29 Jul 2026 18:44:20 GMT  
		Size: 208.4 KB (208364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea4d4a72983bcebce2c9503cb9b89f5cfc1d3a368ac3d835fc122e56337237d`  
		Last Modified: Wed, 29 Jul 2026 18:44:20 GMT  
		Size: 21.8 KB (21792 bytes)  
		MIME: application/vnd.in-toto+json
