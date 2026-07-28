## `erlang:28-slim`

```console
$ docker pull erlang@sha256:4be225d938846559927766226982dc41109407f44b7b31f6f54a50de881cff46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `erlang:28-slim` - linux; amd64

```console
$ docker pull erlang@sha256:5fb2b7f2f789fdde4fdbe1424f4481712b56d6131be8e9b3fcc4d7342b9687c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128288662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d501ef53b39c28f0f268077da79b38303873efae1c1376dcd179d22b58e088`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 28 Jul 2026 20:56:49 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Tue, 28 Jul 2026 20:56:49 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Tue, 28 Jul 2026 20:56:49 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:56:49 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9bedee37ccdd54d955149c8bc4333ed3691a9f4f31fc1c01fe9e6bec75057f`  
		Last Modified: Tue, 28 Jul 2026 20:57:04 GMT  
		Size: 79.0 MB (78976090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:c46de226abb2776754400bd7866887c7b93998e6e38c4298503e4226d9232da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3297469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969e283a5693ae537d805403f145467806e36d2e001384b157c2ec6b4ae5c1c0`

```dockerfile
```

-	Layers:
	-	`sha256:73918bafb373d7fc0e87d886d304429638de1a1341eb0c73d96870702cb739f6`  
		Last Modified: Tue, 28 Jul 2026 20:57:01 GMT  
		Size: 3.3 MB (3283832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82885823052ead8cf183bd99fcc85cccd5b56d867d42e77de83ece8818a15130`  
		Last Modified: Tue, 28 Jul 2026 20:57:01 GMT  
		Size: 13.6 KB (13637 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:cbc6664461e1d248d1a76237e4da342478a24511ce88acfc3daeaa05570ea615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116956104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35bc168efd4b08ee3ff77049ebf29faa8f4c971128b6c06e28bb2290bd615f0`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 28 Jul 2026 20:55:03 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Tue, 28 Jul 2026 20:55:03 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Tue, 28 Jul 2026 20:55:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:55:03 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1ad99c59586600a5647dd3e6e12fc8c9b5e12a7e7f8e1bd39b7df82072afb746`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 47.5 MB (47489966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a371c364242a8c3149a3485d45f9c46ce780910d39d1ac1bc36de3df3943099`  
		Last Modified: Tue, 28 Jul 2026 20:55:18 GMT  
		Size: 69.5 MB (69466138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:cd7b2a3b6a41bd92942abe5d592a404759ae27c30b4bb1ed17d36d0da0c76674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f512dcb5663e84a206e7579c2154fbca77eb62cf8b13801b627549115c013b6`

```dockerfile
```

-	Layers:
	-	`sha256:55146e02d0b726529198d6c01136e0900ee5f75009a4cb3d6cdbb5066a543f69`  
		Last Modified: Tue, 28 Jul 2026 20:55:15 GMT  
		Size: 3.3 MB (3286799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07458d2d25d2c7aaa71652b1d74896ea54472e623f0aac35aa6ee7b3fae1a7d9`  
		Last Modified: Tue, 28 Jul 2026 20:55:15 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:221f83d9a08e1d738af401162b59290a18154515db0e3d7e4dfabd80bdb91c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114792747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac010c7dc47e318c66d16e84d2c5532e7d631422cdeb7dc30da25a97f85dc2c`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 28 Jul 2026 20:57:21 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Tue, 28 Jul 2026 20:57:21 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Tue, 28 Jul 2026 20:57:21 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:57:21 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1d8dcf695fa507a9d4cb0ef3ecaeb24a772f22a09a5795746304d8601933b1dc`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 45.7 MB (45743729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f271e0518097a1370e4910a15939e78a3f76bcb4395de63f7f0c132bdc611f8`  
		Last Modified: Tue, 28 Jul 2026 20:57:35 GMT  
		Size: 69.0 MB (69049018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:21c4506dabc9f5909a68680c760956cabcef16bc86ccbb53e1f0b895d43dd300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3298965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61a96b71f8076b32bc209de26280422cd9d9c1d5b01eb3cae571134407ae307`

```dockerfile
```

-	Layers:
	-	`sha256:fc7e757b0766eb37662c9f5e0a5d418ce3e8307c943f625fbae95aeac19f348c`  
		Last Modified: Tue, 28 Jul 2026 20:57:33 GMT  
		Size: 3.3 MB (3285248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39ed0c588046032ea3f465fe5488f212c08bf5ccb0e433cc1db6c39cbca32628`  
		Last Modified: Tue, 28 Jul 2026 20:57:33 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:356aefd162b192624c1c5a53c3df0b0b58184b19c4d8cff4e2c901949790a426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127190598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888126bb7da092ac05749b678148febc417a8762d783add6e75a87b4249eec7c`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 28 Jul 2026 20:55:28 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Tue, 28 Jul 2026 20:55:28 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Tue, 28 Jul 2026 20:55:28 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:55:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832161792516353769c925886063c841c25173b7957412ec8e19daea26ddb67c`  
		Last Modified: Tue, 28 Jul 2026 20:55:43 GMT  
		Size: 77.5 MB (77516414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:769c04ba9d177990be57d0d9e4f76a838b6f9089864f0a73f3e3aee6df5f5d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3298458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be28d6c77b202d0343b3002885026fdd3642e215a36bb80d4263433d5629ff5`

```dockerfile
```

-	Layers:
	-	`sha256:af551a07cbe54afd84c27a7f955f7d298574c51829297d664f6f48185210aedc`  
		Last Modified: Tue, 28 Jul 2026 20:55:41 GMT  
		Size: 3.3 MB (3284718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aafaca10b69bdaa1a54fa6aed684411e3282314c15f4d3b58f9c9cd5a9f58f4d`  
		Last Modified: Tue, 28 Jul 2026 20:55:41 GMT  
		Size: 13.7 KB (13740 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; 386

```console
$ docker pull erlang@sha256:5b7b19941bb10d5df7c951f6ad6a107030c2c8bb8bd809da737902264f86f66b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120303790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:355cb9b9603b9ec1c3be39ec9e13090340e7e421ced189a417235f7ace55fc89`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 28 Jul 2026 20:55:02 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Tue, 28 Jul 2026 20:55:02 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Tue, 28 Jul 2026 20:55:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:55:02 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd52031bdb8b6c5e4c26223db130c554763843ca865f16ce11acb830e7f06e3d`  
		Last Modified: Tue, 28 Jul 2026 20:55:15 GMT  
		Size: 69.5 MB (69472300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:bfc97507ec9423dec0dade88ad30dc4b9195d1257e6a699303ffa43e10331990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3294612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b071c4d9b5476964e8fad060106d3922a4b0347f12c270424a06e2f48720792`

```dockerfile
```

-	Layers:
	-	`sha256:6a0d35e77d7b76c4fcf5de0ad354cc7d3ac9efe0c55464028f437146caaefc5e`  
		Last Modified: Tue, 28 Jul 2026 20:55:13 GMT  
		Size: 3.3 MB (3281007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:474a6fb1527e87e02ad28cb19686bdd8e2fe0f02096983047cf0531de9f10be0`  
		Last Modified: Tue, 28 Jul 2026 20:55:12 GMT  
		Size: 13.6 KB (13605 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:072a863e3d376d6e07bc984360ab5ff1fd82c53ef33dc74d532c3aa1259ae2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123551094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39e63f780c628f608904113c731df09c6c1337c9ecb6836457e0fd8fb2b5f82e`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 28 Jul 2026 21:04:08 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Tue, 28 Jul 2026 21:04:08 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Tue, 28 Jul 2026 21:04:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:04:08 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65157dd6a8e1cceb4464ce773a5506e86f3d3d110be8b06203740817d1eff275`  
		Last Modified: Tue, 28 Jul 2026 21:04:32 GMT  
		Size: 70.4 MB (70417083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:86a1c9e6fef5f71af21e3a3e865fbe59b20ba25f034c53ef7433f8a104d1e707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3301098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f1468ed186208493effc0599404703ae3911d3387513e6ecd77f4510ef521c`

```dockerfile
```

-	Layers:
	-	`sha256:200d6b38a447ee16169a0c059008fe5da013b9d79c6092d8182f5a6752614497`  
		Last Modified: Tue, 28 Jul 2026 21:04:30 GMT  
		Size: 3.3 MB (3287417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62ab9564fae7371b67857059b091bc160a3d43eb527a2126f50d8441444889ff`  
		Last Modified: Tue, 28 Jul 2026 21:04:30 GMT  
		Size: 13.7 KB (13681 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; s390x

```console
$ docker pull erlang@sha256:1a70848695325bf01362a9c755b34ca61580ecd24262c1ce5f9488839e86d834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119682621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945e1b543be3ffc30d15323a1b5d3ea3b4bd43e882427cc8e6ad9ef423acdb18`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:11:09 GMT
ENV OTP_VERSION=28.5.0.3 REBAR3_VERSION=3.27.0
# Tue, 14 Jul 2026 03:11:09 GMT
LABEL org.opencontainers.image.version=28.5.0.3
# Tue, 14 Jul 2026 03:11:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="63c56a954fe6134f283a01312ebefad00fb0f3ac7d7d42062ca3aa8e92ccd21d" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:11:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3f4c0854bc2c5857e0df59ed1d1878b69d510fc9714eeb984ac639d65df615`  
		Last Modified: Tue, 14 Jul 2026 03:11:29 GMT  
		Size: 70.3 MB (70300913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:7fd6ac03233a61bde2644610a5e8885f6a22d81d267d547f162ce35fc82f6f1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3298891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e03ed99a206827cad02df3c63db9ad6f142afef5e6c52613f61ab091b0957c9`

```dockerfile
```

-	Layers:
	-	`sha256:27244b15bb4fbe8a2f73b0a5fdb313ba886079a917fde9a0a6d968e5ca930b15`  
		Last Modified: Tue, 14 Jul 2026 03:11:27 GMT  
		Size: 3.3 MB (3285255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94f5e52398673c63d5581afac6022c4e1ad483d77fb29d4a71374eca118fcf94`  
		Last Modified: Tue, 14 Jul 2026 03:11:27 GMT  
		Size: 13.6 KB (13636 bytes)  
		MIME: application/vnd.in-toto+json
