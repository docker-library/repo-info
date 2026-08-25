## `elixir:otp-27-slim`

```console
$ docker pull elixir@sha256:02f5fb34616f6379a3aef534064e41ada576ad715ba9e99f81fbda2a17393ee1
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

### `elixir:otp-27-slim` - linux; amd64

```console
$ docker pull elixir@sha256:5fd7887b1391574c1eda319d574729ac8bb468804e1e3d49eb94a9bd09b2d18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133213912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa1f8f79d81aad715172ef88b993ef7e1e623f6bc748fa9237fe6bce5d21fc7`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:53:17 GMT
ENV OTP_VERSION=27.3.4.16 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 00:53:17 GMT
LABEL org.opencontainers.image.version=27.3.4.16
# Tue, 25 Aug 2026 00:53:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="b945362f125ecdba4281723595f08716808bafd9137ad153f12e1db917ce8517" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:17 GMT
CMD ["erl"]
# Tue, 25 Aug 2026 01:54:06 GMT
ENV ELIXIR_VERSION=v1.20.3 LANG=C.UTF-8
# Tue, 25 Aug 2026 01:54:06 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="ff22a894b130631443db1a193b4e8cb4762f697128566e43da848fd16c3777bd" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:54:06 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815035cfd62f44a3ca8a9b1cd96b4630a98a12a297596fd6fb3cc7f19dd45b27`  
		Last Modified: Tue, 25 Aug 2026 00:53:32 GMT  
		Size: 76.1 MB (76106820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd23c376335875dca5ca661b090492ad21640c5fe4ae2cd2ac3f3d9e93154aa`  
		Last Modified: Tue, 25 Aug 2026 01:54:16 GMT  
		Size: 8.6 MB (8609730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:cc29bd41ee0b4086cbcb362f4eff37e15e1f1b65135e0a61f2aabbaa7012184d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c025f66ce67b3a594d6237fcdc2e3842d5106b61f325e721a83f6d3ff3a4cdd9`

```dockerfile
```

-	Layers:
	-	`sha256:208c73824e6d532ec254e5068ae3238fd07f66c54fb49aa59b9af4d8136bb80a`  
		Last Modified: Tue, 25 Aug 2026 01:54:16 GMT  
		Size: 3.8 MB (3831920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b3d8aecaa93006e828b6719af1dedab2b18630321ce87a239455fef0df0aaa9`  
		Last Modified: Tue, 25 Aug 2026 01:54:16 GMT  
		Size: 9.7 KB (9747 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:cb2885a0151ffa523ddf38b022795493d061f53c719d307bf8469de104972fe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118025844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5faff6e68c56b39e16b7822d83eac241874e3570a3bb2a0de72078e3a2def1b5`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:35:25 GMT
ENV OTP_VERSION=27.3.4.16 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 01:35:25 GMT
LABEL org.opencontainers.image.version=27.3.4.16
# Tue, 25 Aug 2026 01:35:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="b945362f125ecdba4281723595f08716808bafd9137ad153f12e1db917ce8517" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:35:25 GMT
CMD ["erl"]
# Tue, 25 Aug 2026 02:52:46 GMT
ENV ELIXIR_VERSION=v1.20.3 LANG=C.UTF-8
# Tue, 25 Aug 2026 02:52:46 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="ff22a894b130631443db1a193b4e8cb4762f697128566e43da848fd16c3777bd" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:52:46 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f872012334243a65152a5ef561b43ba6f81699713158acf27e8f20a4edd46c`  
		Last Modified: Tue, 25 Aug 2026 01:35:39 GMT  
		Size: 65.2 MB (65213811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3748813bd03a052d585e61966a8c58c02f5a58641f5aac74e6a4cae16be78d`  
		Last Modified: Tue, 25 Aug 2026 02:52:54 GMT  
		Size: 8.6 MB (8608909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:a01f2b4c224c65d47ddfb0eb3c16a3cbb4cbde5dd055a129d868a725d461c859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3843964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1c71c029634a712ca402178d301767896257d3c93be5b079495a86d5333b82`

```dockerfile
```

-	Layers:
	-	`sha256:6c3ff6872204e01ad7c5c091977208e566c6bdf41a233f54ce823a276e2d79af`  
		Last Modified: Tue, 25 Aug 2026 02:52:54 GMT  
		Size: 3.8 MB (3834145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a41fe660089325f154c9c56096e9ee8e394d5ddfe3792c03cf8e245a83b30c8d`  
		Last Modified: Tue, 25 Aug 2026 02:52:54 GMT  
		Size: 9.8 KB (9819 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:e844355172f15e9da30229347cbc38a854e66058f31a38590db452375faad851
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.8 MB (130845098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63657f0b6634d8c59c1e2c6fc960d4dbf709d0c2b34804d62a4dbbbbc6923197`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:55:39 GMT
ENV OTP_VERSION=27.3.4.16 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 00:55:39 GMT
LABEL org.opencontainers.image.version=27.3.4.16
# Tue, 25 Aug 2026 00:55:39 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="b945362f125ecdba4281723595f08716808bafd9137ad153f12e1db917ce8517" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:55:39 GMT
CMD ["erl"]
# Tue, 25 Aug 2026 01:57:52 GMT
ENV ELIXIR_VERSION=v1.20.3 LANG=C.UTF-8
# Tue, 25 Aug 2026 01:57:52 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="ff22a894b130631443db1a193b4e8cb4762f697128566e43da848fd16c3777bd" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:57:52 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d53ced0929d69f232006c8b2dcc5eb9e202bcfc1373e778ca8aec85db3107f3`  
		Last Modified: Tue, 25 Aug 2026 00:55:55 GMT  
		Size: 73.9 MB (73851895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3832c8563ed8b8279a91e7ee50d6131c030a454cd56cfdb0572dc00de78e01d4`  
		Last Modified: Tue, 25 Aug 2026 01:58:02 GMT  
		Size: 8.6 MB (8609554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:a8b81f7f3bc34e3cec4e5fb367c175986da114c03437b4d99e011c75e91a6ae9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3842008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932f3337c5ef58c618c7c5959622410217315e1a6d4acb02e12c86980e298266`

```dockerfile
```

-	Layers:
	-	`sha256:9eedd5323782b942acb9bf0944ff65bbb0507b1fc0d941b1b6a1d61a749e77f5`  
		Last Modified: Tue, 25 Aug 2026 01:58:01 GMT  
		Size: 3.8 MB (3832169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:047fbdf73440a23eccad674ba1755e7914be956ab519d09fe99b441b9eca2321`  
		Last Modified: Tue, 25 Aug 2026 01:58:01 GMT  
		Size: 9.8 KB (9839 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; 386

```console
$ docker pull elixir@sha256:7738227dc62a3f95b0f6c2955aeb4c20fe2290b173863182033983c115111461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.4 MB (124363381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f96e3490ca042c1595a0b01e7188a41f69d68f70ed57502a6cc5668dfa8bfd6`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:53 GMT
ENV OTP_VERSION=27.3.4.16 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 00:52:53 GMT
LABEL org.opencontainers.image.version=27.3.4.16
# Tue, 25 Aug 2026 00:52:53 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="b945362f125ecdba4281723595f08716808bafd9137ad153f12e1db917ce8517" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:53 GMT
CMD ["erl"]
# Tue, 25 Aug 2026 01:54:53 GMT
ENV ELIXIR_VERSION=v1.20.3 LANG=C.UTF-8
# Tue, 25 Aug 2026 01:54:53 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="ff22a894b130631443db1a193b4e8cb4762f697128566e43da848fd16c3777bd" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:54:53 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8345de6553120c5f37bb8ac3ebc82bec0fd26fbf6e913d9d151604203435f6`  
		Last Modified: Tue, 25 Aug 2026 00:53:07 GMT  
		Size: 66.3 MB (66268857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40665db83949012742dee12236844091461ed4c749c8574a6a94bd0dc24a779d`  
		Last Modified: Tue, 25 Aug 2026 01:55:01 GMT  
		Size: 8.6 MB (8609128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:3aa050d9b5835bfdebe154fc5f7d628d2e83e4a639664a9afb2ec9c23451f58c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef09436957ca644ed82deb9a2fa8e92aed0f10c231abe8b8506d83df1b89aa84`

```dockerfile
```

-	Layers:
	-	`sha256:2dabf9bdd324c6658d4b9f4c900415aae30389dd66c43d4de334c89780005b5c`  
		Last Modified: Tue, 25 Aug 2026 01:55:01 GMT  
		Size: 3.8 MB (3829086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b634a017b1fcaf52ebaf8d3eac18ac1338f1894f5e93133cd02905494cc8e2d`  
		Last Modified: Tue, 25 Aug 2026 01:55:00 GMT  
		Size: 9.7 KB (9720 bytes)  
		MIME: application/vnd.in-toto+json
