## `erlang:28-slim`

```console
$ docker pull erlang@sha256:42e33368b1a777cfe1018bb64e867bc20df2e0aa2f9d133d3caada0105d0cc9b
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
$ docker pull erlang@sha256:874d123ba6b299054fbae7d013797872cebfae8fcd4c23f2e020c8fc2994563e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131896703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a196ce7a845af0436a78efce3a40f5191a7cea544e3e04e928b9b99646765d68`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 23:03:58 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:03:58 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Tue, 01 Sep 2026 23:03:58 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:03:58 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d664b45125cf6a8e6c841dded399b98cee588aeed4472ff25cd65132545e47fb`  
		Last Modified: Tue, 01 Sep 2026 23:04:13 GMT  
		Size: 82.6 MB (82558875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:67f041026ef3408c538c229de428824f54dd1ec7a115fa1902db11bbc901f741
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3302459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98dc7bd3121c7c093590ea937f5d9a0c70fce41bfdc896cece13ec4bdba6a5a3`

```dockerfile
```

-	Layers:
	-	`sha256:f57386341c8a913c65470f011640773e40789333c735bb6161fc821faa420773`  
		Last Modified: Tue, 01 Sep 2026 23:04:12 GMT  
		Size: 3.3 MB (3288822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:969339dc8609f60a731d172b6b238ea5de254d3d12123a417b6eb6b296624837`  
		Last Modified: Tue, 01 Sep 2026 23:04:11 GMT  
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
$ docker pull erlang@sha256:ece639e82d5153c2ef02e3e32e96ad00a08ec5439dff16b7398c50597c0a5ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131166419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3770232f2ee91a0443d7c5ddc644da55e399bd2cc8bcdb45af7aa48f5ac2021`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 23:05:14 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:05:14 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Tue, 01 Sep 2026 23:05:14 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:05:14 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9753dfcf1477da168ac328d5464097dcfab61515548fa7eb413fc510dd44b4`  
		Last Modified: Tue, 01 Sep 2026 23:05:30 GMT  
		Size: 81.5 MB (81461566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:fbc19bd3a0d0cd6c8a6023473fa76e7cb63b2080dd58edec90be94ac16fffb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3303449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91b5a160ef57e095b378efa2da23259b48ca82585390c060f2b519b7021d8e5`

```dockerfile
```

-	Layers:
	-	`sha256:76a1635431300d2a7aa528d795c8f83e287fe2f240acf8f3de40fcefd7217921`  
		Last Modified: Tue, 01 Sep 2026 23:05:27 GMT  
		Size: 3.3 MB (3289708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5a6dc924e52fc091abfb1e7a06f0c5cc2ee91f2076905ce39dba18752b24d2a`  
		Last Modified: Tue, 01 Sep 2026 23:05:27 GMT  
		Size: 13.7 KB (13741 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; 386

```console
$ docker pull erlang@sha256:df1b11857d80fc709be71d75e1c2edda19c5f20ae5713047fd1abae36b8d8f8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123802514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1477f2c387f1ce8b758bb4a596bc931c24428de448c458436a440c35dd06b0db`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 23:14:23 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:14:23 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Tue, 01 Sep 2026 23:14:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:14:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af8d6dd3d0e0205cf6df3ae4ec0239ccb995daf774ba881536c38c3208f816d`  
		Last Modified: Tue, 01 Sep 2026 23:14:36 GMT  
		Size: 73.0 MB (72952932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:eb2c05569056e6c0a8ef4eea8ad27773d9c5b956702d61ffbca832d777dcd45f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3299601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04876d1b416bdb4e931f5f2488ef0c838f34c9a3a0cde689b92a313890e1b540`

```dockerfile
```

-	Layers:
	-	`sha256:8f4e479d6241e23f3a1cfcd65a424b13c870a9df196eae0a6cc4652b4cf56b8c`  
		Last Modified: Tue, 01 Sep 2026 23:14:34 GMT  
		Size: 3.3 MB (3285997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68d8aba0d67bca0f477bbd6e009403121e5a0b94c801113ef71e9ca78cb3ae87`  
		Last Modified: Tue, 01 Sep 2026 23:14:34 GMT  
		Size: 13.6 KB (13604 bytes)  
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
