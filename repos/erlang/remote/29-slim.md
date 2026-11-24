## `erlang:29-slim`

```console
$ docker pull erlang@sha256:120ef68687ba6baee90e3c853192e2671c82ceb08ca8607a2311cac15d28f076
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
$ docker pull erlang@sha256:54be360317831f6904d8674ffc5aefa7c4a8b2ee854d9d4a036cc2c52ceaa24e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129857683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a5d44ce94fc91052c9e5832a04695e1c89e4b2b455c856821c5fceec568a5b`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:17 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 04:41:17 GMT
LABEL org.opencontainers.image.version=29.1.2
# Tue, 24 Nov 2026 04:41:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:41:17 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1b413c453fc7aab74107893f6105980a7b8c8d556a9f20b622a2aa341191700`  
		Last Modified: Tue, 24 Nov 2026 04:41:32 GMT  
		Size: 80.4 MB (80448395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:853e9d920c459738a6b9645594eebd0eec06b15fe0d56a88971573ed64aea291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3307035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14cc21362c0e964326402e1c30ff94833d6af4581a31eac5a0af188191919016`

```dockerfile
```

-	Layers:
	-	`sha256:61734ea8e6aeedc4c6e4c7ebe0390cf5eea81d080aa791f807b78b7dca401194`  
		Last Modified: Tue, 24 Nov 2026 04:41:30 GMT  
		Size: 3.3 MB (3293106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4df8b0f1a6246299649ee7a99faf6bad25d899d8272ac169d30e940e537b1de4`  
		Last Modified: Tue, 24 Nov 2026 04:41:30 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:62635412ee6fa81d49f99a011ee8f651ded607b72f4d46fea4a50bdd9d41f757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118193255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4e80065f5f5eaf815820a1e082a9e2443e59071a82a42f8e2586c481695e63`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:42:29 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 04:42:29 GMT
LABEL org.opencontainers.image.version=29.1.2
# Tue, 24 Nov 2026 04:42:29 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:29 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:81e30cd4e7ae71efcf81deb98233bbae603f424a67d390095c38d0b8b2e37386`  
		Last Modified: Tue, 24 Nov 2026 03:40:19 GMT  
		Size: 47.6 MB (47570818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a9a45bed7413d7c6f591e86e386fe28a4a4572797a33df4441eaf500432570`  
		Last Modified: Tue, 24 Nov 2026 04:42:42 GMT  
		Size: 70.6 MB (70622437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:9c757eef905c06ae66b5ec6cac46a177198f630fe7beb4c42281077da645716d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faf956e3a2885fb8473a1528242f3fc956bf4b33a990db537a8d07cc9296f1a`

```dockerfile
```

-	Layers:
	-	`sha256:fd5cb5753df0aaf4e231e630a5c4ec76dca3f9dc21eae7dee67ea4b78ce5e89b`  
		Last Modified: Tue, 24 Nov 2026 04:42:41 GMT  
		Size: 3.3 MB (3296081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63e8fd9316106b210953fd37918ad95562838451a17d7dcde306c9369676aaae`  
		Last Modified: Tue, 24 Nov 2026 04:42:41 GMT  
		Size: 14.0 KB (14017 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:a6d593323da1f3b25485d294e1037b1e47e6fbfbcf939a8a93bcf1da95bd1586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116042998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db35ee347223393659ee18537d65355eb32d593f7538aeed5f877fa197b36774`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:18:41 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 05:18:41 GMT
LABEL org.opencontainers.image.version=29.1.2
# Tue, 24 Nov 2026 05:18:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:18:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:dfa0232b027632cfcd6c75af294b9fb093493d5e9bedb208e40bbda0d946291d`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 45.8 MB (45838797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928c191c026ada0371b5ae3c906053664893fc9b9aaad582343ab73e7289ef2b`  
		Last Modified: Tue, 24 Nov 2026 05:18:54 GMT  
		Size: 70.2 MB (70204201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:0b82a7893ba7d3c68552a07e5fb944c430750f31724e225980f42a386bde4ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf621e7ace2d3d6a98d81fc3a57404ead1065e6f7ca051931579eff4977bb10`

```dockerfile
```

-	Layers:
	-	`sha256:9c018dda2f095436b7e9a2e89c5247b6ad1712e90841b2db68847eb060a9d6e0`  
		Last Modified: Tue, 24 Nov 2026 05:18:52 GMT  
		Size: 3.3 MB (3294530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12bd6c4ace756483dd7a68776096c241a1ee119f9b98e7d9c696bc40950f3fe7`  
		Last Modified: Tue, 24 Nov 2026 05:18:52 GMT  
		Size: 14.0 KB (14017 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:d2371932e233c8daef38ebb563e174b6d521b6b47e9380590a8124ffe48d5990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128683485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809ee639639182cd137118ed07142231ba140f24221205a297a1b14d3c3c894c`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:45:48 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 04:45:48 GMT
LABEL org.opencontainers.image.version=29.1.2
# Tue, 24 Nov 2026 04:45:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:45:48 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba24276da2fb4e7261e674690d74328b9c9a726eba2c89de83804fba98c52434`  
		Last Modified: Tue, 24 Nov 2026 04:46:03 GMT  
		Size: 78.9 MB (78913399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:0cdc50770eb29e4aae46794259e940f582002812a6d6eaed23cda3173d8dc3f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da82baf26c11b7afdecd8b03367892cb1bfa51d87641fb33538972dfe1f91ea8`

```dockerfile
```

-	Layers:
	-	`sha256:10a13ea626a534cee9366daa9708b8f9d48048bf836fbc35259c66b40398cdd1`  
		Last Modified: Tue, 24 Nov 2026 04:46:01 GMT  
		Size: 3.3 MB (3294004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d01eb492a1466b41ff0cafc9c0f5f6eb6bedf16e22c83e441bde60615357c0fc`  
		Last Modified: Tue, 24 Nov 2026 04:46:01 GMT  
		Size: 14.0 KB (14045 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; 386

```console
$ docker pull erlang@sha256:f20f5ce0ef745a97a116a05a147aa97edcf47a9d6178ccf61e68ba5805c3043d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121513108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94c283d816de9dc0abf10a797bb1e08ef2a8ebb7044f6ecc5ea77e66c72427d`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:17 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 04:43:17 GMT
LABEL org.opencontainers.image.version=29.1.2
# Tue, 24 Nov 2026 04:43:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:43:17 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433b2d062b63bdb89eb10724e36be99aa784d8e6172574ee1ea3a7b263100388`  
		Last Modified: Tue, 24 Nov 2026 04:43:29 GMT  
		Size: 70.6 MB (70587663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:315ceeb9a3e64717dfcb6a03b8dee5d9eda7b78c83929d4954ef5f65f6847a66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3304170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6961cb39880312b929f89cc2597864d8ff4980b4cab4f693602ecbbcc5bff14`

```dockerfile
```

-	Layers:
	-	`sha256:61743803a38ce0e68510e7deaa9efb070c7a8ba53ed9f012a1ee8a9db15f0dd7`  
		Last Modified: Tue, 24 Nov 2026 04:43:28 GMT  
		Size: 3.3 MB (3290278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a906e8bd27ce14961866365b3c421cf634241b7086e77b8c4ae9cab0308e345c`  
		Last Modified: Tue, 24 Nov 2026 04:43:27 GMT  
		Size: 13.9 KB (13892 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:faa83c10ad792040837837931adaf193e614415056bc219e26f4d9678f4c6933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124805316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d756a10b42ac3f7600446bb5feb5390db7b6472bf4655f81f38045b0988f1f`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 06:56:15 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 06:56:15 GMT
LABEL org.opencontainers.image.version=29.1.2
# Tue, 24 Nov 2026 06:56:15 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:56:15 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c54098dc62fca537ec2ddc1efc66495dee48fc824d36d9577cb7eefc6eeb59`  
		Last Modified: Tue, 24 Nov 2026 06:56:41 GMT  
		Size: 71.6 MB (71575471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:1e50c5989cc0506700907c1564d0bc97904058116981bdd10350d51b3aa7a817
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f5980aae76fff6f19683c833f0c0120343618b222a86a7321ed764f8091229`

```dockerfile
```

-	Layers:
	-	`sha256:2f8e7035b77337600b9d8df9c786540e121d55ac9552ad52985289a5b5d4778f`  
		Last Modified: Tue, 24 Nov 2026 06:56:39 GMT  
		Size: 3.3 MB (3296693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f169cdbe6c31d7f5b0a227389395f5eec87f3a72114e5b1966919b8ef3847b1b`  
		Last Modified: Tue, 24 Nov 2026 06:56:39 GMT  
		Size: 14.0 KB (13979 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:29-slim` - linux; s390x

```console
$ docker pull erlang@sha256:4957bad95e9729911e9f8fc16554996b4d4370b42988b803b3506a7e97f54301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120931684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a9d124e900f602133f01f0e621478df2b5153c43576171440e331a6b05e5f9`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:55:33 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Tue, 24 Nov 2026 04:55:33 GMT
LABEL org.opencontainers.image.version=29.1.2
# Tue, 24 Nov 2026 04:55:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:55:33 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e99295c5b1d848573a03490220a471f79f26f0d941445a1a1aafd0b9580e414f`  
		Last Modified: Tue, 24 Nov 2026 03:39:40 GMT  
		Size: 49.5 MB (49482692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2269dc05f539349f24fd0e79cb82525805c274b77ddd0aaf694092baf3601552`  
		Last Modified: Tue, 24 Nov 2026 04:55:52 GMT  
		Size: 71.4 MB (71448992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:29-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:7c55be26803f3313b1094f63662b2f128ed6b3276744d6235372b0fe8c5dd522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa66d9c819dc86378b0c8f69950d29ce2e0a9ff8abeae541c9907f4452cdecdb`

```dockerfile
```

-	Layers:
	-	`sha256:ac08b409721ca7f063b471aa6b2159540850dac5037b18161ebbb8ec10e19663`  
		Last Modified: Tue, 24 Nov 2026 04:55:50 GMT  
		Size: 3.3 MB (3294547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc67c3a13889c3c9176625ee983cf06e57b9535f55134b12b1cb53948f27822c`  
		Last Modified: Tue, 24 Nov 2026 04:55:50 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json
