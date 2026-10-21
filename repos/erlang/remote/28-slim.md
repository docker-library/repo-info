## `erlang:28-slim`

```console
$ docker pull erlang@sha256:6a91ac5e52a743c92fba848581734d5bfc4fadb6766978ebf187ee42d522741f
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
$ docker pull erlang@sha256:e2518db0156496d6fd8ed9aedc11508718bf38e9547298ab39952ebbb16c068a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128443395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d052d08b142fc11c09b9e3b09bacc68934a09ca8608e3e82a86f551a071e24a`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:35 GMT
ENV OTP_VERSION=28.5.0.8 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 00:48:35 GMT
LABEL org.opencontainers.image.version=28.5.0.8
# Wed, 21 Oct 2026 00:48:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="8a696e15bcbe5d57197b1f4c03c92d415f9fd9af70f9222a05911c8a5463cba6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:35 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5f4757cd44a57e16c1d89d22ea10e788ff6b71879c92060f3c9aea586e52fe`  
		Last Modified: Wed, 21 Oct 2026 00:48:50 GMT  
		Size: 79.0 MB (79049773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:5ec457ce9cbc56b90fa8157eb9a9f9719b4d2255520b04a1160306e3a18d6732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3307432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc62e59779e92bf333c3cde5eea75f04e2c8b07f01aede383a277c92a429410`

```dockerfile
```

-	Layers:
	-	`sha256:e899563f0e82b1162bfa08f699a781fde3f3a66b41e6bdbfb8eea41bb55ebb4f`  
		Last Modified: Wed, 21 Oct 2026 00:48:48 GMT  
		Size: 3.3 MB (3293795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7767f2d3683525e1b7e6eae1c75c5dc8b2f79d485a42533ac8acdea4c295ac23`  
		Last Modified: Wed, 21 Oct 2026 00:48:48 GMT  
		Size: 13.6 KB (13637 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:d83e1fd3eb4b3d4cf8c1bb7f81a90f0e2e5065ecae6d5e42497a6eb9b123630d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117115058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18478463ef3126828ae1e1a4b003c29ffc9a387f7b24929e7636178727d25363`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:53:26 GMT
ENV OTP_VERSION=28.5.0.8 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 00:53:26 GMT
LABEL org.opencontainers.image.version=28.5.0.8
# Wed, 21 Oct 2026 00:53:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="8a696e15bcbe5d57197b1f4c03c92d415f9fd9af70f9222a05911c8a5463cba6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:53:26 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:a7d42171331b896f009a1d89b03785bbf95d0d6603d81916619bf24f05194252`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 47.6 MB (47559893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32b000c23955ac0fcb19ec54b8015c42571f97203a5e02b5bdc7527a33fc3f4`  
		Last Modified: Wed, 21 Oct 2026 00:53:40 GMT  
		Size: 69.6 MB (69555165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:49a0c204743b3fb0563746babba3a6d74b57d1cb7737c20e0d75f7ed4f307844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2498b877ef3023a626772b96b6d123465c9c101635722cce16e021143b38be`

```dockerfile
```

-	Layers:
	-	`sha256:527db1cfc46a852aa065ebad176b3a1afa2e3bf348c1e1617288b3716113210e`  
		Last Modified: Wed, 21 Oct 2026 00:53:39 GMT  
		Size: 3.3 MB (3296762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7613426788f2e32e942b34bc264f59d7a1665e80c4d92448becd27e32b548405`  
		Last Modified: Wed, 21 Oct 2026 00:53:38 GMT  
		Size: 13.7 KB (13716 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:0028547ad4f6fb48c406d8650fc8f252ea12a9f6cbc115057d42cf92ac0c4eef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115077535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64fa78fa3e20aa6c6b1c7e8ef25ca406967e04d17657056120b7355a70cd6a0b`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:25:46 GMT
ENV OTP_VERSION=28.5.0.8 REBAR3_VERSION=3.27.0
# Wed, 14 Oct 2026 20:25:46 GMT
LABEL org.opencontainers.image.version=28.5.0.8
# Wed, 14 Oct 2026 20:25:46 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="8a696e15bcbe5d57197b1f4c03c92d415f9fd9af70f9222a05911c8a5463cba6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:25:46 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49cc21c491212de7ae794ca5deedbb42694b4cceda57fcc1e54d9945fc2440a7`  
		Last Modified: Wed, 14 Oct 2026 20:26:00 GMT  
		Size: 69.3 MB (69264271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:4233b13e0b073b953f89c477bf82f7b219d2caaa78ac75a928efa11118004dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc89c94cf05880e417b5303865044870787c24ab1892f954299e42934c98315`

```dockerfile
```

-	Layers:
	-	`sha256:605f89718f9355deba2f6c6efe0c552bf4d291b179af9d2fcea303eb8376f4e4`  
		Last Modified: Wed, 14 Oct 2026 20:25:58 GMT  
		Size: 3.3 MB (3295211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:708a9fd735876dc41edbd5c08b8e99195c19041014d0099692493d9879f62cc3`  
		Last Modified: Wed, 14 Oct 2026 20:25:58 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:2c5c2ad34f2bdc9a9eb78e1be4edd2ea1f968843827f3c9935e9d51462439f5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127354550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80265769aad0f9e5456f8592f9454be663bcdbba5116491ab2d01d0a901c12a`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:51:59 GMT
ENV OTP_VERSION=28.5.0.8 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 00:51:59 GMT
LABEL org.opencontainers.image.version=28.5.0.8
# Wed, 21 Oct 2026 00:51:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="8a696e15bcbe5d57197b1f4c03c92d415f9fd9af70f9222a05911c8a5463cba6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:51:59 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d73c83373bbdbe028cfc8e5687eebfe29a1604a90b69f88f15a8830fa966a2df`  
		Last Modified: Wed, 21 Oct 2026 00:52:14 GMT  
		Size: 77.6 MB (77592948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:99cdb3ccd372c124aeb3d879da54ece6d01f067362efd28c79c117175b72e5c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c56b3748c2382759e1197d9f005e9ed4c0fe0abed364eb150b637861826814`

```dockerfile
```

-	Layers:
	-	`sha256:44ee05153edf8e28ad5f0a528dc5e54d1e99a4d311040db5011bd12ea848e993`  
		Last Modified: Wed, 21 Oct 2026 00:52:12 GMT  
		Size: 3.3 MB (3294681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77b5419df086acda4cd8e50f3a66e9fc9a67432ebeac91b7e25640e719c24721`  
		Last Modified: Wed, 21 Oct 2026 00:52:12 GMT  
		Size: 13.7 KB (13741 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; 386

```console
$ docker pull erlang@sha256:e9f47ed4fb8288fde303ee24305f2bb35af9704530c80846c58eefc4f21520b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120598303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f6a2d5bcfd2dd06cdea24c742f84c93bda3894b2da7ec1084063b91afe6f76`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:24:32 GMT
ENV OTP_VERSION=28.5.0.8 REBAR3_VERSION=3.27.0
# Wed, 14 Oct 2026 20:24:32 GMT
LABEL org.opencontainers.image.version=28.5.0.8
# Wed, 14 Oct 2026 20:24:32 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="8a696e15bcbe5d57197b1f4c03c92d415f9fd9af70f9222a05911c8a5463cba6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:24:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d68decbf95971fe4820c42878377fe59a74dfe84ba237db41b3cb1ba8b78fa`  
		Last Modified: Wed, 14 Oct 2026 20:24:45 GMT  
		Size: 69.7 MB (69692207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:ea5b8b0448729f4575cabc4cdcc4311693676ae8b5830c21e151af034dd3e706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3304576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef6ec3467c83c865bcd02b8a1ff6d1747b451f2d6e4bff4511c5f822314afb8`

```dockerfile
```

-	Layers:
	-	`sha256:753d75437036bd8b02ee8e1460d263599c6efc399ed21b92437af23ff45a9224`  
		Last Modified: Wed, 14 Oct 2026 20:24:43 GMT  
		Size: 3.3 MB (3290971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7fe5f1f96a4ace297b4852593247bd48d073db6f0c92c9372cb0dff833e98d3`  
		Last Modified: Wed, 14 Oct 2026 20:24:43 GMT  
		Size: 13.6 KB (13605 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:dcacb7d2c9c64e75a13abeba473d5715db7e34cd733e8e67aac42f27b6eeefbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123858219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04192b543353dd124c49a3f6241b19b9c4190b6fe6c6552124189e59809d46eb`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:43:50 GMT
ENV OTP_VERSION=28.5.0.8 REBAR3_VERSION=3.27.0
# Wed, 14 Oct 2026 20:43:50 GMT
LABEL org.opencontainers.image.version=28.5.0.8
# Wed, 14 Oct 2026 20:43:50 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="8a696e15bcbe5d57197b1f4c03c92d415f9fd9af70f9222a05911c8a5463cba6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:43:50 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c25245c526d86c1891fa9ae2dc647f8f0bffa9f75ea91a6190f02e9d1412ab`  
		Last Modified: Wed, 14 Oct 2026 20:44:18 GMT  
		Size: 70.7 MB (70651095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:0c1845cda92697710d39df83d52c389174ad0fe11d6775fffed57115ed69ee37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f6540417b728e89137d9a8f5ec808b49227c3f90e2f6cc1b3bd9a3ff1906f56`

```dockerfile
```

-	Layers:
	-	`sha256:c8864107ff9c49137f7e6de3136aa2d63112a40184f25b7aed6138293cb6d9b0`  
		Last Modified: Wed, 14 Oct 2026 20:44:16 GMT  
		Size: 3.3 MB (3297378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:862e69ec2b5d3d0b5098151067d762354fd8feb5253f60de268895c2c1ac7b7f`  
		Last Modified: Wed, 14 Oct 2026 20:44:16 GMT  
		Size: 13.7 KB (13680 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; s390x

```console
$ docker pull erlang@sha256:e8304b06bfa57a97ddc991770739112e1b6fe28d12662fd6bdf967320d4218ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (119986284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a34ed69641735f68adfadc6ac7ee6627a87f73a58b15678fa6c3a45239a47d00`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:33:29 GMT
ENV OTP_VERSION=28.5.0.8 REBAR3_VERSION=3.27.0
# Wed, 14 Oct 2026 20:33:29 GMT
LABEL org.opencontainers.image.version=28.5.0.8
# Wed, 14 Oct 2026 20:33:29 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="8a696e15bcbe5d57197b1f4c03c92d415f9fd9af70f9222a05911c8a5463cba6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:33:29 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa004553b9f222fc45dcbca4565cc8e7cfadfc258e1dbdcb59fb6556bc26832a`  
		Last Modified: Wed, 14 Oct 2026 20:33:49 GMT  
		Size: 70.5 MB (70529284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:3edc86ce4bd954c5f4497955b78d1d9f6b1f7a39c5302813fd71dd4b685cd0f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:920ace17ce5966f35f1cb5b0d89db33a5b089664673ff7582f9273a4a1fb871e`

```dockerfile
```

-	Layers:
	-	`sha256:1dde9e311fbf674501ac7bc13689e469ae79abbde03ef18755d28d1bcd60e16d`  
		Last Modified: Wed, 14 Oct 2026 20:33:48 GMT  
		Size: 3.3 MB (3295236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1419134309f0124d06c7d68e382f67db1a8c624fdb0729c570a4079bfdf3502`  
		Last Modified: Wed, 14 Oct 2026 20:33:47 GMT  
		Size: 13.6 KB (13637 bytes)  
		MIME: application/vnd.in-toto+json
