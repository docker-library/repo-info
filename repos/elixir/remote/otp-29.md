## `elixir:otp-29`

```console
$ docker pull elixir@sha256:0cb767622975ce9c77527bb3fe3f659c8ddde9b2dfc980dbbff7416c8d910987
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

### `elixir:otp-29` - linux; amd64

```console
$ docker pull elixir@sha256:b829a43fa36d6a36a72f837b33fc6726657db45c136c268b9b07f122258c0634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **684.8 MB (684750208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:616de827ec70c6f4a12cde71ba4e9c8cf34b0110e96208b78614cc607b629007`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:15:35 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 03:15:35 GMT
LABEL org.opencontainers.image.version=29.1.2
# Wed, 21 Oct 2026 03:15:35 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:15:35 GMT
CMD ["erl"]
# Wed, 21 Oct 2026 03:15:35 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 21 Oct 2026 03:15:37 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 21 Oct 2026 03:15:48 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 21 Oct 2026 04:12:59 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Wed, 21 Oct 2026 04:12:59 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 21 Oct 2026 04:12:59 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63040bd9752a74c5b1082903de92d441d30121f994018576b4a2f4cf8bb3bca4`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 25.6 MB (25635564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7046f4e749f0e32d9fc67f654ad5e33cc555534f82a9971e45a00dbdb899e309`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 67.8 MB (67818834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992d9e06c2e85b99901bc1e8b27e557e9537e4d0eee8d4cdff13bc0f9bdee2e4`  
		Last Modified: Wed, 21 Oct 2026 02:17:47 GMT  
		Size: 237.0 MB (236996741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853d2c0794fa18fbe2444755ccb0c0ecf3fa7df0eafa4f02d1d0b8d9f8b70e68`  
		Last Modified: Wed, 21 Oct 2026 03:16:46 GMT  
		Size: 295.8 MB (295751906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd209e8486d1076b9ffc34e65bf919526354e22d8b87d8f3e41bae6186df2aa1`  
		Last Modified: Wed, 21 Oct 2026 03:16:40 GMT  
		Size: 191.5 KB (191473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209f215e5028132754193a26bd78bb360bff5b3e3e3ffb6264e11f6298a24904`  
		Last Modified: Wed, 21 Oct 2026 03:16:40 GMT  
		Size: 828.0 KB (828035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f41a0531df1d0ebe7dad23f7d68da0f75ae44814b015ccfc68d258133cb783d`  
		Last Modified: Wed, 21 Oct 2026 04:13:30 GMT  
		Size: 8.1 MB (8134033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29` - unknown; unknown

```console
$ docker pull elixir@sha256:f71688bcf69823df2294cc782fc940a69ca5a0605ecf3fbee1bbb489049a9084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22055024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cacc4ce43fe222f9034a6b9eff99879eba42aedf2954af830a2a1caaa447b524`

```dockerfile
```

-	Layers:
	-	`sha256:453d9484c9251674596d1792ad6fc82c9d6c74374ce6921f4cdae1129d77d714`  
		Last Modified: Wed, 21 Oct 2026 04:13:30 GMT  
		Size: 22.0 MB (22043773 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db3982844c8f5ae832305746d14bfa11cbd0becd7da00b38b3d9513b4bcfab26`  
		Last Modified: Wed, 21 Oct 2026 04:13:29 GMT  
		Size: 11.3 KB (11251 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29` - linux; arm variant v7

```console
$ docker pull elixir@sha256:460418b8a221a559c5f6a76437762920d83ef5d77bfe6d15ef7d4ecbf157654b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.7 MB (593740497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75f304aea4d93264ba3d30640569807f8e40859fde17c3116660d951a1e4a71`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:29:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:48:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:14:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 04:15:02 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 04:15:02 GMT
LABEL org.opencontainers.image.version=29.1.2
# Wed, 21 Oct 2026 04:15:02 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 04:15:02 GMT
CMD ["erl"]
# Wed, 21 Oct 2026 04:15:02 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 21 Oct 2026 04:15:06 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 21 Oct 2026 04:15:26 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 21 Oct 2026 05:23:21 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Wed, 21 Oct 2026 05:23:21 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 21 Oct 2026 05:23:21 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1754e402841fcf147f7bb4372f827a1d5e90cc18bd4014a1d7bd715e8ece4ecc`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 45.8 MB (45813599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f16e2f397e50daf634a3bb1659923e40dd3e4076bc5fc9bd98990ae4a7e2671`  
		Last Modified: Wed, 21 Oct 2026 01:29:28 GMT  
		Size: 23.6 MB (23637827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82e1136011681a455e5beb76c55bc9d39fc7a8874f4396f669db2d589d371f8`  
		Last Modified: Wed, 21 Oct 2026 02:48:48 GMT  
		Size: 62.8 MB (62761753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43deb428fe0a20fb7751c5ead6eb80f4a8e44726b4ee003bfa67149c3166220b`  
		Last Modified: Wed, 21 Oct 2026 03:14:50 GMT  
		Size: 194.2 MB (194196301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ebf6986667293d2768efdc04478b22c2478b11edea897137e9003d831f6c94`  
		Last Modified: Wed, 21 Oct 2026 04:16:19 GMT  
		Size: 258.2 MB (258177585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9d2847fc3e5b45dcf17154773b1a18e0ed72f46d8e133810444e14a7690cc4`  
		Last Modified: Wed, 21 Oct 2026 04:16:13 GMT  
		Size: 191.5 KB (191468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebeb1634a5215cc8abe18ceab67556775b7089e5e1cac506f6a7108f7341dea`  
		Last Modified: Wed, 21 Oct 2026 04:16:13 GMT  
		Size: 828.0 KB (828035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba550331fecc4dfb20c657310d8163c676e2ce01735f598dba6a20484658d122`  
		Last Modified: Wed, 21 Oct 2026 05:23:48 GMT  
		Size: 8.1 MB (8133929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29` - unknown; unknown

```console
$ docker pull elixir@sha256:6ca932f9d708dcc412a702254bb28a13fd946438693820fb3559e2e84e04b399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21801114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51ace1f76261984f0e0f8a82caffb8933e731f4603543f005598fb4e481985c2`

```dockerfile
```

-	Layers:
	-	`sha256:29640712fc031b4984dbab4eddd6e769e2b36f6d7b0a2ca0e53ac02fb4bff86f`  
		Last Modified: Wed, 21 Oct 2026 05:23:49 GMT  
		Size: 21.8 MB (21789767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c514e063d4ab2b1ee6d1cdd69c255d9a33a6806835294870c4af0ef871df7503`  
		Last Modified: Wed, 21 Oct 2026 05:23:48 GMT  
		Size: 11.3 KB (11347 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:b3d7294f17137e57295b84cd5b4be56aa3b0fa23535d3ec9683d61b9c5b4b30e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **667.5 MB (667502297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ac02256bb1af539bc26a808c1b6c3fed06760d1c4f0a23de7cf7a8c74a6c07`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:16:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:14:49 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 03:14:49 GMT
LABEL org.opencontainers.image.version=29.1.2
# Wed, 21 Oct 2026 03:14:49 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:14:49 GMT
CMD ["erl"]
# Wed, 21 Oct 2026 03:14:49 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 21 Oct 2026 03:14:52 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 21 Oct 2026 03:15:02 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 21 Oct 2026 04:47:24 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Wed, 21 Oct 2026 04:47:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 21 Oct 2026 04:47:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb30108d3afde03433416a48caa9604703eb8530a12c943ec11a1e46a4d84a9`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 25.0 MB (25036616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7d3237c24572d428cffa50bed9ee6a1844db67c96c4f566bd3a67853d3c223`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 67.6 MB (67634136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1168ed298b87949310991d4d75ebe3a183265520d7854d16569bf3d10bf12d55`  
		Last Modified: Wed, 21 Oct 2026 02:17:30 GMT  
		Size: 227.1 MB (227095197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf44590ecc776cccee6db8e4033a869c61e1b84b624b65d6b70fc7290f6be68`  
		Last Modified: Wed, 21 Oct 2026 03:16:02 GMT  
		Size: 288.8 MB (288821222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21687902d87419a142185b1f054eb0453ad1ef5cb03b3eb102628e13e0c790bc`  
		Last Modified: Wed, 21 Oct 2026 03:15:55 GMT  
		Size: 191.5 KB (191473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fde94f48d3a5bd0894a5b405fd8f119b6fac5965fd9e5c3867f7d94a22afc64`  
		Last Modified: Wed, 21 Oct 2026 03:15:56 GMT  
		Size: 828.0 KB (828035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25d8ed64871f54377cccb9a2b7b917bb0762ff64903718142f9602dc32d508ef`  
		Last Modified: Wed, 21 Oct 2026 04:47:52 GMT  
		Size: 8.1 MB (8134016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29` - unknown; unknown

```console
$ docker pull elixir@sha256:78de16fa0f96872357176aa5b9abad73d49f93497128162f63ad28a25167eb95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22125859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb7e6586ec8035f5c2da39fdf72e4618ceb1580b60a859621d091d4f3d11693e`

```dockerfile
```

-	Layers:
	-	`sha256:36a5c4f26edd9e41e7a82d7160c91da743541ffec6ee293a2e5e1080a0002210`  
		Last Modified: Wed, 21 Oct 2026 04:47:52 GMT  
		Size: 22.1 MB (22114480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aa753c5abf3f86817f3b6f9cc39b470fabc34c803b3095853f0e70b1499c27b`  
		Last Modified: Wed, 21 Oct 2026 04:47:51 GMT  
		Size: 11.4 KB (11379 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29` - linux; 386

```console
$ docker pull elixir@sha256:05116db4fbaddec486aea21e1db3bb18eb756a3250880e2b8fa174a35864511b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **686.7 MB (686743240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da72b483cf743e2e782d4584c7340efcc9ae300d35b1c4debe72a41ed0822213`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:24:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:17:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 03:15:43 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 03:15:43 GMT
LABEL org.opencontainers.image.version=29.1.2
# Wed, 21 Oct 2026 03:15:43 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:15:43 GMT
CMD ["erl"]
# Wed, 21 Oct 2026 03:15:43 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 21 Oct 2026 03:15:46 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 21 Oct 2026 03:16:04 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 21 Oct 2026 04:13:15 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Wed, 21 Oct 2026 04:13:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 21 Oct 2026 04:13:15 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:32b56ddaffdf524e89e42fd33cbc0e53bfe71b517148f5e7cb00252a55c2fc0c`  
		Last Modified: Tue, 20 Oct 2026 23:30:52 GMT  
		Size: 50.9 MB (50906545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef26afe69679f8b13ee7b9263765e639dffada5bcafbad584be699579b53be36`  
		Last Modified: Wed, 21 Oct 2026 00:48:41 GMT  
		Size: 26.8 MB (26801719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a909f16c3ccf238c02074d6be87cb65bdd236ef35710db0691a4d49412dc9f8`  
		Last Modified: Wed, 21 Oct 2026 01:24:52 GMT  
		Size: 69.9 MB (69856853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e9167336de1e1b88d19089283d79b0e19159cc39bc20689bda4992116eeeb5`  
		Last Modified: Wed, 21 Oct 2026 02:17:58 GMT  
		Size: 241.2 MB (241205540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a88a68279acf87755e850db1071a0da59e63f0a5fd20a3b174ff23f53c6c43`  
		Last Modified: Wed, 21 Oct 2026 03:17:00 GMT  
		Size: 288.8 MB (288819137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c18b4275bdb92e015744b2eaf667c0b2ed2163278cf5e36cd1a20656f05c474f`  
		Last Modified: Wed, 21 Oct 2026 03:16:53 GMT  
		Size: 191.5 KB (191482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4f10a676586dc77ee9d6292896dc39b373d8a8238e157e6af2097c936224d8`  
		Last Modified: Wed, 21 Oct 2026 03:16:53 GMT  
		Size: 828.0 KB (828035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfabad1a473b17e98e640cd75ddf4cf4cd3e5f53910bbc59a1b7bd52cc78616`  
		Last Modified: Wed, 21 Oct 2026 04:13:45 GMT  
		Size: 8.1 MB (8133929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29` - unknown; unknown

```console
$ docker pull elixir@sha256:b93dbba83542df237a6e0251d89f7f4ac288908c2cfeacf59f6abfa2c36ea467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22022969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b60e25c2e446c8749b095581cd91eb2cee00d0c7400d5b309483b614bb674b`

```dockerfile
```

-	Layers:
	-	`sha256:4b3df4e4f9f306703fc3ea2efcdecff8dd98dd53295ac2acebd327d33cc3e477`  
		Last Modified: Wed, 21 Oct 2026 04:13:45 GMT  
		Size: 22.0 MB (22011761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dae968e8b90018f9197f7a40011b168b8f31de25cd52e58dcf2fa14fc8b2436`  
		Last Modified: Wed, 21 Oct 2026 04:13:45 GMT  
		Size: 11.2 KB (11208 bytes)  
		MIME: application/vnd.in-toto+json
