## `erlang:25-alpine`

```console
$ docker pull erlang@sha256:2013c7a2008460cc4cf6895812fd63fa444e0a73f99468535abe9f150fdb5992
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

### `erlang:25-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:968cbcbc1db01216980b1860e429df25246b95dd1fdb3551b9fc198c416c68ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49562988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03a2f98a93aa3dfd874482149061b72c97e924c98289e0f3979ba59b5b7ee9f`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:45:33 GMT
ENV OTP_VERSION=25.3.2.21 REBAR3_VERSION=3.24.0
# Thu, 17 Sep 2026 21:45:33 GMT
LABEL org.opencontainers.image.version=25.3.2.21
# Thu, 17 Sep 2026 21:45:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="6761432927a9be4f5c13c4019acd6fa3d2f4363198f790947328023aece1986f" 	&& REBAR3_DOWNLOAD_SHA256="391b0eaa2825bb427fef1e55a0d166493059175f57a33b00346b84a20398216c" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 21:45:33 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9765ff14d25a4a1146d06d123f1023fbb85d6319f931870fb00473caeeaf6c`  
		Last Modified: Thu, 17 Sep 2026 21:45:41 GMT  
		Size: 45.8 MB (45770913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:25-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:0eed9a9c95f6934129819df7c94a29991b2f8c71f52fa3e1ea01a6929718c35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.7 KB (278746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d6ffaa05585b327cd9fe5bf8dafe82993ed4a01d8b3fb6b8ed5d00b6bbd14f`

```dockerfile
```

-	Layers:
	-	`sha256:eb8cbf12f844222d0a1064974cceb863aa6a74684f2af44ab107e40c9ac56af8`  
		Last Modified: Thu, 17 Sep 2026 21:45:39 GMT  
		Size: 263.7 KB (263717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71e0c18ac0cd978b583ff5ea57d015239e3dfe0900fceb32e561c3b8153019b2`  
		Last Modified: Thu, 17 Sep 2026 21:45:40 GMT  
		Size: 15.0 KB (15029 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:25-alpine` - linux; arm variant v7

```console
$ docker pull erlang@sha256:a990fb7e3cbcf14873328848735ea6fe094a8a702e019859f1e0556f9be0494c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46649980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee3dfa2abb63abb4cc31789e735b1b9270e6a234d1ecd3ce52f4a4e1527cd886`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:12 GMT
ENV OTP_VERSION=25.3.2.21 REBAR3_VERSION=3.24.0
# Thu, 17 Sep 2026 21:57:12 GMT
LABEL org.opencontainers.image.version=25.3.2.21
# Thu, 17 Sep 2026 21:57:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="6761432927a9be4f5c13c4019acd6fa3d2f4363198f790947328023aece1986f" 	&& REBAR3_DOWNLOAD_SHA256="391b0eaa2825bb427fef1e55a0d166493059175f57a33b00346b84a20398216c" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 21:57:12 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003c7222d693ddf368a57c1b9947d0ba982ed681234a3caf8cbeca71325159bc`  
		Last Modified: Thu, 17 Sep 2026 21:57:20 GMT  
		Size: 43.4 MB (43437766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:25-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:99e9daba25987619ab83bc93213b1111baff5327f0d43687d96c65a87843e9d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 KB (274619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7402425c32ede8f28879920a2ae281b9eb25ac60b9365ac860ee42c8b74e770`

```dockerfile
```

-	Layers:
	-	`sha256:e4729e850ca3925212301596d60c15742e77985d1fe1bffc4d486130449059b9`  
		Last Modified: Thu, 17 Sep 2026 21:57:19 GMT  
		Size: 259.5 KB (259510 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99ae6e7aada36ad96aad8b0c8e8b0122aa7f6fca9be119831f6007df5d24fba5`  
		Last Modified: Thu, 17 Sep 2026 21:57:18 GMT  
		Size: 15.1 KB (15109 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:25-alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:69fe22c4fc5977b77a0562944bcba32c662ccac580b7e8098908838600f9f535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49689523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa546911afd0d124cc2aa6ad32944cf31f3663b87ee2449dcd99aebca5a97b5`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:45:39 GMT
ENV OTP_VERSION=25.3.2.21 REBAR3_VERSION=3.24.0
# Thu, 17 Sep 2026 21:45:39 GMT
LABEL org.opencontainers.image.version=25.3.2.21
# Thu, 17 Sep 2026 21:45:39 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="6761432927a9be4f5c13c4019acd6fa3d2f4363198f790947328023aece1986f" 	&& REBAR3_DOWNLOAD_SHA256="391b0eaa2825bb427fef1e55a0d166493059175f57a33b00346b84a20398216c" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 21:45:39 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:838559933b1610b1c2efb5f8a2adbbccde53aff0c5e26a6f32012176dcbb6a81`  
		Last Modified: Thu, 17 Sep 2026 21:45:48 GMT  
		Size: 45.6 MB (45566439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:25-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:52dbfc3ce5e83a3b1316f158c9b14fdc4fd59d09c335fc6421547314a8ed4253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 KB (279643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be69695134f6ce5e5b2eeb0a442b99fac428cd1f52f2b237551e2b1a44db160c`

```dockerfile
```

-	Layers:
	-	`sha256:9daea88f6e56c0f31efd93e14a0124d8630c7f40ebc880137b9c4f2a1da2e1c2`  
		Last Modified: Thu, 17 Sep 2026 21:45:47 GMT  
		Size: 264.5 KB (264510 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a08fd9736b1c00a62f73b96be15c02f8dbf9c2d7916aeadb6e0568c4b0015f7`  
		Last Modified: Thu, 17 Sep 2026 21:45:46 GMT  
		Size: 15.1 KB (15133 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:25-alpine` - linux; 386

```console
$ docker pull erlang@sha256:a85a5f0c235ee20cbbd9285713ecdef77e0559a515dc052fefe07d2e71c14547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47943151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb0b88852fffc62a31d67ffa53298213b083de786c7837c4743fe3f30a939e9`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 28 Jul 2026 20:58:50 GMT
ENV OTP_VERSION=25.3.2.21 REBAR3_VERSION=3.24.0
# Tue, 28 Jul 2026 20:58:50 GMT
LABEL org.opencontainers.image.version=25.3.2.21
# Tue, 28 Jul 2026 20:58:50 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="6761432927a9be4f5c13c4019acd6fa3d2f4363198f790947328023aece1986f" 	&& REBAR3_DOWNLOAD_SHA256="391b0eaa2825bb427fef1e55a0d166493059175f57a33b00346b84a20398216c" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Tue, 28 Jul 2026 20:58:50 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:a4b74ab0c43260cc6600b37d5a1ed742d904bba03625caa74b18e45744cde3d1`  
		Last Modified: Mon, 22 Jun 2026 12:03:14 GMT  
		Size: 3.6 MB (3605660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10075695e874b5d67d83ed1799280c62ab9e1c2cabac2206a30cdb0a51d23bc5`  
		Last Modified: Tue, 28 Jul 2026 20:58:58 GMT  
		Size: 44.3 MB (44337491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:25-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:5414a1d1b91fd463c2b4f71c9a8ebc32bdc58be08e2f508958b930beef3b5356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 KB (272416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c02e6edfe0957044d73d1ea94247886bbabeb28b1eaee9b270df794a409ad856`

```dockerfile
```

-	Layers:
	-	`sha256:afcbf2d7d9f5372f33191cfa94f6727a8cd1038fbc7dac0f4f7fa72f80be8e7d`  
		Last Modified: Tue, 28 Jul 2026 20:58:57 GMT  
		Size: 257.4 KB (257419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8cd58d92909ba4bb0d87900e0f6fd43b44530adca2de310b8be7323ffb63f37`  
		Last Modified: Tue, 28 Jul 2026 20:58:57 GMT  
		Size: 15.0 KB (14997 bytes)  
		MIME: application/vnd.in-toto+json
