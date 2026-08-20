## `elixir:alpine`

```console
$ docker pull elixir@sha256:2a9f6960a5e0f62791d778bc20e27e1fc8a33cfc4fee68245e71bad251487e27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `elixir:alpine` - linux; amd64

```console
$ docker pull elixir@sha256:6e0f5554fd2c16313f108e83b9cb6086ed15664140637e743133e8600041896c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64747188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee9f3b3d14cd3176b96d5a0052aca57e49625d5d84df720430e547d5098bc71`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:59:55 GMT
ENV OTP_VERSION=29.0.2 REBAR3_VERSION=3.27.0
# Mon, 22 Jun 2026 19:59:55 GMT
LABEL org.opencontainers.image.version=29.0.2
# Mon, 22 Jun 2026 19:59:55 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="b9a7714fdd282c4a7113651b1e2728a58799e60ffe20e545f5cc94c621527b15" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Mon, 22 Jun 2026 19:59:55 GMT
CMD ["erl"]
# Mon, 22 Jun 2026 20:25:51 GMT
ENV ELIXIR_VERSION=v1.20.1 LANG=C.UTF-8
# Mon, 22 Jun 2026 20:25:51 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="baed8756da722c1b8d71613655c7223ab952051bc391a965cd79e320a93aaf77" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Mon, 22 Jun 2026 20:25:51 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8789ba3a7340d5d166913d6e044ba2bfe0b0abb115ed8305b6f6b86549a930ac`  
		Last Modified: Mon, 22 Jun 2026 20:00:05 GMT  
		Size: 52.8 MB (52764038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b87e488658511cb11bf81344eee8cb0a0a5a75422bdda00590b67a78e0657b3`  
		Last Modified: Mon, 22 Jun 2026 20:25:57 GMT  
		Size: 8.1 MB (8138729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:fee68e8fb7bcd4e75a36ac29c86092b50804671c2c4f3d05d436153a0531af2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 KB (268328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:460f29c08a3b78b05f36f4e909f371b6b4d0d1138ccfafcea6cb4eb05360fb0e`

```dockerfile
```

-	Layers:
	-	`sha256:3492f8a88a10f09bec5fa6809463d28a16fbd6a8d5ab559234ce7b3b89cd2fe2`  
		Last Modified: Mon, 22 Jun 2026 20:25:56 GMT  
		Size: 257.9 KB (257941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdfd6af32d4424495bc3cc3750d9128cd10249dbe9799831210a722a8e528717`  
		Last Modified: Mon, 22 Jun 2026 20:25:56 GMT  
		Size: 10.4 KB (10387 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:alpine` - linux; arm variant v7

```console
$ docker pull elixir@sha256:c5d03bfd5ec2d930dcd65ce300ea068d7a0a4c763ee262e83cc352fad1a6d369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61881264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76456a812ea86a73267e66b7f1d7d1cb24fd6cf130943f287d757ccf8e21a24e`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 22:17:57 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:17:57 GMT
LABEL org.opencontainers.image.version=29.0.5
# Wed, 19 Aug 2026 22:17:57 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Wed, 19 Aug 2026 22:17:57 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:14:03 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:14:03 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Wed, 19 Aug 2026 23:14:03 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d602efcdcd6f63d2d03cb9a6492c837abf1bfb8bf8fa33af717eb26960a4997c`  
		Last Modified: Wed, 19 Aug 2026 22:18:07 GMT  
		Size: 50.5 MB (50475569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a3a9f8ad361efb1023e41aed56e149890813f818883ff41b2422255296cae8`  
		Last Modified: Wed, 19 Aug 2026 23:14:10 GMT  
		Size: 8.1 MB (8145080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:711804160af0284d6c2af81af16771444dd6d638cddcfdec65b3dab4eb3297bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 KB (266566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4520ee587981c3814fbefe0e8cd196ae3dd41fe35d40f61168fd23f9dd59001b`

```dockerfile
```

-	Layers:
	-	`sha256:0e00226ad3687d5303d5ba4a8bbdd4463b74177a06bbb9f7e3e129ee49a3dea5`  
		Last Modified: Wed, 19 Aug 2026 23:14:10 GMT  
		Size: 256.1 KB (256083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52bc82849e3da1f6fcfd0496568b66c79d82e948604287b4c1c579b936e41fce`  
		Last Modified: Wed, 19 Aug 2026 23:14:10 GMT  
		Size: 10.5 KB (10483 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:bc77e82d71850b60f6d95a64f5280c0f78b9a2866093e8a88f7e0892afa4c6b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65057676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da8b16539ccc4a3add6724a4c0251770af7fb1c9cbc9ab9b21a17bb0def5cd55`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 22:17:46 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:17:46 GMT
LABEL org.opencontainers.image.version=29.0.5
# Wed, 19 Aug 2026 22:17:46 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Wed, 19 Aug 2026 22:17:46 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:11:08 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:11:08 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Wed, 19 Aug 2026 23:11:08 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a80ade797042cbb4e61503b12bd68572162bab86dda98753e331411d45b0fe`  
		Last Modified: Wed, 19 Aug 2026 22:17:56 GMT  
		Size: 52.7 MB (52729231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0815140ae343a9361b3f0df0fb0587a02a7fc7f45eaa952563e719b44129d9`  
		Last Modified: Wed, 19 Aug 2026 23:11:14 GMT  
		Size: 8.1 MB (8145408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:d55b7d798f4b3cbe5bd4a5f67af06f7bba467030bd4c0deaaa76c2c78842a505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.6 KB (268616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b401239bdd7155147036f6d5c8ef5322a0e674e14b3531f6b59a9c8a9d5f2dd8`

```dockerfile
```

-	Layers:
	-	`sha256:fc6608680ed45ab725533fbe96a71bf6b235347d967403ed7af7e94d0188d105`  
		Last Modified: Wed, 19 Aug 2026 23:11:14 GMT  
		Size: 258.1 KB (258101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7165e12e4f382ae67fcfe366bba6d8277f8409fb075edfa37bfe0cc74f77af7e`  
		Last Modified: Wed, 19 Aug 2026 23:11:14 GMT  
		Size: 10.5 KB (10515 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:alpine` - linux; 386

```console
$ docker pull elixir@sha256:ac8dde3394b99d61261a76ca85dd5d41d7763c2be86e2bfca1f44887be795774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63132555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e05403cad662e2a0775c95fbeadda68904414c68ca2b869283de75033863538`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 22:17:53 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:17:53 GMT
LABEL org.opencontainers.image.version=29.0.5
# Wed, 19 Aug 2026 22:17:53 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Wed, 19 Aug 2026 22:17:53 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:12:10 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:12:10 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Wed, 19 Aug 2026 23:12:10 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548a80459c7e7e23991669b5c0d68bed42500759d20ef891cc02aa4be9d7ea19`  
		Last Modified: Wed, 19 Aug 2026 22:18:01 GMT  
		Size: 51.3 MB (51317587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e8db91a426d3f947babd51fe22c5e924708b5bb9f83f8c56ba35d65a75df6b`  
		Last Modified: Wed, 19 Aug 2026 23:12:16 GMT  
		Size: 8.1 MB (8144827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:24deb191d5b524359eaa920a56c5a3d3f1d555f937665b8c03acbfb3367aba7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 KB (263267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b9c10d6c1a124db66c1e837e8266a7c74e6ef299d88dfe500978428a30f6c21`

```dockerfile
```

-	Layers:
	-	`sha256:db24845a1e678a642a44574174e5da8eef4f93e29424ea07c0f62ce1b3a9c82f`  
		Last Modified: Wed, 19 Aug 2026 23:12:16 GMT  
		Size: 252.9 KB (252922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:326af2ea980fff6a62c0880572dfe946acd1493d8439ee61f5802991c784e076`  
		Last Modified: Wed, 19 Aug 2026 23:12:16 GMT  
		Size: 10.3 KB (10345 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:8d6f34e775db7d3f1d5b402d766cec455945bcd7786deb612934c189fac9194c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63614478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70937f28ba57eaad2cae2005c6ee53fc393a2401366f5db31a678b791e6eb91d`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 28 Jul 2026 20:59:44 GMT
ENV OTP_VERSION=29.0.4 REBAR3_VERSION=3.27.0
# Tue, 28 Jul 2026 20:59:44 GMT
LABEL org.opencontainers.image.version=29.0.4
# Tue, 28 Jul 2026 20:59:44 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="67426425f0eed0dbd6c8cd3d500de4c47bbf1bbe337be0e2c13fc8f8f3e4997a" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Tue, 28 Jul 2026 20:59:44 GMT
CMD ["erl"]
# Tue, 28 Jul 2026 21:29:14 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Tue, 28 Jul 2026 21:29:14 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Tue, 28 Jul 2026 21:29:14 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:351fc73a59272e76c8918c7fef07412853d8ce4a0d118d160643428a683e3bd7`  
		Last Modified: Tue, 28 Jul 2026 20:59:59 GMT  
		Size: 51.7 MB (51656151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb30efb77f43156d49fd9a414dac02886efc81003e109b6c916daffe0035346`  
		Last Modified: Tue, 28 Jul 2026 21:29:24 GMT  
		Size: 8.1 MB (8144927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:ac490131c6d5e074d4a55661d56b187cfd3c289bd97d1e6679c33fedc609a672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 KB (263528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c65897afdd970a419a2b8b2a5a0af78e0276500846177be1d86868dd4ec644c6`

```dockerfile
```

-	Layers:
	-	`sha256:c47a8c78632f25f54a9aeee2b4be092c2680b5f006d32d9869aa630ea9e829af`  
		Last Modified: Tue, 28 Jul 2026 21:29:24 GMT  
		Size: 253.1 KB (253086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b05370b22fdf7c084a2700cb25f3cdfb8b0a66533cc6620e78a884e7e47e575a`  
		Last Modified: Tue, 28 Jul 2026 21:29:24 GMT  
		Size: 10.4 KB (10442 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:alpine` - linux; s390x

```console
$ docker pull elixir@sha256:516d07b578442e1abe1be258e86688f8613da79b2e398385f22bab8402515bda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63087291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89fcb1d01a8d93333e76901f1bb0397ba3bbe6931d73cdbce093bd5ed647d8f`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 22:17:54 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:17:54 GMT
LABEL org.opencontainers.image.version=29.0.5
# Wed, 19 Aug 2026 22:17:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Wed, 19 Aug 2026 22:17:54 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:10:38 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:10:38 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Wed, 19 Aug 2026 23:10:38 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c69fa8dc85b7ce6c31e3130c096092438da54ec81f08a8cdb23b8d4111ae9ff3`  
		Last Modified: Wed, 19 Aug 2026 22:18:10 GMT  
		Size: 51.2 MB (51233172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93b29c37f02fe5814793459c0b00a6136b5ded0e9d5b6adff55e5127a8e7db4`  
		Last Modified: Wed, 19 Aug 2026 23:10:51 GMT  
		Size: 8.1 MB (8144799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:a0aadc9005f29a05e84ca7036f4340c7a363500f4e6fbf84a86de004ca4ac559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.4 KB (263426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ad967b1f35a4673e3d902ea2d09d7225d173c8bf207e448a26251ce2ef2294`

```dockerfile
```

-	Layers:
	-	`sha256:9a537d549e57ef1e93b8ceb5132efa8d15c33028368f0e3f9121958d938d2e57`  
		Last Modified: Wed, 19 Aug 2026 23:10:50 GMT  
		Size: 253.0 KB (253040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:299e662aa799f76e1159a172f93ba0dc0fb39af888cac826dbce4f79c5167078`  
		Last Modified: Wed, 19 Aug 2026 23:10:50 GMT  
		Size: 10.4 KB (10386 bytes)  
		MIME: application/vnd.in-toto+json
