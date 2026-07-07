## `haproxy:lts-alpine`

```console
$ docker pull haproxy@sha256:0878b11eb64c433be1b0f578a584b8aca12f6caaa64c8f239b8b556c0dd5eeeb
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
$ docker pull haproxy@sha256:4c0430d57b262c693b33ee5e7c27d604acac856371aa4e64433b5037cf34d046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20426695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db11bf71ac7da0781a7b10719f96ee56e9a36a978d5cea674369e17d94f05cc9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:10:51 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Mon, 06 Jul 2026 20:10:51 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 20:11:34 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 20:11:34 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 20:11:34 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 20:11:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 20:11:34 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 20:11:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:11:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:11:34 GMT
USER haproxy
# Mon, 06 Jul 2026 20:11:34 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 20:11:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f407beb11046dfee34980d2a9ce8ebe2b913bb79e8da87edbefc4263783c9ee`  
		Last Modified: Mon, 06 Jul 2026 20:11:41 GMT  
		Size: 786.0 KB (786005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bee843d4b0da47ad13fca83d864558ad7c5dff57b0db660d8f257cea0a47e01`  
		Last Modified: Mon, 06 Jul 2026 20:11:41 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f874c3763c5427266a560c42ec83617a105457070a98d451f7fb1b6a1bdacc1`  
		Last Modified: Mon, 06 Jul 2026 20:11:41 GMT  
		Size: 15.8 MB (15792863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676eaebf2e837cc00592b184d9db2d9d9523d8584424dccd71f3ca2a3eeaa563`  
		Last Modified: Mon, 06 Jul 2026 20:11:41 GMT  
		Size: 441.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:401e29151be3d5a91c3277296bd7cd743f14700a039ba516d32c2d94aec9327f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.8 KB (230808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1291517be162b7ab580fcdb3bd081b524fec16aef7e3eec2c121429678b34758`

```dockerfile
```

-	Layers:
	-	`sha256:e289816666a34073c9b05c114d461563823c9fb9524485ca0549b7af5d4c4382`  
		Last Modified: Mon, 06 Jul 2026 20:11:41 GMT  
		Size: 209.0 KB (209015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4a54c4552be73e637b44a69b75a21229e02e9f512e3365bf18a507ee20cc37b`  
		Last Modified: Mon, 06 Jul 2026 20:11:41 GMT  
		Size: 21.8 KB (21793 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:9c0a11d49c6fe611cd9414aaaee2052b306c59cb91c0890de3bbb68378f6e0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20378851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e1ce15f02c03be60bf99f7a3bb13ef43212fb7cd6c674edb5bfec7ca235a488`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:14:26 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Mon, 06 Jul 2026 20:14:26 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 20:15:16 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 20:15:16 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 20:15:16 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 20:15:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 20:15:16 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 20:15:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:15:16 GMT
USER haproxy
# Mon, 06 Jul 2026 20:15:16 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 20:15:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077ebccaab3045eed8cd7c81e6dbe167867a71139648ef2cd97594105f4ed1d9`  
		Last Modified: Mon, 06 Jul 2026 20:15:21 GMT  
		Size: 777.7 KB (777677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2cd03a478a7d76cd82b0127beee552fdb4609556db6132cef8c1dd4b61239d`  
		Last Modified: Mon, 06 Jul 2026 20:15:21 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8fd3454714b78190d63fd1f796ab4c008802050a5e38438306645fa98a026fa`  
		Last Modified: Mon, 06 Jul 2026 20:15:22 GMT  
		Size: 16.0 MB (16046286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125ea1d4e1f8b7e1e5dbf8391aea463bba851fef9f2480d80015d982dde9965d`  
		Last Modified: Mon, 06 Jul 2026 20:15:21 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:0a95b88408aeadb8ee5a5d6606d68e4cb923356777fec5d2ca79859dfabd6d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 KB (21716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ed98b3f28325c67a66fc55ccec662fe7a1d20cfadcb37a384b827352d6a2b9`

```dockerfile
```

-	Layers:
	-	`sha256:4ee05db9af3142917eafa6413ebf713d5b71c87e3baac5eaa539f434e660a769`  
		Last Modified: Mon, 06 Jul 2026 20:15:21 GMT  
		Size: 21.7 KB (21716 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:e159bf1c6936a1944a8c10af3f5d7aef8b4561c289280afc1f9ac9ac9e68f06e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19871206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9251020b097ec098d689a93234d8a3b392f88fb5335908ebae4df5815a7299e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:15:54 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Mon, 06 Jul 2026 20:15:54 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 20:16:45 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 20:16:45 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 20:16:45 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 20:16:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 20:16:45 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 20:16:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:16:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:16:45 GMT
USER haproxy
# Mon, 06 Jul 2026 20:16:45 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 20:16:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d986e8b24fdae588a8974e52849e74fd7ac251e70bdd06673dc86f102fcdbc02`  
		Last Modified: Mon, 06 Jul 2026 20:16:52 GMT  
		Size: 732.3 KB (732288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97777a6f94ca89d83e189ab496f1945056f71db6049e9b8982144732980720e3`  
		Last Modified: Mon, 06 Jul 2026 20:16:51 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47476e67d8d95534a5116411709fe6d7bbe67311eebea7668158752f7d4c1316`  
		Last Modified: Mon, 06 Jul 2026 20:16:52 GMT  
		Size: 15.9 MB (15876866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc5b8d206ab7bb4fc45c130183ca6a40c97e90eafba59d1b6ed6a079fdfa3dd`  
		Last Modified: Mon, 06 Jul 2026 20:16:51 GMT  
		Size: 441.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:80d7b9ad5ad411f58de730eed301280c47b7aa7896aff81ad85f042f9d2f9888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 KB (230364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7972d5207da38269b1e27756ae56150d73ad2f78346fa0bb8afc4a4425ebadc9`

```dockerfile
```

-	Layers:
	-	`sha256:33b97a62308423c6253ef29a2d9ff806f71b70a3119594f8b98cce61d0992e43`  
		Last Modified: Mon, 06 Jul 2026 20:16:51 GMT  
		Size: 208.4 KB (208433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4be2e1e21d89bfefeb48a8bf103083a8b78c0cc98615cd0d62a81f6c3a8b6def`  
		Last Modified: Mon, 06 Jul 2026 20:16:51 GMT  
		Size: 21.9 KB (21931 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:e26aea569336821ad17a0757de90eb688bab448a5362f39d4bb6c4275d7d8202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 MB (20533635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d3e9a79dabb51463c1ca96fbf8ae81ef690d6ef5857a63f8741e5a378e42cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:11:29 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Mon, 06 Jul 2026 20:11:29 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 20:12:12 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 20:12:12 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 20:12:12 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 20:12:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 20:12:12 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 20:12:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:12:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:12:12 GMT
USER haproxy
# Mon, 06 Jul 2026 20:12:12 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 20:12:12 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdc1673841189b3908e27e9f88048fef9642f74737daa8adc15c826b0995334`  
		Last Modified: Mon, 06 Jul 2026 20:12:19 GMT  
		Size: 799.2 KB (799205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bf72a0e73a37d9ce02d387f30f83c16b0bb8584c5fe51007c558cf556fa876`  
		Last Modified: Mon, 06 Jul 2026 20:12:19 GMT  
		Size: 962.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc024f7ce4ebbc54bc6c1ca5ca15cb240d7092c96719e2f571d46b4419058ba6`  
		Last Modified: Mon, 06 Jul 2026 20:12:19 GMT  
		Size: 15.5 MB (15549956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aee14ab0c75df6c35675d0ccf37db03bc48cd10c55d9f133d7e7499ceea96e`  
		Last Modified: Mon, 06 Jul 2026 20:12:19 GMT  
		Size: 443.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:88acb9706a3c28eaf66e9d15c4a6b8d974bc9f5b52c98d92b2bf74921564fb3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 KB (230444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c60eefe5b7bc941e48792c6048d69c3d9e44c4ebe544359a77130586417cba`

```dockerfile
```

-	Layers:
	-	`sha256:c93d8b2b8e55ec1dc5c06b5d939ba07fd4266e5b79d79c322b4299471403df41`  
		Last Modified: Mon, 06 Jul 2026 20:12:19 GMT  
		Size: 208.5 KB (208469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:515bdccfc14c3955f0238f6892d487d93a2a902834c9fd403ee3da998eb9a86c`  
		Last Modified: Mon, 06 Jul 2026 20:12:19 GMT  
		Size: 22.0 KB (21975 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:d856054bc5de02f4ef5bb76a22769dbb5c1636a2b1b316e5dc3af4a0321fca0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 MB (20037536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116a91bc59ff3d3b8b88e7c24a8142f0dab699e36450ff0ec0f793a182dddb4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:12:48 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Mon, 06 Jul 2026 20:12:49 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 20:13:45 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 20:13:45 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 20:13:45 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 20:13:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 20:13:45 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 20:13:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:13:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:13:45 GMT
USER haproxy
# Mon, 06 Jul 2026 20:13:45 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 20:13:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00660cc00a36223a118c29fd3ff997c82283ba9c1b72a66e25790820b88ded0`  
		Last Modified: Mon, 06 Jul 2026 20:13:52 GMT  
		Size: 790.9 KB (790891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47074564ba5b31a0e425677e5cbcb93680ff66fe13ae53d61e64b90b51cdcd1e`  
		Last Modified: Mon, 06 Jul 2026 20:13:51 GMT  
		Size: 962.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46aadd0fa6d2e1609959af83341c55f59a847448982814bf5ed2c14640fdd05`  
		Last Modified: Mon, 06 Jul 2026 20:13:52 GMT  
		Size: 15.6 MB (15575068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4337492dca9874e676d7915aaffce1fb5ec09f8ea24e82d8a2b9a84396aadc6d`  
		Last Modified: Mon, 06 Jul 2026 20:13:52 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:3fc6602d054d58e3ecb57feaa7b20be3d778cd4ad6f7837d29aad43e07557371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.7 KB (230707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c6d23f184a5ce9de4db9eba91b29d64d802edbca509063719a48b7d92632363`

```dockerfile
```

-	Layers:
	-	`sha256:a522534ec7e037b2afbbd62ec6248bd5531520099e6d1d2ff46b6254b91827b0`  
		Last Modified: Mon, 06 Jul 2026 20:13:52 GMT  
		Size: 209.0 KB (208970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69ceb28480f3ab922ff119e0e5982b39083dab4e540d4556ef5eb7c4d2c261c9`  
		Last Modified: Mon, 06 Jul 2026 20:13:52 GMT  
		Size: 21.7 KB (21737 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:bb74f956dac9ccdadfb23d88454591554c526e0ba91108850815a362981e45a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21254442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881ddec7a68bb06a2d9da1f4592e820518c2cfbaceba601c479c47050357bbc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 16 Jun 2026 00:10:58 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Tue, 16 Jun 2026 00:10:59 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 20:19:12 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 20:19:12 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 20:19:12 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 20:19:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 20:19:12 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 20:19:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:19:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:19:12 GMT
USER haproxy
# Mon, 06 Jul 2026 20:19:13 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 20:19:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6d7eda7c30cfd9220352932d2fab26c0a09ec13e630c5cfa190a8d667b639a4`  
		Last Modified: Tue, 16 Jun 2026 00:12:17 GMT  
		Size: 820.8 KB (820835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08361da2f18efac83dabb6c40b81b2c6459e8373f02643568e9e7905eaaa001d`  
		Last Modified: Tue, 16 Jun 2026 00:12:16 GMT  
		Size: 962.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b74c8ca2bbaf9c22cacd0f0367d45c5228e4210f482238424988c1366750a8`  
		Last Modified: Mon, 06 Jul 2026 20:19:30 GMT  
		Size: 16.6 MB (16618765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea1a7930530b4655a09b0b0d76069360b319f652bc674594d5c0ae31457fdb5`  
		Last Modified: Mon, 06 Jul 2026 20:19:29 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:fb75bae5433e990ec4b3f091380eef6a63ea4be78d441c2150cbf72cbd781d0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 KB (230287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2517fba9aca8f9810d0f7a9d8a76df72fb22ff32d9edc00874e91ee2217d649f`

```dockerfile
```

-	Layers:
	-	`sha256:04cf112a51c3ded5f61b6818a367a95ffd044a8e6feebcfb1e8567bd408f724b`  
		Last Modified: Mon, 06 Jul 2026 20:19:30 GMT  
		Size: 208.4 KB (208422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b597b1e9aeff10f738c1d99dcd078c84b7266710062cfad12c1f7e9e4f495c5e`  
		Last Modified: Mon, 06 Jul 2026 20:19:29 GMT  
		Size: 21.9 KB (21865 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine` - linux; riscv64

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

### `haproxy:lts-alpine` - unknown; unknown

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

### `haproxy:lts-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:d0fec5a27a007afb974d2f9437bffb231acc2c5150f673b729a89cbafe7871db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20777143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a6dff584eb7daef13706356743a97eac37dfed0fed7bd7be0901622e934422`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 18:09:36 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Fri, 26 Jun 2026 18:09:38 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Mon, 06 Jul 2026 20:24:14 GMT
ENV HAPROXY_VERSION=3.4.2
# Mon, 06 Jul 2026 20:24:14 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.2.tar.gz
# Mon, 06 Jul 2026 20:24:14 GMT
ENV HAPROXY_SHA256=b1330dbb0d6e6bc4a72c4708a6a9e585579cd1156dfe5763c26305105bc12907
# Mon, 06 Jul 2026 20:24:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Mon, 06 Jul 2026 20:24:14 GMT
STOPSIGNAL SIGUSR1
# Mon, 06 Jul 2026 20:24:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 20:24:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 20:24:14 GMT
USER haproxy
# Mon, 06 Jul 2026 20:24:16 GMT
WORKDIR /var/lib/haproxy
# Mon, 06 Jul 2026 20:24:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2a2e6c80d8085e589804b539273913a08eaf481354cc136da6222c37bf87ae`  
		Last Modified: Fri, 26 Jun 2026 18:11:16 GMT  
		Size: 848.8 KB (848837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00b067fe63f332fc9dd3500a446ef427645e4788bb391bf7fba22652bcbf2f1`  
		Last Modified: Fri, 26 Jun 2026 18:11:16 GMT  
		Size: 962.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15334f76d54e928cc395e242d1e536d4f3689706fff1eb7fe68a2eec4d6730f0`  
		Last Modified: Mon, 06 Jul 2026 20:25:02 GMT  
		Size: 16.2 MB (16217549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89663d306b3818e1f6801888a2238a514bb1ccc8edd3e48f4c0b8557ae876ae5`  
		Last Modified: Mon, 06 Jul 2026 20:24:58 GMT  
		Size: 443.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine` - unknown; unknown

```console
$ docker pull haproxy@sha256:832b90dc7827af6f92a66243e5a75de8e6d726e2401ee384b694c5e80372cd40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 KB (230156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f221c683236e0348a648413c0697a6a06055d0155088baeeb6ab00d8cd2c35`

```dockerfile
```

-	Layers:
	-	`sha256:da1eab2254ce59599ada6a1a1ce4b536d11a66107391cb8fd72a6bd791432813`  
		Last Modified: Mon, 06 Jul 2026 20:24:58 GMT  
		Size: 208.4 KB (208364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecd61a0c484dcdbfbd84d606ebb145a19177abebd205292738ff32e1602b776b`  
		Last Modified: Mon, 06 Jul 2026 20:24:57 GMT  
		Size: 21.8 KB (21792 bytes)  
		MIME: application/vnd.in-toto+json
