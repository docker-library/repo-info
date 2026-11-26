## `erlang:slim`

```console
$ docker pull erlang@sha256:548fb8fa9e0d627a1c58e398e949d68c46465f766ee5eac3ea406a861764f072
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
$ docker pull erlang@sha256:a6a2ad3d1c922a16ddc84f5f91b4f2c5aebcdb11ba31b7b1ad54055e74f02321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129901352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74645872e12ae0ab02ddf894e8f1a0315c2a36f4c8c1ad0a55335c0ecb27f668`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 21:17:47 GMT
ENV OTP_VERSION=29.1.3 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:17:47 GMT
LABEL org.opencontainers.image.version=29.1.3
# Tue, 24 Nov 2026 21:17:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="44d8ee7f0964537ddb328fe2f6307d3338c3fdd1b2826938d490907771ba70d2" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:17:47 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0dfd44ee72fa97452fe162c24e9c2f26e92688294fd21d6ec2955f157dc37d`  
		Last Modified: Tue, 24 Nov 2026 21:18:02 GMT  
		Size: 80.5 MB (80492064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:684515b5dd32c87844be12987cc6ce541b19c8909db71dece931c64807ad153c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3307059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0fd76dfc4585a0155384b14fb4626b4489ebb1a6f94e77c778728ebb73f07d8`

```dockerfile
```

-	Layers:
	-	`sha256:9cd066c14d0b7ee9ad61397ead1a328175b9b014205df7c7c5b99c0080e03639`  
		Last Modified: Tue, 24 Nov 2026 21:18:00 GMT  
		Size: 3.3 MB (3293130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:384cd5a6481a5f4a9c22a68a4dc0967ee18a9791a21b665fe3d8a85149b74d97`  
		Last Modified: Tue, 24 Nov 2026 21:18:00 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:3180ce78854dde9370ffaf8937f017dcfd8e273d64895e4f211b1470c8d1febd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118216186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ddd12de02d3ae5e81a78bd9982cf7704f631e11cbf354b1d644479aba522d4`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 21:18:41 GMT
ENV OTP_VERSION=29.1.3 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:18:41 GMT
LABEL org.opencontainers.image.version=29.1.3
# Tue, 24 Nov 2026 21:18:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="44d8ee7f0964537ddb328fe2f6307d3338c3fdd1b2826938d490907771ba70d2" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:18:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:81e30cd4e7ae71efcf81deb98233bbae603f424a67d390095c38d0b8b2e37386`  
		Last Modified: Tue, 24 Nov 2026 03:40:19 GMT  
		Size: 47.6 MB (47570818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5aa91c888255940820a5cfdccbcc6ab091c5a49b5dc48bfc560a769ac845fe`  
		Last Modified: Tue, 24 Nov 2026 21:18:55 GMT  
		Size: 70.6 MB (70645368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:ed3814e8367ad29f35aed0d6f923e9ea1217fb76ac94c70fafccf7703229c6f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf40517bb57a3f5e604e3ea450d5ff1fa28296b96dc7e5741751efecbe02b0d`

```dockerfile
```

-	Layers:
	-	`sha256:47c119881ac93d52dd2f789b25158df2ba8747acb54be8f5f568117de7d0884b`  
		Last Modified: Tue, 24 Nov 2026 21:18:53 GMT  
		Size: 3.3 MB (3296105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77eefd5c33d7187d8e332461dff08402aab8e802576b18df32884f623bb5282d`  
		Last Modified: Tue, 24 Nov 2026 21:18:53 GMT  
		Size: 14.0 KB (14017 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:3c62fb8cbd382056cbef909a49ddd58331bc480fdddd0f91209025b7356d9702
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116064043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd4fe2095a90964f881fc5cbaa329114f8fc93f4dd70edff58ece713c403430b`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 21:18:55 GMT
ENV OTP_VERSION=29.1.3 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:18:55 GMT
LABEL org.opencontainers.image.version=29.1.3
# Tue, 24 Nov 2026 21:18:55 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="44d8ee7f0964537ddb328fe2f6307d3338c3fdd1b2826938d490907771ba70d2" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:18:55 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:dfa0232b027632cfcd6c75af294b9fb093493d5e9bedb208e40bbda0d946291d`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 45.8 MB (45838797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56c161eef768ca9231696ed2e5ea4fb3d0b3f9451b5bf726194f73e212e5299`  
		Last Modified: Tue, 24 Nov 2026 21:19:09 GMT  
		Size: 70.2 MB (70225246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:2ee70feedea7a7aa5a36af00d4c6d00eb57e3740fe1f93b1774172b90bab9296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6fa4de633667002273aaf917452c8f3a878f12c0dbf706133e6ca1d453f182`

```dockerfile
```

-	Layers:
	-	`sha256:e1e6404dac2cb2d2309a29d447707c01185ceabd1bed312b04b803e6ba9ba52f`  
		Last Modified: Tue, 24 Nov 2026 21:19:07 GMT  
		Size: 3.3 MB (3294554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20e7ec6bbe093296c3bdc905e63d15001f6d56d75c8ac3f308428323ae36bc40`  
		Last Modified: Tue, 24 Nov 2026 21:19:07 GMT  
		Size: 14.0 KB (14017 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:9ec4713b52ce8bcddc1492b2c25127dd20ac3e92a8dd0ef668fc1e8f3000ec1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128710825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4ea13c3f2c284702dcc6b2502d169e06f53e37a512f5825796ad315f0e9364e`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 21:18:46 GMT
ENV OTP_VERSION=29.1.3 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:18:46 GMT
LABEL org.opencontainers.image.version=29.1.3
# Tue, 24 Nov 2026 21:18:46 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="44d8ee7f0964537ddb328fe2f6307d3338c3fdd1b2826938d490907771ba70d2" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:18:46 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcc14ef9983b8514702498c7bd1429d39d8df75a477634f4fd1023a5fe4ba98`  
		Last Modified: Tue, 24 Nov 2026 21:19:02 GMT  
		Size: 78.9 MB (78940739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:984a46c6c07d4ee9376e460337de250c4b39ad73bc0cefa8f5baf55550cbc731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c72c93e9dbe1a55d224f96e09708218a762cf5b687925a942ebf1b7332ed8876`

```dockerfile
```

-	Layers:
	-	`sha256:0c2edf1141c3642084e6b992c8f0e3581b18c448253b2864e821a58ab744ae76`  
		Last Modified: Tue, 24 Nov 2026 21:19:00 GMT  
		Size: 3.3 MB (3294028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a61fcd6d7272cf30961383bd41342245905f3ca9c379e04864bd809818507e86`  
		Last Modified: Tue, 24 Nov 2026 21:18:59 GMT  
		Size: 14.0 KB (14044 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; 386

```console
$ docker pull erlang@sha256:7ab74aa8bf337e03e4d5316b829b51073b8351008b319ffb60c9b7a6b1eec18c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121548020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bc89b8cf939578993c8266f3d239ed51d87436abd0cbe9f2aa9d3803150bfe`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 21:13:44 GMT
ENV OTP_VERSION=29.1.3 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:13:44 GMT
LABEL org.opencontainers.image.version=29.1.3
# Tue, 24 Nov 2026 21:13:44 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="44d8ee7f0964537ddb328fe2f6307d3338c3fdd1b2826938d490907771ba70d2" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:13:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82766e2c061d992c2c978443a6f673ac7c3689cf5d19e234bd340cec2c11f3ad`  
		Last Modified: Tue, 24 Nov 2026 21:13:57 GMT  
		Size: 70.6 MB (70622575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:0c919aa2290af6853f254de6dfb1952024f275c3b84d79bfffaf652f0461c89c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3304193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc7c11618edae2e205e925dc22baaf849584c41697486a475aeb3804d5031c0b`

```dockerfile
```

-	Layers:
	-	`sha256:f130d7da03f87b03d8d3e7a0bb055eca4e0d80a7a778985d965827d35e391261`  
		Last Modified: Tue, 24 Nov 2026 21:13:55 GMT  
		Size: 3.3 MB (3290302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eafcfb40b1c289d0ee13db47b9313c050bb9d1872e04398367bd0962d0320dcb`  
		Last Modified: Tue, 24 Nov 2026 21:13:55 GMT  
		Size: 13.9 KB (13891 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:3dacf3e89b7b1c23d39fdbd2a94076aaba3954cab46304f67a229d9cc7364ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124842249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c6bed8e582fd50c314e3e3dbf78042d188c6562d4e05de3ffbefa1c8d9ff0a`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 23:21:36 GMT
ENV OTP_VERSION=29.1.3 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 23:21:36 GMT
LABEL org.opencontainers.image.version=29.1.3
# Tue, 24 Nov 2026 23:21:36 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="44d8ee7f0964537ddb328fe2f6307d3338c3fdd1b2826938d490907771ba70d2" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 23:21:36 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0900b9bbac4601f37a8136b9357e2f36f0fa335cf76658f982b9f43a057d9b5`  
		Last Modified: Tue, 24 Nov 2026 23:22:05 GMT  
		Size: 71.6 MB (71612404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:1f355e9c6a9d5e98243dfe42ca2c59896de32d6a0512fe3729c364590aaa4f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f2ad57ee631d1d64845375e9049c28765ff82b26c30e1da0dda22f9d84cf68`

```dockerfile
```

-	Layers:
	-	`sha256:18629720eb333ef5edb94549bc6553fe18dedb462174ad74eea6ee8e0c7d19fd`  
		Last Modified: Tue, 24 Nov 2026 23:22:03 GMT  
		Size: 3.3 MB (3296717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c62e9ec3f4f8b7a1ee691a0f49c0ebee3419cd7d2543ee5e8926f2b73a90dba5`  
		Last Modified: Tue, 24 Nov 2026 23:22:03 GMT  
		Size: 14.0 KB (13978 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; s390x

```console
$ docker pull erlang@sha256:dec5aade8a881d280d3cc92a886e59891ead93e003df6b30bd3b74572c9cdeb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120975435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e580de076f89781a8fe9e2e3e9732d2997c25bb578a770c54987773aa88e5f6`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 21:10:24 GMT
ENV OTP_VERSION=29.1.3 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 21:10:24 GMT
LABEL org.opencontainers.image.version=29.1.3
# Tue, 24 Nov 2026 21:10:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="44d8ee7f0964537ddb328fe2f6307d3338c3fdd1b2826938d490907771ba70d2" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:10:24 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e99295c5b1d848573a03490220a471f79f26f0d941445a1a1aafd0b9580e414f`  
		Last Modified: Tue, 24 Nov 2026 03:39:40 GMT  
		Size: 49.5 MB (49482692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b8e92aa8dcf7ede98fbe7c5e8f59dd2a8b282b8a3dfd3c9fd927a742b8e540`  
		Last Modified: Tue, 24 Nov 2026 21:10:42 GMT  
		Size: 71.5 MB (71492743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:5eea38e4bcb44c426b00c09a6f4380df92a837ce4142ed0fbc4a4f39f02b4bd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a987149e3f70ffad8cd32e99fda7bda4cf604985ffb5a5a7b181a62d01a1d834`

```dockerfile
```

-	Layers:
	-	`sha256:90e2ef9651c31ad647cc86653c5e256580ff69d712fbb963d938ad13b01073bf`  
		Last Modified: Tue, 24 Nov 2026 21:10:41 GMT  
		Size: 3.3 MB (3294571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0f17ac337c5abc78623353b3084f643c3f73c845e89c2cc54a520c997644341`  
		Last Modified: Tue, 24 Nov 2026 21:10:41 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json
