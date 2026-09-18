## `haproxy:lts-alpine3.24`

```console
$ docker pull haproxy@sha256:4da435d31b35640dc1604bf29bb80c2895f09ec53d3f2aca6db2bc7fecc92817
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

### `haproxy:lts-alpine3.24` - linux; amd64

```console
$ docker pull haproxy@sha256:560d1d5cc8edfff2536ac4c8d4ae6807371c07213b3cc7372bcba3cf61b506a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 MB (20483211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72860824803c1fee3f568a2b84ccf4e86e04998ab50abc418c6a5c887e7f90a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:43 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Thu, 17 Sep 2026 21:15:43 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 17 Sep 2026 21:16:24 GMT
ENV HAPROXY_VERSION=3.4.4
# Thu, 17 Sep 2026 21:16:24 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Thu, 17 Sep 2026 21:16:24 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Thu, 17 Sep 2026 21:16:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Thu, 17 Sep 2026 21:16:24 GMT
STOPSIGNAL SIGUSR1
# Thu, 17 Sep 2026 21:16:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:16:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:24 GMT
USER haproxy
# Thu, 17 Sep 2026 21:16:24 GMT
WORKDIR /var/lib/haproxy
# Thu, 17 Sep 2026 21:16:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6599adbd25427db3251a7aa4aa2a66a0919bd21a80eed6a9cf2b6f822f76159`  
		Last Modified: Thu, 17 Sep 2026 21:16:30 GMT  
		Size: 788.6 KB (788638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d28842948c473623b7475d40223b342774866b7f6401941c267eda03c784557`  
		Last Modified: Thu, 17 Sep 2026 21:16:30 GMT  
		Size: 962.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c91acad2e6c384dc8a58907572ebf7922e41059b1aa20e7f0347ea308957f5`  
		Last Modified: Thu, 17 Sep 2026 21:16:30 GMT  
		Size: 15.8 MB (15843400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c564c7a61fb4b38810f68acbc5cbe3d0bdaf50121ef75c3d40c4d06ac5f4f8`  
		Last Modified: Thu, 17 Sep 2026 21:16:30 GMT  
		Size: 441.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:1d7b59ae4f8ddaa0e0feae526903b7ebc45ea43d852e461e56494265042a73fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 KB (232100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dceaaba740a5f5ddeb89a94c7ec4e9be8088e0c2a5e4c8bda378ee8542a5fa9a`

```dockerfile
```

-	Layers:
	-	`sha256:b72c15474ccff926db407bc0360583b39f061fe6f9533803e464c8d6dca61289`  
		Last Modified: Thu, 17 Sep 2026 21:16:30 GMT  
		Size: 210.3 KB (210308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c163b5c2b5273eb4ca7f17b54f4d36ff3d759313409c9610dea1cd7cda6e35f`  
		Last Modified: Thu, 17 Sep 2026 21:16:30 GMT  
		Size: 21.8 KB (21792 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine3.24` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:5ddc029380009bdd1ff5b433e0f20c39193621d56e196efad9207c6444015d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20430072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b31bc0bac4ab100dd9782f986bde9f5ca4f3c2a5635972140c756b36e1d2bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:30 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Thu, 17 Sep 2026 21:19:31 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 17 Sep 2026 21:20:19 GMT
ENV HAPROXY_VERSION=3.4.4
# Thu, 17 Sep 2026 21:20:19 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Thu, 17 Sep 2026 21:20:19 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Thu, 17 Sep 2026 21:20:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Thu, 17 Sep 2026 21:20:19 GMT
STOPSIGNAL SIGUSR1
# Thu, 17 Sep 2026 21:20:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:20:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:20:19 GMT
USER haproxy
# Thu, 17 Sep 2026 21:20:19 GMT
WORKDIR /var/lib/haproxy
# Thu, 17 Sep 2026 21:20:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c923224cd18a1c8bbfea79c9e129880a9ca0abf93665c4a9c1444374c801154`  
		Last Modified: Thu, 17 Sep 2026 21:20:24 GMT  
		Size: 781.3 KB (781285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311dffe9e2512d5eee3247a4d6d39852b766e0a32c3c7aa498122f1f2f95aeed`  
		Last Modified: Thu, 17 Sep 2026 21:20:24 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a516353b6f4cea693285f07f8b71aa3d9992c3ad523ddc60c650fcc62377788c`  
		Last Modified: Thu, 17 Sep 2026 21:20:25 GMT  
		Size: 16.1 MB (16092236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a786317f79f96151149e406f88e859fd54de62f35551bedefd24f0e97f59cd`  
		Last Modified: Thu, 17 Sep 2026 21:20:24 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:ec52b4223b99f178ed6146e98d396ebb5f289e9fb8faceff91348558165a2604
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 KB (21716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46294a7cf7aad0c1c82a7591dd099c40367c840f4fc5d71034211f200559be0`

```dockerfile
```

-	Layers:
	-	`sha256:5b6c8d678a9c800b3cefe3e19c13f9e6bb8666a101c88beabc11adb1e8637bef`  
		Last Modified: Thu, 17 Sep 2026 21:20:24 GMT  
		Size: 21.7 KB (21716 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine3.24` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:e7b9daf2fa8f150b60690b99bdc66b588dfe1247ee35e906ae02fbfb3b6f90dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19928213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc943da6ac6139b969cf57b3c742f585eca03e47699ff2b82d546fa6a4bca5ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:18 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Thu, 17 Sep 2026 21:18:18 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 17 Sep 2026 21:19:08 GMT
ENV HAPROXY_VERSION=3.4.4
# Thu, 17 Sep 2026 21:19:08 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Thu, 17 Sep 2026 21:19:08 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Thu, 17 Sep 2026 21:19:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Thu, 17 Sep 2026 21:19:08 GMT
STOPSIGNAL SIGUSR1
# Thu, 17 Sep 2026 21:19:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:19:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:09 GMT
USER haproxy
# Thu, 17 Sep 2026 21:19:09 GMT
WORKDIR /var/lib/haproxy
# Thu, 17 Sep 2026 21:19:09 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3cf6b2e25a11fb83ffc748b21a4792ab7178e38789e5afeb196e4897280d4ee`  
		Last Modified: Thu, 17 Sep 2026 21:19:15 GMT  
		Size: 736.0 KB (735960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:defe80bfe73841e984f2dffe31e8c1cc3f89c75929ae8f0d41851ce90b8a6c02`  
		Last Modified: Thu, 17 Sep 2026 21:19:15 GMT  
		Size: 962.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68a7b114a1d544545392c8683b6e9c8859948ee3f13d8097e6000c4347531d1`  
		Last Modified: Thu, 17 Sep 2026 21:19:15 GMT  
		Size: 15.9 MB (15925613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412daaeadf5a6920e98f3f680e0d3afeb866c59a180993ae5e28dcd4fb2ef13b`  
		Last Modified: Thu, 17 Sep 2026 21:19:15 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:5879e6414013ba3d906f814a76df525cde5e55d438a344882f0a43b848db9397
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.7 KB (231657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39cc9449cfefd1ed70cdd6d6a44dd0283f9c11a27ecab7824b50e6e74d5b60b8`

```dockerfile
```

-	Layers:
	-	`sha256:89119ade78ce0763d1c55643f3dc806e76f1cded44d19a71a2d5f4458c5e7fd0`  
		Last Modified: Thu, 17 Sep 2026 21:19:15 GMT  
		Size: 209.7 KB (209726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b79bc4b22949cb83112f38dedb67f142911d656d9f62bc19e2320008393c455`  
		Last Modified: Thu, 17 Sep 2026 21:19:15 GMT  
		Size: 21.9 KB (21931 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:78888498d1326a1f4b570f1d2197b6c64ff714526e9906cb40d909d0096bea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20589763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9b3582f446bda66b2f5aa493e89079d2ff5c11089ae389a3227c6bfdb90e11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:32 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Thu, 17 Sep 2026 21:13:32 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 17 Sep 2026 21:14:15 GMT
ENV HAPROXY_VERSION=3.4.4
# Thu, 17 Sep 2026 21:14:15 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Thu, 17 Sep 2026 21:14:15 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Thu, 17 Sep 2026 21:14:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Thu, 17 Sep 2026 21:14:15 GMT
STOPSIGNAL SIGUSR1
# Thu, 17 Sep 2026 21:14:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:14:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:14:15 GMT
USER haproxy
# Thu, 17 Sep 2026 21:14:15 GMT
WORKDIR /var/lib/haproxy
# Thu, 17 Sep 2026 21:14:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49de52586188ddd0efeabe9011dafe65de4d0f3ce3461d58a850fa5ed93fdf1f`  
		Last Modified: Thu, 17 Sep 2026 21:14:22 GMT  
		Size: 802.5 KB (802539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff4dee8fea9e37eb2355fc5839dc2326858ebbb0973ba9f2f24e3dbde29db6f5`  
		Last Modified: Thu, 17 Sep 2026 21:14:22 GMT  
		Size: 959.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17fffca512b5b9a5a1ad1e378be62cb2999316837ab553ad764ac5f12d91e22c`  
		Last Modified: Thu, 17 Sep 2026 21:14:23 GMT  
		Size: 15.6 MB (15598129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75333cf9d575717f1bc7d043f51d3b9c8c87cfd37395c8a82b923ad36fbe02dc`  
		Last Modified: Thu, 17 Sep 2026 21:14:22 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:3703a406e8d3e848c4c4e5d129bdc06d87619cf161ebe6f0ac4fe04f3bfd37bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.7 KB (231737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc79e1e63ea45cfdc881fe4f31f869e6cadcbce1494417502251dee5c85ff7f9`

```dockerfile
```

-	Layers:
	-	`sha256:0ceb87083b63a4dbd719bcbb6ca615a5fd165943aa775a622647df870105421f`  
		Last Modified: Thu, 17 Sep 2026 21:14:22 GMT  
		Size: 209.8 KB (209762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23c750be07812364ee3a4332b1c54155676d6c971233a6038a70724ae870cef9`  
		Last Modified: Thu, 17 Sep 2026 21:14:22 GMT  
		Size: 22.0 KB (21975 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine3.24` - linux; 386

```console
$ docker pull haproxy@sha256:2b737bcb6deb42059c038b3052ab2a7c9eedd995ded0cd14ce964d12ac77413d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20093436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135ac0f6d3edbe135b5baafb5b66ed9a590217790a598976892f4e4fb740437e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:14:53 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Thu, 17 Sep 2026 21:14:54 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 17 Sep 2026 21:15:47 GMT
ENV HAPROXY_VERSION=3.4.4
# Thu, 17 Sep 2026 21:15:47 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Thu, 17 Sep 2026 21:15:47 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Thu, 17 Sep 2026 21:15:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Thu, 17 Sep 2026 21:15:47 GMT
STOPSIGNAL SIGUSR1
# Thu, 17 Sep 2026 21:15:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:15:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:47 GMT
USER haproxy
# Thu, 17 Sep 2026 21:15:47 GMT
WORKDIR /var/lib/haproxy
# Thu, 17 Sep 2026 21:15:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c75ad570d61c4d29b25d9486ed7c7658fd6e57b8567054b2ee2c392683c2a2`  
		Last Modified: Thu, 17 Sep 2026 21:15:53 GMT  
		Size: 793.4 KB (793395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d6c85eae558ba40d7406b62501e8f05fcfe73f65c6584e2ea835cb5825a1a6`  
		Last Modified: Thu, 17 Sep 2026 21:15:53 GMT  
		Size: 961.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd88f7b187b3c4da15879bf5fbb45d0adb29d35cf717a98b632cbe6108d0398`  
		Last Modified: Thu, 17 Sep 2026 21:15:53 GMT  
		Size: 15.6 MB (15621822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196026eac9d8fce3bed70f3e58906478c7403bce41530b4beca11a0e64262004`  
		Last Modified: Thu, 17 Sep 2026 21:15:53 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:21a94b5f1f08cd32a857d07ec14a5e76ead53375d777f35a58d143e97ed4040e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.0 KB (232000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17fb63aa7af7b72c7633c25d96ca3d9e88e852cd53264ec7438fe14ba3bc63c`

```dockerfile
```

-	Layers:
	-	`sha256:1f41b29c95c2b495362d1b82c4713c276f0fc87b07f8807063ee808cd5b57050`  
		Last Modified: Thu, 17 Sep 2026 21:15:53 GMT  
		Size: 210.3 KB (210263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c13e539e361011c36ae18ac8c9f6ba51e30fd85c12fc2bcccc81b1a5209ddef`  
		Last Modified: Thu, 17 Sep 2026 21:15:53 GMT  
		Size: 21.7 KB (21737 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine3.24` - linux; ppc64le

```console
$ docker pull haproxy@sha256:c60ebdf1f2d1b287f6e3fa9c2ffd6e062d0f2aaefb87617cca54ebb6ba6b1d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21315909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cddc560507bee29239210eeabde50ff26089afd4f097bb82e353ff956fac0600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:24:03 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Thu, 17 Sep 2026 21:24:03 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 17 Sep 2026 21:25:17 GMT
ENV HAPROXY_VERSION=3.4.4
# Thu, 17 Sep 2026 21:25:17 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Thu, 17 Sep 2026 21:25:17 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Thu, 17 Sep 2026 21:25:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Thu, 17 Sep 2026 21:25:17 GMT
STOPSIGNAL SIGUSR1
# Thu, 17 Sep 2026 21:25:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:25:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:25:17 GMT
USER haproxy
# Thu, 17 Sep 2026 21:25:17 GMT
WORKDIR /var/lib/haproxy
# Thu, 17 Sep 2026 21:25:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4174c106aa5bbb876e918d6ed48c3ef8311ed64e0a61e05f749d84f13b5727b4`  
		Last Modified: Thu, 17 Sep 2026 21:25:45 GMT  
		Size: 824.2 KB (824242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3ac80d3409a1c4d1de178a0856b667dfdb2692980ad843da924994b93563b9`  
		Last Modified: Thu, 17 Sep 2026 21:25:45 GMT  
		Size: 961.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47494e18ca11f3a0da4627f4887392228506eeb37093157e30a0096b10be3160`  
		Last Modified: Thu, 17 Sep 2026 21:25:46 GMT  
		Size: 16.7 MB (16672752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d760d10d97ade28970e682568c78dd02af6eb8ea1ed2a68b83d1a001faee233`  
		Last Modified: Thu, 17 Sep 2026 21:25:45 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:fd1afc4676b9b17178adcdd3aca68a69708e518a5d6a11a5f4a406236e4d831b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 KB (231580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549acc97f6eba5c85bc56ad1c8b4d224df7dff889e8bfbc0f91cb17718f1654e`

```dockerfile
```

-	Layers:
	-	`sha256:40471b74cc1a0d7ef754cd9b02e767127f36df4947a228a70b4e58e23451f430`  
		Last Modified: Thu, 17 Sep 2026 21:25:45 GMT  
		Size: 209.7 KB (209715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abe7598bdd9fe80a439fb8f66c6f6b33e59d3e8a79c5bae603bade3549fb767c`  
		Last Modified: Thu, 17 Sep 2026 21:25:45 GMT  
		Size: 21.9 KB (21865 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine3.24` - linux; riscv64

```console
$ docker pull haproxy@sha256:0b9abf4905eca032b9d26852c2325faacfc869fb3592cfbc1b1acbd3970d54e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23683504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9bb1c21092cc616c62f8d2ccfa0b46b75d770919af8e2ccdf7eb6bdae53be47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:23:07 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Fri, 28 Aug 2026 04:04:34 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Sun, 30 Aug 2026 15:07:59 GMT
ENV HAPROXY_VERSION=3.4.4
# Sun, 30 Aug 2026 15:07:59 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Sun, 30 Aug 2026 15:07:59 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Sun, 30 Aug 2026 15:07:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Sun, 30 Aug 2026 15:07:59 GMT
STOPSIGNAL SIGUSR1
# Sun, 30 Aug 2026 15:08:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 15:08:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Aug 2026 15:08:00 GMT
USER haproxy
# Sun, 30 Aug 2026 15:08:00 GMT
WORKDIR /var/lib/haproxy
# Sun, 30 Aug 2026 15:08:00 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c056c93f771eb369878debda7b64ccd4d49c2a9623d7336ce35de479acffad4`  
		Last Modified: Fri, 21 Aug 2026 18:40:36 GMT  
		Size: 805.7 KB (805707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:171da4f06d6c531c18d5825919b74842eb30d9e6d998faa82a78f58023742596`  
		Last Modified: Fri, 28 Aug 2026 04:40:20 GMT  
		Size: 964.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d801c9f51aea5c450fca949fe24510ac2cf8770117643e60ce0054bfb47376`  
		Last Modified: Sun, 30 Aug 2026 15:08:49 GMT  
		Size: 19.3 MB (19301992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f36cb99aebbbe03ece001f790d367b569c190efaabdf17c479c13432a558811`  
		Last Modified: Sun, 30 Aug 2026 15:08:47 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:bf7563fcb5612d2103497d66e33e6541de4c3e1baeb138ab8e7fa6502f14dc59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 KB (230283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7626fd1ba6081a1f83df0892c96cc4f5492b83a3e1c13e13aa890c6b3f779c`

```dockerfile
```

-	Layers:
	-	`sha256:a6f210fa4484a15dea60592e2c1eb22e779692db1fc562ad6db7bd670f58cdc1`  
		Last Modified: Sun, 30 Aug 2026 15:08:47 GMT  
		Size: 208.4 KB (208418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54fea87d927bd8a42423bf0a59361780160733ec4d08873ae9754779ebbd6954`  
		Last Modified: Sun, 30 Aug 2026 15:08:46 GMT  
		Size: 21.9 KB (21865 bytes)  
		MIME: application/vnd.in-toto+json

### `haproxy:lts-alpine3.24` - linux; s390x

```console
$ docker pull haproxy@sha256:ffbb3401faaf0cbb1fb30d62048008ddf9dd68afd47f7fecc7e7606edc46bafc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 MB (20839396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905d787f7148549d256b6af1897fec2c01668494089980be187949d0e058221f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:21:46 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		socat 	; # buildkit
# Thu, 17 Sep 2026 22:21:46 GMT
RUN set -eux; 	addgroup --gid 99 --system haproxy; 	adduser 		--disabled-password 		--home /var/lib/haproxy 		--ingroup haproxy 		--no-create-home 		--system 		--uid 99 		haproxy 	; 	mkdir /var/lib/haproxy; 	chown haproxy:haproxy /var/lib/haproxy # buildkit
# Thu, 17 Sep 2026 22:23:17 GMT
ENV HAPROXY_VERSION=3.4.4
# Thu, 17 Sep 2026 22:23:17 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/3.4/src/haproxy-3.4.4.tar.gz
# Thu, 17 Sep 2026 22:23:17 GMT
ENV HAPROXY_SHA256=b0c5053c4d46840ecdee3925736fe9a3de6472559b43c69183d70e593d9133df
# Thu, 17 Sep 2026 22:23:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		linux-headers 		lua5.4-dev 		make 		openssl 		openssl-dev 		pcre2-dev 		readline-dev 		tar 	; 		wget -O haproxy.tar.gz "$HAPROXY_URL"; 	echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c; 	mkdir -p /usr/src/haproxy; 	tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1; 	rm haproxy.tar.gz; 		makeOpts=' 		TARGET=linux-musl 		USE_GETADDRINFO=1 		USE_LUA=1 LUA_INC=/usr/include/lua5.4 LUA_LIB=/usr/lib/lua5.4 		USE_OPENSSL=1 		USE_PCRE2=1 USE_PCRE2_JIT=1 		USE_PROMEX=1 		USE_PTHREAD_EMULATION=1 		USE_QUIC=1 	'; 		nproc="$(getconf _NPROCESSORS_ONLN)"; 	eval "make -C /usr/src/haproxy -j '$nproc' all $makeOpts"; 	eval "make -C /usr/src/haproxy install-bin $makeOpts"; 		mkdir -p /usr/local/etc/haproxy; 	cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors; 	rm -rf /usr/src/haproxy; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .haproxy-rundeps $runDeps; 	apk del --no-network .build-deps; 		haproxy -v # buildkit
# Thu, 17 Sep 2026 22:23:17 GMT
STOPSIGNAL SIGUSR1
# Thu, 17 Sep 2026 22:23:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:23:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:23:17 GMT
USER haproxy
# Thu, 17 Sep 2026 22:23:18 GMT
WORKDIR /var/lib/haproxy
# Thu, 17 Sep 2026 22:23:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8f740818618abb1ecbf208ec752d5d868a7957d486c0e1a485ca1c2f64820d`  
		Last Modified: Thu, 17 Sep 2026 22:23:22 GMT  
		Size: 852.2 KB (852161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fdf2328f1027fa127c7400474046110bbfa0c840240c50c8abacf369532702e`  
		Last Modified: Thu, 17 Sep 2026 22:23:22 GMT  
		Size: 962.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7e98b6b0de52e4f02175102f9cfbfed1213de6ae5f7bdec8b625f1476ea0af`  
		Last Modified: Thu, 17 Sep 2026 22:23:28 GMT  
		Size: 16.3 MB (16270460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec86ce2a3ccb0a08b7626d9de6265a61f8daab9d42479a2c4992018ebe7e7ae`  
		Last Modified: Thu, 17 Sep 2026 22:23:27 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haproxy:lts-alpine3.24` - unknown; unknown

```console
$ docker pull haproxy@sha256:36c29467f79cd58439962a307b8b1b51bb074c55c20b0074cd6d2511719d5e0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 KB (231450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae63f27810506b22c0c0a84b330ac0d9295ce8d7bee1134698a47fc2c0071aad`

```dockerfile
```

-	Layers:
	-	`sha256:3136724fc3e1434208727eb1844d581ecf5ebf9c805e91ae2a9f64b8679038c3`  
		Last Modified: Thu, 17 Sep 2026 22:23:27 GMT  
		Size: 209.7 KB (209657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecedf7cead2e3ed1655d30c48d5588c90d629c2c4dc349378781fd005317ee04`  
		Last Modified: Thu, 17 Sep 2026 22:23:27 GMT  
		Size: 21.8 KB (21793 bytes)  
		MIME: application/vnd.in-toto+json
