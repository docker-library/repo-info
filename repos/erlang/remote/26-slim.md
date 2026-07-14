## `erlang:26-slim`

```console
$ docker pull erlang@sha256:236d9649e0317deb5049fb6224afc0cd4edea679af50612004aea4330c7b0bd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `erlang:26-slim` - linux; amd64

```console
$ docker pull erlang@sha256:cd41eb7303123e2c187f42e64f6e3908d1348f90d2bc13a579f1736ed9bccc2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118969968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5107683d8f9dd1b81f08e8160379a8bc9084fb6ac0e703827f5b71ecb1bcf8aa`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:10 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Tue, 14 Jul 2026 01:48:10 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Tue, 14 Jul 2026 01:48:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:10 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf14fc9a2824e9157bc375772f1ce4fda06feb63a9de6d07fb6f0f5ef26ad8e`  
		Last Modified: Tue, 14 Jul 2026 01:48:24 GMT  
		Size: 70.5 MB (70472565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:89ba30a7f1af63b3d526c01d74079d9490300aefa742b6303405d657047ffd54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3839652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22877af2acde87981a117d8c8fff3e4296e6738b7d9595cba55bf131e90d34b`

```dockerfile
```

-	Layers:
	-	`sha256:920e26967c634babbd793217a7cb4f211b8db01e923b860e165fe11c2b81b52a`  
		Last Modified: Tue, 14 Jul 2026 01:48:22 GMT  
		Size: 3.8 MB (3826090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14819a1f96da7ebfddc922a74df87414936a8b73d084b2c8cf16a87317b83ecc`  
		Last Modified: Tue, 14 Jul 2026 01:48:22 GMT  
		Size: 13.6 KB (13562 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:883e55f66ad187747182fda348fa2446e2b75dc542e42fc72829c34ffcc5f464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106603891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17e16026ff789749c30dbde4379be883113fe5cb771c55216eed69f55c1a338`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:31:11 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Tue, 14 Jul 2026 02:31:11 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Tue, 14 Jul 2026 02:31:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:31:11 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f99a0c6c2573399952c2c4cea64053957ffa423850eeb55a72c61f7e0b4f7c8f`  
		Last Modified: Tue, 14 Jul 2026 00:13:39 GMT  
		Size: 46.0 MB (46033816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8c459f12ed2587952c8f26bd6d32b7c71e2cb63f73f8fbc291a73509295be2`  
		Last Modified: Tue, 14 Jul 2026 02:31:24 GMT  
		Size: 60.6 MB (60570075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:e6266ce39c8ff47d1146ac01c4de4362e7bef493e9e65119dc04fdac537b9642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3843540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409a5b7857dcecb2842bd86de5410a0c48de177ae3ad7fc86ae1a55ac8cc68a5`

```dockerfile
```

-	Layers:
	-	`sha256:cbca34411876d881642a5fe9ac94f0258d3877fcb230db4754679559e0a93f4f`  
		Last Modified: Tue, 14 Jul 2026 02:31:23 GMT  
		Size: 3.8 MB (3829898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:192eed7e200ec01bb730f24c9da0eab29884051db18be981e0e0d6326d8f94d3`  
		Last Modified: Tue, 14 Jul 2026 02:31:23 GMT  
		Size: 13.6 KB (13642 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:b254ee8484a1a76eda3a4fa7c82d325f3083ee7cf03801bf3f9a8bfffc662575
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104393220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80afaf42023e3f0ffc949790ecc64e51aca481987d19f22179588ceaeb76f5a2`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:37:11 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Wed, 24 Jun 2026 02:37:11 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Wed, 24 Jun 2026 02:37:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:37:11 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:3622debffba3838b917703fb6dd9c161a4d93d9fd97c61d3e8400a2245f93c67`  
		Last Modified: Wed, 24 Jun 2026 00:27:30 GMT  
		Size: 44.2 MB (44208145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26be05045623af202d8cb11af7aeb93cf5e34858f4e39b2e10aaecda2751edc3`  
		Last Modified: Wed, 24 Jun 2026 02:37:24 GMT  
		Size: 60.2 MB (60185075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:2c439fab828f6c478ce41245f76a285a08222aa55ab734ca4a690d342b00d070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c526aeb4527a17ac181c280ed4f8b5961be3e28d30e06a5bf1516f1c322a6b9`

```dockerfile
```

-	Layers:
	-	`sha256:e2c2fc8df7ddccaf0aa1ea102733dbceb4e71b24c1b312e9d47779a67bed323b`  
		Last Modified: Wed, 24 Jun 2026 02:37:22 GMT  
		Size: 3.8 MB (3828287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7506e9f78698a348447f92ab50858bcd8552674ad602341166b75dd5e0241836`  
		Last Modified: Wed, 24 Jun 2026 02:37:21 GMT  
		Size: 13.6 KB (13642 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:84656c204d4c984c210beecc0522a729cea7fcbf559370b8958eb5a5cf1d62f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116499461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0b711a47a929820e70548f44b6c683fad80b466b3cfcade968cc40cba7b8f97`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:49:39 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Wed, 24 Jun 2026 01:49:39 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Wed, 24 Jun 2026 01:49:39 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:49:39 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a6abb06c2768209b75ce74a206e4155bd87da20edba838950786c6ab2766e8`  
		Last Modified: Wed, 24 Jun 2026 01:49:54 GMT  
		Size: 68.1 MB (68110260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:5a1c776a1ae4052af79eec67b17694d2779e60b497b3d5ab2f59b676543640ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3839981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f6acb619061f247f68014d12b13104a73117743a1b6d3d02b671a7bd6126f3`

```dockerfile
```

-	Layers:
	-	`sha256:b2109024eb9ea97ec658d5ad587a5413c8ed31ac63118369c2cf485de1016324`  
		Last Modified: Wed, 24 Jun 2026 01:49:52 GMT  
		Size: 3.8 MB (3826315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12ad704636a7677105373e3dd51d1419b693bba4546f0637b7d612537a41db82`  
		Last Modified: Wed, 24 Jun 2026 01:49:52 GMT  
		Size: 13.7 KB (13666 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-slim` - linux; 386

```console
$ docker pull erlang@sha256:9c7762ad866cf4a82f1bcc5896a8895d2fb4b3f5a720925062fded95cb34194a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110706085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f3db865703de6840ae7fb55d862862bebb877e3f506fd82934f3c344f8305f`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:48:18 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Wed, 24 Jun 2026 01:48:18 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Wed, 24 Jun 2026 01:48:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:18 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c93427e4a261708c36f8f17501b0b06940102f8b6ed8cb8c19de4ad3a48236`  
		Last Modified: Wed, 24 Jun 2026 01:48:31 GMT  
		Size: 61.2 MB (61214707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:6caedab401f1f661f28f9051d20a45996d7b6541fb5751506afec2cfdcbca3a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f72a4dccf4fbc6ef71cced5db2ce0d34f6aa231e2ff0621d831d5ebd9d823bf5`

```dockerfile
```

-	Layers:
	-	`sha256:b1eae638c372aa1a4c811fc8c9519aba543f10a9c4af1e55210d69cdc2f2e6dc`  
		Last Modified: Wed, 24 Jun 2026 01:48:29 GMT  
		Size: 3.8 MB (3823215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52f44d6ef82f3fd02f9316e5951820efe3666f3005b8a327555fa23f439ec691`  
		Last Modified: Wed, 24 Jun 2026 01:48:28 GMT  
		Size: 13.5 KB (13530 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-slim` - linux; mips64le

```console
$ docker pull erlang@sha256:b82a72f938ea2f1051cce4ba4d022cb870e7e86c0ed62bd30759fa96bd5ab86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109967664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e28d67d16a99e88eefe24773f118e42b15577690d8bc702e7d263c69f646c82`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 14:45:06 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Wed, 24 Jun 2026 14:45:06 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Wed, 24 Jun 2026 14:45:06 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 14:45:06 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:d06e8744a62761c63cdcacfb2a61022e2f4c0aa854b6cede18fced28342dc1b2`  
		Last Modified: Wed, 24 Jun 2026 00:26:53 GMT  
		Size: 48.8 MB (48792819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec8d5c2988b114cf89bd1e462aa6d9cddd34023c3b1be640b7d28a9bc133143`  
		Last Modified: Wed, 24 Jun 2026 14:46:09 GMT  
		Size: 61.2 MB (61174845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:9deb6efd9789a8b804b494668c3f281861a065a51509fb73abd9814811c3c20e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db29da9b6006f36ce04adc0a8dcf0f65dd32bd8b46211ad4bf490ab0da4da3e`

```dockerfile
```

-	Layers:
	-	`sha256:65a14872addb1b84cabca929647dc4d08b4d18b4b18dfcd3ad1baaf6537c2edf`  
		Last Modified: Wed, 24 Jun 2026 14:46:03 GMT  
		Size: 13.4 KB (13413 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:02ceeae13cfd204eac1aeb3a6ebea8189528f5a725b062455bb568dc2b169c58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114637553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e26b2517761f4cd4d9fe9d8c09c5002b6ed200d4651f4dbc7742f4fb43e786`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 03:43:00 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Wed, 24 Jun 2026 03:43:00 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Wed, 24 Jun 2026 03:43:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:43:00 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df5991695146bd858f340852fb83e2ce4799821c626ecbe57b540768f14b59d3`  
		Last Modified: Wed, 24 Jun 2026 03:43:25 GMT  
		Size: 62.3 MB (62290706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:26c57b8d7068a5e889799e376b2b94459c665ec13ef5b05572035ce3eae764d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8e27ed3a3536bc946f5f18be21e242f6e8392fe01f29c378d8465c6fc37b86`

```dockerfile
```

-	Layers:
	-	`sha256:743d88e7e83299eeacf94c067a2a684cb686969df43dd61cadf4c0536eb5d9d9`  
		Last Modified: Wed, 24 Jun 2026 03:43:23 GMT  
		Size: 3.8 MB (3830504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a214f6b9866394f802ecdbd8aaffd47f117af87518cf031bb8bae653d3c02614`  
		Last Modified: Wed, 24 Jun 2026 03:43:23 GMT  
		Size: 13.6 KB (13606 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-slim` - linux; s390x

```console
$ docker pull erlang@sha256:248a62a898f2d5b4948a1ba71feeaa036fa355baa1a31fa778dc7f4b24577cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108160644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e9b8a3dd9212c8c1460657ecdb033486323dc6297c5b775c1cbd4e7fb8c0ae`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:53:04 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Wed, 24 Jun 2026 02:53:04 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Wed, 24 Jun 2026 02:53:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:53:04 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:536f628a81a4a33c0a1614af18f0a75c4b63b52ac97b0c787f9ad3a62fdcdc54`  
		Last Modified: Wed, 24 Jun 2026 02:53:22 GMT  
		Size: 61.0 MB (60998969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:62041a902f6f3c8a33b6c167fe8d32d9150cd70f06a7eea5f26e4b7fa3423d8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d73b6213d77343a1fbb364f5abb24dbd70a91f22751e7e1cbf06419cd9b8d7f0`

```dockerfile
```

-	Layers:
	-	`sha256:f9d9b46da34430dd2e558bff7dc418e9f28699419d6f006b9a7cb1ee65a8942f`  
		Last Modified: Wed, 24 Jun 2026 02:53:21 GMT  
		Size: 3.8 MB (3822882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53f9e1cf73fc47dc759d282e15e58338ad9d321c63e83bca01c9a1640c8253ca`  
		Last Modified: Wed, 24 Jun 2026 02:53:21 GMT  
		Size: 13.6 KB (13562 bytes)  
		MIME: application/vnd.in-toto+json
