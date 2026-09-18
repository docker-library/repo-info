## `erlang:29-alpine`

```console
$ docker pull erlang@sha256:f3e9516f881a2321126ca329a7d50b05693731784027978d12b8a8994f216e9f
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

### `erlang:29-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:a739c58a1ed8ab8a65d5bb334a0c677ef273f2ddbfe26b9ea9ff7d6dbfa80cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56608459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35db394667af267a4873cbbc5a945f068c2e26ac6bab8a4743f1b706c305a295`
-	Default Command: `["erl"]`

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

### `erlang:29-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:eb94b3d3131cc89185c126e4bf3738ba8b5063502f0e83d68cfe3d904299bc14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 KB (265664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361e3aa20e3b1f8ccbba532f19411dad92bfe3b4ed8aed09cdb05e6c580f8d96`

```dockerfile
```

-	Layers:
	-	`sha256:ff7c845836d75cc43d21ce0db5bf4fcd7b65197f0f5c27872694c634bacb6a33`  
		Last Modified: Mon, 22 Jun 2026 20:00:03 GMT  
		Size: 250.3 KB (250295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91eb9c1889560dcaa42bf63ab2a182f9a45873642eb6ab0cc5b2483160112e98`  
		Last Modified: Mon, 22 Jun 2026 20:00:03 GMT  
		Size: 15.4 KB (15369 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-alpine` - linux; arm variant v7

```console
$ docker pull erlang@sha256:a532d905adf14c17a37ecf28d26f66d31e7c14cba4a8e73e914b7e063074e2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.8 MB (53771918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6922a715a3eb773a02f7907aa600ba7ce8cdfb06498d65d2426bb2fb488ae083`
-	Default Command: `["erl"]`

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

### `erlang:29-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:98065023ff6808073e9f869f8125010ec1fda3121cc44364284fd7aaf914a6cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 KB (265211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66a0bd641becd45db947b9addfe797f8e1406d59ef9f84f9abb90c99a5a375d`

```dockerfile
```

-	Layers:
	-	`sha256:2252460e69724c1b4d506ae60acc500217b7e7479cfb6a5efa71965a24a0cea8`  
		Last Modified: Thu, 17 Sep 2026 21:55:38 GMT  
		Size: 249.7 KB (249728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc10184e3ac7c0bbe8c002102c0f654a038d7852b2b9fd116f4ed7de2b2f64d`  
		Last Modified: Thu, 17 Sep 2026 21:55:38 GMT  
		Size: 15.5 KB (15483 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:73bed9328284037a330577a2f798cac936eaa31f4c0932c4251259d791fff8cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56946703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4eeba6527d8fd1b054bd815c46d994fed9e36e72d95976927aa057f6dbd958`
-	Default Command: `["erl"]`

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

### `erlang:29-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:734656fe05029d75bdc43a3ea96b4aa088b5fc7a00c73ea6652e20c954a94780
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 KB (267253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df62b751ff4f1df91d7ba56fc89768e0022c28d2ea5782f4d17ddf4c6e77c024`

```dockerfile
```

-	Layers:
	-	`sha256:a8495a9ca37386414d82620b63f1a3efd01e318a3f2df82e61a9f51724ddba0a`  
		Last Modified: Thu, 17 Sep 2026 21:44:11 GMT  
		Size: 251.7 KB (251742 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:684157707cbc51bb55f37c756d7dcaa25ed0d5c23b3fe55b42af937280830d25`  
		Last Modified: Thu, 17 Sep 2026 21:44:10 GMT  
		Size: 15.5 KB (15511 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-alpine` - linux; 386

```console
$ docker pull erlang@sha256:bb8b8fc9778979bf0bc513d5ad824778ec9dae18fa0033163f06ba6e8e57fcc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (55032995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac39a593295357ada6db3038fb800070f668c6cdbf732d9ef4dfcdf296634a55`
-	Default Command: `["erl"]`

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

### `erlang:29-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:82c69e53cdad59690900edd6b1caafa72070deff021ab3a2172a67f01a9a08ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.9 KB (261937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8900bfaa523095826d3c54e902fed5e5ecd5683c04ba2bfb18ea250b92c0a74`

```dockerfile
```

-	Layers:
	-	`sha256:3343e2f47b5ee03955a259a398a9984da73c7f6f6d18b84065998a7b5609ff6c`  
		Last Modified: Thu, 17 Sep 2026 21:35:32 GMT  
		Size: 246.6 KB (246580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8da1473f8e361a04ca1f4c2e3f4e8c62d3da02d339b4472d1364b9c47464467d`  
		Last Modified: Thu, 17 Sep 2026 21:35:32 GMT  
		Size: 15.4 KB (15357 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-alpine` - linux; ppc64le

```console
$ docker pull erlang@sha256:50957288a99da2f41917d60b84036f5863e4e400023893cc09f340a4336de910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55508517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f130526c4b2f5f9bcc7ee90c314b02bd80885b4c8ac45c3e8d4020f23284ab8`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:51:31 GMT
ENV OTP_VERSION=29.0.6 REBAR3_VERSION=3.27.0
# Thu, 17 Sep 2026 23:51:31 GMT
LABEL org.opencontainers.image.version=29.0.6
# Thu, 17 Sep 2026 23:51:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="36c89ffdac9d7531c19be0cee34355b167ea95188625d32bee61ebf49ac82afa" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 23:51:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1d98a1c624d4f88c736058ecbcf6e51fe5894f849853d87a0af6c841aeb573`  
		Last Modified: Thu, 17 Sep 2026 23:51:45 GMT  
		Size: 51.7 MB (51691040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:75be56953958f54bf2ac76c59f6036f0509f475efa4c4c457d5d6bae4bdbe915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.2 KB (262178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e9fc106fa74e3ab31c69c91b6c55706a9637418645ec92209a9b380c9c28ca`

```dockerfile
```

-	Layers:
	-	`sha256:0ccff6dad1c610041a0c2759ae32dcd85def5b23dbc8083738120bf9245cabaf`  
		Last Modified: Thu, 17 Sep 2026 23:51:44 GMT  
		Size: 246.7 KB (246733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:298db9e7a3d79508c093ae0148e7360f1ba37defed9a47ba8f895e271ad5e06d`  
		Last Modified: Thu, 17 Sep 2026 23:51:44 GMT  
		Size: 15.4 KB (15445 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-alpine` - linux; s390x

```console
$ docker pull erlang@sha256:5e50db56f4474ef88df298d79644ad5cb42281fb5f258c690d75abf3f13b6db7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54981623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d5209ec4cab9d622adad30e8118c72d09345804fb4aa320797cac07eb6a7d7f`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:37:59 GMT
ENV OTP_VERSION=29.0.6 REBAR3_VERSION=3.27.0
# Thu, 17 Sep 2026 23:37:59 GMT
LABEL org.opencontainers.image.version=29.0.6
# Thu, 17 Sep 2026 23:37:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="36c89ffdac9d7531c19be0cee34355b167ea95188625d32bee61ebf49ac82afa" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 23:37:59 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6843b206759d9098d171d6979d9017a7f5b30f8b0cf6369543f60cc52b35b09a`  
		Last Modified: Thu, 17 Sep 2026 23:38:11 GMT  
		Size: 51.3 MB (51266284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:f7efae91a8b71ed805fbdeabc4d71ec0b09a18ddcb0a26cf5f76ba01bbb8333f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.1 KB (262088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175b16a07be23b3ed720af1e9070f9fe07441d209b2733a3c057019a0f1de39b`

```dockerfile
```

-	Layers:
	-	`sha256:f1754924d1e13268d8d351b4b65845304a95320998a14542bc3ae303974faadb`  
		Last Modified: Thu, 17 Sep 2026 23:38:10 GMT  
		Size: 246.7 KB (246693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d768715a7d807da5adb4eca593b42f2428881bdb856e19d53d4fc28d3ebe50dd`  
		Last Modified: Thu, 17 Sep 2026 23:38:10 GMT  
		Size: 15.4 KB (15395 bytes)  
		MIME: application/vnd.in-toto+json
