## `elixir:otp-27`

```console
$ docker pull elixir@sha256:a55ee981d3c7a9f213406e3d826dafd7152bf880a6bd8cf8415d165a5bb16b3d
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

### `elixir:otp-27` - linux; amd64

```console
$ docker pull elixir@sha256:ad268e3d49ad28363eb611cfd5f2da7e474eaa038f72f71a6daf63328c083bb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.4 MB (627419315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750919b8ea3c7ccf4c7d0747c500a41564420e4cd86671952d80c52083bc73ff`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:53:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:17:17 GMT
ENV OTP_VERSION=27.3.4.19 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 09:17:17 GMT
LABEL org.opencontainers.image.version=27.3.4.19
# Thu, 05 Nov 2026 09:17:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="866307e64e245e86bee15b3807030a998e59873d7480d6fae1e40b432a3d12b7" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:17:17 GMT
CMD ["erl"]
# Thu, 05 Nov 2026 09:17:17 GMT
ENV REBAR_VERSION=2.6.4
# Thu, 05 Nov 2026 09:17:19 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Thu, 05 Nov 2026 09:17:30 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Thu, 05 Nov 2026 10:12:24 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Thu, 05 Nov 2026 10:12:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Thu, 05 Nov 2026 10:12:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c30932f8d3f5798b438cce12cdf6cebb1717b52f51e22ff010b4d86667031d`  
		Last Modified: Thu, 05 Nov 2026 08:31:58 GMT  
		Size: 64.4 MB (64432621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bab93d346cda15207e5a5000093cee7256ec1092fb689ec3d2997faf31b9a16`  
		Last Modified: Thu, 05 Nov 2026 08:54:13 GMT  
		Size: 211.8 MB (211826577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f32be588a54c4ad09bd436c214ea29968eebe2b13471bd07cd770c8f984412e`  
		Last Modified: Thu, 05 Nov 2026 09:18:25 GMT  
		Size: 269.6 MB (269577656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da75f0ac4332c923e82f9fcdbbd7f193a316368d7a018076ccad3b4e06bf6a5e`  
		Last Modified: Thu, 05 Nov 2026 09:18:19 GMT  
		Size: 195.6 KB (195643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdfeafd4db2d383087a99df140a3019905cfa402f71e063c5dc1c196ae75117f`  
		Last Modified: Thu, 05 Nov 2026 09:18:19 GMT  
		Size: 834.4 KB (834438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ee0cf5014c0def95f4e66d7f1bc8aedd99ba8f89c3b50b518bed06f7b4d9a5`  
		Last Modified: Thu, 05 Nov 2026 10:12:58 GMT  
		Size: 8.2 MB (8152680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27` - unknown; unknown

```console
$ docker pull elixir@sha256:399e8c3f71b95cc9c12f92e579bda02cb5c1f79d2dac7a57a0c2e270ccc95cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23789185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39d0137c768d81cbe67e22cd5bec134fb2a567d73354bdc1ba77a8be881b5f52`

```dockerfile
```

-	Layers:
	-	`sha256:56b4c4d724f029c56169cca17f994c0f8ef46a4fdbd90e2a02565c2c86011435`  
		Last Modified: Thu, 05 Nov 2026 10:12:58 GMT  
		Size: 23.8 MB (23778807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d1b763f9f024440615d84b6c451508d1f3569e0ed25ede1a8faf733e6783934`  
		Last Modified: Thu, 05 Nov 2026 10:12:57 GMT  
		Size: 10.4 KB (10378 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27` - linux; arm variant v7

```console
$ docker pull elixir@sha256:3c554fbf9683dd0d684b6fe92fdde7c40ac76b99fc01cac6d84248955f300169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.9 MB (549932627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3111b4744106baaa23f45682ea85dfc69fb002f7e756118cdaac74336135e7bd`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:23:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 10:12:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:14:11 GMT
ENV OTP_VERSION=27.3.4.19 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 11:14:11 GMT
LABEL org.opencontainers.image.version=27.3.4.19
# Thu, 05 Nov 2026 11:14:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="866307e64e245e86bee15b3807030a998e59873d7480d6fae1e40b432a3d12b7" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:14:11 GMT
CMD ["erl"]
# Thu, 05 Nov 2026 11:14:11 GMT
ENV REBAR_VERSION=2.6.4
# Thu, 05 Nov 2026 11:14:15 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Thu, 05 Nov 2026 11:14:38 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Thu, 05 Nov 2026 12:09:19 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Thu, 05 Nov 2026 12:09:19 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Thu, 05 Nov 2026 12:09:19 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50deba4733467d14fa01e8bfb1524dd99d6586f87bd64d8d193d5c9fae44d49e`  
		Last Modified: Thu, 05 Nov 2026 09:23:44 GMT  
		Size: 59.7 MB (59697462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4148b2d8427321c3b41911ad3117638dab74567bdcee89faf176d29bf95430`  
		Last Modified: Thu, 05 Nov 2026 10:12:39 GMT  
		Size: 175.7 MB (175729352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcad6dbdb6d4d2dc2a47a187c22b8e04316993fa15f224492d946ad9a0dabfa9`  
		Last Modified: Thu, 05 Nov 2026 11:15:33 GMT  
		Size: 239.3 MB (239329933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf39a78e45a527f851ed3060b8c746964618bd0b2a1403abafef1c4c171885f3`  
		Last Modified: Thu, 05 Nov 2026 11:15:26 GMT  
		Size: 195.6 KB (195627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6d90baf3d28874d5f128aebd4f612f2ff165b12341619732cbf260d8161324`  
		Last Modified: Thu, 05 Nov 2026 11:15:26 GMT  
		Size: 834.4 KB (834438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285cb49c7aef9f25973f8ade339d348581f6b8b2ff3bb6f28daf0df054feda44`  
		Last Modified: Thu, 05 Nov 2026 12:09:50 GMT  
		Size: 8.2 MB (8152727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27` - unknown; unknown

```console
$ docker pull elixir@sha256:d95bda797179eb49beca365b7c7de9c398354e46da56e6798b236d6c235dff1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23602223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb8e6f7ada4160770f01f08a62d82229c4440441a571a6318ad7c1d4941b025`

```dockerfile
```

-	Layers:
	-	`sha256:1f7058d8c43f561e4090f4a8aa1a0123e043213bfcb4fbca4c80dbc4944cf1a7`  
		Last Modified: Thu, 05 Nov 2026 12:09:50 GMT  
		Size: 23.6 MB (23591773 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58c4c7ae8e24f104bb0feafb6e40693cf250cd41fa7bfdb215bab56e1b8500aa`  
		Last Modified: Thu, 05 Nov 2026 12:09:49 GMT  
		Size: 10.4 KB (10450 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:7677b88f0e7ab537c52b740de922154c74717316a957f4c9517b1e402be6613f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **611.6 MB (611597728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb3c873e514c7cd41550fe14fb917c6f7debb3f09d63d03c089667027089d864`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:54:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:29:05 GMT
ENV OTP_VERSION=27.3.4.19 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 09:29:05 GMT
LABEL org.opencontainers.image.version=27.3.4.19
# Thu, 05 Nov 2026 09:29:05 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="866307e64e245e86bee15b3807030a998e59873d7480d6fae1e40b432a3d12b7" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:29:05 GMT
CMD ["erl"]
# Thu, 05 Nov 2026 09:29:05 GMT
ENV REBAR_VERSION=2.6.4
# Thu, 05 Nov 2026 09:29:08 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Thu, 05 Nov 2026 09:29:19 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Thu, 05 Nov 2026 10:13:24 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Thu, 05 Nov 2026 10:13:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Thu, 05 Nov 2026 10:13:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8af2c9772ed715b222362477c9f5e5d8622bc2dddb9bd26cc8a32da4345de7`  
		Last Modified: Thu, 05 Nov 2026 08:28:57 GMT  
		Size: 64.5 MB (64528461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31a98848e2c91197f0512a8b453bba957a8398f45a1b8d832754f360bb188ac`  
		Last Modified: Thu, 05 Nov 2026 08:54:47 GMT  
		Size: 203.4 MB (203371836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13172e2ac5fe023d44dae27d4611770f02fccfa5ef1a5acf39c512276bb92e7f`  
		Last Modified: Thu, 05 Nov 2026 09:30:17 GMT  
		Size: 262.7 MB (262661517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a1d5b67ae144dfcaee21678f56b366dcc2f90f7dc4048dbbb3b1062db732b56`  
		Last Modified: Thu, 05 Nov 2026 09:30:12 GMT  
		Size: 195.7 KB (195664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3034c2865828df79281eb39c5224b180215d916a7ff310f55fd615d30be38fe0`  
		Last Modified: Thu, 05 Nov 2026 09:30:12 GMT  
		Size: 834.4 KB (834438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343811f555792a4ee0f553f3bfa79263bace8ea5bdb0acf68cb62be96c18ba4e`  
		Last Modified: Thu, 05 Nov 2026 10:13:57 GMT  
		Size: 8.2 MB (8152696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27` - unknown; unknown

```console
$ docker pull elixir@sha256:4d125e516be27ad748f3792c27dece69addc60806026b2d126b58118718a0b46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23828722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda9bf4eef0ac18d498098dc86069a1f60c21fdd941fd04b64b4d150592d88fa`

```dockerfile
```

-	Layers:
	-	`sha256:49dd7ca70775379c21c1a0d22f39bace14b9a48d1413ab40fa36eaa1e193edb2`  
		Last Modified: Thu, 05 Nov 2026 10:13:58 GMT  
		Size: 23.8 MB (23818252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f917e9a0093588ea89f029167607f8dbcaa5666a2e46320c82c57c3d8eef3c2d`  
		Last Modified: Thu, 05 Nov 2026 10:13:57 GMT  
		Size: 10.5 KB (10470 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27` - linux; 386

```console
$ docker pull elixir@sha256:745e84d6603cb6bbfb62ec87ebe11ec127006513c5dd4c52b9b0be415998d67c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **622.2 MB (622151769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4934463da242a05951aa69c80989f421f1b4aa90b2a0e5c4c4ce5252ab04cb15`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:24:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:15:36 GMT
ENV OTP_VERSION=27.3.4.19 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 09:15:36 GMT
LABEL org.opencontainers.image.version=27.3.4.19
# Thu, 05 Nov 2026 09:15:36 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="866307e64e245e86bee15b3807030a998e59873d7480d6fae1e40b432a3d12b7" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:15:36 GMT
CMD ["erl"]
# Thu, 05 Nov 2026 09:15:36 GMT
ENV REBAR_VERSION=2.6.4
# Thu, 05 Nov 2026 09:15:40 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Thu, 05 Nov 2026 09:15:58 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Thu, 05 Nov 2026 10:12:40 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Thu, 05 Nov 2026 10:12:40 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Thu, 05 Nov 2026 10:12:40 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be98d36659ede814751c7330e91612ca4d73d055912e94b9a90e6adfc1eb30b`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 24.7 MB (24703903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2dca7ecb6f0d6c1c3297d7e97569ff07eaf0a74e8949b12aa33e39b2fee126`  
		Last Modified: Thu, 05 Nov 2026 08:24:39 GMT  
		Size: 66.3 MB (66277351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d280152d20eeef07be2c9e1e6a073b220a4e1a7b72fd4ef55c1656bf28a5f2c`  
		Last Modified: Thu, 05 Nov 2026 08:48:20 GMT  
		Size: 210.7 MB (210744423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de401e2b530826abb62442a1af9580dfaffcf17ef3dabf888f6a6383e9954202`  
		Last Modified: Thu, 05 Nov 2026 09:16:52 GMT  
		Size: 261.7 MB (261727616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48da7c3aa2a99b85a2f0febff2f32a63543ce162a3e2d27f2b0f8d728950c004`  
		Last Modified: Thu, 05 Nov 2026 09:16:47 GMT  
		Size: 195.6 KB (195639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5e1c21309be9db8cecf618abe0d29a66322d7ddaee34ed21e7df5872832f44`  
		Last Modified: Thu, 05 Nov 2026 09:16:47 GMT  
		Size: 834.4 KB (834438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5406b49b98a05ace899143de473548094218f98084e2360ec54b1167ae1c4e5`  
		Last Modified: Thu, 05 Nov 2026 10:13:14 GMT  
		Size: 8.2 MB (8152706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27` - unknown; unknown

```console
$ docker pull elixir@sha256:17a7988fb6f0845bbadcf925d847088a47c786a98101e2e4e3ed3efe77554940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23756842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bc91e6ec72cdc84f967d576b351bce9206e7adb1b00587fc822118f3b211cb`

```dockerfile
```

-	Layers:
	-	`sha256:f44160fa2768310d7d22394eb9c5f8a3373786c83bf6ab5ea833a5b143fc611f`  
		Last Modified: Thu, 05 Nov 2026 10:13:14 GMT  
		Size: 23.7 MB (23746491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de68157c3cbd8b70d3d10dc41216b31e6aa708ce76712ee7c1ef69e3dd2a8ab4`  
		Last Modified: Thu, 05 Nov 2026 10:13:13 GMT  
		Size: 10.4 KB (10351 bytes)  
		MIME: application/vnd.in-toto+json
