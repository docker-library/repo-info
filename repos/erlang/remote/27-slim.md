## `erlang:27-slim`

```console
$ docker pull erlang@sha256:407250b0a4b3388cd779807a33cd217db1837aafb63f988ce2244b22570aa8e3
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

### `erlang:27-slim` - linux; amd64

```console
$ docker pull erlang@sha256:35ce62a089b93a58af496e9babf1195e095e7c34db14e37cb886bc0264ee4dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124769390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b98aae0b3d067c632793f3506b66582a6bd5edb717d56570df47d5e80c88ab`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 21:17:38 GMT
ENV OTP_VERSION=27.3.4.20 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:17:38 GMT
LABEL org.opencontainers.image.version=27.3.4.20
# Tue, 24 Nov 2026 21:17:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="9717de6c0b7ca569770e09c70aa3d36b88a53d509bacfa8688927fbfd119e7ff" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:17:38 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e10bdd0194eea62b5ef3bb28d9639f9b399a83c3df7cb7301f627835109567b`  
		Last Modified: Tue, 24 Nov 2026 21:17:52 GMT  
		Size: 76.2 MB (76243011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:13161e49dae88026ea9e6f15a70831c8b5b6f180f9b7217d4dd5fb7c51d913be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b96f0cc08ac0a9285b3207c40db716d44b97a0d6e0376e739fb784516f54f2a`

```dockerfile
```

-	Layers:
	-	`sha256:79d889178e571cffff32ad0ec65582d2105499d3022d988d751cd48ac9bb0042`  
		Last Modified: Tue, 24 Nov 2026 21:17:50 GMT  
		Size: 3.8 MB (3824958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f40a7dc2598388c9b54d05a6aa3522e9f5bf8f40e16e9ba297907aec9c7c0058`  
		Last Modified: Tue, 24 Nov 2026 21:17:50 GMT  
		Size: 13.6 KB (13639 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:16572ba5b63f4a446134f1d77314fe0873d1ece2c89233e3374b5e54ad08185a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109570371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64eea0e19210a08a8a7a34f9367715710b25237a273bb849751f75faf4564bf7`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 21:21:11 GMT
ENV OTP_VERSION=27.3.4.20 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:21:11 GMT
LABEL org.opencontainers.image.version=27.3.4.20
# Tue, 24 Nov 2026 21:21:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="9717de6c0b7ca569770e09c70aa3d36b88a53d509bacfa8688927fbfd119e7ff" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:21:11 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:bf46e8a44ab51f3c808ab48aaf11399ad2da7d0966cd41620337234ab118fa7f`  
		Last Modified: Tue, 24 Nov 2026 03:39:44 GMT  
		Size: 44.2 MB (44223203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f223e0ac10bd3e8bfae189ab7763b7edada4060e5ec6ee7954908b88d4a69ba9`  
		Last Modified: Tue, 24 Nov 2026 21:21:24 GMT  
		Size: 65.3 MB (65347168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:3f1ed0152f4820a6298c6d14578078cbe106c60fdd068ff6ac0d4d9f471d54c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a06923e2797cff9cff73844472d8e810d9a0afb9eddaa156b74cfa3d6ecd35dc`

```dockerfile
```

-	Layers:
	-	`sha256:886aec3004bfa29f2c37c2cb132dbe61dbeadb17acd845c0f25ec4175b5dc109`  
		Last Modified: Tue, 24 Nov 2026 21:21:22 GMT  
		Size: 3.8 MB (3827191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9905afd3e7de3328eba1f0f9cd6ac1981488871e39f98d7c56ab899e3f86280`  
		Last Modified: Tue, 24 Nov 2026 21:21:22 GMT  
		Size: 13.7 KB (13719 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:1cb8bc6b3ac80bf2527b1450023e9bfa25a6021679073789cd29ec953755174a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122380445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1abe31cf7daa0c2904b78879902f58a01242c76f7001c57f1e1c43334db427b`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 21:18:40 GMT
ENV OTP_VERSION=27.3.4.20 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:18:40 GMT
LABEL org.opencontainers.image.version=27.3.4.20
# Tue, 24 Nov 2026 21:18:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="9717de6c0b7ca569770e09c70aa3d36b88a53d509bacfa8688927fbfd119e7ff" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:18:40 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22eb82fb142d43145863b818367a35b6912b3e6a1fd44192062fb69b1c1aa735`  
		Last Modified: Tue, 24 Nov 2026 21:18:57 GMT  
		Size: 74.0 MB (73968184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:dd5a4b9d0bae4108c63c61746b500abc8001ccb22903930f59e39b539e5bf315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4190939f66a0e6577d20468dcbd9cc79ff2655b0b53fa73a9d6c71bc1c990c`

```dockerfile
```

-	Layers:
	-	`sha256:205354013e741f23eabb4ac84ba06b02c8de54cb7e4f1e687dab2412f19a5c62`  
		Last Modified: Tue, 24 Nov 2026 21:18:54 GMT  
		Size: 3.8 MB (3825219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:113f1e8f562a82d60955560f9e24d9b0186c44db83a53921dc160d0d0732684f`  
		Last Modified: Tue, 24 Nov 2026 21:18:54 GMT  
		Size: 13.7 KB (13743 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-slim` - linux; 386

```console
$ docker pull erlang@sha256:fa7db4b7f60d11454a9f9c24fc99de64bfc31ae512a469290373e4796459170c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115909644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5f3fe2c550827fb67a8ee2d5d292cc3f914f508aebfaf5901a08ebac1ef48f`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 21:14:00 GMT
ENV OTP_VERSION=27.3.4.20 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:14:00 GMT
LABEL org.opencontainers.image.version=27.3.4.20
# Tue, 24 Nov 2026 21:14:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="9717de6c0b7ca569770e09c70aa3d36b88a53d509bacfa8688927fbfd119e7ff" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:14:00 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1a02516812a2a0b6f9a87d8de0c28859cbb034b270bb5420900e25550c14f3`  
		Last Modified: Tue, 24 Nov 2026 21:14:14 GMT  
		Size: 66.4 MB (66394112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:d89bf8e626bbf8386c27de173e603f2b5c41c9dfd9b06c4eb9dec7cb319c6250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4b1481400d8e5f61c2ff969692937f99e66e87c3cd14f91a43aae350ce7ef5`

```dockerfile
```

-	Layers:
	-	`sha256:40d7acabca325f3a448b28d932e3be8c3917568f32fbcd52470bbee7c48fe410`  
		Last Modified: Tue, 24 Nov 2026 21:14:12 GMT  
		Size: 3.8 MB (3822119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8598d8538d9c6e0641e39ab2842220e4f93ac1f12b834fb35ab110aace5e902`  
		Last Modified: Tue, 24 Nov 2026 21:14:12 GMT  
		Size: 13.6 KB (13607 bytes)  
		MIME: application/vnd.in-toto+json
