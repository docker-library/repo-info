## `erlang:28-slim`

```console
$ docker pull erlang@sha256:1567dc5f045ca9b494e9b0d92d95b8ea4b3884ae57293480b812009de0da898d
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
$ docker pull erlang@sha256:0ecaf979f70acec356449372cb68ba7eeb1da03156dc901b830aed7580e37c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128314759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e616d77555ad11176c398e973e6c740d1b553793665667b62b845b357b9a3d`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:20 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 00:53:20 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Tue, 25 Aug 2026 00:53:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12dcb81ce5dc15181ba6dd0cd46443c3b383d6b93aa5a20f503b0ab96d4b4a72`  
		Last Modified: Tue, 25 Aug 2026 00:53:34 GMT  
		Size: 79.0 MB (78976931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:42c29b5210fec5a7731f2f235b4c0d414ad3331c498b12418618fe7563704bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3302447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1beb51859dfaec61b2cd318fe82c3b7df2db63188f11e056a769160247bb81dc`

```dockerfile
```

-	Layers:
	-	`sha256:e955c18125c9f75537e31b4bfbc002366cd1a69e06a702e53eaa1e953a90f532`  
		Last Modified: Tue, 25 Aug 2026 00:53:32 GMT  
		Size: 3.3 MB (3288810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5e8360310205f59a1d14b397e055156a200b63d0bb21cf01e3990ff390acb6e`  
		Last Modified: Tue, 25 Aug 2026 00:53:32 GMT  
		Size: 13.6 KB (13637 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:4f73a45d8ac09e72ee0cbc5ba48c2c9c9b16c941b69a9de48701d8ee09279602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116987099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3723d512c3ce46265cbd57c2d149ee09113dc51589161a31cbc46e9c4f016553`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:41 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 00:52:41 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Tue, 25 Aug 2026 00:52:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:eb6dd3c63a4e348778a39eaaad39d8544405ca793fafad8492987c16b93bf6c4`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 47.5 MB (47513959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595f4b64f0c3d95f27f8e23ac6a00c9bf4e0bb9874d9a1fe938757f671ce0875`  
		Last Modified: Tue, 25 Aug 2026 00:52:55 GMT  
		Size: 69.5 MB (69473140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:e5af2571dc364eb2b8ad53613126c2b4968ac9f138d5620f6abf70a29ce2d27d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3305494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f421828a05e9af83e5f98f3a3c748c436bd70a4509e96998723e0896855c665`

```dockerfile
```

-	Layers:
	-	`sha256:5cb96208871baa7bde4ec75f6a074046abf4af19053f7d43837952e89135086b`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 3.3 MB (3291777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75ae7bf74119ee4b355217b64a7073bfe795ae9a98502a586ab478539817a148`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:8228859062d641c345409dadd38307913f191280e2a8d6d9e13a87ab672bb19e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114825770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c587691545c4a5a29bb24480034d715cb18405a1fc6e5daf54f11b369810aa91`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:35:24 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 01:35:24 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Tue, 25 Aug 2026 01:35:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:35:24 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14452d5b6503cc3fea4a0451725117416e1ab646dfdd10ee46faafeeb725547e`  
		Last Modified: Tue, 25 Aug 2026 01:35:38 GMT  
		Size: 69.1 MB (69061719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:7bdc086d777f6d665c911ea154b115cafffc4183fccfc25fed1dde078e058fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3303943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa234870fb7ddc9ea62057644f3a5f5e16dd286559a64c7b2adca16df0ca917`

```dockerfile
```

-	Layers:
	-	`sha256:d6d0b9b1bae0f6ed50230f865570087f2adb33da5cfadf44cdfe6dd7079e3db6`  
		Last Modified: Tue, 25 Aug 2026 01:35:36 GMT  
		Size: 3.3 MB (3290226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e94074776410fac53d43bb76b06e4baf89df1929a8a2c01df26faec66a863cee`  
		Last Modified: Tue, 25 Aug 2026 01:35:36 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:21ae978afd9bd0c946f429d2b2cb3b4a285d03b727d0779a4f4c545062545480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127226863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694ce0742e200979959dd1696e432738873415c4bd4b79ddcfad6d3c62e9d6b7`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:55:30 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 00:55:30 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Tue, 25 Aug 2026 00:55:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:55:30 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31d900ccb25f9f869559ab89199d63e510b37adafd44ad8e7ccebf3828febe6`  
		Last Modified: Tue, 25 Aug 2026 00:55:45 GMT  
		Size: 77.5 MB (77522010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:47f0361410aab3bce4e57e88fd40af996db427cce7002bb3f434374fc09495ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3303437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51518e8f4bf43e5193555122f89cb11b472f8d6181ffee75d591a2c1ab558ae0`

```dockerfile
```

-	Layers:
	-	`sha256:94a4ce9a6a06cda1385f53d2ae9fc48bf323d66a7f92e329cf3e9748b08df786`  
		Last Modified: Tue, 25 Aug 2026 00:55:43 GMT  
		Size: 3.3 MB (3289696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38ddecfdf3ad44e7b2c52b76b72568b56a83cb8ad1da0c8007811f1560db2029`  
		Last Modified: Tue, 25 Aug 2026 00:55:43 GMT  
		Size: 13.7 KB (13741 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; 386

```console
$ docker pull erlang@sha256:49450aa58cb98a0e8ef2557dc0c7e5205c390920cc28c6765f0760c15785936e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120334954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c0398edcc9870eb08aca0ab700c39c52ed1c17303e27abdf218570e84e82135`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:06 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 00:53:06 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Tue, 25 Aug 2026 00:53:06 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:06 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d75b204f7153f238fcac9b94472ea1b6db5b2bca81d77c39f1bf50cf3fea82`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 69.5 MB (69485372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:cce05da084a185823bf6bdffff05244fcd19348c4de71777f32504b92e9c7e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3299590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ff8e427ae128acf84d7a0ab53cf8ebedee95f88fbd3823591a4a46cdad223e`

```dockerfile
```

-	Layers:
	-	`sha256:106c3684583a0e156a6e76a70dc4d67348f41b47fe6f05f23431a09f8ba0fa51`  
		Last Modified: Tue, 25 Aug 2026 00:53:17 GMT  
		Size: 3.3 MB (3285985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:359b9d41431c022e53768671ef1f02df385e3d7199f1daa25dd9ccb6f946630f`  
		Last Modified: Tue, 25 Aug 2026 00:53:17 GMT  
		Size: 13.6 KB (13605 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:6f52b9fa144ff0ed22d69d39c861ab6f32d21d6de71e84c14203b80aebe42ee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123584623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a809ed9f9c6ad989be90956708502014d3f1d4e76986a04c69dcf102256f141`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:42:20 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 03:42:20 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Tue, 25 Aug 2026 03:42:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:42:20 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd946c34a603fedc7355c0ed09d16d28e4a47173379cd175ec20597eb0c3ef40`  
		Last Modified: Tue, 25 Aug 2026 03:42:43 GMT  
		Size: 70.4 MB (70420340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:7706afd2483abb9c91599144ecf98f03617c0922773f6b32afe157a5c5869160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7dd631e460b5079c6402895e1ad5c4ecf4626e96e4a0679096ed0c26414c8d`

```dockerfile
```

-	Layers:
	-	`sha256:e5ec5bc7c6a42949a9fe471d61dc3230841df9bfdcd5c763127c8f55663f17fe`  
		Last Modified: Tue, 25 Aug 2026 03:42:41 GMT  
		Size: 3.3 MB (3292395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa68ab5eb5804c88b5d55954b2422b8e7767265bda44b727f8058aa48d9b64dc`  
		Last Modified: Tue, 25 Aug 2026 03:42:41 GMT  
		Size: 13.7 KB (13679 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:28-slim` - linux; s390x

```console
$ docker pull erlang@sha256:11abb7b376c567a137b9d3478ffd45666fd0d32ed70eaf61055e7d3cfa05f1d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119718909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:262f64a5a2d8fa0a80dd9b4bb22629b7bd041e56a69d2d43efe8027ec3109f85`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:27:50 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Tue, 25 Aug 2026 01:27:50 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Tue, 25 Aug 2026 01:27:50 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:27:50 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597bf9b8af22b1cb34d1344f80b2b1e6beb38c53a7dd0b83ac3cf6659a9291fe`  
		Last Modified: Tue, 25 Aug 2026 01:28:09 GMT  
		Size: 70.3 MB (70312212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:28-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:342f87e0259f77850a7d2931da2fe782a5f2bd7b70fa43b8b59c3c9efb7c5b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3303888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9eddf1081f8c58ea5dfdd03ab1bde4dfd69b00d0abe3d358e4501a15cbfaf96`

```dockerfile
```

-	Layers:
	-	`sha256:f98fd882ed158fa058f8ef670850a2bf104b00687056f804e7e4d2c21e78114d`  
		Last Modified: Tue, 25 Aug 2026 01:28:07 GMT  
		Size: 3.3 MB (3290251 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e815dd3877c32ca65a28cd1873bae8f243e2a4ee8ea3d0d0ffd726b87d41d3a`  
		Last Modified: Tue, 25 Aug 2026 01:28:07 GMT  
		Size: 13.6 KB (13637 bytes)  
		MIME: application/vnd.in-toto+json
