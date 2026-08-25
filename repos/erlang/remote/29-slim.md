## `erlang:29-slim`

```console
$ docker pull erlang@sha256:a39b3e0bb7dfc5de30e6d401f50d833f96a3c6ea77a3f75bddce68971c24edff
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

### `erlang:29-slim` - linux; amd64

```console
$ docker pull erlang@sha256:169435f39a0df5709c5dfcc755bb56fa57189f7ec9072d554be38f675652919a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129642895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b11250a3759439b6c5ef060cebfc3d897f31691c3e0e2056c332772baf15547`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:12 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 00:53:12 GMT
LABEL org.opencontainers.image.version=29.0.5
# Tue, 25 Aug 2026 00:53:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:12 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:126b486e69df3675c03e060efc8673af9bd85b672e60e41be185aafca4a090b1`  
		Last Modified: Tue, 25 Aug 2026 00:53:27 GMT  
		Size: 80.3 MB (80305067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:f298078eb441cfa056876dca1773fbc84f9e5cfbe0290b9af1e7d455eb34eb78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3302825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95931853c660de4234ae35208d7e93c1b7476dc92b8d01bf871163f9ec836e6d`

```dockerfile
```

-	Layers:
	-	`sha256:a809eea41ca230283e13604cf584bcfb69cf21487c9d14a109f69bb6f475ec78`  
		Last Modified: Tue, 25 Aug 2026 00:53:24 GMT  
		Size: 3.3 MB (3288896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93ad63056ffc9c7982219aaa3776d9b57e6a8a6804f552fb5decdd8d4df08db4`  
		Last Modified: Tue, 25 Aug 2026 00:53:24 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:1a2ad0f7100c132fedd7cf688e9f839731acebb60deca7338d7f1d104714ee91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (117999641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb00700a9743cad8268fc2f137f562177cb00c11f55228424c8f3fdb8d669f88`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:10 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 00:51:10 GMT
LABEL org.opencontainers.image.version=29.0.5
# Tue, 25 Aug 2026 00:51:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:10 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:eb6dd3c63a4e348778a39eaaad39d8544405ca793fafad8492987c16b93bf6c4`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 47.5 MB (47513959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fbee2fc08608050ba5eeab396690453aabaf1d9b9294fdfcc1fb440228a099`  
		Last Modified: Tue, 25 Aug 2026 00:51:24 GMT  
		Size: 70.5 MB (70485682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:50bcc8bee509b4472392131a57f7008fcee270e30d25c14cb6c85fca84ca0f57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3305888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0029f53ceeada4e9e08624e0233e67d81367341b2ac8d38335f817b1eb86e6b`

```dockerfile
```

-	Layers:
	-	`sha256:7bf0571ddfe5526bbbe62b086f2af19a9848d52b33e1346722016c03cf684e07`  
		Last Modified: Tue, 25 Aug 2026 00:51:22 GMT  
		Size: 3.3 MB (3291871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:155930012579d045e2d2f50a3855c6eb06df282f7c943d2f7a08af520393ab6c`  
		Last Modified: Tue, 25 Aug 2026 00:51:22 GMT  
		Size: 14.0 KB (14017 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:c7732d27550ccfcff03f5189eeb021f077faee1b5603cf46499d22c737d31644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115825422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386717e458b9f420f3209cb5325b845c557d763f297e6ff7647eb8a9118861d7`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:35:18 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 01:35:18 GMT
LABEL org.opencontainers.image.version=29.0.5
# Tue, 25 Aug 2026 01:35:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:35:18 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3c4183043d13f2938c237fd6f1272ce4f58a2e5e8a564ccda3404496a93a79`  
		Last Modified: Tue, 25 Aug 2026 01:35:32 GMT  
		Size: 70.1 MB (70061371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:39f49326c558d6c94dffac0b00e2f1094b8e734a04e046c387fa2db6b6d2cfa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3304337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fb629ce9947601a7459ad9763d94dd2b9cd904f89c68c0390f6ef6e72443539`

```dockerfile
```

-	Layers:
	-	`sha256:1bf12407c701430977370b0436fb831266346606fbe4115597a648b5d8aadcf6`  
		Last Modified: Tue, 25 Aug 2026 01:35:30 GMT  
		Size: 3.3 MB (3290320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:648501e3047c1d2700a90b9b93632518027f9f53a35f0d63b4a9d5255abfdf31`  
		Last Modified: Tue, 25 Aug 2026 01:35:30 GMT  
		Size: 14.0 KB (14017 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:6e8ee20210bc9ee1d34613216d38e98a711064a9812350fbc8a6503f81a80844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128497699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3503abd4ad577529ae427dff58ae78c0b4adca229907a4ce805c518a3d2f15d6`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:55:38 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 00:55:38 GMT
LABEL org.opencontainers.image.version=29.0.5
# Tue, 25 Aug 2026 00:55:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:55:38 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba38fe6e07613c49cd4e81872efa2bf0f14edab0330c9bba3847003b8e59571`  
		Last Modified: Tue, 25 Aug 2026 00:55:54 GMT  
		Size: 78.8 MB (78792846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:692f09f7d697f287d47613df465f0573695c3c405294ab8b794ee54c4c2351df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3303839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95bb28e7b08b0f309f816a9d7847d6d7a54592af0202a671ec2dc8affcc25d74`

```dockerfile
```

-	Layers:
	-	`sha256:f27765137295fe3c3f8569ca8aa9bf6aa34ba06ce7d8dcecaec64b63ba559c54`  
		Last Modified: Tue, 25 Aug 2026 00:55:53 GMT  
		Size: 3.3 MB (3289794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8276d60362659a45b50a0ce9a3ee9ba0f2980582df6c17d6ef606efc7b631327`  
		Last Modified: Tue, 25 Aug 2026 00:55:52 GMT  
		Size: 14.0 KB (14045 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; 386

```console
$ docker pull erlang@sha256:d86cce416cac8eb795eb25a3a99d2500d7a02fc86e9c1c9a93d14e14981dd4bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121304246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5313e906535812a6a21c57efece63e751fc838e1e0e91a3ae2b2222136799005`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:20 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 00:53:20 GMT
LABEL org.opencontainers.image.version=29.0.5
# Tue, 25 Aug 2026 00:53:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df3313d05b29a217a4343665cc7b450d119233652a7d1f029e64fc3e547495b`  
		Last Modified: Tue, 25 Aug 2026 00:53:34 GMT  
		Size: 70.5 MB (70454664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:633c273e3bacc143037eb5130c716dd30e53311f255df362e221683b3f23172f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3299958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac514d71b4d55bcb491063d38f67cc49a7e55636eed8af816c9f23125ec70e63`

```dockerfile
```

-	Layers:
	-	`sha256:44af1127c7b2813f371ecd9d11f7bfb4f92172b30813ae62261e5e76d6841c98`  
		Last Modified: Tue, 25 Aug 2026 00:53:32 GMT  
		Size: 3.3 MB (3286066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:079f2c0d6b532f2093ca1bc1d224b83f91753dc65dd29cb86172b3053a7ae210`  
		Last Modified: Tue, 25 Aug 2026 00:53:32 GMT  
		Size: 13.9 KB (13892 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:97e2d15d3ca2dd76182ce1e2dd06c7c5a51f55a8ba75556b3ef9e1cd98221c65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124598345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d4fec017b7198a06131a13d635c78148a01aa1431c1d20a2fdd6c99874ba9b`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:41:21 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 03:41:21 GMT
LABEL org.opencontainers.image.version=29.0.5
# Tue, 25 Aug 2026 03:41:21 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:41:21 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcafa99a5ebd997ab8f61b6bdac94a1568e5fc1ba8a7f2395130599e5a47b402`  
		Last Modified: Tue, 25 Aug 2026 03:41:45 GMT  
		Size: 71.4 MB (71434062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:787b2e61cc22d5e29459ba3491e9ef070508f314e7fa6c05b7381f912653280e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5cfe0ca0855f228f77b6f948916097e096ff26ef8e68818703521a02df28f10`

```dockerfile
```

-	Layers:
	-	`sha256:f02655993df0e1d3793b2f957c3c90effd54682fe59b6f9aff4dffb09bf5390c`  
		Last Modified: Tue, 25 Aug 2026 03:41:43 GMT  
		Size: 3.3 MB (3292487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33185f1d4898a01dcb8b74b73452c1f3bab74ee43c8c6a9e9678273ddec1d52c`  
		Last Modified: Tue, 25 Aug 2026 03:41:42 GMT  
		Size: 14.0 KB (13979 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; s390x

```console
$ docker pull erlang@sha256:e179d60db12ee2c4201bf8f9ca73920146207b72249036fd77d8c9e71e1c4f74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120726146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f4f8a8142cbe3da0ed9e8b47e8edaf23d2bdf99dc57b5a18a26122b72c5669`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:27:09 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 01:27:09 GMT
LABEL org.opencontainers.image.version=29.0.5
# Tue, 25 Aug 2026 01:27:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:27:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20b309ddada27b0c44e83b761412941903727136c3c83a7170bc367ba6a0784`  
		Last Modified: Tue, 25 Aug 2026 01:27:28 GMT  
		Size: 71.3 MB (71319449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:d5d315542db1fc8f2b5fc1360391553dd00cade25c97720d94174cdb31a7d11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3304266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58addee11588c8ad1ac5519d41ff72c4d55e09e0cd3612b1c9c84e0fd4b3b326`

```dockerfile
```

-	Layers:
	-	`sha256:08a703174e5e05b3e20470ee987f9513e1af986ab77a4833de65a1c0cd3e5fe6`  
		Last Modified: Tue, 25 Aug 2026 01:27:26 GMT  
		Size: 3.3 MB (3290337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e384ad9d8303566976009aded0ee5d92bccfc30b88b030a76818320aca74ebb6`  
		Last Modified: Tue, 25 Aug 2026 01:27:26 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json
