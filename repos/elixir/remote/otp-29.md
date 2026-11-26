## `elixir:otp-29`

```console
$ docker pull elixir@sha256:028a755eef5692f4f64b06c68104b7a326e0f610646e9d8faa8d3a651f1060f3
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
$ docker pull elixir@sha256:2ed1d92c77c84e33e160ede693d6c63640bdc65be6d141450b25995f0dc01620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.3 MB (669303417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ed1e1531f4b43cf33ca373d0a791ef8ef0f283a2da6362a442a7681fe5632a`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:15:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 21:17:59 GMT
ENV OTP_VERSION=29.1.3 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:17:59 GMT
LABEL org.opencontainers.image.version=29.1.3
# Tue, 24 Nov 2026 21:17:59 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="44d8ee7f0964537ddb328fe2f6307d3338c3fdd1b2826938d490907771ba70d2" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:17:59 GMT
CMD ["erl"]
# Tue, 24 Nov 2026 21:17:59 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 24 Nov 2026 21:18:02 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Tue, 24 Nov 2026 21:18:14 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Tue, 24 Nov 2026 21:30:03 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Tue, 24 Nov 2026 21:30:03 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Tue, 24 Nov 2026 21:30:03 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0be6780dc18eb58a60fabb4c8bedb0c3ea852f4f3c7d199d0dd2ca073068d3c`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 25.7 MB (25650878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2acb1a7e2440113768de2c5a81ca8c6c89281a433d4e9f05eecc3082aac2c04`  
		Last Modified: Tue, 24 Nov 2026 05:21:36 GMT  
		Size: 67.8 MB (67818732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807982f6af4fc03f2d394347e6e9bcaab579df144f168742316271ff8f226ac1`  
		Last Modified: Tue, 24 Nov 2026 06:16:16 GMT  
		Size: 237.4 MB (237383741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de06753b1fb5c3e50bd0ff8f787b936e43008c67954d101ac8b59248d860241a`  
		Last Modified: Tue, 24 Nov 2026 21:19:14 GMT  
		Size: 279.9 MB (279881271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0e0344e72f536d724cc0c9d8a28cf3a456cb4776924733b7b5d6e64eef616b`  
		Last Modified: Tue, 24 Nov 2026 21:19:08 GMT  
		Size: 191.5 KB (191499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82b7b23f475a75bc2ec01e1e86e3dc4b96c2c694bc7016bee11ff16bb2e84529`  
		Last Modified: Tue, 24 Nov 2026 21:19:08 GMT  
		Size: 828.0 KB (828024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c7e997f1e633547afa5eef44e66164282f043656b1a4d07fdb233b2444297b8`  
		Last Modified: Tue, 24 Nov 2026 21:30:32 GMT  
		Size: 8.1 MB (8139984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29` - unknown; unknown

```console
$ docker pull elixir@sha256:a85bcc75c0de9208dad8a288b894b25ec06e69dda0cbe8c225036d26ad0bae8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (21962251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb4572b69a63b23d641bc36ddef75e2ec4dbc87d94bb8dc8c74e9df9f8aa5bc`

```dockerfile
```

-	Layers:
	-	`sha256:7b3a1d3401f150693011af0540eef0706d3632240ea31d9dc36d78f2e5c9ffd0`  
		Last Modified: Tue, 24 Nov 2026 21:30:32 GMT  
		Size: 22.0 MB (21951000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c41a1473c2764180e69307c5b86e04ad0a44c4c7a2999f6b5a27c9603ad8b933`  
		Last Modified: Tue, 24 Nov 2026 21:30:31 GMT  
		Size: 11.3 KB (11251 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29` - linux; arm variant v7

```console
$ docker pull elixir@sha256:41691c0d1a90c5573a6f7eb55bf8a0c660efcd4022456d12745f7b4e85e44cce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.4 MB (584442819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4cdf703347c4890b7731baae5836c0a2ed066ce24b2d7ed2461e694599797d`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:16:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:42:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:13:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 21:19:15 GMT
ENV OTP_VERSION=29.1.3 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:19:15 GMT
LABEL org.opencontainers.image.version=29.1.3
# Tue, 24 Nov 2026 21:19:15 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="44d8ee7f0964537ddb328fe2f6307d3338c3fdd1b2826938d490907771ba70d2" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:19:15 GMT
CMD ["erl"]
# Tue, 24 Nov 2026 21:19:15 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 24 Nov 2026 21:19:18 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Tue, 24 Nov 2026 21:19:39 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Tue, 24 Nov 2026 21:34:51 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Tue, 24 Nov 2026 21:34:51 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Tue, 24 Nov 2026 21:34:51 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:dfa0232b027632cfcd6c75af294b9fb093493d5e9bedb208e40bbda0d946291d`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 45.8 MB (45838797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206e093b7d6b9756ce6436106bd63bfb623d6bd0cde12e4a8b4c232298b048d`  
		Last Modified: Tue, 24 Nov 2026 05:16:21 GMT  
		Size: 23.7 MB (23657477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8301dea1564c32e919589729d3a99d246c0e513c2f4ce53d05c49a87fcba793e`  
		Last Modified: Tue, 24 Nov 2026 06:42:28 GMT  
		Size: 62.8 MB (62752711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b1394821b4d3d6b469d4bf4867a64611feb51a34ff2b83100a6e9b81cd89f5`  
		Last Modified: Tue, 24 Nov 2026 07:14:05 GMT  
		Size: 194.5 MB (194471400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a065a36dd59488d2bb7664e5b75ce04cbb54f00a2585760cef0c6c6a88403cb`  
		Last Modified: Tue, 24 Nov 2026 21:20:31 GMT  
		Size: 248.6 MB (248562944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:302dbe58f1eca1410d757fae39a2b96f8bfca1891dd4091aa521cbb613d174a2`  
		Last Modified: Tue, 24 Nov 2026 21:20:25 GMT  
		Size: 191.5 KB (191491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46797e56a37baa5d959579a5edc771c0a92f75f2afe37894b9c27649416863b1`  
		Last Modified: Tue, 24 Nov 2026 21:20:25 GMT  
		Size: 828.0 KB (828023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845829050680eaee37b0b6b83f1414937d58afd9a60e7b08a6e374503da2a96c`  
		Last Modified: Tue, 24 Nov 2026 21:35:20 GMT  
		Size: 8.1 MB (8139976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29` - unknown; unknown

```console
$ docker pull elixir@sha256:5dc90d492b8fe86075e3154478d9bf33ab613444168a094a81428090c4c82a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21708299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11ed6ca9e07f4e896138babc05715e2179337d299c991c986b098a32d942a51e`

```dockerfile
```

-	Layers:
	-	`sha256:56c25b57e17963a91dae9321f5187718d1759d6ccd97cfaad19e569a794b0aad`  
		Last Modified: Tue, 24 Nov 2026 21:35:20 GMT  
		Size: 21.7 MB (21696952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b2d84a3af9b7e306014393c9c2481855da30bc566828eeb5817c187f5776f2a`  
		Last Modified: Tue, 24 Nov 2026 21:35:19 GMT  
		Size: 11.3 KB (11347 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:2070c0e10ea7ba9dda454c65b0a7b8fdf1d318eb0f5f22b92175b04f7a234aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.0 MB (652035006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc5e580184014a23583203b1f52bfaf4f5977ccbc723efff7b94e4ff7d2111a`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:14:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 21:19:14 GMT
ENV OTP_VERSION=29.1.3 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:19:14 GMT
LABEL org.opencontainers.image.version=29.1.3
# Tue, 24 Nov 2026 21:19:14 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="44d8ee7f0964537ddb328fe2f6307d3338c3fdd1b2826938d490907771ba70d2" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:19:14 GMT
CMD ["erl"]
# Tue, 24 Nov 2026 21:19:14 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 24 Nov 2026 21:19:16 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Tue, 24 Nov 2026 21:19:27 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Tue, 24 Nov 2026 21:29:12 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Tue, 24 Nov 2026 21:29:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Tue, 24 Nov 2026 21:29:12 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dacf7f1531c38a9330958dd49f965097481ac7feb033dbc834cab26a8120fa0`  
		Last Modified: Tue, 24 Nov 2026 04:43:47 GMT  
		Size: 25.0 MB (25045881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873295aab70feef1201ca10ab9b403b459ce2e560c88640595466a3bb0b2c5ed`  
		Last Modified: Tue, 24 Nov 2026 05:33:30 GMT  
		Size: 67.6 MB (67633993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0906044c4c05ec5672de8a303b188542bc9036eda76195f44ad5786c7bc7239`  
		Last Modified: Tue, 24 Nov 2026 06:14:49 GMT  
		Size: 227.4 MB (227379443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2f2b12e6503a89acea20ae769e115f40172703227192bd6e87e919469e276f`  
		Last Modified: Tue, 24 Nov 2026 21:20:25 GMT  
		Size: 273.0 MB (273046153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eda0027ee0e2e375d12b3663eeee29d0fcf30f07bf358caa41260888220958a`  
		Last Modified: Tue, 24 Nov 2026 21:20:20 GMT  
		Size: 191.5 KB (191491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5f78c52df0e3b6f8ca26749f187ea84c037a983b548193421e12469b9e9fc32`  
		Last Modified: Tue, 24 Nov 2026 21:20:20 GMT  
		Size: 828.0 KB (828023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c8b1345717d1c7c1927c82dfe70ce488136a5d1418558bc6ef6ce434bea95c`  
		Last Modified: Tue, 24 Nov 2026 21:29:43 GMT  
		Size: 8.1 MB (8139936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29` - unknown; unknown

```console
$ docker pull elixir@sha256:91a7205cb2bb3989d23b1e610f1d492c50be7dd662a94ba2bdb94915db3f66a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22033071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db7a7fd3456c8c7806901e0ba6ee1200d7c6429b810562e6f6d3b1b24f12a29a`

```dockerfile
```

-	Layers:
	-	`sha256:cb4c14ed89647e771b9e360f3efd2b688540ddb954013fcd5d22c0a41986e95f`  
		Last Modified: Tue, 24 Nov 2026 21:29:43 GMT  
		Size: 22.0 MB (22021693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ed7a6dd2ff61307949c20e629e1b0f249e5b683f99f1a004bbe150baf93cf1`  
		Last Modified: Tue, 24 Nov 2026 21:29:42 GMT  
		Size: 11.4 KB (11378 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29` - linux; 386

```console
$ docker pull elixir@sha256:dd88a257d0a8d105914fd5e228f3847e8ebc619c6d46cc110757b9b3445c2599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **671.9 MB (671854444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35873906ad39ce9d8b57548205744d81542752280db0ccaecdfee858e3bbaa37`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:16:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
ENV OTP_VERSION=29.1.3 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:14:06 GMT
LABEL org.opencontainers.image.version=29.1.3
# Tue, 24 Nov 2026 21:14:06 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="44d8ee7f0964537ddb328fe2f6307d3338c3fdd1b2826938d490907771ba70d2" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:14:06 GMT
CMD ["erl"]
# Tue, 24 Nov 2026 21:14:06 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 24 Nov 2026 21:14:09 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Tue, 24 Nov 2026 21:14:26 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Tue, 24 Nov 2026 21:22:15 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Tue, 24 Nov 2026 21:22:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Tue, 24 Nov 2026 21:22:15 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad941d6d2e360c11be5bab67f076a725561b77784d7d2677f094938e20cc0c5`  
		Last Modified: Tue, 24 Nov 2026 04:41:39 GMT  
		Size: 26.8 MB (26810342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57f569e4512c64e1bfa4a948ff7d606bc67eb9529e900abeea67665fe98f04b`  
		Last Modified: Tue, 24 Nov 2026 05:25:20 GMT  
		Size: 69.9 MB (69857338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f440e35123eeb506442b41eb92c3382ae77889bc4582d445c76e15cec5ab3508`  
		Last Modified: Tue, 24 Nov 2026 06:16:44 GMT  
		Size: 241.5 MB (241508529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0b9deb827d00785e80e816aed294dce81315908b9eb43426bf839712766904`  
		Last Modified: Tue, 24 Nov 2026 21:15:21 GMT  
		Size: 273.6 MB (273593546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f577374bb0f3a9be2a54afc2e75175795154b77c0bb49487b7bd906f78ebdf64`  
		Last Modified: Tue, 24 Nov 2026 21:15:15 GMT  
		Size: 191.5 KB (191471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b578d0dfa4a8cbaf17309287bfab1a37231a486d50feeec070c6e5dff2fc56ea`  
		Last Modified: Tue, 24 Nov 2026 21:15:15 GMT  
		Size: 828.0 KB (828023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9444bff90df457b4a9b37ef1b3dc2f25ea95eb1aa59ed79fa1011c5247942755`  
		Last Modified: Tue, 24 Nov 2026 21:22:44 GMT  
		Size: 8.1 MB (8139750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29` - unknown; unknown

```console
$ docker pull elixir@sha256:574efc72e502c05f204f3ca7fd02bb542c796aea86e2fedc240caebd3a8efd98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21930229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62026da00f4edb6af33b427fba046ddcb92145f9c9e13e4799ee71c6a5ac9c36`

```dockerfile
```

-	Layers:
	-	`sha256:fa70ccca99722688c8ee467ef629230cc806838961ab2841a6be0845880a5e0e`  
		Last Modified: Tue, 24 Nov 2026 21:22:44 GMT  
		Size: 21.9 MB (21919020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fde3c13cd40e140a34e3031686fbb568b0f9bf41b4f5498385a65b549c2b6c9b`  
		Last Modified: Tue, 24 Nov 2026 21:22:43 GMT  
		Size: 11.2 KB (11209 bytes)  
		MIME: application/vnd.in-toto+json
