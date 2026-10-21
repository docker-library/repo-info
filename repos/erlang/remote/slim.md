## `erlang:slim`

```console
$ docker pull erlang@sha256:4fe172a2b670ef8fd2ab287d597ebc317dc8d9373e393bb5e4094b9b30c04efb
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

### `erlang:slim` - linux; amd64

```console
$ docker pull erlang@sha256:66c22ccfd045b832da0dfdb21cec22a371564bf21b63bb5110f75dba7fc901d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129842292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d311ac89bbc103c21b4e0ce3eac1d4dc6dc48c5095261506fb21e34f503cdcf`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:32 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 00:48:32 GMT
LABEL org.opencontainers.image.version=29.1.2
# Wed, 21 Oct 2026 00:48:32 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb968624ea66b29ed02133ece222fe52517fc4e6b4b8b593cb80164ba9c04824`  
		Last Modified: Wed, 21 Oct 2026 00:48:46 GMT  
		Size: 80.4 MB (80448670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:789ce85fdf730f3ccf4f2b3b91e60d3e6a7ec817319b1eb3a2aa4264f541e28d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3307807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51e864422cd8369247d7982a287aaa7ce50fae5a13aa57283bbf9bdc2b574d70`

```dockerfile
```

-	Layers:
	-	`sha256:31c39b28a6f00bba443a4f603d83b9900cf70738ea4ccfa5e53edc13844da700`  
		Last Modified: Wed, 21 Oct 2026 00:48:44 GMT  
		Size: 3.3 MB (3293878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:862844ca09d44975bd7d81f0f6d067f82e097f18dde8bdbe2fdf27a562c12edd`  
		Last Modified: Wed, 21 Oct 2026 00:48:43 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:1fcb35394be06044dde896e7ea477b3ae75888a9cd75fabcadf6695d283c7670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118182625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5fd4f8d9ee514d44da86e35b479eafe5edccd5d6bfeb359a8a4adc7ded014a`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:51:41 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 00:51:41 GMT
LABEL org.opencontainers.image.version=29.1.2
# Wed, 21 Oct 2026 00:51:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:51:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:a7d42171331b896f009a1d89b03785bbf95d0d6603d81916619bf24f05194252`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 47.6 MB (47559893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec683bc3412fdd481957a61edc610354a3fc8c2176b8472c2b5cfc38b752e47`  
		Last Modified: Wed, 21 Oct 2026 00:51:56 GMT  
		Size: 70.6 MB (70622732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:67a8f495886e2809dff19399f7e9ced4deaa14eaf787b71f6c9363b97590cee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c91644224199ff3a330198cc27f5a4668c641ea8a0d4438c9d346ccd7b282c6`

```dockerfile
```

-	Layers:
	-	`sha256:3662636da2542c6d75128df6d1d6b2d941d2d31fc102991320f85b9e97769831`  
		Last Modified: Wed, 21 Oct 2026 00:51:54 GMT  
		Size: 3.3 MB (3296853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfa0a15c9d9deb38fb22ae408afde08c24442a1ee0899e53452590d1ab79db8f`  
		Last Modified: Wed, 21 Oct 2026 00:51:54 GMT  
		Size: 14.0 KB (14016 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:e4a9764c52bf66c51cb9b0a1f66288861862eab6845003dfcd47cf566cc266c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116146611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744bf5854a3d3a217ff4c3a290359920ede3fe5156c9f903dd695cde6e2680a7`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:24:57 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Wed, 14 Oct 2026 20:24:57 GMT
LABEL org.opencontainers.image.version=29.1.2
# Wed, 14 Oct 2026 20:24:57 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:24:57 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e525d052237283868d64dd5b9cbc96873dadf00e323bd9ad92308f1e58bd01`  
		Last Modified: Wed, 14 Oct 2026 20:25:12 GMT  
		Size: 70.3 MB (70333347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:071693b850a095082ba0ad146011afbff47597cb74248a1bb5067b1aa8a30014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3309319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4c953ab72c71ec4e2de2291ad634dea8c127d7016a0b7ea1b40a3f3b4c4f14`

```dockerfile
```

-	Layers:
	-	`sha256:d257d5cf405d9122b4830d246bbf8bf81dc3e2dd5df4a7762e0e5933624a3907`  
		Last Modified: Wed, 14 Oct 2026 20:25:10 GMT  
		Size: 3.3 MB (3295302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d30a2f126aed8e527651f970bad993a6c5a8377b289977fd73f590aacc9b5404`  
		Last Modified: Wed, 14 Oct 2026 20:25:10 GMT  
		Size: 14.0 KB (14017 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:b9698fcafb3893822019d7e1af00944995c2fdb7e51205a80057a9018b201453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128675353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da334fda4caec23575fbd7e676613ba1c2103ae09b4c2dc6f766393bfc248b4f`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:52:21 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 00:52:21 GMT
LABEL org.opencontainers.image.version=29.1.2
# Wed, 21 Oct 2026 00:52:21 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:21 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f36af3e7300bcfc49b48edad4d15197c3eaee9e0f8440751b52fe25de62e49e3`  
		Last Modified: Wed, 21 Oct 2026 00:52:40 GMT  
		Size: 78.9 MB (78913751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:0f0c4bb9edb57cdc1c75cdcc0af05121d16f204f0ae956f978e857903ebc4a73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7457c93eef16680ffce39adeb8a059f9de994325ac782646ca50d170b2f8b53e`

```dockerfile
```

-	Layers:
	-	`sha256:42755cf83710c0531a03e5a7b9157646f5d208c29926ae34f415ee71e648e192`  
		Last Modified: Wed, 21 Oct 2026 00:52:38 GMT  
		Size: 3.3 MB (3294776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:098ad55a5e1e9522202ed0488e5dea5cc6c2925ffd0fdf4099edaf9530fba937`  
		Last Modified: Wed, 21 Oct 2026 00:52:38 GMT  
		Size: 14.0 KB (14045 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; 386

```console
$ docker pull erlang@sha256:be225f8c9c540aa33e2f9311ebee0beff4faae8fa46841609e0ef1026a5792e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121659400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe98f768e64317e51e34847bc79956e6a8179188536edd03522c2c17087e10e`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:24:28 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Wed, 14 Oct 2026 20:24:28 GMT
LABEL org.opencontainers.image.version=29.1.2
# Wed, 14 Oct 2026 20:24:28 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:24:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8018badcf0930653ab4113bdaf9d3c40a956ba19a3571fc65cb1287592fb58f`  
		Last Modified: Wed, 14 Oct 2026 20:24:41 GMT  
		Size: 70.8 MB (70753304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:059d12acb1513b82c802da6425b1653a0668cf2f605fb1c24dee4cd46515037e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3304940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9d9be7fff5ad4ece4d61d91eda8bb3fe8b451d41bdd3f3f9a20febc68ac5a3`

```dockerfile
```

-	Layers:
	-	`sha256:49b98b0bca45adf7cc393909808ba33e6fb1265c9e6dc5f52bbf0a1f6c40ea34`  
		Last Modified: Wed, 14 Oct 2026 20:24:40 GMT  
		Size: 3.3 MB (3291049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45a6fbf7fc30613cd159f37c4fca3da5adbdcc6d8599726d70e0cf8a803dd2c1`  
		Last Modified: Wed, 14 Oct 2026 20:24:40 GMT  
		Size: 13.9 KB (13891 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:0a04784df11bd44331effd048d44064bab89affc18af94ae4e5ed49cda1a5c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124940795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c31f13e8af8e5cf5d86b549c278dd9f9bea1268ea08a21502156b37486a5a9b`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:34:19 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Wed, 14 Oct 2026 20:34:19 GMT
LABEL org.opencontainers.image.version=29.1.2
# Wed, 14 Oct 2026 20:34:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:34:19 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dffd1e8f9497923fdff2ab0751e1d2328fe6e77e38df40198352318dae380183`  
		Last Modified: Wed, 14 Oct 2026 20:35:05 GMT  
		Size: 71.7 MB (71733671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:d9956cca76ec784658b9f323c438737615650c36628e171b6e3d16cd3ab3105a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1afb146b925636d0ada259574b013ae90de5158a3bbdd24245316d39bac37cdf`

```dockerfile
```

-	Layers:
	-	`sha256:3f726ec183147264ce72004346d6747abc5739b046aeeb238a6850be8d9c4a24`  
		Last Modified: Wed, 14 Oct 2026 20:35:03 GMT  
		Size: 3.3 MB (3297467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37299d22e2509c5f33c83c1a63e254cc73a7e7dd6608d42bc93500301ea1316a`  
		Last Modified: Wed, 14 Oct 2026 20:35:03 GMT  
		Size: 14.0 KB (13979 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; s390x

```console
$ docker pull erlang@sha256:80e8577a316e7cfc3ca55ecd70a464fa2502e6fe77c9b10b9495e140daf1c57f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.1 MB (121072864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a21699f93e4f85c5486a32fc8395e233d245bf8003dce6706553bd1c0327f8`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Wed, 14 Oct 2026 20:29:26 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Wed, 14 Oct 2026 20:29:26 GMT
LABEL org.opencontainers.image.version=29.1.2
# Wed, 14 Oct 2026 20:29:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 20:29:26 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74d14765afca73a227309ffaf2053f663717e71fbe931fc6878b3751570af7a`  
		Last Modified: Wed, 14 Oct 2026 20:30:06 GMT  
		Size: 71.6 MB (71615864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:66ccd42c5f3cfe8efe4d68acd1682e0abcbcb4bfd12fc51a91e591f0619d3ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3309248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9bc593732237858fad8140ea4cedf2a76df9ac0c7bc949f38f8913264f7fc93`

```dockerfile
```

-	Layers:
	-	`sha256:f63029dda35ed60cf1024b5e81d4e74d72d75e721e90735d9a04977b1ae9dd49`  
		Last Modified: Wed, 14 Oct 2026 20:30:03 GMT  
		Size: 3.3 MB (3295319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:589e6f2b8798546c2c00e1cb4da5207d9c14ccc2907e4c1cd7e69cb720ed5e4a`  
		Last Modified: Wed, 14 Oct 2026 20:30:02 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json
