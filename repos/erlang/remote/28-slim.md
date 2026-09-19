## `erlang:28-slim`

```console
$ docker pull erlang@sha256:26ddc954980e8b1cf32463cea98970b3976d50a4a2375fac92dd2cb2bcbd8b9f
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
$ docker pull erlang@sha256:4756b4e4c55b4f4d9ac558980557dd9122c9756901cfe3522c02609caf825696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128414797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a857742084405a5ec68989b2f83f71827c90b0ce435242965b9d2db5b2f105`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:31 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Sat, 19 Sep 2026 00:47:31 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Sat, 19 Sep 2026 00:47:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9238cda01f8df37303c68d6ae1d7f34eea187a242e7ffda807a8d80762dd19`  
		Last Modified: Sat, 19 Sep 2026 00:47:46 GMT  
		Size: 79.0 MB (79035098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:6a501af8cf3879bd7253796d73bb23c4b4641824046a35db4b3a7e0df698b7df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3307420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a00d54354c95baa6bef645eda7fd2fbb83d8baef136612cea0b40f7e56ae8dd`

```dockerfile
```

-	Layers:
	-	`sha256:2a5542cf48f04b307964e3eb9bce7e5e965083b7c0f6be9a0461a4440393aeaa`  
		Last Modified: Sat, 19 Sep 2026 00:47:44 GMT  
		Size: 3.3 MB (3293783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed8d8a303d51cacb1b5d2875ee23051e8557ce615fac77a6265e0f779ca9384b`  
		Last Modified: Sat, 19 Sep 2026 00:47:44 GMT  
		Size: 13.6 KB (13637 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:246f3f601551de5e929d6d4e71197193faeb4209a409137472f1ea974a2e1d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (119993410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3593b729601ee51656a4a4adcf8b28bccd5945f0a3f03296491dd63c9281974f`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 23:04:25 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:04:25 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Tue, 01 Sep 2026 23:04:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:04:25 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:eb6dd3c63a4e348778a39eaaad39d8544405ca793fafad8492987c16b93bf6c4`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 47.5 MB (47513959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa3e71bf7907c5c2834677ae16db2112fdbec09d2c4fe067cee36fe22128f15`  
		Last Modified: Tue, 01 Sep 2026 23:04:39 GMT  
		Size: 72.5 MB (72479451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:b64374e1a241cb188cc785dece9566f7a1142ce028fafedc64c02bf9efdb5160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3305506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c012747b51e8e427a6d6241df134b61eebbf171368fc1b281aed653397f8bd9`

```dockerfile
```

-	Layers:
	-	`sha256:1786d15669ac1ca866d801c4c14dbf5c4f40f06a0c020c713abad4c926c425cb`  
		Last Modified: Tue, 01 Sep 2026 23:04:37 GMT  
		Size: 3.3 MB (3291789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:838fdba112429d12ff7193b330419157f098f01c993ddffa68927f846b601a08`  
		Last Modified: Tue, 01 Sep 2026 23:04:37 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:f668bfa11ce8afd3c27e108eec6a6da4e0818a0f4f8e7347b3d924b0df1fbe1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117636073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746e38725dfe7a8ae0549fa2f02ec9cd447580bbda73ac2152e591b1ce699e10`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 23:20:59 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:20:59 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Tue, 01 Sep 2026 23:20:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:20:59 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbe2c49f5f68adde751a0b0e9c206802449cf37fc482ee1c82a517bcb0018e16`  
		Last Modified: Tue, 01 Sep 2026 23:21:13 GMT  
		Size: 71.9 MB (71872022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:af91ae31a6a078192f1f2a9477687891d4425020c6826621846d77adb3578b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3303955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8201468b1b7d3a0bd79e290370e551543341c91bee253cf14f5dd018a29d986d`

```dockerfile
```

-	Layers:
	-	`sha256:21f96d09256029fad3b24ff3f4cbb472f8cc1cadac2f7ddcb555640cab1acecd`  
		Last Modified: Tue, 01 Sep 2026 23:21:11 GMT  
		Size: 3.3 MB (3290238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:514cce35c0d1269f4b2268b5766bf97de39bfda49d30f1ff716ec4c9f3a88038`  
		Last Modified: Tue, 01 Sep 2026 23:21:10 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:f4cb7409ab8b3e3d792bffae7ec9108686d9fb88510ef75872e5aa874c6c72bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127323974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1556d97a7d1ea074125c5b672cfc1ed35e781f478366d80cd3b70b2e4215e36c`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:56 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Sat, 19 Sep 2026 00:49:56 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Sat, 19 Sep 2026 00:49:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:49:56 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bc6979edd7fce09f4daf173da937428fe47c8c088cbd035a10916d551278093`  
		Last Modified: Sat, 19 Sep 2026 00:50:11 GMT  
		Size: 77.6 MB (77575138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:1d0a6f88a6ed74e919e71e18c163b21a38004f3ef0b77780da77c8a46a37e4f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b5a88fce975cb347087ff4129a6c751c25a79858688b88e46b5d9c31b178104`

```dockerfile
```

-	Layers:
	-	`sha256:1de4a3425b9d39ef9feaf513640697cf9f2e6c0c0c8bb606c82e66f1492f1e34`  
		Last Modified: Sat, 19 Sep 2026 00:50:09 GMT  
		Size: 3.3 MB (3294669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36611352e2bf12e628efae5ecfc60afb3ec0738de3fb3f47f03cce1af76a86cd`  
		Last Modified: Sat, 19 Sep 2026 00:50:09 GMT  
		Size: 13.7 KB (13741 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; 386

```console
$ docker pull erlang@sha256:2f2d1300d4d539fe7d577d4d8574e6267fd4527244044fa6ea25ee28802af1cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120415902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d062d55df50e40a9bd922d49f452e91db8022c294f0f529df2c3ffb56fa1ce`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:51:42 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Sat, 19 Sep 2026 00:51:42 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Sat, 19 Sep 2026 00:51:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:42 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fb399eeb64dde7e303763e6dd525608d2199b00eb3c3e73c99772b40e22cbf`  
		Last Modified: Sat, 19 Sep 2026 00:51:55 GMT  
		Size: 69.5 MB (69523186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:9bd694512aa812b05bbb69eca0649789926627dabb26616b5b753953fb12cf3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3304564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7aa63a6dcd73487a83e00661708371c7810400fc3e3480b68bb11eb2b388913`

```dockerfile
```

-	Layers:
	-	`sha256:8eeb4d5bc8df74c1b2c200f4d9ff1c753c59064abe8e781d9418ccf19bbe9249`  
		Last Modified: Sat, 19 Sep 2026 00:51:53 GMT  
		Size: 3.3 MB (3290959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e159449c014e17d1bac3a58066b13a44bd1c9cd8752a2882db06119b5fa9eb97`  
		Last Modified: Sat, 19 Sep 2026 00:51:53 GMT  
		Size: 13.6 KB (13605 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:df3076568213681a85eb96020fe57f2cd31a3536e801f5abdd3cc1a2bc386937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127397316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4626bf8e386cf8c8651485a3240e4773a4c4a830e52e4b4bcf5f9eaa9e212ce0`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 02 Sep 2026 00:31:46 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Wed, 02 Sep 2026 00:31:46 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Wed, 02 Sep 2026 00:31:46 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 02 Sep 2026 00:31:46 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd9e3e6db06ee8cc525c4db2cb265792e3a06885d1d534c3fe329d470aa258d`  
		Last Modified: Wed, 02 Sep 2026 00:32:12 GMT  
		Size: 74.2 MB (74233033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:9fcefa9e845370a3652b0ce1bdd26df2bf2b632e82cac9adbc8beeadd6d6b580
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365a8162f726012e81edbd048b21e87d91637600998ad369e8b4dd62aaaa6ec8`

```dockerfile
```

-	Layers:
	-	`sha256:33df3dbc1b79fe25c057fa9f32028dbe171452ab00401698678111235145aaf9`  
		Last Modified: Wed, 02 Sep 2026 00:32:10 GMT  
		Size: 3.3 MB (3292407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d766b89e666d43910666c01a8737b555d0a7973bc2f15b1bfcadcec360711ce8`  
		Last Modified: Wed, 02 Sep 2026 00:32:10 GMT  
		Size: 13.7 KB (13681 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; s390x

```console
$ docker pull erlang@sha256:96abb44750257c6ab025de5e467333bc865ea404b535bb98c765d68003b54c5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122948445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3d6af59b9b85c630b31eae56edfbd3ce7dcece6523a98305153ce2d5b08c06`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 23:08:07 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:08:07 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Tue, 01 Sep 2026 23:08:07 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:08:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec86c35c12106f91a7b2f4f771b183e46e4e2e63eddd3ea7b47a5bbafc4781f5`  
		Last Modified: Tue, 01 Sep 2026 23:08:28 GMT  
		Size: 73.5 MB (73541748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:fffe5a379368ea0aead43fb1c6e239ca8fc3ca1bc0700d216a58da2538a2b852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3303900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b274589a810f98ca3be815b7bd90a6aa0189ae580ac591700189798f2c3dc66b`

```dockerfile
```

-	Layers:
	-	`sha256:be6c612261ecc02f18dabbb168ecb94f83cf63f8a27531136cb2b9e222d4691f`  
		Last Modified: Tue, 01 Sep 2026 23:08:27 GMT  
		Size: 3.3 MB (3290263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eeb420575ae60a42ae00ae5aa3c9c80217553e1b5434b819ab73ba78b2799558`  
		Last Modified: Tue, 01 Sep 2026 23:08:26 GMT  
		Size: 13.6 KB (13637 bytes)  
		MIME: application/vnd.in-toto+json
