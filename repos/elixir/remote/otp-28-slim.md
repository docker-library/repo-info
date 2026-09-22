## `elixir:otp-28-slim`

```console
$ docker pull elixir@sha256:4482642f4ce68874bd72e5fda5325ac67611aaab8a5ff86333b3a855477c8e2c
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

### `elixir:otp-28-slim` - linux; amd64

```console
$ docker pull elixir@sha256:dda991c26abff88558d2727d00e3a8e5590a432f0ddfd219d95940ed921473c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (137027206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9d3578d8ae51b57f7e0ac47f7473339bdb2ccae57a3c035e6bc29070fd8d1a`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Tue, 22 Sep 2026 19:11:49 GMT
ENV OTP_VERSION=28.5.0.7 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 19:11:49 GMT
LABEL org.opencontainers.image.version=28.5.0.7
# Tue, 22 Sep 2026 19:11:49 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ddf17db6d3e9b7a7cfac0d72238ddc8ea040fedc5e3dfad82fc90675319d6c93" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:11:49 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 19:49:41 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 19:49:41 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:49:41 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b298effbc7dfb5db8a35a89325eb2823b195fb359a94fe5c252488c12b3fa59a`  
		Last Modified: Tue, 22 Sep 2026 19:12:04 GMT  
		Size: 79.0 MB (79041116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d80d332053a443c023e48be7b4c383bb56d7587dcde86ecc01b4313431b912d`  
		Last Modified: Tue, 22 Sep 2026 19:49:49 GMT  
		Size: 8.6 MB (8606391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:08a54fc2b59aee376c4382be0b638259831ea302e9a93da55093b732a0c5f8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497780c4300764b8b36f9f80a1fac8249e17f72d0ac2cb33a64ef6e72e4f8da4`

```dockerfile
```

-	Layers:
	-	`sha256:c6572336a984842f0ee7f6adce649ddc994b7a2f9fc6a96cba4376ff2372cc38`  
		Last Modified: Tue, 22 Sep 2026 19:49:49 GMT  
		Size: 3.3 MB (3300819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82823d52543f63c31894d9e48348618d5cea9e31aa9190d7a7293f035bdcfe52`  
		Last Modified: Tue, 22 Sep 2026 19:49:49 GMT  
		Size: 9.7 KB (9746 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:9653ad307bd8936b9d23bc255173524b41cf162ec52ac65cf092b9b34597ba14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123535348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cefd0d073344b7295d1957b32e5e237e6b25f3c47d6d34fd5b9e3a6e7c1086d`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Tue, 22 Sep 2026 18:52:11 GMT
ENV OTP_VERSION=28.5.0.7 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 18:52:11 GMT
LABEL org.opencontainers.image.version=28.5.0.7
# Tue, 22 Sep 2026 18:52:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ddf17db6d3e9b7a7cfac0d72238ddc8ea040fedc5e3dfad82fc90675319d6c93" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:52:11 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 19:11:55 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 19:11:55 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:11:55 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:d2a96b81f7dd856e671dd780163738168310a9b621a2e674fe3f0d153d5d2c28`  
		Last Modified: Sat, 19 Sep 2026 00:03:37 GMT  
		Size: 45.8 MB (45804267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fad903735a74c4637eabd806c62b4661559460f75a396c9115f75e3bd3e9622d`  
		Last Modified: Tue, 22 Sep 2026 18:52:25 GMT  
		Size: 69.1 MB (69125132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270879a1437c5ef5f7531fb1e2e31b97010d159ed14c5cdf9c8e0362b1780af5`  
		Last Modified: Tue, 22 Sep 2026 19:12:03 GMT  
		Size: 8.6 MB (8605949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:1b4ca14fee18657207e8d75c8b9d9d1578fd078142ccb2600c413049cae57392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3312045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6280e6083e269af7b5296b525066fc1f7dd5228e9c1a00a516bfe2ec2136e0`

```dockerfile
```

-	Layers:
	-	`sha256:2b3017a82e7a9eb3e3600da1cc84f06e871f19ab2fe1ab38b67d501edcd75d64`  
		Last Modified: Tue, 22 Sep 2026 19:12:03 GMT  
		Size: 3.3 MB (3302227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63997a62438167e52090f00c0a61e15b3d6151f5d12f075e4281021f8d54163f`  
		Last Modified: Tue, 22 Sep 2026 19:12:03 GMT  
		Size: 9.8 KB (9818 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:7b68a733c266cfc8b6d6eaca91da96e4da23f9e0ed76e59b35e76cce2260a2d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135937942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a79ae7fd26aee6af4607aea26e382e2b7b9ed83215c59f20707a942560e994fc`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Tue, 22 Sep 2026 19:53:04 GMT
ENV OTP_VERSION=28.5.0.7 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 19:53:04 GMT
LABEL org.opencontainers.image.version=28.5.0.7
# Tue, 22 Sep 2026 19:53:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ddf17db6d3e9b7a7cfac0d72238ddc8ea040fedc5e3dfad82fc90675319d6c93" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:53:04 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 20:01:03 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 20:01:03 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 20:01:03 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae038b3fd810420100229ac9ab5e139ccc63e5d1258dd1bf43537fe84238ec1`  
		Last Modified: Tue, 22 Sep 2026 19:53:19 GMT  
		Size: 77.6 MB (77582818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657b75478b578fbe8a6bb3f9fd540638d93b5e9ad10ed4c1e40b7ef44c2a134a`  
		Last Modified: Tue, 22 Sep 2026 20:01:12 GMT  
		Size: 8.6 MB (8606288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:c5acac82a5a03279b88956d697879fa1546d2abca53965c3a69d14f35d19acc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590c2d23e0c2f74a6d7350dd560b75b4067fe985f55862422f35447d73c8a7ff`

```dockerfile
```

-	Layers:
	-	`sha256:83e42eb4ce32fd33ed3553b30ccffb68e38ead636ece0afa7745a0a79b6cb65d`  
		Last Modified: Tue, 22 Sep 2026 20:01:12 GMT  
		Size: 3.3 MB (3301693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae8d3672e0d00d2df856f783343168f4aeeabdfb4b216640bf80c91d815ead50`  
		Last Modified: Tue, 22 Sep 2026 20:01:11 GMT  
		Size: 9.8 KB (9838 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28-slim` - linux; 386

```console
$ docker pull elixir@sha256:353eb3c8da718b9abb4c81bbc5d1c5b02a7dc1317604fa901f06693bda400a4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129029609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c72a81f64a26974275de76c7bb034b2da2dabeb5d4319f0d99edf22e9ca15b1`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Tue, 22 Sep 2026 18:51:26 GMT
ENV OTP_VERSION=28.5.0.7 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 18:51:26 GMT
LABEL org.opencontainers.image.version=28.5.0.7
# Tue, 22 Sep 2026 18:51:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ddf17db6d3e9b7a7cfac0d72238ddc8ea040fedc5e3dfad82fc90675319d6c93" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:51:26 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 19:16:01 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 19:16:01 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:16:01 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8990176ba6e4ef81b17fe7bc0274e8c8dc7b3efb5b8b3ed4e262f7dcdf0c5835`  
		Last Modified: Tue, 22 Sep 2026 18:51:40 GMT  
		Size: 69.5 MB (69530846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd083814615aeeefdbd319403d3b0447aa5349d1a126b800b91f5f9a8b52f46d`  
		Last Modified: Tue, 22 Sep 2026 19:16:09 GMT  
		Size: 8.6 MB (8606047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:c92154b1261feded61700ad7970820dec1cffb3b93d1e16fe0e3aeb8f84ef583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3307719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e00977fb9ce77c8006bf38102eec30ad727b667509d13ac285e976df2e04d6e9`

```dockerfile
```

-	Layers:
	-	`sha256:9859f9190ca84c2c914afd4a38db87d9bf0392843bdd750d58b3aa6ef6aa2780`  
		Last Modified: Tue, 22 Sep 2026 19:16:09 GMT  
		Size: 3.3 MB (3298000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66b4ca51ab9321fc36f799897e309652a4f1ec4c1be22d3825f68f9d1836cdc0`  
		Last Modified: Tue, 22 Sep 2026 19:16:09 GMT  
		Size: 9.7 KB (9719 bytes)  
		MIME: application/vnd.in-toto+json
