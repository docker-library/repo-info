## `erlang:27-slim`

```console
$ docker pull erlang@sha256:260678fe72d6f85c03ff6b7c92f2566d895b139619b5492a52d73b5ffb31ff83
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
$ docker pull erlang@sha256:579719c218f6bc507e42c30a4cc670dcf96037758a7e2ba776cb10836b90128a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124727281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65362b8c0852a728b9d6366227a46081079b6f4dca3acc30f6666023510887b4`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:42:21 GMT
ENV OTP_VERSION=27.3.4.19 REBAR3_VERSION=3.27.0
# Wed, 28 Oct 2026 01:42:21 GMT
LABEL org.opencontainers.image.version=27.3.4.19
# Wed, 28 Oct 2026 01:42:21 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="866307e64e245e86bee15b3807030a998e59873d7480d6fae1e40b432a3d12b7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:21 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d925ca1884df733f69d525bcd059db92e2c5a08b9ba2e525defce591184de46`  
		Last Modified: Wed, 28 Oct 2026 01:42:40 GMT  
		Size: 76.2 MB (76202729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:f79dff10e6a648af40b374382ea86f9cc623a5eaa7d4aa6ddffb2b8c7f2f96e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9084b7c87035509f8e20e963ec9d1dd22afe741955d71c7538cd66f63c996d7e`

```dockerfile
```

-	Layers:
	-	`sha256:2cd367e8a16f96a6ab4688a5474c16c08930eb535aec8f297b08b18f035a2db1`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 3.8 MB (3824952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706aaa269d563375b27ee1ce190f00de6cfb7abc26d23f71349ca3181e20a7ff`  
		Last Modified: Wed, 28 Oct 2026 01:42:39 GMT  
		Size: 13.6 KB (13638 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:a8ce0851feb53fa18bd1e0f2a28d9b6d5fa87846c09fdde291ea9c8bc3245f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109527423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7d609f087be06b9ccb094928438b123c0bb3b4b3d4a09175504f69a5d4402a`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:32:32 GMT
ENV OTP_VERSION=27.3.4.19 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 01:32:32 GMT
LABEL org.opencontainers.image.version=27.3.4.19
# Wed, 21 Oct 2026 01:32:32 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="866307e64e245e86bee15b3807030a998e59873d7480d6fae1e40b432a3d12b7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:32:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a27ede1f0a36ecc509906061690c59b15d8ca5e1e100250ceae94f3f710345`  
		Last Modified: Wed, 21 Oct 2026 01:32:51 GMT  
		Size: 65.3 MB (65307628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:46455e3f8112e8b3b24ce7aeb2c16ad98f3a4ddf04eacbfac5d93de3e481cf18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2e45a8dade0b86faccb497a409bfa0cff2c01ed903ecf351a565f9d1f02e45`

```dockerfile
```

-	Layers:
	-	`sha256:328bb6317b1a92d96bd6869b5e368ec1dd967a15c25d68aa9e661ef916eb234a`  
		Last Modified: Wed, 21 Oct 2026 01:32:45 GMT  
		Size: 3.8 MB (3827185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29fd56104f6491cbac2c449e0092d393f8c9ee8b52d80aeffecf70db918aea14`  
		Last Modified: Wed, 21 Oct 2026 01:32:44 GMT  
		Size: 13.7 KB (13719 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:827a80055862fd6997c76f09dcdf7fc211211dcdcd17a92a17f2b31da1fb9c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122340051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a1400f7fb75e9a6719e34b51d382b63d0361658ba715fda6a016da54c51ec4`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:51:51 GMT
ENV OTP_VERSION=27.3.4.19 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 00:51:51 GMT
LABEL org.opencontainers.image.version=27.3.4.19
# Wed, 21 Oct 2026 00:51:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="866307e64e245e86bee15b3807030a998e59873d7480d6fae1e40b432a3d12b7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:51:51 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccf6165ece1d6a825726d620c8bc2f9780d86a35e942c3c09b289e4bd550fb1`  
		Last Modified: Wed, 21 Oct 2026 00:52:07 GMT  
		Size: 73.9 MB (73936940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:dadbf205bbf06ce0bcc4fd3b2b2f41d7ebebbe218e69993b9482dc0af523d393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a191252f1c5c545f1055163f27b73043c28f2088050686770cc608d10609a259`

```dockerfile
```

-	Layers:
	-	`sha256:ef8f4e39ea8f040234cb61c683ae9b4aaefd028791cde4997178267659ce2137`  
		Last Modified: Wed, 21 Oct 2026 00:52:05 GMT  
		Size: 3.8 MB (3825213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8944fb3fde353e9cbd180da7c516b50537b0a8353516656246fd41833e52fc57`  
		Last Modified: Wed, 21 Oct 2026 00:52:04 GMT  
		Size: 13.7 KB (13743 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-slim` - linux; 386

```console
$ docker pull erlang@sha256:12139f091ea493306519b4b4934cf1275196b7cd271b014e6b9eec9ce645a6cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115866924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b940ba605ed62126469e8aaf06159e0fda9d486a028b4d4cd5d8c8ec09b17a1`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:44:43 GMT
ENV OTP_VERSION=27.3.4.19 REBAR3_VERSION=3.27.0
# Wed, 28 Oct 2026 01:44:43 GMT
LABEL org.opencontainers.image.version=27.3.4.19
# Wed, 28 Oct 2026 01:44:43 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="866307e64e245e86bee15b3807030a998e59873d7480d6fae1e40b432a3d12b7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:43 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:7d013cfb99f9a659ec5a70c7dc91ff3a30fef8cec1975cdded7a6450f2dc79f0`  
		Last Modified: Wed, 28 Oct 2026 00:10:25 GMT  
		Size: 49.5 MB (49513537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0aa73eb2d69303620c243129aaa1c5f2a3196bfce6c9b9f24d87a46941ce68`  
		Last Modified: Wed, 28 Oct 2026 01:44:56 GMT  
		Size: 66.4 MB (66353387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:7b724808b851aeaf17c11b90f93b108378e8d931ae21e7829b1d7064d670d883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a9383c754f7144cde81798d220268c14558940a01b8510f3fd3fbca0a85131`

```dockerfile
```

-	Layers:
	-	`sha256:acd4c6fbc02d8dcbb073c65a0c58255dcc57efcbac08620ae21dfb57fea23ff8`  
		Last Modified: Wed, 28 Oct 2026 01:44:54 GMT  
		Size: 3.8 MB (3822113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b335a97746e0fb539bdd2fd5a35cde99f324acefcf7c1b0e4bf5409f9e935d75`  
		Last Modified: Wed, 28 Oct 2026 01:44:54 GMT  
		Size: 13.6 KB (13607 bytes)  
		MIME: application/vnd.in-toto+json
