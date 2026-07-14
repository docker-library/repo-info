## `erlang:28-slim`

```console
$ docker pull erlang@sha256:04a8818ce681a65c6f4d43ac66825afa16b9f06320236a560d63c8547a6479e9
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
$ docker pull erlang@sha256:ee6e3a8782b991b484959707147427ad56995ccbff5f2af0bdcdbd56c72ffb38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128277073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13491b2a16f99010714d89755d28b2bb7352ad8b6beb31e716988d677dc4b4a`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:14 GMT
ENV OTP_VERSION=28.5.0.3 REBAR3_VERSION=3.27.0
# Tue, 14 Jul 2026 01:46:14 GMT
LABEL org.opencontainers.image.version=28.5.0.3
# Tue, 14 Jul 2026 01:46:14 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="63c56a954fe6134f283a01312ebefad00fb0f3ac7d7d42062ca3aa8e92ccd21d" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:14 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48c05fddfa2b0fdcde0a2c8cf63d95800c29d0009e9ccb01f01d8158b1fab52`  
		Last Modified: Tue, 14 Jul 2026 01:46:27 GMT  
		Size: 79.0 MB (78964501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:e082c3ea1dffed3b5c6072a457b1be7be44b317ab9b2798acd7e78a0b0fd117d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3297451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb5c937931e638135a13ccdb75f32f53d782a5efe915df83b77edfd9149864ea`

```dockerfile
```

-	Layers:
	-	`sha256:ca894f521aa8d0da6cc49ce4db124dfe5b02033a1a80c63bfaa39daeac966963`  
		Last Modified: Tue, 14 Jul 2026 01:46:25 GMT  
		Size: 3.3 MB (3283814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf9598f33338799e1f13f7d18cd2404d696bb3f62cabe48a68bb804fedce7b11`  
		Last Modified: Tue, 14 Jul 2026 01:46:25 GMT  
		Size: 13.6 KB (13637 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:a344bce1f52a75ce4889fdf6aa14faf44e160f94f9fe4313458b9be66a54929f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116950996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9d50702faddf43c3765c1760d4b786ecb3324de40e91435d22dbf0ac92178a`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:28:12 GMT
ENV OTP_VERSION=28.5.0.3 REBAR3_VERSION=3.27.0
# Tue, 14 Jul 2026 02:28:12 GMT
LABEL org.opencontainers.image.version=28.5.0.3
# Tue, 14 Jul 2026 02:28:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="63c56a954fe6134f283a01312ebefad00fb0f3ac7d7d42062ca3aa8e92ccd21d" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:28:12 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1ad99c59586600a5647dd3e6e12fc8c9b5e12a7e7f8e1bd39b7df82072afb746`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 47.5 MB (47489966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aed9cdf78d9e6ff42d3c12bcd03f275547402c69570de9200b41402fcff9014`  
		Last Modified: Tue, 14 Jul 2026 02:28:26 GMT  
		Size: 69.5 MB (69461030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:9e6d4d92f0aee852c2a7aa71e31583ce0bac72c5951f6dfe4a650e437847ed4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69251c775b92ac83f717a8672df5b84470de01f4248d4853d0c4c198de58a430`

```dockerfile
```

-	Layers:
	-	`sha256:d85bc7b003f028e5d7d6b9695b7d992ba7beb4da67c3d680373762ed528a8fe8`  
		Last Modified: Tue, 14 Jul 2026 02:28:24 GMT  
		Size: 3.3 MB (3286781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39c2e8523c43b7981897a1389e6938dd7bff23308c5f2c66b9abd97f5be60fdd`  
		Last Modified: Tue, 14 Jul 2026 02:28:24 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:8a8e8d8e4df096df5784553deff0c0e79158fbc77fe0553d284e559314f77d35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114776015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a095a8c161bea9b372f9d522972e689ab2e10557fe9a7604485d6bcc66a37f`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:38:32 GMT
ENV OTP_VERSION=28.5.0.3 REBAR3_VERSION=3.27.0
# Tue, 14 Jul 2026 02:38:32 GMT
LABEL org.opencontainers.image.version=28.5.0.3
# Tue, 14 Jul 2026 02:38:32 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="63c56a954fe6134f283a01312ebefad00fb0f3ac7d7d42062ca3aa8e92ccd21d" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:38:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1d8dcf695fa507a9d4cb0ef3ecaeb24a772f22a09a5795746304d8601933b1dc`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 45.7 MB (45743729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6059c031b3d1739c7f3cddd037d3d705ba202dcb494d182951c379fa71fad360`  
		Last Modified: Tue, 14 Jul 2026 02:38:45 GMT  
		Size: 69.0 MB (69032286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:27c7ef180e447401d02ce57630b1e53e69636e37e50c256937bd0c859b9cca74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3298947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc49666eda3aa18c45c49b8f9f7571738c941be1900a4e9a4261112d32bd164`

```dockerfile
```

-	Layers:
	-	`sha256:c17fdec20a9000ae57e2fd1981f2fbda91e42ef6200cda73aa8e30d2e9dceb62`  
		Last Modified: Tue, 14 Jul 2026 02:38:44 GMT  
		Size: 3.3 MB (3285230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd2f27f9f83e5f230a9c56f4fc1c71ecd4283fa68a952f7f9d11b46368d9ab77`  
		Last Modified: Tue, 14 Jul 2026 02:38:43 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:bc02f1f8594ecb68944d6cae468aa7fe6a56102c1ffec7eaf3765f34b12b8147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127183385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6056e36c630589053f669c6ec37a73ece5e5c2e3351231d9338a1babd6ece25`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:49:42 GMT
ENV OTP_VERSION=28.5.0.3 REBAR3_VERSION=3.27.0
# Tue, 14 Jul 2026 01:49:42 GMT
LABEL org.opencontainers.image.version=28.5.0.3
# Tue, 14 Jul 2026 01:49:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="63c56a954fe6134f283a01312ebefad00fb0f3ac7d7d42062ca3aa8e92ccd21d" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:42 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ceb3994f48c8ac08037da1be9945d21e1c20bfe8dcbb021414b627a9585af6`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 77.5 MB (77509201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:e3953df7c9fcb6ae6ab0787f41990ef4d5bc3128ac8cb579df53e4f081fbc94e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3298441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e4454d630c5513d2f2e0c5ccafe1dbebfbc0866aa7d555f368ea898fa862d8`

```dockerfile
```

-	Layers:
	-	`sha256:6153a393b9701a3320d32218ccf63b6b9ccf26c4cdb379ca2f66278ed6ced4e0`  
		Last Modified: Tue, 14 Jul 2026 01:49:56 GMT  
		Size: 3.3 MB (3284700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76e3292686212151731cfebcbdb5c4e35984b85b2e96d778f01d2d981ee3e41d`  
		Last Modified: Tue, 14 Jul 2026 01:49:55 GMT  
		Size: 13.7 KB (13741 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; 386

```console
$ docker pull erlang@sha256:f37d151d546fc704c429474cffca30da40b9f77861b6fae98e4eb15e66121f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120292982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba4aca589261ecbde92e889d9d85560ca2d98bab3cb9004de6f47331b299347`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:49:15 GMT
ENV OTP_VERSION=28.5.0.3 REBAR3_VERSION=3.27.0
# Tue, 14 Jul 2026 01:49:15 GMT
LABEL org.opencontainers.image.version=28.5.0.3
# Tue, 14 Jul 2026 01:49:15 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="63c56a954fe6134f283a01312ebefad00fb0f3ac7d7d42062ca3aa8e92ccd21d" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:15 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f36050eb8a1e9639ffd24f149dd0370fe103851739b3cda6cea5fddef5a443da`  
		Last Modified: Tue, 14 Jul 2026 01:49:29 GMT  
		Size: 69.5 MB (69461492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:326ae90fb66a885c2c3545a96ae137833f76c66f7f08dcca23f3c03a231241f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3294594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62f4525d79736cfa3e4028f3b27e56c7aaba46a49d0fb97d1b463c4d7a5fedc`

```dockerfile
```

-	Layers:
	-	`sha256:dda250631007a7686a099e35600b902b804b5111753f7db98714812c29a9e0db`  
		Last Modified: Tue, 14 Jul 2026 01:49:27 GMT  
		Size: 3.3 MB (3280989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48f4497eabdfb820955015527d21aea9a085fe21900a5571319762d47609a5e0`  
		Last Modified: Tue, 14 Jul 2026 01:49:26 GMT  
		Size: 13.6 KB (13605 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:d607cb416974846e49189d6d15b5a5302f2a2417cf028d75cd33317fa0ef5a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123545152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f562db8fd7d70e012b16c75500104efd6386da847c34309d4711b7602e3e56`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:55:31 GMT
ENV OTP_VERSION=28.5.0.3 REBAR3_VERSION=3.27.0
# Tue, 14 Jul 2026 03:55:31 GMT
LABEL org.opencontainers.image.version=28.5.0.3
# Tue, 14 Jul 2026 03:55:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="63c56a954fe6134f283a01312ebefad00fb0f3ac7d7d42062ca3aa8e92ccd21d" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:55:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9b9f0b6d2f314356d6e6bbbd341c1e5c0dcd9ee1abc7b94d22a7c5d83bc5ca`  
		Last Modified: Tue, 14 Jul 2026 03:56:25 GMT  
		Size: 70.4 MB (70411141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:3604f5a4cec6abd273faf12da2ce911bbc1f9b4ae4c3768c82e8487f5d01efe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3301079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93c75974c11d9b2a7252d457e8fe22ed21c8de93e68cb101aa9a30d7b484417`

```dockerfile
```

-	Layers:
	-	`sha256:34f98fda6ccb4bb2205d901a323c4dacc2b4d6d3e768e059f8d93066d327f47c`  
		Last Modified: Tue, 14 Jul 2026 03:56:23 GMT  
		Size: 3.3 MB (3287399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26fd5c6858f27dedcca0cc381bf23c822d017af21b14bf5420538fc67fa7aae4`  
		Last Modified: Tue, 14 Jul 2026 03:56:23 GMT  
		Size: 13.7 KB (13680 bytes)  
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
