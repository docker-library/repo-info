## `erlang:24-alpine`

```console
$ docker pull erlang@sha256:a973a05d32ea6157654cd1ce344b1470fc401a81fe7cad8f3a71972f35709b7a
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

### `erlang:24-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:a92af1dd73d1f4ea83fe7b847e6ea89cb99a68df458f1b9f13b77f3e3e93808f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49583212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c82f3c4d1214be32b55e8285470d22c5f08cdbdd8cf681ef5574757b683776`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:45:05 GMT
ENV OTP_VERSION=24.3.4.17 REBAR3_VERSION=3.23.0
# Thu, 17 Sep 2026 21:45:05 GMT
LABEL org.opencontainers.image.version=24.3.4.17
# Thu, 17 Sep 2026 21:45:05 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="35f88a3af4d4885c5c17bcb8611da2d19f0626faa277392cd39c445254c015a2" 	&& REBAR3_DOWNLOAD_SHA256="00646b692762ffd340560e8f16486dbda840e1546749ee5a7f58feeb77e7b516" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 21:45:05 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29851a6bd7b1de103bbea54acda438172e5fd88296667bb032ad3d3247751bb`  
		Last Modified: Thu, 17 Sep 2026 21:45:12 GMT  
		Size: 45.8 MB (45791137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:24-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:49bf7b1ba48103594d7a1a859e6388ae5da5fc75c56a2d9f2f318905e952526d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.7 KB (278731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c17144120149acec7fbd60f68b01e8948461730c73eb796215b40a954c871c`

```dockerfile
```

-	Layers:
	-	`sha256:b12cfeff4f660569c4cf75f8088b0e0205494a990e4cf266c2b8999b038ab00c`  
		Last Modified: Thu, 17 Sep 2026 21:45:11 GMT  
		Size: 263.7 KB (263702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd3a088cd36b4604776ac0b9d107e5c1b2ae84761b951d144437c4e6ea38c186`  
		Last Modified: Thu, 17 Sep 2026 21:45:11 GMT  
		Size: 15.0 KB (15029 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:24-alpine` - linux; arm variant v7

```console
$ docker pull erlang@sha256:4c28543cf6ef4f4ce8cf400376c998a7afc4fe7f92fca5ef5ebe87bea2afab0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46638619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2936d1ed25d7289098f810cff90b97465ddcadbbe8bffb4cca0ff69bb8e6404`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:26:37 GMT
ENV OTP_VERSION=24.3.4.17 REBAR3_VERSION=3.23.0
# Wed, 21 Oct 2026 21:26:37 GMT
LABEL org.opencontainers.image.version=24.3.4.17
# Wed, 21 Oct 2026 21:26:37 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="35f88a3af4d4885c5c17bcb8611da2d19f0626faa277392cd39c445254c015a2" 	&& REBAR3_DOWNLOAD_SHA256="00646b692762ffd340560e8f16486dbda840e1546749ee5a7f58feeb77e7b516" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Wed, 21 Oct 2026 21:26:37 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f3036820cf90bcf96767c14636e7e467a15b4d8bc19827173cbc8515d95e3cf`  
		Last Modified: Wed, 21 Oct 2026 21:26:45 GMT  
		Size: 43.4 MB (43423210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:24-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:4d11442c5cb2a043394c0b9a07a56b4c76cf18430c12df705c01778cf073c44f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.7 KB (272666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c9edd9e0a24a6ba3ae4eaba8682794dc5859f74a592c0b798c3a8f898c0dc1`

```dockerfile
```

-	Layers:
	-	`sha256:0cd40d94646bb921d231c9d8c45f29aa115fc25e158b4ad8c9a278ef6318550f`  
		Last Modified: Wed, 21 Oct 2026 21:26:44 GMT  
		Size: 257.6 KB (257558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fab7b6c29e8ffa1c7847cc9306e861f402b32d61b5fd5a1292632aac3b21fe59`  
		Last Modified: Wed, 21 Oct 2026 21:26:44 GMT  
		Size: 15.1 KB (15108 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:24-alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:35a45511d5fddea3a762dee53b53596da1807e31d22eb561947e4edc37c85574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48421928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d1381274dc205e2596666398607f0886055419cbd63ed3268684d8e75d14ce4`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:45:53 GMT
ENV OTP_VERSION=24.3.4.17 REBAR3_VERSION=3.23.0
# Thu, 17 Sep 2026 21:45:53 GMT
LABEL org.opencontainers.image.version=24.3.4.17
# Thu, 17 Sep 2026 21:45:53 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="35f88a3af4d4885c5c17bcb8611da2d19f0626faa277392cd39c445254c015a2" 	&& REBAR3_DOWNLOAD_SHA256="00646b692762ffd340560e8f16486dbda840e1546749ee5a7f58feeb77e7b516" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 21:45:53 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3677acfe710bfc89753197f0c1ffff69724bfd0db4ab2f8c3207ba0bb0e66ed2`  
		Last Modified: Thu, 17 Sep 2026 21:46:01 GMT  
		Size: 44.3 MB (44298844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:24-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:6a1b5c0cccb365447587a6820086c508a57f8cfec24f84a89b7f793fba1f0e89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 KB (274647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a6e56364dbc824f572a67c52176552d66ceda45fcc1bb105684fd55c63033a`

```dockerfile
```

-	Layers:
	-	`sha256:2daa4d3408c1ccfae4322d48fdbec3576c48fe06461c98e58019322c36136674`  
		Last Modified: Thu, 17 Sep 2026 21:46:00 GMT  
		Size: 259.5 KB (259515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63706110da1e845ff187be71cfe5bb6b0804345d1c0ae866ed419cdb49898d90`  
		Last Modified: Thu, 17 Sep 2026 21:46:00 GMT  
		Size: 15.1 KB (15132 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:24-alpine` - linux; 386

```console
$ docker pull erlang@sha256:fc4ae53b5ff953b49b0fa786efb79458254ab9840c6c015e3b00250c088ff0c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47992638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ea6526f617ba238b985e5ea06430f99381259b080e4912c5e64aebc64b1cfd`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:11 GMT
ADD alpine-minirootfs-3.22.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:11 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:45 GMT
ENV OTP_VERSION=24.3.4.17 REBAR3_VERSION=3.23.0
# Wed, 21 Oct 2026 21:17:45 GMT
LABEL org.opencontainers.image.version=24.3.4.17
# Wed, 21 Oct 2026 21:17:45 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="35f88a3af4d4885c5c17bcb8611da2d19f0626faa277392cd39c445254c015a2" 	&& REBAR3_DOWNLOAD_SHA256="00646b692762ffd340560e8f16486dbda840e1546749ee5a7f58feeb77e7b516" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Wed, 21 Oct 2026 21:17:45 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1d50ee2afcf0483c16d40e3848f3966acc9ec361ce0aab5fc2458a86e77d5ffa`  
		Last Modified: Wed, 21 Oct 2026 20:47:16 GMT  
		Size: 3.6 MB (3613353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ee78e6aded3da5c70fa608a6157293621c34f819d46e6e641da091904f8792`  
		Last Modified: Wed, 21 Oct 2026 21:17:54 GMT  
		Size: 44.4 MB (44379285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:24-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:78f4bc601daa64d3b2224814ef6979bc05a836b505b1d962e9473a314daf099a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.8 KB (271757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5090dacd1f35e004edde49988a20d808635bd018f4a85144f8090df8b06a3e90`

```dockerfile
```

-	Layers:
	-	`sha256:e82cb65c5f50a0fffa6f3fcc8422eef1f9d9e5dcf015c759c9c9064900d4c935`  
		Last Modified: Wed, 21 Oct 2026 21:17:52 GMT  
		Size: 256.8 KB (256760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b7885eeecb6ec4c9614c36b6cf289f912c3194091eb388a7e84863bf5ad4715`  
		Last Modified: Wed, 21 Oct 2026 21:17:52 GMT  
		Size: 15.0 KB (14997 bytes)  
		MIME: application/vnd.in-toto+json
