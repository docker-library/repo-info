## `elixir:otp-28`

```console
$ docker pull elixir@sha256:edd3098f7f3e0d03f8cfd408364ee8b67f4dca35b0ee7273f7cae9f16c4f71f6
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

### `elixir:otp-28` - linux; amd64

```console
$ docker pull elixir@sha256:a51f707e975b1b776a319bb172271aa20fe40bf3f2f32dedba664b338c657a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **682.7 MB (682678027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89eef7c8e1b2ba956a6742fc07089797256722ec3e69a6d0983c043aa75c6bc3`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:17:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 22:18:38 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:18:38 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Wed, 19 Aug 2026 22:18:38 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:18:38 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 22:18:38 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 19 Aug 2026 22:18:40 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 19 Aug 2026 22:18:52 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 19 Aug 2026 23:11:49 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:11:49 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 19 Aug 2026 23:11:49 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74736caedd40737be802d27bfe1d5d0e10377ddb1c7b4103391e0bbff5152e0`  
		Last Modified: Wed, 05 Aug 2026 02:17:56 GMT  
		Size: 236.3 MB (236319920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e3baae59021eeffc5eca1f50402d05837a1472374b640b9b53c8435aad5271`  
		Last Modified: Wed, 19 Aug 2026 22:19:53 GMT  
		Size: 294.5 MB (294457367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b34c03a66e1171005028b209ec04da674037b669e4dc3182d8c028a99c37b7cc`  
		Last Modified: Wed, 19 Aug 2026 22:19:46 GMT  
		Size: 191.5 KB (191524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f750764af0459f843504399a8b0bf38b4e065ddd45b8a8c22abc45eea7bc1d92`  
		Last Modified: Wed, 19 Aug 2026 22:19:46 GMT  
		Size: 829.7 KB (829729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bd99a5351acda07e4c987448ec47e046944329052cba50146a92fcabacad8f`  
		Last Modified: Wed, 19 Aug 2026 23:12:19 GMT  
		Size: 8.1 MB (8130537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28` - unknown; unknown

```console
$ docker pull elixir@sha256:8c811b555f35683e59b49c986671a652320bcba6cca0e061f60c22fd4370ed10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22048949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657a89eec6f7d881e023e14d02f32f0fed69af545c292ad2875e13857a5a53f5`

```dockerfile
```

-	Layers:
	-	`sha256:92e7ae022c4bce068d2fe9a7436c1b61194bb60f6c20cc4369f1e3fe0c7a3848`  
		Last Modified: Wed, 19 Aug 2026 23:12:20 GMT  
		Size: 22.0 MB (22038572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d99c03395bd3aba9ba67f50032b758f5ddc00ee748cf8512849e0abcfb53394`  
		Last Modified: Wed, 19 Aug 2026 23:12:19 GMT  
		Size: 10.4 KB (10377 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28` - linux; arm variant v7

```console
$ docker pull elixir@sha256:91fcca4bf40a7bf471f529f63c9f236e0729f3ee214eac0c4fda21a0f03219fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.8 MB (594787539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00804449e9e6501780959ec301057caf72e94627a0fb1f1906ebfe35ea5aa87`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 03:17:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 22:19:21 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:19:21 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Wed, 19 Aug 2026 22:19:21 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:19:21 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 22:19:21 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 19 Aug 2026 22:19:25 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 19 Aug 2026 22:19:46 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 19 Aug 2026 23:14:14 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:14:14 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 19 Aug 2026 23:14:14 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ce00596802fbbb6f672716803836be915a7fa1e431e304e27380b560f4b25c8e`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 45.7 MB (45743375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0dd361d89842d87704123c0af11b4564310574a6d57fefd0e2be36925c3d8d`  
		Last Modified: Wed, 05 Aug 2026 01:20:38 GMT  
		Size: 23.6 MB (23636453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb135e1760d1271aea3209c73b2b3ca0ea7f9cfde6d547d3d7e708701db7379`  
		Last Modified: Wed, 05 Aug 2026 02:54:53 GMT  
		Size: 62.8 MB (62757963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35864f9d807228c049d16516942014285d00a38ed3357664d01391ed0bf37fff`  
		Last Modified: Wed, 05 Aug 2026 03:18:26 GMT  
		Size: 193.6 MB (193608477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c5c7d65a5c7223355f82b7a520e314ccf9ffbc19d700c8fbd98ad8724b2cc9`  
		Last Modified: Wed, 19 Aug 2026 22:20:38 GMT  
		Size: 259.9 MB (259889625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8857dc92ccf682419706fa4d750aada8ae02f5fb8d7d9edd7c835b6d1b6c8343`  
		Last Modified: Wed, 19 Aug 2026 22:20:33 GMT  
		Size: 191.5 KB (191515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17391abf52436a8fd56703e06541f75acc9e1f90ef43e785619259105c3aadca`  
		Last Modified: Wed, 19 Aug 2026 22:20:33 GMT  
		Size: 829.7 KB (829729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b761f769665d2a1637a9263028ce37191ef5abe212a888a66ae0959a1fb4a6`  
		Last Modified: Wed, 19 Aug 2026 23:14:44 GMT  
		Size: 8.1 MB (8130402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28` - unknown; unknown

```console
$ docker pull elixir@sha256:38e99a61c7239d63af56c639024962e37e6a4a26cc1ea8a2f4d21d8acad734e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21794988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8e73888a9bee3ef2dc607939e7d7cf2885f2d5796aa6113f2057895317c6b9`

```dockerfile
```

-	Layers:
	-	`sha256:19ae5aec6210cc0141c5e9502974e27d26db8871023705b03c8284f2632fc37f`  
		Last Modified: Wed, 19 Aug 2026 23:14:45 GMT  
		Size: 21.8 MB (21784539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4257d5a6e587ae6d6890082b9f9744844dc911cfb4fea8920064c8f737c79d`  
		Last Modified: Wed, 19 Aug 2026 23:14:44 GMT  
		Size: 10.4 KB (10449 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:c050e575a1e5af16e988d81262d8efb463edc9a93b9e880c0ebe3e37aeaa9c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **665.1 MB (665121765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a8622e6b678b3bebe6f5166f394ba1cc5aa55fe2e76c18101295b46a781fd24`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:16:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 22:18:28 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:18:28 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Wed, 19 Aug 2026 22:18:28 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:18:28 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 22:18:28 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 19 Aug 2026 22:18:31 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 19 Aug 2026 22:18:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 19 Aug 2026 23:11:34 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:11:34 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 19 Aug 2026 23:11:34 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c92d7371fbad1c4a9425f83a28c6b78df6d1bd2014afc1eb00522b2b552a892`  
		Last Modified: Wed, 05 Aug 2026 02:17:35 GMT  
		Size: 226.5 MB (226456976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468d7c6287a79d155e777788ba7c87b919605f7feb8e749ce32ade0d257f52ef`  
		Last Modified: Wed, 19 Aug 2026 22:19:41 GMT  
		Size: 287.2 MB (287212117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7077cc8dcc7f0af190aa063ebadb9ac5674d18c219ad06ad83ebd30e12d651`  
		Last Modified: Wed, 19 Aug 2026 22:19:35 GMT  
		Size: 191.5 KB (191512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45870ed74a80059c48f99dec8219388315dc2e630154dedb85c36fb34a029582`  
		Last Modified: Wed, 19 Aug 2026 22:19:35 GMT  
		Size: 829.7 KB (829729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0905c155cb925eca9bc05cfde2ddfe0234d88b9508101e0cbbf659ba7f8c31`  
		Last Modified: Wed, 19 Aug 2026 23:12:06 GMT  
		Size: 8.1 MB (8130529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28` - unknown; unknown

```console
$ docker pull elixir@sha256:d7cf79cb8f849cc41dff67e4a319ccd897f1233fb666a814bf7f43531518859a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22119711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bf60516cb94881c3f52d7f6263a0ce83d64f7381276c89f6d2f77e74c3c03c9`

```dockerfile
```

-	Layers:
	-	`sha256:b30bd7af57abdc71c929e8861ca476e69eb9c10833ee384d93f5902388c0c0c2`  
		Last Modified: Wed, 19 Aug 2026 23:12:06 GMT  
		Size: 22.1 MB (22109242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3b5056b42c7a87a4cdb5b5e7143d2122dacbd1b740d8cbe5292ea9e06ecb4bc`  
		Last Modified: Wed, 19 Aug 2026 23:12:06 GMT  
		Size: 10.5 KB (10469 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28` - linux; 386

```console
$ docker pull elixir@sha256:b9d5624164e54c14f6d819133fab6f12817d0df1a4f23d65639bdadbde33d4b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **685.1 MB (685081759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24747f722f55f4e9d6d6697c7e2b9cf1066285e8714b452675e72e58cabe96fb`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:17:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 22:18:27 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:18:27 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Wed, 19 Aug 2026 22:18:27 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:18:27 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 22:18:27 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 19 Aug 2026 22:18:30 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 19 Aug 2026 22:18:48 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 19 Aug 2026 23:12:04 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:12:04 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 19 Aug 2026 23:12:04 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f34fbe13383f04539c7849f0cc79bc728d4e964e24cda9b947d4784426bd636`  
		Last Modified: Wed, 05 Aug 2026 00:47:13 GMT  
		Size: 26.8 MB (26800384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a3ec548455cf061e33066b297b3d6422e0f3a9b061c1f92a46c05e3687aee2`  
		Last Modified: Wed, 05 Aug 2026 01:41:30 GMT  
		Size: 69.8 MB (69839732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d912957663d93e6e68ce784661abb92095b3da569e459d6bbd2cebe7ac4b77`  
		Last Modified: Wed, 05 Aug 2026 02:18:12 GMT  
		Size: 240.4 MB (240443932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c745a52e79fd3a0b7372e6a6e87cdfaf72091833c4def1e398122a474a3ec1e0`  
		Last Modified: Wed, 19 Aug 2026 22:19:43 GMT  
		Size: 288.0 MB (288014917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e117edd80f58ad4e62ae9ce7655e9944ce965df56786bdd4b9feeb15b03192`  
		Last Modified: Wed, 19 Aug 2026 22:19:37 GMT  
		Size: 191.5 KB (191501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e491a24b6d35228bfa2c38722267832b5f22952ff4fda6a4c87b801f914cf6`  
		Last Modified: Wed, 19 Aug 2026 22:19:37 GMT  
		Size: 829.7 KB (829728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9709bd93e238d4f40f4fd3439ffa1b1437ea742e4a4db8243702b4404e55ef95`  
		Last Modified: Wed, 19 Aug 2026 23:12:33 GMT  
		Size: 8.1 MB (8130397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28` - unknown; unknown

```console
$ docker pull elixir@sha256:8cb4cf022caba2dc9cb88757445b1bc7563c10bd4ab9c0f095df16a7fb56534c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22016918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c51bbe03cfb4d6647de0ef10d34b93b8feaf7c534dd1e5d2800b130de88a0f`

```dockerfile
```

-	Layers:
	-	`sha256:86f60fd17117f2fbf8e7c78ff915dc52ee2d10f3f919a1c1e2fafab98abaf8ec`  
		Last Modified: Wed, 19 Aug 2026 23:12:33 GMT  
		Size: 22.0 MB (22006568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2805b56702e0b2961b7250e9eb8a46a9ea6e253318751990c504bf1a84513fa`  
		Last Modified: Wed, 19 Aug 2026 23:12:32 GMT  
		Size: 10.3 KB (10350 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28` - linux; ppc64le

```console
$ docker pull elixir@sha256:1252ecf6e60b0752ebeedff53a0ae25fe3b023ce0a6dd8a18388ccf9721fcf53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.9 MB (679901987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9e91a64656416a47697b2bb19e3161fcb4a560b0c862ea32df40d479bdf12b`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 08:58:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 11:18:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 23:48:36 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 23:48:36 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Wed, 19 Aug 2026 23:48:36 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 23:48:36 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:48:36 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 19 Aug 2026 23:48:44 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 19 Aug 2026 23:49:27 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Thu, 20 Aug 2026 02:52:20 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Thu, 20 Aug 2026 02:52:20 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Thu, 20 Aug 2026 02:52:20 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf3e6efa722094ba9a2c33899d007294d906fe7730bc19901e78bf43c969f32`  
		Last Modified: Wed, 05 Aug 2026 05:26:21 GMT  
		Size: 27.0 MB (27021100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c136ff5d1eed42b29e608b2fa6073b2ec631c910e2ba490e022e4d31f4ae2f`  
		Last Modified: Wed, 05 Aug 2026 08:58:54 GMT  
		Size: 73.1 MB (73074780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27df19cf6e65d1a3470fcae7ae6195f0fc9d31d3891107621628d11d2690a78f`  
		Last Modified: Wed, 05 Aug 2026 11:19:36 GMT  
		Size: 231.5 MB (231456757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1c9e18dcddef4c9276234c0bf13050b7f117e28a8641dc354a416a3829c227`  
		Last Modified: Wed, 19 Aug 2026 23:51:12 GMT  
		Size: 286.1 MB (286063964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e15f9944ba268b9972020906218f925d7cebb8379ee619c63c27ff782933b21f`  
		Last Modified: Wed, 19 Aug 2026 23:51:06 GMT  
		Size: 191.5 KB (191543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b20282b19d85ba28cc5783eb212c782ebaf4e1ccfbc43643b23fc584b81bd22`  
		Last Modified: Wed, 19 Aug 2026 23:51:06 GMT  
		Size: 829.7 KB (829728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70c7e335b6868879c9e838d7da296399d01f995e6e49532a6f1920c149891dd`  
		Last Modified: Thu, 20 Aug 2026 02:53:32 GMT  
		Size: 8.1 MB (8130510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28` - unknown; unknown

```console
$ docker pull elixir@sha256:f12a093e4b56a5f8bed9bbcd7cdc30958e61d4ec65c3cebcee95af1d15a84e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22008751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd6387ae35f1157d14486b2e9cd3aebd8804e4df8271608dd26c3f589d116dec`

```dockerfile
```

-	Layers:
	-	`sha256:e01b83bc91ad82ff70fdd0090ee2a793d7d6aafe5a52964183653e6eff0aa6ae`  
		Last Modified: Thu, 20 Aug 2026 02:53:33 GMT  
		Size: 22.0 MB (21998337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e232d5be2ee43d7e6099e3b2d67c338c77355d241cc0a138b6106e22caed701`  
		Last Modified: Thu, 20 Aug 2026 02:53:31 GMT  
		Size: 10.4 KB (10414 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28` - linux; s390x

```console
$ docker pull elixir@sha256:3360ec2ee51ec08649c53002aadb8c56e426feb0e11bfc7875a241069e1f94f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **651.9 MB (651908878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d4c87c886fc6b20916c465f26b2f076a01a6cae837e898101cccf68f6eafe8`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:08:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:40:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 22:18:58 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:18:58 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Wed, 19 Aug 2026 22:18:58 GMT
RUN set -xe   && OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& runtimeDeps='libodbc2 			libsctp1 			libwxgtk3.2 			libwxgtk-webview3.2-dev  ' 	&& buildDeps='unixodbc-dev 			libsctp-dev ' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make -j$(nproc) docs DOC_TARGETS=chunks 	  && make install install-docs DOC_TARGETS=chunks ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:18:58 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 22:18:58 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 19 Aug 2026 22:19:03 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src # buildkit
# Wed, 19 Aug 2026 22:19:34 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src # buildkit
# Wed, 19 Aug 2026 23:10:42 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:10:42 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete # buildkit
# Wed, 19 Aug 2026 23:10:42 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8b239a9d975f9d9fa57e1220f0c69c47026f4fbd5094809de5f822f2097b9c`  
		Last Modified: Wed, 05 Aug 2026 01:08:39 GMT  
		Size: 26.8 MB (26804560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e84d63eaa6137e87f6d73d15defc7c8e1c5f48351989da2ae83463f41f98de2`  
		Last Modified: Wed, 05 Aug 2026 02:03:58 GMT  
		Size: 68.6 MB (68648013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de41282ca9ec7f0464528fb53fbfabc59e4b1b31a57f586b8916455357587a8`  
		Last Modified: Wed, 05 Aug 2026 02:41:52 GMT  
		Size: 206.8 MB (206845360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4fff587e60ee64c7dd3b81f4c857933dd60db37b76bee915a7a6d2f33c36791`  
		Last Modified: Wed, 19 Aug 2026 22:21:14 GMT  
		Size: 291.1 MB (291077916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7f7db95a7925cdaf2b95d657dba42348c4a2d0d06dc2f2f8669d8c81aade00`  
		Last Modified: Wed, 19 Aug 2026 22:21:09 GMT  
		Size: 191.5 KB (191525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c3353405cb8b85e9487b43f21c7b7c09186a4c470f77c6363035030813d728`  
		Last Modified: Wed, 19 Aug 2026 22:21:09 GMT  
		Size: 829.7 KB (829729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857d3e26457e63547856d560a35d87be8e3c012346c419a2c509e96c620d1fee`  
		Last Modified: Wed, 19 Aug 2026 23:11:34 GMT  
		Size: 8.1 MB (8130349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28` - unknown; unknown

```console
$ docker pull elixir@sha256:3662b01e7a76026625994fb343d2a76010bc00d4a211018e151f8f02b610be83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21698710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6347e94c49dfc2f4af7b5acc798847cf1043d1c2baf92eadd46f63e76c7fe20`

```dockerfile
```

-	Layers:
	-	`sha256:e517b0fad1883f3d545538c8b60b71b7f4590a6a68007a7b79428d74493f32fb`  
		Last Modified: Wed, 19 Aug 2026 23:11:34 GMT  
		Size: 21.7 MB (21688333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30bde393dfe61423f465f1d7d96809834a279a0a00741494054b3beaae21c71a`  
		Last Modified: Wed, 19 Aug 2026 23:11:33 GMT  
		Size: 10.4 KB (10377 bytes)  
		MIME: application/vnd.in-toto+json
