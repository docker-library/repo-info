## `erlang:27-slim`

```console
$ docker pull erlang@sha256:62d62447d1af1ec3afb6b116a712240dadb20fa6692b20ac13d2343e4c436c9f
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

### `erlang:27-slim` - linux; amd64

```console
$ docker pull erlang@sha256:2231ac7fa6073de2b1ce7b24771421737d60743b1be127088549879f3fd4fd02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124657556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9182c8049f363ea83f203b2d3fc7c9d392e41a5fa4e1b2f8defcb1adc0a29c68`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:36 GMT
ENV OTP_VERSION=27.3.4.17 REBAR3_VERSION=3.27.0
# Sat, 19 Sep 2026 00:47:36 GMT
LABEL org.opencontainers.image.version=27.3.4.17
# Sat, 19 Sep 2026 00:47:36 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="56857d4e78e411252d6a5489a7f9870cf239b14250097ce3ceef97601905a2a9" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:36 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7ae16ef551ccc6bd2453625b8887b7e88ee98c12cd01be2a0c217ad3afb4e0`  
		Last Modified: Sat, 19 Sep 2026 00:47:54 GMT  
		Size: 76.2 MB (76154116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:637b30cbd514bae2bf8ef0293d94cf45c27cebf582ea3b0e7143738d148dc255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e67457b091f575110793a603fe5084031241535d82d0812e8570b449737ec8`

```dockerfile
```

-	Layers:
	-	`sha256:06a6262bc4238e8a4d0a4541e1e7fc99298fe92ceb719688662fd22ba8dc2901`  
		Last Modified: Sat, 19 Sep 2026 00:47:52 GMT  
		Size: 3.8 MB (3824940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe7e419912701ae36b0f390209c6e62b7f0887e55e5efdb20a8b0580b05fee45`  
		Last Modified: Sat, 19 Sep 2026 00:47:52 GMT  
		Size: 13.6 KB (13639 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:2dae49148b81e6f19ac9995f4e4746e98e7f64d3360a12590ccc75b453b203d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109453709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e683c2cc8130f0edcfacbc2711b57442becf3f0bd075123867607c3d835520b9`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 01 Sep 2026 23:21:23 GMT
ENV OTP_VERSION=27.3.4.17 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:21:23 GMT
LABEL org.opencontainers.image.version=27.3.4.17
# Tue, 01 Sep 2026 23:21:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="56857d4e78e411252d6a5489a7f9870cf239b14250097ce3ceef97601905a2a9" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:21:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbc5fdf05c344bcd8fa7009be58c90111f3d052295b3e52c279209543c64f83`  
		Last Modified: Tue, 01 Sep 2026 23:21:37 GMT  
		Size: 65.3 MB (65250585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:81c8f745b4aa5f27b3df728bcc2093b22e35c0d1f49ac91de9e7bf8a08971e9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4700cc9aed2424d138b991d2fd8e773a35153cd054907e360b2c8edb59d20d2`

```dockerfile
```

-	Layers:
	-	`sha256:b1a8b410f080d62616fe0ac154f4ab25e0c08dc3f52517200372b5e4c8d55830`  
		Last Modified: Tue, 01 Sep 2026 23:21:35 GMT  
		Size: 3.8 MB (3827137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35efb68b4f3ca6d195a798ee0d42678b26fbe7e3ccc953f1ea59b9b73f9cc5e3`  
		Last Modified: Tue, 01 Sep 2026 23:21:35 GMT  
		Size: 13.7 KB (13719 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:e38634602018f2e81e37c65082d0e5643af68dea8b2d8c647fc42a67eb548b5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122269513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11cd2b57a8c53fa8c3551d098d5e83dde618927171a93aa4535c44d6a424a573`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
ENV OTP_VERSION=27.3.4.17 REBAR3_VERSION=3.27.0
# Sat, 19 Sep 2026 00:49:51 GMT
LABEL org.opencontainers.image.version=27.3.4.17
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="56857d4e78e411252d6a5489a7f9870cf239b14250097ce3ceef97601905a2a9" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:49:51 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8bd0ff8f270dc5a775f0d60e973572f64c38f10c621b53b7126906d3c8db5cc`  
		Last Modified: Sat, 19 Sep 2026 00:50:05 GMT  
		Size: 73.9 MB (73879603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:b253a58152483ef231a3f0bde17401e5873831b4659d8e7d62ddb2ae8cf50e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b71886056ea23217d9a12f38befc1aa78bf732e3ee77cade1acd8810282afc`

```dockerfile
```

-	Layers:
	-	`sha256:8eadff14f64432844c316181b882c6b88cf038665dd747bd63673def52cd496b`  
		Last Modified: Sat, 19 Sep 2026 00:50:03 GMT  
		Size: 3.8 MB (3825201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:171c58d82d0d652368fe06ef653fc4ec632c555effdbb79f676d00e6b41fe9fd`  
		Last Modified: Sat, 19 Sep 2026 00:50:03 GMT  
		Size: 13.7 KB (13742 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-slim` - linux; 386

```console
$ docker pull erlang@sha256:4b7fa9054483b80e566bc1d5608e6f668be8019c6285cae0c25dc77d9e86233e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115801123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540ed9f057dead16519ee881484456981a18d62e85270f7c35f79b6801b1977b`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:51:34 GMT
ENV OTP_VERSION=27.3.4.17 REBAR3_VERSION=3.27.0
# Sat, 19 Sep 2026 00:51:34 GMT
LABEL org.opencontainers.image.version=27.3.4.17
# Sat, 19 Sep 2026 00:51:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="56857d4e78e411252d6a5489a7f9870cf239b14250097ce3ceef97601905a2a9" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:34 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721f7c29bfdbf0b6180e7cf2cc6a217f398e7406acaef30eea4941e9b76f8786`  
		Last Modified: Sat, 19 Sep 2026 00:51:47 GMT  
		Size: 66.3 MB (66309719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:612aad0c27d92696aa83f99126803da1fa57af21ecd226cd75c5e23f8fa7efb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52678cd4f362c5a623c9526d35ae4034c74bf170aaf5169f4fe781224fd7065a`

```dockerfile
```

-	Layers:
	-	`sha256:4a7adce2920c5a9040b75f745b0ed178ee12c9bd4fa722f6f08221f5f2b9fd79`  
		Last Modified: Sat, 19 Sep 2026 00:51:46 GMT  
		Size: 3.8 MB (3822101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f4f5a5603dcbecab790c4e62bc86b2b9e8135b08da26fdaba3f9ab857e550b2`  
		Last Modified: Sat, 19 Sep 2026 00:51:45 GMT  
		Size: 13.6 KB (13607 bytes)  
		MIME: application/vnd.in-toto+json
