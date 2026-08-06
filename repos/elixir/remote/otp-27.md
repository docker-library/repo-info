## `elixir:otp-27`

```console
$ docker pull elixir@sha256:998bb64cb24209d959eb48af9bac1a087f4b5b4d32e91f6e67d666659af04bcd
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

### `elixir:otp-27` - linux; amd64

```console
$ docker pull elixir@sha256:b5c3db90cfce8406bcf0761bf545ad5283c96359a14e56318bc970936fd9b431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 MB (627283087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a7171972e375659c6058e4342bd1b0a4f35e13b2536e870ece9f2c0139be9e`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:15:43 GMT
ENV OTP_VERSION=27.3.4.15 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 03:15:43 GMT
LABEL org.opencontainers.image.version=27.3.4.15
# Wed, 05 Aug 2026 03:15:43 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="7643aa61a305ac95fd2dec082ec28a102c61258fc8971458af1e476519c56d31" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:15:43 GMT
CMD ["erl"]
# Wed, 05 Aug 2026 03:15:43 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Aug 2026 03:15:45 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 05 Aug 2026 03:15:58 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 05 Aug 2026 04:19:22 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 05 Aug 2026 04:19:22 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 05 Aug 2026 04:19:22 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a4625b533197abb25ea2a32be06c59c984d97c3c2dc9952e0b76f2e81ee0d2`  
		Last Modified: Wed, 05 Aug 2026 01:32:46 GMT  
		Size: 64.4 MB (64408267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32ed818f20fae825717c40dbc77cd4ed4bcefad6ba95a83f8c4f3c1f8631c31`  
		Last Modified: Wed, 05 Aug 2026 02:17:25 GMT  
		Size: 211.7 MB (211659733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c6bf2ab0a001577521c35f45de1299a65336aaf1f0fd2f5a2f709774342139`  
		Last Modified: Wed, 05 Aug 2026 03:16:58 GMT  
		Size: 269.5 MB (269509946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1191a02aee7cb2d31d590e3038942f9f2622c65d7b6e226f905e63fd68229e30`  
		Last Modified: Wed, 05 Aug 2026 03:16:52 GMT  
		Size: 195.7 KB (195690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3623b09aa150cce3464aa7055604d6916b1801b584f7fb3ebab2308833f980`  
		Last Modified: Wed, 05 Aug 2026 03:16:52 GMT  
		Size: 834.5 KB (834522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcd2d4bca18e92b6b04dc6fd43f83c52647334e04cc6932c2509b8a9cd71581`  
		Last Modified: Wed, 05 Aug 2026 04:19:55 GMT  
		Size: 8.1 MB (8133699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27` - unknown; unknown

```console
$ docker pull elixir@sha256:087eec45eb00967e5217f02af6043ebd53f3d2d49055fbcd62d36fb9b3e14b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23787262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f17f73311e5707e7dc53a08b4050e91a29bf3c84901e1331add2fd0e91989fc`

```dockerfile
```

-	Layers:
	-	`sha256:28ef09d82c36b378979e0fe71f5090c8fff97c95f21be98db325ebc12dbefba5`  
		Last Modified: Wed, 05 Aug 2026 04:19:55 GMT  
		Size: 23.8 MB (23776884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cc36452dad22f66869db1c7cff782fcd4cfdffed42141e20f4f3650abe999f8`  
		Last Modified: Wed, 05 Aug 2026 04:19:54 GMT  
		Size: 10.4 KB (10378 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27` - linux; arm variant v7

```console
$ docker pull elixir@sha256:a04964a9616332aecc16ce8043408c97a69cee1789e6a63f9f9d34e313c13e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.8 MB (549786099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec055c54a4defcde4060faad226589d470d77b26fae0c9dea649e3577d4d8f4d`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:13:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:26:35 GMT
ENV OTP_VERSION=27.3.4.15 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 04:26:35 GMT
LABEL org.opencontainers.image.version=27.3.4.15
# Wed, 05 Aug 2026 04:26:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="7643aa61a305ac95fd2dec082ec28a102c61258fc8971458af1e476519c56d31" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:26:35 GMT
CMD ["erl"]
# Wed, 05 Aug 2026 04:26:35 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Aug 2026 04:26:39 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 05 Aug 2026 04:27:03 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 05 Aug 2026 05:21:24 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 05 Aug 2026 05:21:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 05 Aug 2026 05:21:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417c1710fd8f34b875b5a02ec81646b473df0d6e420f71c9e6f065ab8e79ec66`  
		Last Modified: Wed, 05 Aug 2026 02:53:59 GMT  
		Size: 59.7 MB (59662276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192992ccaa250c7c1c083f797b9c40b83df5abf709b4a48200515e9ccd9e0205`  
		Last Modified: Wed, 05 Aug 2026 03:13:56 GMT  
		Size: 175.6 MB (175560059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc0e97ee2393a9363e8efc1c495a7d26a2d8e91c7c51e028be39fe5ba52c9b4c`  
		Last Modified: Wed, 05 Aug 2026 04:27:55 GMT  
		Size: 239.2 MB (239247072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4fc93a00f94d8c9f4c95420cbadd6439463c3b5feb4c385139be02ec1ee21e`  
		Last Modified: Wed, 05 Aug 2026 04:27:49 GMT  
		Size: 195.7 KB (195691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25735d1f85980b052d7a657b97df6e997239f43187e4f9e71806db331bce1093`  
		Last Modified: Wed, 05 Aug 2026 04:27:49 GMT  
		Size: 834.5 KB (834522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b8fd37187c601ba0529322571db3ed6b247abc8c62745c5b7e06983109cb30e`  
		Last Modified: Wed, 05 Aug 2026 05:21:51 GMT  
		Size: 8.1 MB (8133667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27` - unknown; unknown

```console
$ docker pull elixir@sha256:b15e1f87cf80f5997aad2104d707d89dfdbb1f9b7094ce6d432fd95d6fe3926d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23600300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e3be372c1458a463e92fd7707783fb69ab667c38c53bc949b44e498982d9da`

```dockerfile
```

-	Layers:
	-	`sha256:c6d884976424e09ea82aa0b2d2a3cb18ba08fa95e46a1e1b0179b6723ea77ab7`  
		Last Modified: Wed, 05 Aug 2026 05:21:51 GMT  
		Size: 23.6 MB (23589850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0a2068dd0019613ee5e3a2e3e170e3deaa5b019f3644c97cf4bd38d56a96f2a`  
		Last Modified: Wed, 05 Aug 2026 05:21:50 GMT  
		Size: 10.4 KB (10450 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:75ce2c2f75c70d1ccfadda334a7454b792a5d5f8b1e5b9d40d126c4b568d9a64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **611.4 MB (611412795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:026d0982a4112527f601264682aa00aec16b4ac66ded5660754947e5ef388b6f`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:15:24 GMT
ENV OTP_VERSION=27.3.4.15 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 03:15:24 GMT
LABEL org.opencontainers.image.version=27.3.4.15
# Wed, 05 Aug 2026 03:15:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="7643aa61a305ac95fd2dec082ec28a102c61258fc8971458af1e476519c56d31" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:15:24 GMT
CMD ["erl"]
# Wed, 05 Aug 2026 03:15:24 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Aug 2026 03:15:26 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 05 Aug 2026 03:15:38 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 05 Aug 2026 04:23:06 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 05 Aug 2026 04:23:06 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 05 Aug 2026 04:23:06 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9a098bd6416b43625806c3a6a005297e2cd5b9b5664e389da30661f6acfb30`  
		Last Modified: Wed, 05 Aug 2026 01:39:15 GMT  
		Size: 64.5 MB (64498169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75326012c0e46bc6e0ebd4e16aaeed57151bdb35abecfaf1536077110c99c56`  
		Last Modified: Wed, 05 Aug 2026 02:17:08 GMT  
		Size: 203.2 MB (203184026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d355d908c85cf53efb6dcf73f5f4a02248947ab773264d5c0aa59abd2d40ae`  
		Last Modified: Wed, 05 Aug 2026 03:16:36 GMT  
		Size: 262.6 MB (262570643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df88ec0f34c6d5563d3399842ad5c3767bf1a898bc261eb98af16e3e26866d7`  
		Last Modified: Wed, 05 Aug 2026 03:16:31 GMT  
		Size: 195.7 KB (195701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56e508193614f5b31769403cc872c597225a5c5384067344f73cb9d537c9c41`  
		Last Modified: Wed, 05 Aug 2026 03:16:31 GMT  
		Size: 834.5 KB (834522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd787482b3444492c74739bd94101b0074523b355c3e5ce356fd7371b39e50f`  
		Last Modified: Wed, 05 Aug 2026 04:23:39 GMT  
		Size: 8.1 MB (8133687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27` - unknown; unknown

```console
$ docker pull elixir@sha256:0a220da1eada35c08af698c0bb81fa5fcb31ae2d920c6a3231e822972c3fa629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23826799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0106023ba2f072d371afd295f53032acba74c9e507e535ac9e26a4c38c700b80`

```dockerfile
```

-	Layers:
	-	`sha256:ca40e5df0f67c86200dd8348f166e31a1639b8daabf240cad8ea51a20082fac7`  
		Last Modified: Wed, 05 Aug 2026 04:23:39 GMT  
		Size: 23.8 MB (23816329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01e8f431c2b7e437789e05a0e788d867971950a128cfeb24b31aa96f72ddfd39`  
		Last Modified: Wed, 05 Aug 2026 04:23:38 GMT  
		Size: 10.5 KB (10470 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27` - linux; 386

```console
$ docker pull elixir@sha256:7996695667c8e999de69ae88dc8bfa43ae769108c9ea4c4f0e21cd5289f9027d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **622.0 MB (621977446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2dbab62c59c719322cfb117f8695bf7d8533d0f2b08620dfc503a87fb977af6`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:15:50 GMT
ENV OTP_VERSION=27.3.4.15 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 03:15:50 GMT
LABEL org.opencontainers.image.version=27.3.4.15
# Wed, 05 Aug 2026 03:15:50 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="7643aa61a305ac95fd2dec082ec28a102c61258fc8971458af1e476519c56d31" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:15:50 GMT
CMD ["erl"]
# Wed, 05 Aug 2026 03:15:50 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Aug 2026 03:15:53 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 05 Aug 2026 03:16:11 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 05 Aug 2026 04:13:56 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 05 Aug 2026 04:13:56 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 05 Aug 2026 04:13:56 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fb8101655510b20bad67f876c00bb4d21d41b7a275411eb82a0d8cdc9b46e6`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 24.9 MB (24879871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fed12a6feb1930e559968e2bc0bfe7d26d40716344b44941e3f2e9998b9ffc9`  
		Last Modified: Wed, 05 Aug 2026 01:41:06 GMT  
		Size: 66.2 MB (66249235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c133a195a73a7b0ecedaff454ed5ac74175059d3a55ec53b2efce0040810e4a`  
		Last Modified: Wed, 05 Aug 2026 02:17:37 GMT  
		Size: 210.6 MB (210571553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917d9dee66b74ed5064ceca1e64ed1b9e56830e43504506cf168ba0049636cd0`  
		Last Modified: Wed, 05 Aug 2026 03:17:05 GMT  
		Size: 261.6 MB (261627812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ac769cec7f1534ee58405b023a5ece6a2cbe6887e9b9998760aab1d21e67d9`  
		Last Modified: Wed, 05 Aug 2026 03:17:00 GMT  
		Size: 195.7 KB (195678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c81feb145f39a8b4b40d0e4a73c2fd902688bae9824634d81a559b4ffe441e4`  
		Last Modified: Wed, 05 Aug 2026 03:17:00 GMT  
		Size: 834.5 KB (834522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae943268a2a6e684117c7224361a169022918dc0859d109db03b977e8863a6d`  
		Last Modified: Wed, 05 Aug 2026 04:14:29 GMT  
		Size: 8.1 MB (8133654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27` - unknown; unknown

```console
$ docker pull elixir@sha256:3bed3860bc09234c635f4c831ac1db6d95dff885283c4f80aa46e85906beb06f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23754916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29d6b5429e8f4c9a9b55697e581e2479707ee4725bc227f7bf7fdb911939df2`

```dockerfile
```

-	Layers:
	-	`sha256:ef42a4c23f18ffd8ba6be2c3804cedfaf06ad76455a11f8f6149754c2bca9958`  
		Last Modified: Wed, 05 Aug 2026 04:14:29 GMT  
		Size: 23.7 MB (23744565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56131b30c6d46df13f9baa3656d7f59b255ffcbbd0416cece7705674524a7a87`  
		Last Modified: Wed, 05 Aug 2026 04:14:28 GMT  
		Size: 10.4 KB (10351 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27` - linux; ppc64le

```console
$ docker pull elixir@sha256:e5fdf523d4367d57ec595eaec309def62424ef07b18f046b94e712cd9cf2a2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **635.3 MB (635254580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84272a1184924c85b26abc381c842da02984da4ca11aa91e89626b45395eb4ca`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:57:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:23:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 08:56:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 11:22:10 GMT
ENV OTP_VERSION=27.3.4.15 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 11:22:10 GMT
LABEL org.opencontainers.image.version=27.3.4.15
# Wed, 05 Aug 2026 11:22:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="7643aa61a305ac95fd2dec082ec28a102c61258fc8971458af1e476519c56d31" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 11:22:10 GMT
CMD ["erl"]
# Wed, 05 Aug 2026 11:22:10 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Aug 2026 11:22:18 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 05 Aug 2026 11:23:02 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 05 Aug 2026 17:30:13 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 05 Aug 2026 17:30:13 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 05 Aug 2026 17:30:13 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec967797e5dd9489be310b03bea17111b4e6049dc869f8b0a3a81cc540a0e7b`  
		Last Modified: Wed, 05 Aug 2026 00:57:30 GMT  
		Size: 25.7 MB (25687275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb1bed36611a08515b1a40e861280de5d11d18c2f44c9f9eafc31d2ced5dcc1`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 69.9 MB (69851499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95027cd80c4454d89d6b4c8efbc12b5a5db6e68d78e2e007912a237c0765c139`  
		Last Modified: Wed, 05 Aug 2026 08:57:45 GMT  
		Size: 214.7 MB (214732697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fc9c21ac0be3f6d7102083c117b91b997b68395aed861738dfe4d001a41db9`  
		Last Modified: Wed, 05 Aug 2026 11:24:59 GMT  
		Size: 263.5 MB (263477745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:560cc24a0a0d8ec8a656d6c35a054533307b6b8aaeea8de374499c87c90a45a4`  
		Last Modified: Wed, 05 Aug 2026 11:24:53 GMT  
		Size: 195.7 KB (195670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c509437584858538030af632ff235f83392be48bc616e36f2b35b285bece61`  
		Last Modified: Wed, 05 Aug 2026 11:24:53 GMT  
		Size: 834.5 KB (834520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd914ecac2329df917c01aeec31964148ebf4b74f1599be08d6ef273ccffd6fa`  
		Last Modified: Wed, 05 Aug 2026 17:31:28 GMT  
		Size: 8.1 MB (8133697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27` - unknown; unknown

```console
$ docker pull elixir@sha256:2ddffe7bac7457abdc13af12857e5504f7618fb7f03c28b42a6ab787e4173f7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23742785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7a10e66c65897876ad2484458fd51fccb9e205e0b3789d24f9f5d2fc01ec18`

```dockerfile
```

-	Layers:
	-	`sha256:7b13bb46b8144bb9942dd5f26f83cdf9ca5e6f25d84ddf08c0ef5260fd864978`  
		Last Modified: Wed, 05 Aug 2026 17:31:28 GMT  
		Size: 23.7 MB (23732369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:300549738c73776b0db27147d69f4b47d17642f2c133244b7d4c6cadda13af8c`  
		Last Modified: Wed, 05 Aug 2026 17:31:28 GMT  
		Size: 10.4 KB (10416 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27` - linux; s390x

```console
$ docker pull elixir@sha256:036b5910da8a0e4831c547eb9a7ae5b43761fb2ab64904ee2b02a82b51fe7164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **588.4 MB (588402967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962b418300c78859b5e5da308320ce5570e1b880561e52784ae66f7f5a2a33ea`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:07:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:46:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 05:26:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:39:28 GMT
ENV OTP_VERSION=27.3.4.15 REBAR3_VERSION=3.27.0
# Tue, 28 Jul 2026 21:39:28 GMT
LABEL org.opencontainers.image.version=27.3.4.15
# Tue, 28 Jul 2026 21:39:28 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="7643aa61a305ac95fd2dec082ec28a102c61258fc8971458af1e476519c56d31" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:39:28 GMT
CMD ["erl"]
# Tue, 28 Jul 2026 21:39:28 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 28 Jul 2026 21:39:41 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Tue, 28 Jul 2026 21:40:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Tue, 28 Jul 2026 22:17:39 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Tue, 28 Jul 2026 22:17:39 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Tue, 28 Jul 2026 22:17:39 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fa1f9755ea504ea510505c6aa6140e24c157db826373159a938bdb7846c5eb`  
		Last Modified: Tue, 14 Jul 2026 03:07:36 GMT  
		Size: 24.0 MB (24039166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278779eeefc8e0ab5a2dec92882cc188d61f2766e99be2360e27e73c4c186e6`  
		Last Modified: Tue, 14 Jul 2026 04:47:17 GMT  
		Size: 63.5 MB (63505738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0377bed5cfe1387a9cddc4c72a93b60cce9d2f6c692a454a7f03c9f4cfe07869`  
		Last Modified: Tue, 14 Jul 2026 05:27:39 GMT  
		Size: 183.7 MB (183650817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537cdd7399d29494afbc394b374fd8ed4440d74c86973a9b31ee267267e884d0`  
		Last Modified: Tue, 28 Jul 2026 21:52:10 GMT  
		Size: 260.9 MB (260886477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234607ba2abc81be675030645a26134ab4f49b75a042bf87c01db4fdef2bf622`  
		Last Modified: Tue, 28 Jul 2026 21:51:51 GMT  
		Size: 195.7 KB (195693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f9ea2707fb6cb4fb9beb9e922a55b5eb7284fdf9271660fd1a490e26a3ec35`  
		Last Modified: Tue, 28 Jul 2026 21:51:51 GMT  
		Size: 834.5 KB (834524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e01251424508956ef6081ea8da20fb82f60b421bdf8b38a5dc6bd812b1d1fd`  
		Last Modified: Tue, 28 Jul 2026 22:27:44 GMT  
		Size: 8.1 MB (8133273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27` - unknown; unknown

```console
$ docker pull elixir@sha256:7b81a830db6df183313fae5176a1e4f665e08e39cc65f1e2855179cc56aca1f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23554728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc97033541ae139f25bae783fa3177e1eb7f526bd9712d41fc50596d1d72d458`

```dockerfile
```

-	Layers:
	-	`sha256:8a2cbd34864ffdb555fc9675314eefa0a495a7f5fb0b5e71c432a6ceb2c6bedb`  
		Last Modified: Tue, 28 Jul 2026 22:27:45 GMT  
		Size: 23.5 MB (23544350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b304d819349c973455c6fd289cdc938a6f2f994292dd7bb23fd1c4d106c1ed64`  
		Last Modified: Tue, 28 Jul 2026 22:27:41 GMT  
		Size: 10.4 KB (10378 bytes)  
		MIME: application/vnd.in-toto+json
