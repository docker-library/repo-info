## `elixir:otp-29-alpine`

```console
$ docker pull elixir@sha256:150a8d1b0201238b1d8730493a8453246d49c95ab903a97d7aff5b4e9363c0bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `elixir:otp-29-alpine` - linux; amd64

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

### `elixir:otp-29-alpine` - unknown; unknown

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

### `elixir:otp-29-alpine` - linux; arm variant v7

```console
$ docker pull elixir@sha256:f32263df3f393e16ecfdb0782e21d2858463319cbaff9cd702268c772978e67a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61924192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8367bba741dd49cc800718f16a26fc49a3fc31250467364fdb4fb16055bcc5`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:55:31 GMT
ENV OTP_VERSION=29.0.6 REBAR3_VERSION=3.27.0
# Thu, 17 Sep 2026 21:55:31 GMT
LABEL org.opencontainers.image.version=29.0.6
# Thu, 17 Sep 2026 21:55:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="36c89ffdac9d7531c19be0cee34355b167ea95188625d32bee61ebf49ac82afa" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 21:55:31 GMT
CMD ["erl"]
# Thu, 17 Sep 2026 22:50:24 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Thu, 17 Sep 2026 22:50:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Thu, 17 Sep 2026 22:50:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7126e626f555af2cf3c0294a3de6824cd34008d64696a8a97ea3546c33091b32`  
		Last Modified: Thu, 17 Sep 2026 21:55:40 GMT  
		Size: 50.5 MB (50506716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d887769d3cf1d31634163b8efbb37adc953a5b62c6a4ab895063e4a72a33e1d2`  
		Last Modified: Thu, 17 Sep 2026 22:50:30 GMT  
		Size: 8.2 MB (8152274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29-alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:a4f26d590b6ef5d9eab1c9ae152d59de4b714b2304e7ada9ca5cd5345328e6e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.9 KB (267864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d4c446d0cc07b2a25223e2ce58507db6c721787408fa93524210281a361ae9`

```dockerfile
```

-	Layers:
	-	`sha256:73db06e28cae21b1ec04411e0e20a232118b6a271ce413ee10f7e140667d5cf6`  
		Last Modified: Thu, 17 Sep 2026 22:50:30 GMT  
		Size: 257.4 KB (257382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c7d7dfe31e3f59c49756578b47d79b685598d0ac62c896f7eb31ff19f0f10a0`  
		Last Modified: Thu, 17 Sep 2026 22:50:30 GMT  
		Size: 10.5 KB (10482 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:1203156d0d4593e8b2ca02a381a61e2b9f5e94a6347969d02dc86062ac7e4561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65099110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400cc78bbcb700077bc798254a4e46078ea278474a9363b0b74781c4e21dec37`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:44:03 GMT
ENV OTP_VERSION=29.0.6 REBAR3_VERSION=3.27.0
# Thu, 17 Sep 2026 21:44:03 GMT
LABEL org.opencontainers.image.version=29.0.6
# Thu, 17 Sep 2026 21:44:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="36c89ffdac9d7531c19be0cee34355b167ea95188625d32bee61ebf49ac82afa" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 21:44:03 GMT
CMD ["erl"]
# Thu, 17 Sep 2026 22:58:46 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Thu, 17 Sep 2026 22:58:46 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Thu, 17 Sep 2026 22:58:46 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3e2bde958a0eae807934d266307a564b3da4dc797545f08079189e13d9c332`  
		Last Modified: Thu, 17 Sep 2026 21:44:12 GMT  
		Size: 52.8 MB (52759044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0e7ff7943412e66f67e75c49a21de037a3d5d9b3f75e130f22ce99c53354f9`  
		Last Modified: Thu, 17 Sep 2026 22:58:53 GMT  
		Size: 8.2 MB (8152407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29-alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:087c32ca49a3b8a90d04f15ec19a3ea9e0c57bf22ef6cf25f492d03140c59fcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 KB (269915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b2ac2a140751f2d592987053fa97b7eee82233c696fb60d32706607f317a7e`

```dockerfile
```

-	Layers:
	-	`sha256:3d25bd81b8ea46b3834700840ec745491263a1e88f3d380ba125ffdafb061cd0`  
		Last Modified: Thu, 17 Sep 2026 22:58:53 GMT  
		Size: 259.4 KB (259400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a2a012b413b2bab0f4769f55100a67facb45bc8cb7d569293fc744728e0cd98`  
		Last Modified: Thu, 17 Sep 2026 22:58:53 GMT  
		Size: 10.5 KB (10515 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29-alpine` - linux; 386

```console
$ docker pull elixir@sha256:cc57f21afbd2f2a483314e623399c0146d3627878886415e4a9e0958f0d00189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63185346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb8231dc4c0bf976301f0b1ca9330e06d5b47c76ba7498f317389265893abbe`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:25 GMT
ENV OTP_VERSION=29.0.6 REBAR3_VERSION=3.27.0
# Thu, 17 Sep 2026 21:35:25 GMT
LABEL org.opencontainers.image.version=29.0.6
# Thu, 17 Sep 2026 21:35:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="36c89ffdac9d7531c19be0cee34355b167ea95188625d32bee61ebf49ac82afa" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 21:35:25 GMT
CMD ["erl"]
# Thu, 17 Sep 2026 22:27:43 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Thu, 17 Sep 2026 22:27:43 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Thu, 17 Sep 2026 22:27:43 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23ed5588a6e8e30ebee59d0acaa0581b92d9e6572a0637354bc5c96aaadb38b`  
		Last Modified: Thu, 17 Sep 2026 21:35:34 GMT  
		Size: 51.4 MB (51356214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e232239bfee93f36de83bfd4b1a9f0e820a6cebe2ebf5514506bfae9651727d`  
		Last Modified: Thu, 17 Sep 2026 22:27:49 GMT  
		Size: 8.2 MB (8152351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29-alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:d3d27f0f6d638be661b5ec4a000d68f4f39505eec252ea1b6aa3d999e65af843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 KB (264566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6341feb5314edc95b28b9cf88ec3002d8c60ce9ab3882ef0a26a15beacc80ce7`

```dockerfile
```

-	Layers:
	-	`sha256:90e93da7f557b2f7729c90671cc0d790b4402e742f6a55ef1fbcbac2ff483409`  
		Last Modified: Thu, 17 Sep 2026 22:27:49 GMT  
		Size: 254.2 KB (254221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce00520fc9b530861135a2d7a89ca7e4410797d8faf56a3fd64bd2ddc8c5e5a6`  
		Last Modified: Thu, 17 Sep 2026 22:27:49 GMT  
		Size: 10.3 KB (10345 bytes)  
		MIME: application/vnd.in-toto+json
