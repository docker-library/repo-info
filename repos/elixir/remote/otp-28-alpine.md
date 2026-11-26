## `elixir:otp-28-alpine`

```console
$ docker pull elixir@sha256:a134ccf34fd3f9c18a81de5134ed03f5a59f07accdc3fbea8b6a47c111883a38
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

### `elixir:otp-28-alpine` - linux; amd64

```console
$ docker pull elixir@sha256:38ef9ab755b2c66b014e2f8d2529104312d2160ec8191969bba132c0f834e408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67126055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d999c59caf53f2dc6a09ac2e9314c775ffda34c04a07383aba3a04b4692f5a`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:17:42 GMT
ENV OTP_VERSION=28.5.0.9 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:17:42 GMT
LABEL org.opencontainers.image.version=28.5.0.9
# Tue, 24 Nov 2026 21:17:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3ecc6abcaed81fa45f17aabe7677136aaf53247d533727fe51a778c369d2142c" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Tue, 24 Nov 2026 21:17:42 GMT
CMD ["erl"]
# Tue, 24 Nov 2026 21:24:55 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Tue, 24 Nov 2026 21:24:55 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Tue, 24 Nov 2026 21:24:55 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea03a7ea79be85aaa776b85e98c76c5c0c888a337e6290abf2bdc5c0af55bc62`  
		Last Modified: Tue, 24 Nov 2026 21:17:51 GMT  
		Size: 55.1 MB (55113536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c33ab09f132f0acb029f23c42b7299d712818c3865993f7b691938fd9f434b`  
		Last Modified: Tue, 24 Nov 2026 21:25:01 GMT  
		Size: 8.2 MB (8158846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:8069770117bab00b2dc100f8d615326b40e15c3c1e0d11971359d1b0fe1496e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.7 KB (275656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60788f338a0f9f8005ce3b064e4731a266aca7b7593a03cb4ec3f802ca2840ee`

```dockerfile
```

-	Layers:
	-	`sha256:e48f1cc1868d1e2a154dcf835a31878c4bd7d08519b1c5c5c3abc4e71fbc791f`  
		Last Modified: Tue, 24 Nov 2026 21:25:01 GMT  
		Size: 266.2 KB (266171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa3af7933c70f125ddad67ca34799d0b206348956d4f9ba0deeda26ce16e8fd3`  
		Last Modified: Tue, 24 Nov 2026 21:25:01 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28-alpine` - linux; arm variant v7

```console
$ docker pull elixir@sha256:42c12b53956840e579a4e17c4ac94a74eac37aa60f0a5e866c2d0980ba4c75cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63492673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6035e206b8469682787a776babf4f51e8832fde3609a07c3da5eed08154ccd`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:19:13 GMT
ENV OTP_VERSION=28.5.0.9 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:19:13 GMT
LABEL org.opencontainers.image.version=28.5.0.9
# Tue, 24 Nov 2026 21:19:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3ecc6abcaed81fa45f17aabe7677136aaf53247d533727fe51a778c369d2142c" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Tue, 24 Nov 2026 21:19:13 GMT
CMD ["erl"]
# Tue, 24 Nov 2026 21:35:30 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Tue, 24 Nov 2026 21:35:30 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Tue, 24 Nov 2026 21:35:30 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68aaa2187da0469782ca03ae3819b1ade31a7bc0f9a6329cdce628ec65cf3b99`  
		Last Modified: Tue, 24 Nov 2026 21:19:22 GMT  
		Size: 52.1 MB (52066309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dfdc562eb900625c2a94be1af9014d96c6b3bbe684658b7b7f58e11c05597d7`  
		Last Modified: Tue, 24 Nov 2026 21:35:37 GMT  
		Size: 8.2 MB (8158631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:386e3957cd07d539f2e3a5002ccb26fe098905cd6e8ddf55d9d5e20cce540365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 KB (273852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65762799a2cc212490b8df77b5f14150a1321475393debcc82d514cc72b4639`

```dockerfile
```

-	Layers:
	-	`sha256:98214d59f0819c19eae37992cdf277e17f1981d49fa4786339328058874c6e74`  
		Last Modified: Tue, 24 Nov 2026 21:35:37 GMT  
		Size: 264.3 KB (264295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f88205bf1b4d110c1541373c62aa46a4e691cd2dc3b8bf1ba7ff36837c6ca73`  
		Last Modified: Tue, 24 Nov 2026 21:35:36 GMT  
		Size: 9.6 KB (9557 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:6d56fe1b1ca9e2e69e02689a68db75c2d70d23146af82ddb73380e9172c460a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.6 MB (67577854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca412f95f1c669ec1b4b671b196701020a0f5d69b22ff0f788c02324949833c`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:18:45 GMT
ENV OTP_VERSION=28.5.0.9 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:18:45 GMT
LABEL org.opencontainers.image.version=28.5.0.9
# Tue, 24 Nov 2026 21:18:45 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3ecc6abcaed81fa45f17aabe7677136aaf53247d533727fe51a778c369d2142c" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Tue, 24 Nov 2026 21:18:45 GMT
CMD ["erl"]
# Tue, 24 Nov 2026 21:30:24 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Tue, 24 Nov 2026 21:30:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Tue, 24 Nov 2026 21:30:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a733947f93d83b0aad7b09f7f4eeba5ad5a53cb0c4d0338adb7d0619d81213c1`  
		Last Modified: Tue, 24 Nov 2026 21:18:55 GMT  
		Size: 55.2 MB (55228377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4693dc8d0f84f63b163450661dd43e7478967f7ce39202655319aea98614ce09`  
		Last Modified: Tue, 24 Nov 2026 21:30:31 GMT  
		Size: 8.2 MB (8158882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:0f8f95a049a3dadcf7b72f429dea3cb10a8d599632337ee7322c0cab1a3108b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 KB (275878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a6044e2d15df55413097750b6a133afeff58c8c1f5f85102a81aabe6e960ed`

```dockerfile
```

-	Layers:
	-	`sha256:5386d31fcdbdfe608cddccc3f943f0cd7d724d795e9e85f296e8366e47bf4c01`  
		Last Modified: Tue, 24 Nov 2026 21:30:31 GMT  
		Size: 266.3 KB (266301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5ecbac6420cb7a3354806244d2bb07ec04f8ca744e6d14ff69bb7d4697fc727`  
		Last Modified: Tue, 24 Nov 2026 21:30:31 GMT  
		Size: 9.6 KB (9577 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28-alpine` - linux; 386

```console
$ docker pull elixir@sha256:fe9ba501b9cef8a778a8e5b25e12598b9f95750fc565ca177dca778833015b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65123583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:934869ac38c5cba86c2a55060877f95cce616cd7116a7ddc77723e87996b5fd6`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 21:13:51 GMT
ENV OTP_VERSION=28.5.0.9 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:13:51 GMT
LABEL org.opencontainers.image.version=28.5.0.9
# Tue, 24 Nov 2026 21:13:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3ecc6abcaed81fa45f17aabe7677136aaf53247d533727fe51a778c369d2142c" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Tue, 24 Nov 2026 21:13:51 GMT
CMD ["erl"]
# Tue, 24 Nov 2026 21:17:34 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Tue, 24 Nov 2026 21:17:34 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Tue, 24 Nov 2026 21:17:34 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142d3e2b1f62a37383a68244824419d6fb6bc68c11440e2db0eb6972c2a49cdf`  
		Last Modified: Tue, 24 Nov 2026 21:14:00 GMT  
		Size: 53.3 MB (53284649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9b143560088315f3dc4a7afd304d25de7542cf92c177f0d9b1e8904e989a75`  
		Last Modified: Tue, 24 Nov 2026 21:17:40 GMT  
		Size: 8.2 MB (8158573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:013aed5a07b15557c8aabd1af65be971dbb8c1a9ca9847ec07ec68bfa9001ad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 KB (270628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7577bc0ddb1037145a512b8fa51b06d069eaea812b2eb35c22c8d73e84383f0e`

```dockerfile
```

-	Layers:
	-	`sha256:4a66386d99665dec003e8cbafeb3a5754851669b7ba2c3121259a7afad86f664`  
		Last Modified: Tue, 24 Nov 2026 21:17:39 GMT  
		Size: 261.2 KB (261171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cdc8132ba5bd068eb6597bccca1714fd504ca0437d43364a29c68202949d09d`  
		Last Modified: Tue, 24 Nov 2026 21:17:39 GMT  
		Size: 9.5 KB (9457 bytes)  
		MIME: application/vnd.in-toto+json
