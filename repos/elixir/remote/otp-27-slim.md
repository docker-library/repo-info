## `elixir:otp-27-slim`

```console
$ docker pull elixir@sha256:11f2ee0004dc4a991ca80d1263ee3425d81e34dc2e75cdd9a0444a4d11bd6481
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

### `elixir:otp-27-slim` - linux; amd64

```console
$ docker pull elixir@sha256:42401f9aed696d5c2dff8009a2e72def6aee878f357c310a7a027dde44466566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135632298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62630a860fa5e09c4b36a1daec0495c840a1af34d1c0b6f969da7b6c7423179b`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:02 GMT
ENV OTP_VERSION=27.3.4.18 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 01:44:02 GMT
LABEL org.opencontainers.image.version=27.3.4.18
# Tue, 06 Oct 2026 01:44:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="920d00076d94f4850bd642d79da3229c8e5eea7ebc914996ee6dfd2154aeacf7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:02 GMT
CMD ["erl"]
# Tue, 06 Oct 2026 02:49:51 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 06 Oct 2026 02:49:51 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:49:51 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5087d33e1a6d73e593c9548c999c6451b542d55be76725309980379673864bcc`  
		Last Modified: Tue, 06 Oct 2026 01:44:20 GMT  
		Size: 78.5 MB (78500062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aede26e9158dab086ad577d3fe781c06a457814456e165c18da6d631668a4118`  
		Last Modified: Tue, 06 Oct 2026 02:50:01 GMT  
		Size: 8.6 MB (8614214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:ad016ce86b5f8a7139025b2972e9eade430c1ac55884b45c4e95e6e622fe7f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9da096ae139f017daf8410fae9caedf3a84bcf46c4dfc6e1775432a8a77b62`

```dockerfile
```

-	Layers:
	-	`sha256:fffe24481139baa9f2c32cb8038afc096543f8100bcd6e22d5ea13e40a8fc346`  
		Last Modified: Tue, 06 Oct 2026 02:50:01 GMT  
		Size: 3.8 MB (3831968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f1eb8fc4127447fd19adf238685aa24a9df2d216127296f56b580def1d4c90a`  
		Last Modified: Tue, 06 Oct 2026 02:50:00 GMT  
		Size: 9.7 KB (9747 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:f9b334624b63f016beb646479cae3ea9c6f17c260f93cc40b029b4daa480632d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120231292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74e2a0606be8163759c6d5d38a7590279d72a17b6951f49ac292d52f7dafc304`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:28:24 GMT
ENV OTP_VERSION=27.3.4.18 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 02:28:24 GMT
LABEL org.opencontainers.image.version=27.3.4.18
# Tue, 06 Oct 2026 02:28:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="920d00076d94f4850bd642d79da3229c8e5eea7ebc914996ee6dfd2154aeacf7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:28:24 GMT
CMD ["erl"]
# Tue, 06 Oct 2026 03:42:38 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 06 Oct 2026 03:42:38 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:42:38 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a0ee71cc5fab1e70ee4d25b9554ddc6e3928b3b17d51f572f3de16074dc248`  
		Last Modified: Tue, 06 Oct 2026 02:28:38 GMT  
		Size: 67.4 MB (67403841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a1f046f2ef60e78365d5cc4c075afe57e61d799cf76bfa829c2444b26ca8964`  
		Last Modified: Tue, 06 Oct 2026 03:42:49 GMT  
		Size: 8.6 MB (8613539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:abf1eba145f4efb5c18ea033039f2b2b28633ef62fc49b9ccf4547dc5db8999f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdba45db879e8f860de8e24b9fdebda9511620f5a4e5a7dfd15078cd7c022a02`

```dockerfile
```

-	Layers:
	-	`sha256:51e7d8dc8202023009a70e7da4b83af8db55d8485d0755d28cc08d2a97c592a1`  
		Last Modified: Tue, 06 Oct 2026 03:42:49 GMT  
		Size: 3.8 MB (3834193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad22672d7e23739de442582ca5e1605ea8a01bd34f7646349091424f51b7a99d`  
		Last Modified: Tue, 06 Oct 2026 03:42:48 GMT  
		Size: 9.8 KB (9818 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:12dbcf89c6712bef3d95809437211c99178070bdc0de84bb584848c07557a0b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133204815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038bd6146b122024714e5522444719f5e914e1202e5773acb55f1eb4ba56b56a`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:46:57 GMT
ENV OTP_VERSION=27.3.4.18 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 01:46:57 GMT
LABEL org.opencontainers.image.version=27.3.4.18
# Tue, 06 Oct 2026 01:46:57 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="920d00076d94f4850bd642d79da3229c8e5eea7ebc914996ee6dfd2154aeacf7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:46:57 GMT
CMD ["erl"]
# Tue, 06 Oct 2026 02:42:28 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 06 Oct 2026 02:42:28 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:42:28 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be87da240a87e872195308262372a16438ae2bdba1cf09b40ea798a74afbc84d`  
		Last Modified: Tue, 06 Oct 2026 01:47:13 GMT  
		Size: 76.2 MB (76189235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4d45c4e7e94a0e68be3dfd0845dca38c6607a61234ba88ce9f5658a6f173c9`  
		Last Modified: Tue, 06 Oct 2026 02:42:38 GMT  
		Size: 8.6 MB (8614025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:8fff767ff597d74f739ba22b091c81a2d4e4f9c8f11466ff43a0a3e4dddefaf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3842056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec61d1923f4c3d82f01e9423584b4b4a5d50e4f4599f572d6b1dd0f7442ad0b9`

```dockerfile
```

-	Layers:
	-	`sha256:68c73b1882f028c226a5aa6d391cb69e4dbee0ca83cf54ebcc7d09ade25e369e`  
		Last Modified: Tue, 06 Oct 2026 02:42:37 GMT  
		Size: 3.8 MB (3832217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e542b82dce1f5620abce22e5aad58295df0d591ec5dec5f4d77cd78cf4b776de`  
		Last Modified: Tue, 06 Oct 2026 02:42:37 GMT  
		Size: 9.8 KB (9839 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; 386

```console
$ docker pull elixir@sha256:3c6b6d2aff3df21ccbd88fb4b7959981a2ef833f55b30582bfafefacc8698bb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126908958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71dd6bab9cbcccee2810e519469e0b7540af54410b35b29978c8d47bc67e34d1`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:47:58 GMT
ENV OTP_VERSION=27.3.4.18 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 01:47:58 GMT
LABEL org.opencontainers.image.version=27.3.4.18
# Tue, 06 Oct 2026 01:47:58 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="920d00076d94f4850bd642d79da3229c8e5eea7ebc914996ee6dfd2154aeacf7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:58 GMT
CMD ["erl"]
# Tue, 06 Oct 2026 02:45:51 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 06 Oct 2026 02:45:51 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:45:51 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:70e4ecc0352ac50b173cb5a25f4b7f4f26ea4742d8b6e94d48a7b74d771b75b1`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 49.5 MB (49505330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c67e8d10a58c517766f41e9276675f43d4e72fd174dbc0c49daf469710c036c`  
		Last Modified: Tue, 06 Oct 2026 01:48:12 GMT  
		Size: 68.8 MB (68789849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ea5313a5b844e848cfa99d779e2a2f977bf2430429c929285b4509979bf2d4`  
		Last Modified: Tue, 06 Oct 2026 02:45:59 GMT  
		Size: 8.6 MB (8613779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:6d7f5f172f7d9f2319156f8012debd6767134ca7924d5a74dac89b9d7158d157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5633d5142c10dc115fbdecc6b67b288bc7563b54fa5fb1fa0fe0e779d2032681`

```dockerfile
```

-	Layers:
	-	`sha256:ccc1694d570cae2ba9d324309ea4e26f05b17761b895c7c520b0230c146ac756`  
		Last Modified: Tue, 06 Oct 2026 02:45:59 GMT  
		Size: 3.8 MB (3829134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb2172079685630e515c5f92bbfbc391bf4ab3e667a01aabcb0956bfd5bae838`  
		Last Modified: Tue, 06 Oct 2026 02:45:59 GMT  
		Size: 9.7 KB (9720 bytes)  
		MIME: application/vnd.in-toto+json
