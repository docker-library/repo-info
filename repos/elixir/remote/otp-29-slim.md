## `elixir:otp-29-slim`

```console
$ docker pull elixir@sha256:3898ffe18d695e770239e4b342dc6b83136f52da0a37df2298083c03068cfd4e
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

### `elixir:otp-29-slim` - linux; amd64

```console
$ docker pull elixir@sha256:5c82b47119ae19dadc730c6fd499e34bace9edbb17c11dde1ec147e684f49c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138433753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb73307649141ec91e7facf3a78b51aeaa43a482986e74e59c7f7e592c60762`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Tue, 22 Sep 2026 19:11:49 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 19:11:49 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 22 Sep 2026 19:11:49 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:11:49 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 19:49:56 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 19:49:56 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:49:56 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62a69747e024aa8aac056828c374d807ab8a3d45a49c25c3fe439da098a067f`  
		Last Modified: Tue, 22 Sep 2026 19:12:04 GMT  
		Size: 80.4 MB (80448610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c039d3c90d1e9eebe36f5e79dfe34d8f81c6d146b90dd07c9c4079d9de9296e`  
		Last Modified: Tue, 22 Sep 2026 19:50:06 GMT  
		Size: 8.6 MB (8605444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:cfc925ebe976349f91e79cd94ced40b4061b63bd73ed0a90f38104e62ef7de08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3312126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327b833b85c6daa3a5a3431cbb4fabf154934d2b90ff4ce80e285f0f33a9027d`

```dockerfile
```

-	Layers:
	-	`sha256:efb7e9ae4e2c2b52b8171f0bec28cba6f43f899bd2cbb9e5f436e0f58ce520c8`  
		Last Modified: Tue, 22 Sep 2026 19:50:06 GMT  
		Size: 3.3 MB (3301490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1320564b2ef1f860410a8ab9665fc16595629182eb52f7cf3991a10331216dc6`  
		Last Modified: Tue, 22 Sep 2026 19:50:06 GMT  
		Size: 10.6 KB (10636 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:196465a3d3c3742a429c1eecf3162607b19ac027d6a61512d451b9e6bdc7a1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124602532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:532463ae20aff7233f80b9d76c8a338889d246b3e1184b412baf0c58362fe8ca`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Tue, 22 Sep 2026 18:51:06 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 18:51:06 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 22 Sep 2026 18:51:06 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:51:06 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 19:11:43 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 19:11:43 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:11:43 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:d2a96b81f7dd856e671dd780163738168310a9b621a2e674fe3f0d153d5d2c28`  
		Last Modified: Sat, 19 Sep 2026 00:03:37 GMT  
		Size: 45.8 MB (45804267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce53058bde6b8c702517d1edfd21c422cf2e26f5bdf30d42a8c14404dfdbdad8`  
		Last Modified: Tue, 22 Sep 2026 18:51:20 GMT  
		Size: 70.2 MB (70193328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3c80fb96725a7bfed8b94aa231c9ce3a7c2629f5916e8cc2be8707ece40fac`  
		Last Modified: Tue, 22 Sep 2026 19:11:52 GMT  
		Size: 8.6 MB (8604937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:0904bd9e4f02b29833eff30b00b99215f792994c6163f123e7d332648715c0b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3313654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e86228315c99460426d8d542c02b91760cdae2eacff6db66acd7e83848fad01`

```dockerfile
```

-	Layers:
	-	`sha256:456b0aa79dbbb8f83477e90f9ea9f520d8100d9e68124b3c784593c77fb583cf`  
		Last Modified: Tue, 22 Sep 2026 19:11:51 GMT  
		Size: 3.3 MB (3302922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a297c61a8101a3478e0546da97e9451ba9e997b19df3a8ae821ae9a430d8486`  
		Last Modified: Tue, 22 Sep 2026 19:11:51 GMT  
		Size: 10.7 KB (10732 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:698f6c6641acbf8ade9c78f697e228a4818615d8de595b48410d28e0ae52b161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137250768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b172e275c56729c00efc37191f49a54bd0c7b30cb02505cfd62e3fef46b4ed3`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Tue, 22 Sep 2026 19:51:41 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 19:51:41 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 22 Sep 2026 19:51:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:51:41 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 20:00:35 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 20:00:35 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 20:00:35 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ddd896abd681dc2260d6cc3ff5f4ff28a309647197bd87aa71f0001dec696c`  
		Last Modified: Tue, 22 Sep 2026 19:51:57 GMT  
		Size: 78.9 MB (78896616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3e781eb6bc95628f65eda000fdc6b0ae6e7740117a904794ccf2ef06d1f8b4`  
		Last Modified: Tue, 22 Sep 2026 20:00:44 GMT  
		Size: 8.6 MB (8605316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:2fd17031cb458d92a6bb82c655041164d1c171dbcb578cba722839eecbec5a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3313164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c1a69f841a3a6372c6c6836e1f5e80f57967f02465449133ffa9a23e59eb52`

```dockerfile
```

-	Layers:
	-	`sha256:46a1f8c938844695ac7ab90e7cfc40258796158c68812282e2f3f8714670cb9a`  
		Last Modified: Tue, 22 Sep 2026 20:00:44 GMT  
		Size: 3.3 MB (3302400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc32884ac65c7e5b4fbf5a6f9d4f7561fa35e0ad75ecd1544dd940ffeb161214`  
		Last Modified: Tue, 22 Sep 2026 20:00:44 GMT  
		Size: 10.8 KB (10764 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29-slim` - linux; 386

```console
$ docker pull elixir@sha256:6d3609553991ab106e506266438fe941b21f49d50dbeb4d6ca062c706219a40f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.1 MB (130078302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b993230af8a57f44696eb36ad5a676a8cad235bfcfa99c7b1584ba1d3254db36`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Tue, 22 Sep 2026 18:50:41 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 18:50:41 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 22 Sep 2026 18:50:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:50:41 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 18:58:40 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 18:58:40 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:58:40 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e16f99d6bd551d5d16417b39e4906c2eba497653dbe00a333fe956831192bf9c`  
		Last Modified: Tue, 22 Sep 2026 18:50:54 GMT  
		Size: 70.6 MB (70580582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0992c2fb06a364eafb08f422c70f0e25d938b755141733cc7c6e8c696e4e9404`  
		Last Modified: Tue, 22 Sep 2026 18:58:49 GMT  
		Size: 8.6 MB (8605004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:808baf0e9e85b032a136cdf515943d8238b4b4cbffb07c80c71c0b186f86943b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3309250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245faaf9506ac6004e54dbf95c828d72465ea4034a3c99da526bf97888af00c3`

```dockerfile
```

-	Layers:
	-	`sha256:9b6dd6c70ff9e45d6ff0629a7c452d470a8cdf8d409a455ea15a1cc52e8fa30d`  
		Last Modified: Tue, 22 Sep 2026 18:58:49 GMT  
		Size: 3.3 MB (3298656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f334569fe09ee9ca14548d3dc177b43f629d751978a77e29d5d9e336a7520a1b`  
		Last Modified: Tue, 22 Sep 2026 18:58:49 GMT  
		Size: 10.6 KB (10594 bytes)  
		MIME: application/vnd.in-toto+json
