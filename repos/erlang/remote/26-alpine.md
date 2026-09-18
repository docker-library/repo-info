## `erlang:26-alpine`

```console
$ docker pull erlang@sha256:cb3039645b89c9fbae3beb608e55cd06df131328d608a1e51beb2bce8ef3a2d3
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

### `erlang:26-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:75736604143220470d9460e03df2adcc6690364a0ba49930710eb4ca37d80968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50783976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0df7624ca66fa423c5b9480b5b10147536b556beae2c78d220a1f222918e064`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:45:55 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Thu, 17 Sep 2026 21:45:55 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Thu, 17 Sep 2026 21:45:55 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 21:45:55 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39e90d869da25e5d76f5b272b2f61844f15588a89d1c9ce087aa6bd69419c59`  
		Last Modified: Thu, 17 Sep 2026 21:46:04 GMT  
		Size: 46.9 MB (46934238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:3ef5993b0b15ce9ca77c8f3d3ca223bc8b9a3eec1efff5d4d9a22953338f1a2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.3 KB (277302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78452330bab41d996d7cc48ded3922558a7ba0287798dd6259dde59247c27798`

```dockerfile
```

-	Layers:
	-	`sha256:88d4f424371350080aa65ef069170fec1c73fdca0ed8370f590e07adc5a22517`  
		Last Modified: Thu, 17 Sep 2026 21:46:02 GMT  
		Size: 262.3 KB (262273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea358edeb1629978f62c49860029657cbd9e0895c998996a5ede24c2081fde1`  
		Last Modified: Thu, 17 Sep 2026 21:46:02 GMT  
		Size: 15.0 KB (15029 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-alpine` - linux; arm variant v7

```console
$ docker pull erlang@sha256:6e4d2804cbac8d297dd3f2ee6de06ee50247943be29e3318cda2cebd3a0e75a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47739981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1727d26c217b542996f576fb95442b31f13f3e9da1a9325a1ccf136ecfb5234`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:44 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Thu, 17 Sep 2026 21:57:44 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Thu, 17 Sep 2026 21:57:44 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 21:57:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e997f2c0f302919b3ea7d4af36e26ab91accccdc516feb6786605562c999ba6b`  
		Last Modified: Thu, 17 Sep 2026 21:57:52 GMT  
		Size: 44.5 MB (44474779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:de317f593c66228bb645c21c88cfd01fc6e8899ef71b9897b813395553976c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 KB (272525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa12e20a3d8ee6962c9617a311187a3f9f3d1282b2bc53dc1fd3a313e6dad46`

```dockerfile
```

-	Layers:
	-	`sha256:9195a2741baba6ddf02d7ee3529c49f02bbb497c5f3bf104308974432f76d8a3`  
		Last Modified: Thu, 17 Sep 2026 21:57:51 GMT  
		Size: 257.4 KB (257416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9861029dee7c2dc3a4bb00c3a50c8b42b5c99919934389655afd7b6a361ef465`  
		Last Modified: Thu, 17 Sep 2026 21:57:51 GMT  
		Size: 15.1 KB (15109 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:d2e0c0f61aff231282f46c1f70f06b720ac85af867adaf7ac43cc4fc7612dfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50880362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf8584b47a015e901e11703d59d07236c1a9eda5be573d817b1e315bf63b3ae`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:45:48 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Thu, 17 Sep 2026 21:45:48 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Thu, 17 Sep 2026 21:45:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 21:45:48 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea07437b86e49d0af5d9142df0acd70cf648ad43e33ca2fc6457c41c1dc039e9`  
		Last Modified: Thu, 17 Sep 2026 21:45:57 GMT  
		Size: 46.7 MB (46692703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:1ca059697dc8c28e6008e8e5a0f40a8829b3f3c1ff3dae353ce10baa80b56727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 KB (277548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cc664d52c461acf3fd1aaa8ac84c722af61a11419c2f8aae2e2b1d24697edf2`

```dockerfile
```

-	Layers:
	-	`sha256:8741094f494a110cbb08c052e34249435c97b4d14d45e2f6374b2d5b56b83ff6`  
		Last Modified: Thu, 17 Sep 2026 21:45:55 GMT  
		Size: 262.4 KB (262416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0f7e1e619fc53430ce2c276af60d1adcadf7720b2fd1a801f3a3897ac316dce`  
		Last Modified: Thu, 17 Sep 2026 21:45:55 GMT  
		Size: 15.1 KB (15132 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-alpine` - linux; 386

```console
$ docker pull erlang@sha256:3ae2c3442eb5fd78606dbeb9ae342f0b6529fd7782b3c246518eace38329f91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49030857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d82cb64e770ffc83880351eef5c32ed7fa570dd2a6a9cff71691b5dc2ae0043d`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:19 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Thu, 17 Sep 2026 21:38:19 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Thu, 17 Sep 2026 21:38:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 17 Sep 2026 21:38:19 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89fd1f079d9617f30f621110961da9bbd0594d61accb647ab6720e69caa5e57d`  
		Last Modified: Thu, 17 Sep 2026 21:38:28 GMT  
		Size: 45.4 MB (45354076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:59cf1bdb1a06061b16dc7bc0a283751b853e72a1ecfd355adaa75a78aef973e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 KB (272265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13eb3942be5241e416d60c4084db9650922d74454987be3ebc2d7c3382be22f2`

```dockerfile
```

-	Layers:
	-	`sha256:7ce709e1f4ae13eaf92d154b451f9f05d39343cc59f838b6d51f9d7f47ff0a42`  
		Last Modified: Thu, 17 Sep 2026 21:38:26 GMT  
		Size: 257.3 KB (257268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0932932c9eeb0fab0fb5bae50d1bfe0d5bf47bd8db006551ad78e034cacd675f`  
		Last Modified: Thu, 17 Sep 2026 21:38:26 GMT  
		Size: 15.0 KB (14997 bytes)  
		MIME: application/vnd.in-toto+json
