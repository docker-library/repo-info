## `erlang:29-slim`

```console
$ docker pull erlang@sha256:ba58d509e4b6af3fa490ee13112cdedd80c6dd3b6d4bee5fd60ae9dcc07766a5
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
$ docker pull erlang@sha256:04f8492a880e591288974ba5d5572e2a833fa3f9c62deceed207f2336d8d072b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133218549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c72e37acb53c1462be667e8489b3e9a3bf4479b3ac3abefeebad5e50ef338e6a`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 23:03:45 GMT
ENV OTP_VERSION=29.0.6 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:03:45 GMT
LABEL org.opencontainers.image.version=29.0.6
# Tue, 01 Sep 2026 23:03:45 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="36c89ffdac9d7531c19be0cee34355b167ea95188625d32bee61ebf49ac82afa" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:03:45 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db259ac49b1d82c326f14a885f413c28389c9f2283fcb0a197276066984d136`  
		Last Modified: Tue, 01 Sep 2026 23:04:00 GMT  
		Size: 83.9 MB (83880721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:84537502fdc7cd7948b4a7ccdfadb19cdcbe65a93b5b3fbfbd60ea6f054f99cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3302831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f0966c2046129a2fc8d41394648342b48052ecced86492daa7015d89180331a`

```dockerfile
```

-	Layers:
	-	`sha256:8953bf7b44ded777c6865bc006e525c3bcc62daef4c8ddcfc9f887ea804f5386`  
		Last Modified: Tue, 01 Sep 2026 23:03:58 GMT  
		Size: 3.3 MB (3288902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a3ddc2107b08f39a056342aa9c13b6c60b592ed277481b816c878779d322957`  
		Last Modified: Tue, 01 Sep 2026 23:03:58 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:84a2978799c8f991311abc5cbfef4e1516eb2cb95aa8afdfc7c6461b688852f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120992468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc18cecc3769c898b083c558a04eb1c390c5b60b19f947a9284d3e30d8c3eb2`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 23:04:27 GMT
ENV OTP_VERSION=29.0.6 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:04:27 GMT
LABEL org.opencontainers.image.version=29.0.6
# Tue, 01 Sep 2026 23:04:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="36c89ffdac9d7531c19be0cee34355b167ea95188625d32bee61ebf49ac82afa" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:04:27 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:eb6dd3c63a4e348778a39eaaad39d8544405ca793fafad8492987c16b93bf6c4`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 47.5 MB (47513959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db914317a5cf33506fa1dbd49f650154834d54ace015961c77957f40517f8ef0`  
		Last Modified: Tue, 01 Sep 2026 23:04:42 GMT  
		Size: 73.5 MB (73478509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:7f7f217776ad5b6b5ec31a1fbbca24fc0ed6499ac2ad859614c0060bb6867fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3305894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a42aeebb230804325f773374a6f607f1281ff4153393ff586b61d71198007d53`

```dockerfile
```

-	Layers:
	-	`sha256:6d3630c0ae325c163e22be9dc23214e48b3ccb979ed8b71952ed520a87e037bc`  
		Last Modified: Tue, 01 Sep 2026 23:04:40 GMT  
		Size: 3.3 MB (3291877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49981332a7ae6c91157549c64829b050ed477c6c46d886f4d576d2b4b86e2fd6`  
		Last Modified: Tue, 01 Sep 2026 23:04:39 GMT  
		Size: 14.0 KB (14017 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:0eb33ecec576e33d8210bf91956a77732a19a024d3c6fb64c5dfa7634e6ae2de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118646053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7710a0ce0204215901987a26606309dad29a4a03677405742d80560e917c54`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 23:15:55 GMT
ENV OTP_VERSION=29.0.6 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:15:55 GMT
LABEL org.opencontainers.image.version=29.0.6
# Tue, 01 Sep 2026 23:15:55 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="36c89ffdac9d7531c19be0cee34355b167ea95188625d32bee61ebf49ac82afa" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:15:55 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35d85b067c51434d4ac843c4027b024c2fdf42d0db8e128aea47de73b2fce35`  
		Last Modified: Tue, 01 Sep 2026 23:16:10 GMT  
		Size: 72.9 MB (72882002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:1c40d9c5911b0ea09a67408d055b574ebdc6553e75bef20a3148a0cec9ec22e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3304343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fccbb63dada4e9633cf4548a8c659931c0d173f1465fc729936ed222181240`

```dockerfile
```

-	Layers:
	-	`sha256:84459fb3fe62dc0baa4fcb8b9d0c538dae37b7d299149966716c798e37bd11fc`  
		Last Modified: Tue, 01 Sep 2026 23:16:08 GMT  
		Size: 3.3 MB (3290326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:477eb074fb58c3bc3cd8937e92541a141b03be209c8142652911c6394bfe1b6c`  
		Last Modified: Tue, 01 Sep 2026 23:16:08 GMT  
		Size: 14.0 KB (14017 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:5b71a5a004bfca85beb8202c983ce80eb250cb64fcd9a870e24e4291d49f0b9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.4 MB (132433398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70bdcedf39878d1407c654055068576cf97119fd22f0e6d3663dd606e01a77b`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 23:05:02 GMT
ENV OTP_VERSION=29.0.6 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:05:02 GMT
LABEL org.opencontainers.image.version=29.0.6
# Tue, 01 Sep 2026 23:05:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="36c89ffdac9d7531c19be0cee34355b167ea95188625d32bee61ebf49ac82afa" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:05:02 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5ebe001cbf0ac3d2023be28f491f17b9d3024eae917bb138b54e6892625e18`  
		Last Modified: Tue, 01 Sep 2026 23:05:18 GMT  
		Size: 82.7 MB (82728545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:3d5bd558dd9b17763cedf129e012e96543ea107ef52639f9cb40d68516a26dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3303845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f116c1476bb1afb9818dd6b9cf87712fb00853c71b25f19553556d634bdae529`

```dockerfile
```

-	Layers:
	-	`sha256:be998fc3b303d6a8c402a4b9505cbccbcb3aed38a9a15c9fa4024571fd104002`  
		Last Modified: Tue, 01 Sep 2026 23:05:15 GMT  
		Size: 3.3 MB (3289800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a875fa8cc177a870e565f30e5be577da5c9d5c2c312e1d14b406533da62e461f`  
		Last Modified: Tue, 01 Sep 2026 23:05:15 GMT  
		Size: 14.0 KB (14045 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; 386

```console
$ docker pull erlang@sha256:9f98fb7b7688a938708e4d73a3bf3585c42653fc51220bd2af3e632594e5ac6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124804129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97cdf8522d8a094447d58ca659928aee780c5f5d2843b6c9afca119dd787374e`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 23:10:05 GMT
ENV OTP_VERSION=29.0.6 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:10:05 GMT
LABEL org.opencontainers.image.version=29.0.6
# Tue, 01 Sep 2026 23:10:05 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="36c89ffdac9d7531c19be0cee34355b167ea95188625d32bee61ebf49ac82afa" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:10:05 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96bc0afed5f9f521da04518a8015363f933008ec5059ed1347677f60db8f8f7`  
		Last Modified: Tue, 01 Sep 2026 23:10:18 GMT  
		Size: 74.0 MB (73954547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:1a2e4722eacb10344ae4342da5d14109338d81b1c55abedb093355e019011a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3299964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6f45cba9a9d25c18653a915fbd4ee9fc8649f89808b814b19b2bb81970b7cd`

```dockerfile
```

-	Layers:
	-	`sha256:2fa81f6a72158abe798aa3f8adf701d06775c682cd7efed9a752e0273d96ab0c`  
		Last Modified: Tue, 01 Sep 2026 23:10:16 GMT  
		Size: 3.3 MB (3286072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73ea64b57151337e5514688d6e1a1114d1d90ff5e6f85e0e0a85d79c2e463749`  
		Last Modified: Tue, 01 Sep 2026 23:10:16 GMT  
		Size: 13.9 KB (13892 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:13d1a220bccd0696bf6c65c824f0bffd8e149a60758f5fdea68c065d4d78b7b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128411628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47839057a525360b0e342e787d4022e328746200aa979092b90891357761f4c9`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 02 Sep 2026 00:24:05 GMT
ENV OTP_VERSION=29.0.6 REBAR3_VERSION=3.27.0
# Wed, 02 Sep 2026 00:24:05 GMT
LABEL org.opencontainers.image.version=29.0.6
# Wed, 02 Sep 2026 00:24:05 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="36c89ffdac9d7531c19be0cee34355b167ea95188625d32bee61ebf49ac82afa" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 02 Sep 2026 00:24:05 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5f1fc3bc93dfdfa0bedcaf02e006060559332b5b20e024822944acaf8c295e`  
		Last Modified: Wed, 02 Sep 2026 00:24:32 GMT  
		Size: 75.2 MB (75247345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:e452a35f5db6af0396eb5651a17b2d2f2e5ad514650968a60e94716154604b2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe65cd20f37faf15aa94470c76aa17d56f8a9b7ea0b5977c1d30b1600bc03b71`

```dockerfile
```

-	Layers:
	-	`sha256:02db7a766b5c8dcfc3d06f6134160831206712ae18ae224a10cda17cb2289ab3`  
		Last Modified: Wed, 02 Sep 2026 00:24:30 GMT  
		Size: 3.3 MB (3292493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53505c6333801084ff894cedd9b011ef40399eef13a5aa73f234de1708ab3e08`  
		Last Modified: Wed, 02 Sep 2026 00:24:30 GMT  
		Size: 14.0 KB (13979 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; s390x

```console
$ docker pull erlang@sha256:a8583d3ef869e0bb0166b249ba61db0dd05666411ab4df87e90895f8d1e9deaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123946176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9608535d7bf3c23c59d6b9eac18d9c29c176e1404b4d5589f2a1626a99ee9653`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 23:04:54 GMT
ENV OTP_VERSION=29.0.6 REBAR3_VERSION=3.27.0
# Tue, 01 Sep 2026 23:04:54 GMT
LABEL org.opencontainers.image.version=29.0.6
# Tue, 01 Sep 2026 23:04:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="36c89ffdac9d7531c19be0cee34355b167ea95188625d32bee61ebf49ac82afa" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 23:04:54 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01f0a2bd0713c46581412f178890ac05f8434e42398b7100ce6c7264e095853`  
		Last Modified: Tue, 01 Sep 2026 23:05:16 GMT  
		Size: 74.5 MB (74539479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:7fd40679b32bf4d0e464f2930e043cb52e8fdc436c7551948adf0ced5ca36fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3304272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f84b4736ba1178f7d5b1d0728c3b35c138eeb2078875d7afdb5e95034565a25`

```dockerfile
```

-	Layers:
	-	`sha256:0ac3ea4952ba5097ec38089817e9d6cca1a5ecd20e60d0ab2aa63a8500a99066`  
		Last Modified: Tue, 01 Sep 2026 23:05:14 GMT  
		Size: 3.3 MB (3290343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0d007d0968ff62718ed72f164ea233dba7d29519d25669916fd81a4c636ef38`  
		Last Modified: Tue, 01 Sep 2026 23:05:14 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json
