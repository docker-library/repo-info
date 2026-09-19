## `erlang:28-slim`

```console
$ docker pull erlang@sha256:b9a517a465ca449e9ea7df8885d756196a5d0dc8e8c3a8539a75d132febf134a
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
$ docker pull erlang@sha256:49fe72eb2a20432f421b6beabdecd348c7c50b572ba05e7457cfd364e50d8b6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117084925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67cfeb9c38af13cd8a066e3d36f827a51fe99ee77f01a654ab850aca0da7420`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:56:44 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Sat, 19 Sep 2026 00:56:44 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Sat, 19 Sep 2026 00:56:44 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:56:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:7883bba1880261bb735b0ae1907c6217f056d9337e457b5f39f0626bfbd6042f`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 47.5 MB (47547968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74ffa255438ce171483a3c0337b76d17ef3a8221f8d58b90cfb5fb3655f515c`  
		Last Modified: Sat, 19 Sep 2026 00:56:58 GMT  
		Size: 69.5 MB (69536957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:dd6acf5dcdacace77fbc982523d40cbbdbf897bcf6f85640de9c6736402d27ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae642bf16f31c6a215202e498bc7ba82e91d1011f0eba2804eebcf98c45e049b`

```dockerfile
```

-	Layers:
	-	`sha256:dfc01797e9f6af2c5069e8acf7b96eb5153d97ff6eccde14a7e3d8e4b7658d27`  
		Last Modified: Sat, 19 Sep 2026 00:56:56 GMT  
		Size: 3.3 MB (3296750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c190c475c3c2889fdd6ad15a91b0c5df668c3111f00fae6a8adbd08d3433e56a`  
		Last Modified: Sat, 19 Sep 2026 00:56:56 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:8840e9c6b7b1cbce540de0dfe91cf864b14461dc2fc54abb86510022f99f4422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114919167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9dc66cb5434f6f6aa462682ec89be6e8faaaf2fa10068593a3f044c6b544c93`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:31:52 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Sat, 19 Sep 2026 01:31:52 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Sat, 19 Sep 2026 01:31:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:52 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:d2a96b81f7dd856e671dd780163738168310a9b621a2e674fe3f0d153d5d2c28`  
		Last Modified: Sat, 19 Sep 2026 00:03:37 GMT  
		Size: 45.8 MB (45804267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be23ddf2294959c3e2dc63c3faeb0701d720e3d66a6b64a658be251b542c6b3`  
		Last Modified: Sat, 19 Sep 2026 01:32:05 GMT  
		Size: 69.1 MB (69114900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:14f1e15a0a997595b91d8abca94b156fc4c9ab81ef9a9a8004f65d13e6a87e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1325307768647e49b2afd5506bd05d2e55ed652a86f6679f9283453c4f30b54`

```dockerfile
```

-	Layers:
	-	`sha256:3833a174671a18f175993f5e118b91ea85dd442d918e351efa395037596fcee0`  
		Last Modified: Sat, 19 Sep 2026 01:32:03 GMT  
		Size: 3.3 MB (3295199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65bee359245ce13063b96460108b62978202322b5bec8d694b3d7b9ac5d631ee`  
		Last Modified: Sat, 19 Sep 2026 01:32:03 GMT  
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
$ docker pull erlang@sha256:81e82d51977099a001bf93b3e30310cce465600d0f700223cbb13e7f6d1672d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123678763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5a1a1b7989edbb4973eea0e3ffc804b9b7b91c0fc76578c341422dd2a9b36d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:22:44 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Sat, 19 Sep 2026 03:22:44 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Sat, 19 Sep 2026 03:22:44 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:22:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3da493dd605ee9d1c39296df840d2406f66a06372d15379df69b3b1acab73a`  
		Last Modified: Sat, 19 Sep 2026 03:23:11 GMT  
		Size: 70.5 MB (70483688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:88de87b905a348f0fd567e0863d2b6c8f9bd1a657742ddf355fdccbfe7041327
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af126438b82e91d3092d0e23c3a0865baa72451447be37976ca96fd3b3419ab`

```dockerfile
```

-	Layers:
	-	`sha256:f4fd4a14b0e9de47735bc1e0000ae6b5812d171ab446997ddb146437d0351486`  
		Last Modified: Sat, 19 Sep 2026 03:23:09 GMT  
		Size: 3.3 MB (3297366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:065b916943ee370d009574bdc0a09ff0388041df327e74e0dc377c65ec863ff4`  
		Last Modified: Sat, 19 Sep 2026 03:23:08 GMT  
		Size: 13.7 KB (13681 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; s390x

```console
$ docker pull erlang@sha256:b109e7f4d7265925b90c4a7be670bd336195749b3bf744b3b9e52d0af74e205d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119790415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d2297a3cb2172f8e55e672a663bcb0733a13d1d66e87e068c88bbf9df7c74d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:01:22 GMT
ENV OTP_VERSION=28.5.0.6 REBAR3_VERSION=3.27.0
# Sat, 19 Sep 2026 01:01:22 GMT
LABEL org.opencontainers.image.version=28.5.0.6
# Sat, 19 Sep 2026 01:01:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="49d7a75e906334af54ae336ba53fc4e6ad100645e8e7efd3be008de284dab3ba" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:01:22 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2d7cabc403a26f61112d1d5b5dc9066fd7f1322f0fe79645feb0539527ec29`  
		Last Modified: Sat, 19 Sep 2026 01:01:39 GMT  
		Size: 70.3 MB (70342791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:ea83811afb39587bf41326c0b0e73212d191d5f58e6aae3debb2c70b562bc3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ddad3bae39dbad14192fadbf5e86ae1ef25182e4783a9012e9575a8243e3429`

```dockerfile
```

-	Layers:
	-	`sha256:514c556383641f6a48a5051fa9916c10bb6210cbf4a8d3ffdd741f9b0db12a69`  
		Last Modified: Sat, 19 Sep 2026 01:01:37 GMT  
		Size: 3.3 MB (3295224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d1567ba70e01602660bf48615a3ef787b72262d57a48b2103bf11fc7af2054`  
		Last Modified: Sat, 19 Sep 2026 01:01:37 GMT  
		Size: 13.6 KB (13637 bytes)  
		MIME: application/vnd.in-toto+json
