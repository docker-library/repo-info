## `elixir:alpine`

```console
$ docker pull elixir@sha256:a2f0fe1bfd8a2f9cc91d913f4a12e6430e27e618720f753a514e2fff3d35f5a7
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

### `elixir:alpine` - linux; amd64

```console
$ docker pull elixir@sha256:a28095292ba0df26b83fe3f77d31d481a8847e641e01e1358059c169c148a232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (65034393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8d112e1ecf88f4e1bf68dd937f948b38f7cabe902bff543718727652cbcb36`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:21:02 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 19:21:02 GMT
LABEL org.opencontainers.image.version=29.1.2
# Thu, 05 Nov 2026 19:21:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 05 Nov 2026 19:21:02 GMT
CMD ["erl"]
# Thu, 05 Nov 2026 20:29:24 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Thu, 05 Nov 2026 20:29:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Thu, 05 Nov 2026 20:29:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8ccc9911da5eb29e7abccfb500bdf2bf838fa14673a61cdf1c48b37e08e46f`  
		Last Modified: Thu, 05 Nov 2026 19:21:11 GMT  
		Size: 53.0 MB (53023306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae84e806fa7998e887d68dd8e920cc5d9f13ef7cb390c25a2eebb03419af520`  
		Last Modified: Thu, 05 Nov 2026 20:29:31 GMT  
		Size: 8.2 MB (8157414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:481775b994ff9c567c27d9ff36ca303f4510d5dcc2d9c8f3c6fe7c9c4ddae5ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 KB (267700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b80f0f23c658d63e45a13ea8b9c3287b884cdb77fa012e31ee701392e3968bd`

```dockerfile
```

-	Layers:
	-	`sha256:137cf4ccb6a7709e393e15f54434c1293c9f946a6b24edb5502740417e771069`  
		Last Modified: Thu, 05 Nov 2026 20:29:30 GMT  
		Size: 257.3 KB (257314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6d1791410e4dbe470a9e4116b5f38ebf3b8bf005ac2ed1ea9589bae8fd95404`  
		Last Modified: Thu, 05 Nov 2026 20:29:30 GMT  
		Size: 10.4 KB (10386 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:alpine` - linux; arm variant v7

```console
$ docker pull elixir@sha256:81d4c1e038d160ba253e470f2109fda4f11d268bd24ae69f820fd99b8e20c160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61971626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49db3c0099038f896db9ec62f1e7ccec65ead2e6b375b415f5d839d124c57a94`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:50:49 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 18:50:49 GMT
LABEL org.opencontainers.image.version=29.1.2
# Thu, 05 Nov 2026 18:50:49 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 05 Nov 2026 18:50:49 GMT
CMD ["erl"]
# Thu, 05 Nov 2026 19:52:13 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Thu, 05 Nov 2026 19:52:13 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:52:13 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e92931de2e535bf8cf7506e0eea514fc49a60cebad444070614e0682a5813b`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 50.5 MB (50546514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc81353706ba3f81dda423a0942a1cd2d22548cfe49406c9c512e0f82be1312`  
		Last Modified: Thu, 05 Nov 2026 19:52:19 GMT  
		Size: 8.2 MB (8157379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:626fc83ff150e4c52c972478450db412ef57ec265de15317cbabdaec95977372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 KB (265943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59457d4be701bbaf27a2e2e9ee063960e186c34eb1611a4d3409e9937d4c7e1`

```dockerfile
```

-	Layers:
	-	`sha256:a6bf0782f855d9acb049ca1e6f9bf8507e29f673044c6173ae50304d85c01ff8`  
		Last Modified: Thu, 05 Nov 2026 19:52:19 GMT  
		Size: 255.5 KB (255460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61f8c813c15f098031097006c17246526354bf1cdbaba0791afe76b7dc5be306`  
		Last Modified: Thu, 05 Nov 2026 19:52:19 GMT  
		Size: 10.5 KB (10483 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:fac1092bfba69961dca4b05b0dfc144301ae8e70b881d605c6836bfc8baf4060
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65158487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d25e2d8da3a8311cb9fabaf52749d24da2525301105acf391ebd9f66a8fa3f59`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:12 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 19:16:12 GMT
LABEL org.opencontainers.image.version=29.1.2
# Thu, 05 Nov 2026 19:16:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 05 Nov 2026 19:16:12 GMT
CMD ["erl"]
# Thu, 05 Nov 2026 21:36:00 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Thu, 05 Nov 2026 21:36:00 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Thu, 05 Nov 2026 21:36:00 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a3d48ca8af80267e6e69028437269bce0fcc3de918d0419c77c8ae06340079`  
		Last Modified: Thu, 05 Nov 2026 19:16:21 GMT  
		Size: 52.8 MB (52810629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7054737f3c23d33da0c54652d4fac990a9705064ee948781b087a51115b89a2`  
		Last Modified: Thu, 05 Nov 2026 21:36:06 GMT  
		Size: 8.2 MB (8157263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:91214d583932cf87741d0829f53e43fa4fe46376f61acebfa804700096f57113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 KB (267993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6260a9f62d489aabd623bf7e909ee76ae15e78d5c9464df41e364e937dab9b`

```dockerfile
```

-	Layers:
	-	`sha256:8ebc4556b8580871a0aefe167ddfd7853f9535fcbe9e999a290da242aabdd694`  
		Last Modified: Thu, 05 Nov 2026 21:36:06 GMT  
		Size: 257.5 KB (257478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab91f4930069ebf51c0ecfbd2120feab0526363f60bf0568bb644a6f6f9b3052`  
		Last Modified: Thu, 05 Nov 2026 21:36:06 GMT  
		Size: 10.5 KB (10515 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:alpine` - linux; 386

```console
$ docker pull elixir@sha256:bba916043418a20abf166898a302a9ec9cecfb3f6289d733e3f97065b2ca2f99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63246750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8658834774596f2fcf3826504d62de0f06b726c9f8f21b4f29f6003a7691141f`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:33:12 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 18:33:12 GMT
LABEL org.opencontainers.image.version=29.1.2
# Thu, 05 Nov 2026 18:33:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 05 Nov 2026 18:33:12 GMT
CMD ["erl"]
# Thu, 05 Nov 2026 18:51:58 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:58 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Thu, 05 Nov 2026 18:51:58 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7be406104b48275695fe54bd124388abd971d20332a85f73f7ff0bb754f47d9`  
		Last Modified: Thu, 05 Nov 2026 18:33:21 GMT  
		Size: 51.4 MB (51409018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9972ceca72c6650026031e2d8d4c2d8183c7e4a10dc02a7a2463f9b15824e7e5`  
		Last Modified: Thu, 05 Nov 2026 18:52:04 GMT  
		Size: 8.2 MB (8157371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:11e411b77395787c40cb21b7f958594205b4b42ff8386b20f51580de152dfaad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 KB (262644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5694d326f5ed222a6035c033362d28114b6f25928af5865ee9c90b449e59143`

```dockerfile
```

-	Layers:
	-	`sha256:c53f5084b5b13c0cf4f5c9519bb9d8ec1c50f96065df094964716c4c13e84b10`  
		Last Modified: Thu, 05 Nov 2026 18:52:03 GMT  
		Size: 252.3 KB (252299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05c356d0275d2f8282634e866f9a9486a1227318e186fc38753c65e0eb5d3ec2`  
		Last Modified: Thu, 05 Nov 2026 18:52:03 GMT  
		Size: 10.3 KB (10345 bytes)  
		MIME: application/vnd.in-toto+json
