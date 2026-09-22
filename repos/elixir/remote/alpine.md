## `elixir:alpine`

```console
$ docker pull elixir@sha256:4805a3bc4efcb7568f45036811b2885418cb1d0b37664dcaf6e47983453323cb
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
$ docker pull elixir@sha256:02508ee190558cd089c55d565e44e2d02b740d60df1850874e5ed777907190b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (65021051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0b6c7a9cdc709daa31d3a2f8b4ef38fe31bfafa916a6fcd3c1a5b0c687acb5`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 19:11:28 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 19:11:28 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 22 Sep 2026 19:11:28 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Tue, 22 Sep 2026 19:11:28 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 19:49:05 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 19:49:05 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Tue, 22 Sep 2026 19:49:05 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9f255adedfa1ab1f056062374e394ded2b91093cd95a3cbc7e4f8332513751`  
		Last Modified: Tue, 22 Sep 2026 19:11:38 GMT  
		Size: 53.0 MB (53019025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a40f4b1339b83aa599c97e7f98a04270563817bb3c06f20dad674e08afef53f`  
		Last Modified: Tue, 22 Sep 2026 19:49:11 GMT  
		Size: 8.2 MB (8152288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:5af09357dc657211570a6091d2106f1fed64ace6d914dc7d9b67fe20502340e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 KB (269609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8dc785cd2b8dab4cd9250526517d82437694dee923607ce754059c2c9e78377`

```dockerfile
```

-	Layers:
	-	`sha256:3fcf3f5482f4631973e69b2661fbf9d8e8566b30f8889d7bd0adad13a71177d3`  
		Last Modified: Tue, 22 Sep 2026 19:49:11 GMT  
		Size: 259.2 KB (259225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a6b5f3a50c30a64e4a4dce0e497e91b381846f9a9222e8832215fb1ade4bf84`  
		Last Modified: Tue, 22 Sep 2026 19:49:11 GMT  
		Size: 10.4 KB (10384 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:alpine` - linux; arm variant v7

```console
$ docker pull elixir@sha256:5717d6524e3c140b612842c469e8d706b600c6456b4f841d32ae7cb2658885ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df3554ad19f1a21d5cecdde4e6c2610308a4526ffc1d91d71a666cfc6209b88`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:51:23 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 18:51:23 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 22 Sep 2026 18:51:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Tue, 22 Sep 2026 18:51:23 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 19:11:33 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 19:11:33 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Tue, 22 Sep 2026 19:11:33 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c39653e835428da0c22091d1dfb761f38c2d1523299d7ca1f994f9b561f7efa`  
		Last Modified: Tue, 22 Sep 2026 18:51:33 GMT  
		Size: 50.5 MB (50549215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cda0dbe47bc0bbf70c52e7ddcb26c3807dd2b8022c47fec00c15976662c434a`  
		Last Modified: Tue, 22 Sep 2026 19:11:39 GMT  
		Size: 8.2 MB (8152207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:4c4e807f5a62f9100741872ad192b7ad415cb610b188809413fd79ef52483856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.9 KB (267852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ad56343ff312a732c6759129ac3d0b2b6fff65ad1339327b3285ab070da7cd`

```dockerfile
```

-	Layers:
	-	`sha256:6dd8a184827c15375e3bb36336e39a213eaf68f5cb512f0a3a7a53b98b613a55`  
		Last Modified: Tue, 22 Sep 2026 19:11:38 GMT  
		Size: 257.4 KB (257369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7827e0933ba19a5d60ee8fef5367607772d74377a0558aa75cda36bf182314e5`  
		Last Modified: Tue, 22 Sep 2026 19:11:38 GMT  
		Size: 10.5 KB (10483 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:19c660544199432d20ebb51c80b532b4a9a2f98832ac243850c3d7eaef51c602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65150116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463d54f4034b0e7b4288a309c2e7c6eb27b041ce98e27decbf7b61e3c2e881a0`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 19:52:34 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 19:52:34 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 22 Sep 2026 19:52:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Tue, 22 Sep 2026 19:52:34 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 20:00:36 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 20:00:36 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Tue, 22 Sep 2026 20:00:36 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a73335e678691b69b6dbaa4670bf9c76401a10630f6835802804bfea3187d09`  
		Last Modified: Tue, 22 Sep 2026 19:52:43 GMT  
		Size: 52.8 MB (52810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07fd3e0dde3b9c5989db64516f7fdb244d10eefc78fc24dd20dba004c6b28461`  
		Last Modified: Tue, 22 Sep 2026 20:00:43 GMT  
		Size: 8.2 MB (8152322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:bc66c569bc1e16236571bf8a8949d9b1dd21d948ed889ff2562c102f31976e95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 KB (269902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788b45ee86ca2abea14060c4421adfa0c74b39d22fbf60fc7f842577ef0d5eb9`

```dockerfile
```

-	Layers:
	-	`sha256:585a97926bfdbc2cf84931ba4abea955a9b25a5f4ebbbfc630d146a977211f6c`  
		Last Modified: Tue, 22 Sep 2026 20:00:43 GMT  
		Size: 259.4 KB (259387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5255ff66b089fe2ef9f3fbd6873010dc36a31515831e46e15f3ac782d897a79e`  
		Last Modified: Tue, 22 Sep 2026 20:00:43 GMT  
		Size: 10.5 KB (10515 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:alpine` - linux; 386

```console
$ docker pull elixir@sha256:54d7feb50e1b0c6d7cc27642f9571702aadefc6b7286efce27ad9c0b57330230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63230901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8075989b71c6baf902bc07cb113b6a2fcf550ace0f63d9061b2b24ebf74e5194`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:51:20 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 18:51:20 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 22 Sep 2026 18:51:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Tue, 22 Sep 2026 18:51:20 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 19:15:19 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 19:15:19 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apk del .build-deps # buildkit
# Tue, 22 Sep 2026 19:15:19 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f5e2703a55fa97f03425f4bf40e5983f91c01b26754ecd5576f6a33e4bb812`  
		Last Modified: Tue, 22 Sep 2026 18:51:29 GMT  
		Size: 51.4 MB (51401901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1fb2467a5acb5348ef0d13ef3600cf91edbb5a93b3732d9fe28715ee5bf5a8`  
		Last Modified: Tue, 22 Sep 2026 19:15:25 GMT  
		Size: 8.2 MB (8152219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:alpine` - unknown; unknown

```console
$ docker pull elixir@sha256:4ffe6cf657a635045468e6cfa5e0cd1686f71009b42d76bf28be4814498c8c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 KB (264555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de9779568088a8cca7b461136687f4c254085badff46da796255e43206743251`

```dockerfile
```

-	Layers:
	-	`sha256:6d33283ce2ac50c1b41281e31f352e2f6130c215829bb2ffcda7b0d534adde3a`  
		Last Modified: Tue, 22 Sep 2026 19:15:25 GMT  
		Size: 254.2 KB (254210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5158704330a7913a1e92e3c69454f53134c457578eb6ee0483a473f18fd43473`  
		Last Modified: Tue, 22 Sep 2026 19:15:25 GMT  
		Size: 10.3 KB (10345 bytes)  
		MIME: application/vnd.in-toto+json
