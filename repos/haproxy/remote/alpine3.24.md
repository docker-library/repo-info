## `haproxy:alpine3.24`

```console
$ docker pull haproxy@sha256:2caaf8b1a1ef67f3f1ea9b721f2821675d3ba4500fb518e23884fecb93e8dbaa
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
$ docker pull haproxy@sha256:891ff5605861609a37f95f6c28f67bc0cb3d87f2e282d7b008ac7fbc5297bc86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 MB (20505735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b236cb24314721386ff14142fd328cc49be455d61af87e61905543be78dd7d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:45:55 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 21 Oct 2026 22:45:55 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 21 Oct 2026 22:46:42 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 21 Oct 2026 22:46:42 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 21 Oct 2026 22:46:42 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 21 Oct 2026 22:46:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 21 Oct 2026 22:46:42 GMT
STOPSIGNAL SIGUSR1
# Wed, 21 Oct 2026 22:46:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:46:42 GMT
USER haproxy
# Wed, 21 Oct 2026 22:46:42 GMT
WORKDIR /var/lib/haproxy
# Wed, 21 Oct 2026 22:46:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e982b2bff6b32b4516549c6927df9e87f54da81f1bdb853b40fc5d0ab32f7798`  
		Last Modified: Wed, 21 Oct 2026 22:46:48 GMT  
		Size: 785.4 KB (785363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a041d8e312e88129cb81bf4bd5dfb08a7a9996cfe0cebb341d74671ce54b8556`  
		Last Modified: Wed, 21 Oct 2026 22:46:48 GMT  
		Size: 961.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023808c0392aa19a4185a9f553745b6e46622ad87b7476ef7132a646839587ea`  
		Last Modified: Wed, 21 Oct 2026 22:46:48 GMT  
		Size: 15.9 MB (15865823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649c34a0b205883f8550f046444a1150f84bafe7954e86cfe6f529824457d57e`  
		Last Modified: Wed, 21 Oct 2026 22:46:48 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:f0ad93e0c370c15fa5a48fa043daa8bb4339e56cda43d34384233fc41976c011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 KB (230164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b96b4f2684f1bf677d3a5d1aa4f17b2e8513272e0d154dd7d445020cbcc2b4`

```dockerfile
```

-	Layers:
	-	`sha256:135e5f5c982bb2ec728ac363cad271bc67d5278a36a6e016f1fb7c47ea6011cc`  
		Last Modified: Wed, 21 Oct 2026 22:46:48 GMT  
		Size: 208.4 KB (208371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d516988159ad0150500a52c89fa8a801acc50efcf801cc8afadb19af5e7ac03c`  
		Last Modified: Wed, 21 Oct 2026 22:46:48 GMT  
		Size: 21.8 KB (21793 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:e51a50e1b44252a1cac111c483689a7fbca53e07587e42caa19ee124405ca998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 MB (20452013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:541c8909b4726d09c39196938a4a29adaea41de51f786e160fabe7d497de584c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:11:29 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 21 Oct 2026 23:11:29 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 21 Oct 2026 23:12:17 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 21 Oct 2026 23:12:17 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 21 Oct 2026 23:12:17 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 21 Oct 2026 23:12:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 21 Oct 2026 23:12:17 GMT
STOPSIGNAL SIGUSR1
# Wed, 21 Oct 2026 23:12:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:12:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:12:17 GMT
USER haproxy
# Wed, 21 Oct 2026 23:12:17 GMT
WORKDIR /var/lib/haproxy
# Wed, 21 Oct 2026 23:12:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8e15796f67e5e1b16e3b89a50279ca9c98284017371f8de47ae04a94b318f4`  
		Last Modified: Wed, 21 Oct 2026 23:12:23 GMT  
		Size: 776.9 KB (776869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aee7bc8a5e521aa6f8a667df10408a76e574022973313c7eb98e0df02ac29ff`  
		Last Modified: Wed, 21 Oct 2026 23:12:22 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100edfe8b9508ae909401c52f07e99c802e69059dda4a794e616a6033c4b5df5`  
		Last Modified: Wed, 21 Oct 2026 23:12:23 GMT  
		Size: 16.1 MB (16115416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7767bd367cea0d27da03e8ca293b7a805bff179cf0d86a66b657174c6425a92a`  
		Last Modified: Wed, 21 Oct 2026 23:12:23 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:29cebebf398b2a713110a337872c8deb6928264b867b69318bfa3841129c5873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 KB (21716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b24b1c04d12eb58487d4778d500e1eaed0ad81c82c02ede3b3e80b43674513d`

```dockerfile
```

-	Layers:
	-	`sha256:bc4ba8a20b158a4efb300a06439d3dcd00ea762204fa2129c3ff9ba1807ba117`  
		Last Modified: Wed, 21 Oct 2026 23:12:22 GMT  
		Size: 21.7 KB (21716 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:0bb0b877a4c4cd5ba82c33881d0cfbf83c8cbd27dbd48f106c8d034ed9ad55e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 MB (19952065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bed0c98dd629d18975441d298f0f362611b4f5be2a0e26869dbbe31769dc425`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:15:15 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 21 Oct 2026 23:15:15 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 21 Oct 2026 23:16:06 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 21 Oct 2026 23:16:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 21 Oct 2026 23:16:06 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 21 Oct 2026 23:16:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 21 Oct 2026 23:16:06 GMT
STOPSIGNAL SIGUSR1
# Wed, 21 Oct 2026 23:16:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:16:06 GMT
USER haproxy
# Wed, 21 Oct 2026 23:16:06 GMT
WORKDIR /var/lib/haproxy
# Wed, 21 Oct 2026 23:16:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77e75bb1a54d8e019f75a2f5a6dfbb75570252c82be77034202cb7443379bc2`  
		Last Modified: Wed, 21 Oct 2026 23:16:13 GMT  
		Size: 731.5 KB (731487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58575317a0983b9d5f66aab41dda0b218fb36051c004ac7b50fa6eb4249d5c1c`  
		Last Modified: Wed, 21 Oct 2026 23:16:13 GMT  
		Size: 961.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf31ed06d659351c25a3116ca7c1a997e108da8a519964a01c16f74e1461120`  
		Last Modified: Wed, 21 Oct 2026 23:16:13 GMT  
		Size: 16.0 MB (15952485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1fa6af616ef83596bda521e2709d333f46313446e4c32102a391a71e6502a69`  
		Last Modified: Wed, 21 Oct 2026 23:16:13 GMT  
		Size: 440.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:dadf317157e33049575c6d0d30e63144025fe7fdad6a623fe1d392a842790a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 KB (229719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b18ddc1d7ff5a0ca9f90b701ab5dfccb23551733711dee0bb71cc204d8aecb`

```dockerfile
```

-	Layers:
	-	`sha256:38f9158679b637e64139ec15f93a6fe0fe27d7e71f1d2c31583ae12a764d43ea`  
		Last Modified: Wed, 21 Oct 2026 23:16:13 GMT  
		Size: 207.8 KB (207789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0feb3dd1aabdce5eb7dc65d1f522cca04533d2523a054eb264a1fad11f49eb5e`  
		Last Modified: Wed, 21 Oct 2026 23:16:13 GMT  
		Size: 21.9 KB (21930 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:eb1ee22f6d77d31700bf3b4989e0bb3b1e0a1ef864102529554838aa9c0a7aa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20605897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f554e797d4d19f47977ce2a6561d377af645cc0a5e9dddb55e6fe6f1617d1ca6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:15 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 21 Oct 2026 23:12:15 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 21 Oct 2026 23:13:00 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 21 Oct 2026 23:13:00 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 21 Oct 2026 23:13:00 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 21 Oct 2026 23:13:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 21 Oct 2026 23:13:00 GMT
STOPSIGNAL SIGUSR1
# Wed, 21 Oct 2026 23:13:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:13:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:13:00 GMT
USER haproxy
# Wed, 21 Oct 2026 23:13:00 GMT
WORKDIR /var/lib/haproxy
# Wed, 21 Oct 2026 23:13:00 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268920b80347ba1302d07897416a92c1417c1b1f7835677b09962b251598bda1`  
		Last Modified: Wed, 21 Oct 2026 23:13:07 GMT  
		Size: 798.5 KB (798461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21f0788bf10d354680b3dea7184acd5b04ef0dd2b705ac9ba91a087dce65711c`  
		Last Modified: Wed, 21 Oct 2026 23:13:07 GMT  
		Size: 961.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:933cd42cf4755434f3421ac50b34b5928e579d5d155a436da65dfc1d436c02dc`  
		Last Modified: Wed, 21 Oct 2026 23:13:08 GMT  
		Size: 15.6 MB (15615514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d453413ff7cac1ab27b9ce7a2624ae456671c28f66f2c207492ea1a99b09f0d`  
		Last Modified: Wed, 21 Oct 2026 23:13:07 GMT  
		Size: 441.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:d6459b11544c31931af20f08f9082c66375df2fab986ac4d6b6a8914ad893178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 KB (229799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32dcf6c08a9e417fc711ba984fc126688a69aee294c19141ad9255110f78e17f`

```dockerfile
```

-	Layers:
	-	`sha256:da9f6148e3e53269f83d2e40249cc8c81de7820ecaa5e5993360fb19a6fc9d62`  
		Last Modified: Wed, 21 Oct 2026 23:13:07 GMT  
		Size: 207.8 KB (207825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:208173b1a79a8cc0dfb388eff8a649ea32dbf6dc9148f9a7877e1b1efb10454a`  
		Last Modified: Wed, 21 Oct 2026 23:13:07 GMT  
		Size: 22.0 KB (21974 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; 386

```console
$ docker pull haproxy@sha256:a231e9ba144b576c89586ff9c2c1ddf671bb8c49f23b18f06e9f3d10dcd11959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20114273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9fe254a6c127106d1b382bb8e32ed05ab843c57d13498fa95362e79b5170552`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:08 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 21 Oct 2026 23:12:08 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 21 Oct 2026 23:12:59 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 21 Oct 2026 23:12:59 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 21 Oct 2026 23:12:59 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 21 Oct 2026 23:12:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 21 Oct 2026 23:12:59 GMT
STOPSIGNAL SIGUSR1
# Wed, 21 Oct 2026 23:12:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:12:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:12:59 GMT
USER haproxy
# Wed, 21 Oct 2026 23:12:59 GMT
WORKDIR /var/lib/haproxy
# Wed, 21 Oct 2026 23:12:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b017ec86912004eea229da2510794464ede93d2ac0eabad2f4f8b7b95f60c003`  
		Last Modified: Wed, 21 Oct 2026 23:13:05 GMT  
		Size: 790.3 KB (790315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2245667e923383ac184afe7df58e60b93deb2ece868b81531165e9a51befc591`  
		Last Modified: Wed, 21 Oct 2026 23:13:05 GMT  
		Size: 963.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949896780bd5355760f211849ce748d2518b7eccb7bd27493435869e4e5d8475`  
		Last Modified: Wed, 21 Oct 2026 23:13:06 GMT  
		Size: 15.6 MB (15643519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc6121138b386cecd1318de05c776acc3da3cc695f7a32c2789298e7f3b48ca`  
		Last Modified: Wed, 21 Oct 2026 23:13:05 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:2def69b8d25fee421fc49c64099ea4f6bcc68740d3f7265d98ea23dfe5719cc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.1 KB (230063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e717c575919374fe223057c93a6b0d88bcac1a60a77a57615cc87fc8b7e3f5e`

```dockerfile
```

-	Layers:
	-	`sha256:fee44f138a8f275d8fcd0dff3844be9a147c533d12e018f98ae99f4c70d81a1d`  
		Last Modified: Wed, 21 Oct 2026 23:13:05 GMT  
		Size: 208.3 KB (208326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9458a4f1111fba6dc10c3213819c4d0ef8b7aa5fce3145492c2aeb7692b98c06`  
		Last Modified: Wed, 21 Oct 2026 23:13:05 GMT  
		Size: 21.7 KB (21737 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; ppc64le

```console
$ docker pull haproxy@sha256:fc6c0c94f13410d1355cca963a7c36534468331b240e33d2b345fe3f67953537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21341066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f69d87a7f7bf2665c7e327a79e87b9fd071afd0f0697835a822c3ec80047c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:26:42 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Thu, 22 Oct 2026 10:26:43 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 22 Oct 2026 10:28:07 GMT
ENV HAPROXY_VERSION=3.4.7
# Thu, 22 Oct 2026 10:28:07 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Thu, 22 Oct 2026 10:28:07 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Thu, 22 Oct 2026 10:28:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Thu, 22 Oct 2026 10:28:07 GMT
STOPSIGNAL SIGUSR1
# Thu, 22 Oct 2026 10:28:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 10:28:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:28:07 GMT
USER haproxy
# Thu, 22 Oct 2026 10:28:07 GMT
WORKDIR /var/lib/haproxy
# Thu, 22 Oct 2026 10:28:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18eabf68867adaedbc6c2b0189deabbbeff6b3942eef044582d49c1149d1e776`  
		Last Modified: Thu, 22 Oct 2026 10:28:13 GMT  
		Size: 820.1 KB (820127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95fb96441671b8e21332542936ceccda5affe871d1e2fe97d8faa69b918779aa`  
		Last Modified: Thu, 22 Oct 2026 10:28:13 GMT  
		Size: 965.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d981681590e452652cd4edb731a80776ae6cee932aedb0b0fa9e38ca5ada3a66`  
		Last Modified: Thu, 22 Oct 2026 10:28:19 GMT  
		Size: 16.7 MB (16698676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc946f4e6367c7e5bac48e8fa8aecef4bdcaf4cbf830a852c116ac5a86adee6`  
		Last Modified: Thu, 22 Oct 2026 10:28:19 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:80c0f6273f8f96295631644a5d94f5edb6001e4bffbfa95e912af8df9ba36939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 KB (229643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c92427981ece6b9e90bd68c737c73fa53e32d3651e1a604f718966ccc2d40bc`

```dockerfile
```

-	Layers:
	-	`sha256:840cef708b4870f391435d95405d060fb251d120c02779a050144d12f1c2b88d`  
		Last Modified: Thu, 22 Oct 2026 10:28:19 GMT  
		Size: 207.8 KB (207778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfc65bd9dab180843a208930a4859ae4f26d695486be2b67777a23d6aef24711`  
		Last Modified: Thu, 22 Oct 2026 10:28:19 GMT  
		Size: 21.9 KB (21865 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; riscv64

```console
$ docker pull haproxy@sha256:489c54235f7265f3a887fb92b5f798b6795395a41f9a7c0ac9c5c1c3382e9f75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.5 MB (21479536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106b36b96acb24a4745b7d5d2f29722757f1fdb65a16d4e5f8448e04a251015b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 13:50:05 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Sat, 24 Oct 2026 13:50:06 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Sat, 24 Oct 2026 14:29:47 GMT
ENV HAPROXY_VERSION=3.4.7
# Sat, 24 Oct 2026 14:29:47 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Sat, 24 Oct 2026 14:29:47 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Sat, 24 Oct 2026 14:29:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Sat, 24 Oct 2026 14:29:47 GMT
STOPSIGNAL SIGUSR1
# Sat, 24 Oct 2026 14:29:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 14:29:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 24 Oct 2026 14:29:47 GMT
USER haproxy
# Sat, 24 Oct 2026 14:29:48 GMT
WORKDIR /var/lib/haproxy
# Sat, 24 Oct 2026 14:29:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11820de8162f0cc535510ef0b012c5be3a9c766e36494c0d5ee20028c532f523`  
		Last Modified: Sat, 24 Oct 2026 14:09:26 GMT  
		Size: 805.0 KB (805027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9815b2d89be0b1693ec69ec30a73570a4dd219b7e2c79ab1290c1e0cc47e28ba`  
		Last Modified: Sat, 24 Oct 2026 14:09:26 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e6c10ab2b8522a0912abc32f191b873380fc3b6068c191ef32a7bb5198f4b5`  
		Last Modified: Sat, 24 Oct 2026 14:30:48 GMT  
		Size: 17.1 MB (17092418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecfc6b999574a8932ff26effe992540887a7e413200eae7158e944a5aa6b0a5a`  
		Last Modified: Sat, 24 Oct 2026 14:30:46 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:d21ad35cbf8a46bf4d503e91385bd78a7e441944ebb0ae9be8b8586e13915494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 KB (229639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f65014cd9a7bb73046bb8f98ecb6740708ca9b9e9365c90e221fb42c3c044eba`

```dockerfile
```

-	Layers:
	-	`sha256:3101223abe34052ee7160a27a881004d310c226ea55a65a97f9be34c2bcc2d1a`  
		Last Modified: Sat, 24 Oct 2026 14:30:46 GMT  
		Size: 207.8 KB (207774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da8d33285d19f87e63ade209c1807a3ef017c748c4be623619aabea3f8366a02`  
		Last Modified: Sat, 24 Oct 2026 14:30:45 GMT  
		Size: 21.9 KB (21865 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:alpine3.24` - linux; s390x

```console
$ docker pull haproxy@sha256:d7ee1046983705d069b0b6b8c6b349a4ee7afab6070aa9ffe7a618788dc0586d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20862870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d89b7d86c83c93b738979995077850e69c5d6b9f1561424397c052f6446f06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:16:12 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Wed, 21 Oct 2026 23:16:12 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Wed, 21 Oct 2026 23:17:12 GMT
ENV HAPROXY_VERSION=3.4.7
# Wed, 21 Oct 2026 23:17:12 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.7.tar.gz
# Wed, 21 Oct 2026 23:17:12 GMT
ENV HAPROXY_SHA256=ccfd342f3724c2cd659574044d788f44e20b212467c6bd5edbbfc517a2775dca
# Wed, 21 Oct 2026 23:17:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Wed, 21 Oct 2026 23:17:12 GMT
STOPSIGNAL SIGUSR1
# Wed, 21 Oct 2026 23:17:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:17:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:17:12 GMT
USER haproxy
# Wed, 21 Oct 2026 23:17:12 GMT
WORKDIR /var/lib/haproxy
# Wed, 21 Oct 2026 23:17:12 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd99a13c6493ff03931b2685c43b0ebbd72eb7fe9ab9222940f350aa9f832de8`  
		Last Modified: Wed, 21 Oct 2026 23:17:22 GMT  
		Size: 848.3 KB (848288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8963f6b7ebce8259945626c0c248a419e2aac04dbbc5655f12df41360530bd03`  
		Last Modified: Wed, 21 Oct 2026 23:17:22 GMT  
		Size: 962.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a645caac9e120110db30fd5266a8c4ef2cd7c4d793e27d5698a66c88c0c04f94`  
		Last Modified: Wed, 21 Oct 2026 23:17:23 GMT  
		Size: 16.3 MB (16293437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05ffe008228aaea9458ef8134ec6db4cf4c7e7ed7fc37491e0195ee5766e606`  
		Last Modified: Wed, 21 Oct 2026 23:17:22 GMT  
		Size: 441.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:9347e960e12e35e8cd5a716f5696179ced6e505449200ebe1c65e6b42976f159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 KB (229513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9158a2d6827fbdc89c2767935f8f4e8b174892a0e5ad5e4e540801b621afb078`

```dockerfile
```

-	Layers:
	-	`sha256:4634fc87f104ee127e7255737ba4ad3aa2ecdcfdce76e60c01c363021253a87b`  
		Last Modified: Wed, 21 Oct 2026 23:17:22 GMT  
		Size: 207.7 KB (207720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a164e5824b7f063cf46c5c438fe85bf79be29d4bb4ce6622f69eb286a80f18e4`  
		Last Modified: Wed, 21 Oct 2026 23:17:22 GMT  
		Size: 21.8 KB (21793 bytes)  
		MIME: application/vnd.in-toto+json
