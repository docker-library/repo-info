## `erlang:28-slim`

```console
$ docker pull erlang@sha256:62bf65e9e817bd7670ff4e1b009ff942e6779d38f5ce284863147b486cc20f6b
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
$ docker pull erlang@sha256:b84c0ae691ebf2cc27a88e9e1432d1301aded51dbcf664d792dbc75026595a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128288492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4e5ecc9d244f36c0ac2ce34a84ce336a3f4b4eb1fed36895555049d093309e`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:32 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 00:47:32 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Wed, 05 Aug 2026 00:47:32 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5df0fcd6898e3bdb5ae001ed1343a43fa4e6606d01d8021599fd3b03b951711`  
		Last Modified: Wed, 05 Aug 2026 00:47:47 GMT  
		Size: 79.0 MB (78976178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:0769206e9ef6991c4617323b7d720ec741e9582afa0284a67bdd9dee29205d63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3297469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b198cbdb70288dd65f504369a7cbfe6550fec9e3590083933310d092b864709`

```dockerfile
```

-	Layers:
	-	`sha256:6a9d792ddddd147b29639da7139560abb6e8c3f439cc8359f86c4eb8de8c4893`  
		Last Modified: Wed, 05 Aug 2026 00:47:45 GMT  
		Size: 3.3 MB (3283832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a217b6bb2e8fc0201c01dd5701273b86d5a241f9ac56d32a981995a7fc816bdf`  
		Last Modified: Wed, 05 Aug 2026 00:47:45 GMT  
		Size: 13.6 KB (13637 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:a4814ce63dda232c404e90ef9100f3d93c69a45cedac461ebaf993882138ad39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116955783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05886eca6ad08ca1253c44790b29823b14c7aaf40b811183ef33db0435148f91`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:44:44 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 00:44:44 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Wed, 05 Aug 2026 00:44:44 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:44:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:31cdd84f3313aed453f665b91a900091c434a8f09c15bb822a4e06103d09ecb4`  
		Last Modified: Tue, 04 Aug 2026 23:51:31 GMT  
		Size: 47.5 MB (47489632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:650b48db2a2fdbf888db3bafc891119186f1c4844ba61677b60703b8e778a248`  
		Last Modified: Wed, 05 Aug 2026 00:44:58 GMT  
		Size: 69.5 MB (69466151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:f12746b9075ec2b70c437a50a11965c87db8c6d4d7cd14a8cc974d2f46f6f70c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436bf71db5b8e30481d8e2175ccb074e3a3bfbfdf1160786d32d5be8d49bbba0`

```dockerfile
```

-	Layers:
	-	`sha256:ae4fb8c02a45273d1608455ab48cdd441f3e20b7f9f25ab1aa447ec960096df1`  
		Last Modified: Wed, 05 Aug 2026 00:44:56 GMT  
		Size: 3.3 MB (3286799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:069635860ea5513e7e5d16f158f19095af2e18cac156f93134138e55439b629c`  
		Last Modified: Wed, 05 Aug 2026 00:44:56 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:1f692740c8e95cdf23c9ce1c144cc28261b6e8fd7c6241a91f6af5df2a832117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114792531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b509d914057b92672963df845c3a17186debaa45e54c08be8ff2eb7f9b002d98`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:23:08 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 01:23:08 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Wed, 05 Aug 2026 01:23:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:23:08 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ce00596802fbbb6f672716803836be915a7fa1e431e304e27380b560f4b25c8e`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 45.7 MB (45743375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0260b02f6e6a422ce154c33d8c4c7faca9e1bde6a05f92296492ffc055a1861`  
		Last Modified: Wed, 05 Aug 2026 01:23:22 GMT  
		Size: 69.0 MB (69049156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:2c0e442083aae2f9a871ea7d1e1f42151aaf3510798d1a00dbd1e8c6d87be2a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3298965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21d82691995c035efd1eee6e9af1b90bfc1666bc0ddb1c42b93f118c4232ed48`

```dockerfile
```

-	Layers:
	-	`sha256:3fc3e3c960f5f71704888c839c212ec9d062e10c7b59c681ea2ad5399a950bbd`  
		Last Modified: Wed, 05 Aug 2026 01:23:20 GMT  
		Size: 3.3 MB (3285248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e030bc9078439bece430bbda2125534a4235ca578c6915e18366e7f54cb6cd04`  
		Last Modified: Wed, 05 Aug 2026 01:23:19 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:138d175f89509c72a1b3a3ec5344e93e04c07319c6e60efe9a84a10bf909f549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127190214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a0d65d07cbcd680d5a6792129285a75c80f9890a337b80318cc04016a10db95`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:49:41 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 00:49:41 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Wed, 05 Aug 2026 00:49:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a8fc1ab36f81d85df4388dd442e4962b66fe533ae7f735ce199f1c3d9f35ee`  
		Last Modified: Wed, 05 Aug 2026 00:49:56 GMT  
		Size: 77.5 MB (77516368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:d7af084d5b40e6c8c05ff4ab533356a3681f55556f5a16110f8dd6a4f3b79ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3298459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fc74c0f6fc387d0bafd41b634e5bcbc7e55f3583bd7bba2894b99ff829c4e8`

```dockerfile
```

-	Layers:
	-	`sha256:8ed788f5dd26795b1bc251d64db6f1466ed781ae08b219bca21a0e087f194887`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 3.3 MB (3284718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c12f24b2c9cd1d8d2e703494d4c91829f339d40c28fdf7c3b15a5ead646e4e3`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 13.7 KB (13741 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; 386

```console
$ docker pull erlang@sha256:2fc4dc8a5155083eac70ccdfb840914b4c95541bf7b1e715ab7c79d71e7b8113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120303506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac54c6c05170dc0746e0b46dd5f48405c51d84020ecc9a29fb32e7a2a3ea0ee`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:49:11 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 00:49:11 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Wed, 05 Aug 2026 00:49:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:11 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c89dc2a2794871654e06c026696c4920aa6a41269d095c17b28e91d0a697600`  
		Last Modified: Wed, 05 Aug 2026 00:49:25 GMT  
		Size: 69.5 MB (69472338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:a13b9b45b6dd9abc66bb9a1cc93f6e3b41109b8259cb0171fc14f77af2b86f74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3294612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07fa687134961e59348d29ffd8b8c3684becc30e1cdd730012002e8360697997`

```dockerfile
```

-	Layers:
	-	`sha256:cff11958f3bbf53be6a264f42bee2ec1e6cd24245abb1d3691c2e4b795fade39`  
		Last Modified: Wed, 05 Aug 2026 00:49:23 GMT  
		Size: 3.3 MB (3281007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:574cca863d99cf3f368eff53f8ef0ce93dcc1303fa4dcd896acf12e109f1a55d`  
		Last Modified: Wed, 05 Aug 2026 00:49:23 GMT  
		Size: 13.6 KB (13605 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:8ec1388040860ebbf74f785edbe4fe22920dfa80d792f7d710c7c63a1b3e4ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123551389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aeee215b2f849ee6e896e5dccbc764c56392014112009b672c7ad3bf67c0209`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:38:48 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 05:38:48 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Wed, 05 Aug 2026 05:38:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:38:48 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55217fbde759ed76ccb941220b48fcb9571db4fe6227f93c570a8472ad97a28`  
		Last Modified: Wed, 05 Aug 2026 05:39:14 GMT  
		Size: 70.4 MB (70417784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:beca5de420e50aaa687f7240ac71a2e8586be854724168ca5b2c5757ffcc0391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3301098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1270c8be53be974f525eb8912ee074468b87921087b92bdee60140dbd477fc3a`

```dockerfile
```

-	Layers:
	-	`sha256:df1091a6ae32dfae89bcee87db59a5346533e372dae4cd2fa87177dbad16fde2`  
		Last Modified: Wed, 05 Aug 2026 05:39:12 GMT  
		Size: 3.3 MB (3287417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba42c2a01318b5ddf1a28d859086c9de258eca04e5a6da435155659bda454c99`  
		Last Modified: Wed, 05 Aug 2026 05:39:12 GMT  
		Size: 13.7 KB (13681 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; s390x

```console
$ docker pull erlang@sha256:f80a7894354afe84e3a1df2b6e79a5d12e99f901f0bf6f7980354b7bc57706ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119691856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee072878e6019cef718f778e899cc49bf93b5af2e0f20030470c3ea06b91f8c9`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:10:40 GMT
ENV OTP_VERSION=28.5.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 01:10:40 GMT
LABEL org.opencontainers.image.version=28.5.0.4
# Wed, 05 Aug 2026 01:10:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="efb045f96ee56d274f6c1fe3a9612b45caa01d2f82e35fe4e0ac9b0c501f6e53" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:10:40 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb5f0d9c7e38f933101808ebfbbc64b9f5bc701acfd9b83438217863b4d2707`  
		Last Modified: Wed, 05 Aug 2026 01:10:58 GMT  
		Size: 70.3 MB (70310430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:0bd2fdbbd480518cf231a0942924faad56fe380db7b4b48ca9f160fe545d8195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3298910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f930e4bfe4565d18cf6ecbf3bf8cde0351a207d64f0219fc729c6dddae30e0`

```dockerfile
```

-	Layers:
	-	`sha256:8c63a85934fe1547e125c6a87ad7e3c27a7f588405e9bbf4c1e99e05af06b253`  
		Last Modified: Wed, 05 Aug 2026 01:10:57 GMT  
		Size: 3.3 MB (3285273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc955db231bd943be28fd3e95953e5390a9b58998071f66872077d0350929d76`  
		Last Modified: Wed, 05 Aug 2026 01:10:57 GMT  
		Size: 13.6 KB (13637 bytes)  
		MIME: application/vnd.in-toto+json
