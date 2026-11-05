## `elixir:otp-29-slim`

```console
$ docker pull elixir@sha256:610dfb3dd85f9e23af58b431f4907ebce66ae59fca9b462eed2e02d9f0baef89
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
$ docker pull elixir@sha256:a17f3ae898849b23288860eb7530e4365d0607c703236093db3e6ec12799e661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138472327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc18a89ecd49e843d1ece834fa356a5bae954025ce13a7e92663b41b4ecbf81`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:25 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 07:40:25 GMT
LABEL org.opencontainers.image.version=29.1.2
# Thu, 05 Nov 2026 07:40:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:25 GMT
CMD ["erl"]
# Thu, 05 Nov 2026 08:48:18 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Thu, 05 Nov 2026 08:48:18 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:48:18 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e1bb2fd89273221b12f07478c1ba64dd6735dad62cc4374bf0c004c721c45a`  
		Last Modified: Thu, 05 Nov 2026 07:40:39 GMT  
		Size: 80.4 MB (80448591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a611a2d0da22e3b0e4857d22c10cdd39f750c6474bd9a1fadf2d9e436717b5c`  
		Last Modified: Thu, 05 Nov 2026 08:48:26 GMT  
		Size: 8.6 MB (8611228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:a72a5a9d0c273e3277f2c826aa0da076d77e01cb45b45f8cfa6d733352bc9ddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3312156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:460970e23c407741f97f4b58c3ee2b7b6f4e7654c9058653e7a5177a8abdc53a`

```dockerfile
```

-	Layers:
	-	`sha256:66c85738ad136e2f8cb202aa9b57df8f9fe2c399789a0f03bd71e819a46e9305`  
		Last Modified: Thu, 05 Nov 2026 08:48:26 GMT  
		Size: 3.3 MB (3301520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d18a496fbaae919b2c8e24efbdb6e330f62535b45bfa9f249963500f413ba370`  
		Last Modified: Thu, 05 Nov 2026 08:48:26 GMT  
		Size: 10.6 KB (10636 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:57222850d77b7ce98a18cc4f71e9b1d06d174f738fd1838d5f5f5b35321f5a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124646321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f23bef72facdc9526d9c224b917324262649c30a7b2c169557de69611afda7c`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:21:33 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 08:21:33 GMT
LABEL org.opencontainers.image.version=29.1.2
# Thu, 05 Nov 2026 08:21:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
CMD ["erl"]
# Thu, 05 Nov 2026 09:43:05 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Thu, 05 Nov 2026 09:43:05 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:43:05 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:865302b150ef6501d10367f445f0f9d34479768facdaad7ff5f2570ef01e64e0`  
		Last Modified: Thu, 05 Nov 2026 06:16:17 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29d33f6a1112dc1f3dbab9b8aafa583facbd69fddaaed5e35aedf68a7457a7d`  
		Last Modified: Thu, 05 Nov 2026 08:21:47 GMT  
		Size: 70.2 MB (70204415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc645f688684a664420c209147678350d403a342bcd0690e4d4e94b5cc30a9e7`  
		Last Modified: Thu, 05 Nov 2026 09:43:17 GMT  
		Size: 8.6 MB (8610782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:b664ed1402a08454a43f41c2588e4c192602e951d625e15d553669ca7861c111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3313684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e98a7a208aada040aa3203fae086b9992fbbf30f51b035e1e1fbec2a7401dd3b`

```dockerfile
```

-	Layers:
	-	`sha256:5ac9bcc5302fb0def2eed66370fd700d0a812c3099da3a236ef63caddfffb9c9`  
		Last Modified: Thu, 05 Nov 2026 09:43:17 GMT  
		Size: 3.3 MB (3302952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01ded6b77f4060e05ea80dff102907708527041e851f461528484aa103f86ab8`  
		Last Modified: Thu, 05 Nov 2026 09:43:17 GMT  
		Size: 10.7 KB (10732 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:b37d6a4c30f55b05847a395589bc9772f3ba743ebf0cdae54cf4bf5c739c3a64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137301551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b64c3b104815bdf1a567cecc4e475e8df9bc6f740a1de06b2f4da56d1ffdeefe`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:44:18 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 07:44:18 GMT
LABEL org.opencontainers.image.version=29.1.2
# Thu, 05 Nov 2026 07:44:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:18 GMT
CMD ["erl"]
# Thu, 05 Nov 2026 08:47:41 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Thu, 05 Nov 2026 08:47:41 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:41 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a026eedceb46dc06a8c4447b2127dd852340d43aa701cdeeca7b78f72f245f6`  
		Last Modified: Thu, 05 Nov 2026 07:44:34 GMT  
		Size: 78.9 MB (78911767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e675141c9669a5ca2a26a5735b9bb8407114b3b10594e346e932346500f2caee`  
		Last Modified: Thu, 05 Nov 2026 08:47:53 GMT  
		Size: 8.6 MB (8611180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:c8554323b149593da2fa19ed6833c670fb004a773f85f6a447319fcd1fc3a88a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3313194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59ebae1c6d693fca7277550fedd238fe6a9df54d36f03eb436c044529ecc59c`

```dockerfile
```

-	Layers:
	-	`sha256:69ff3287574ccd2c1bf8ba76bc9ef7d135bb784ba6b831eef3f9489d78d167a2`  
		Last Modified: Thu, 05 Nov 2026 08:47:53 GMT  
		Size: 3.3 MB (3302430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f6887996e70a20b0fdbb2352eaa98462339280cb669775a3931e26307a9f3ae`  
		Last Modified: Thu, 05 Nov 2026 08:47:52 GMT  
		Size: 10.8 KB (10764 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-29-slim` - linux; 386

```console
$ docker pull elixir@sha256:7855f9ac64305631c356bc990d69560dd59b96d1ee80e5aef89d70c6d85e6fe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.1 MB (130119806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0854a90fd6c4b052e6685c7fdd47fc2fc189a6a4d79cbc85301388f756262a7`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:43:39 GMT
ENV OTP_VERSION=29.1.2 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 07:43:39 GMT
LABEL org.opencontainers.image.version=29.1.2
# Thu, 05 Nov 2026 07:43:39 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c79966661e35fe4aff8ec003db63682e3b33b10b672220d51bf93c0a9244b049" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:43:39 GMT
CMD ["erl"]
# Thu, 05 Nov 2026 08:39:29 GMT
ENV ELIXIR_VERSION=v1.20.5 LANG=C.UTF-8
# Thu, 05 Nov 2026 08:39:29 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="3d99f2e129418800817e0e5a3ce4812c34537a32d50e37578189e90c79de7062" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:39:29 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf46610a0e221f9527f4e9678a5ba220cb4043a62df66bc581fa0fef709b258`  
		Last Modified: Thu, 05 Nov 2026 07:43:53 GMT  
		Size: 70.6 MB (70588335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69664689b2837a40dc079a180cf1857d818688cb0d9568bf4073e90487597853`  
		Last Modified: Thu, 05 Nov 2026 08:39:37 GMT  
		Size: 8.6 MB (8610899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-29-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:b5c31e7017b54304db73758bbef15c969be3bd68f6783edc02489d47ea269fca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3309279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b9034d8e846d6540e0e6e98beff64fac11f4693f549a6ad6c524b3996ed2008`

```dockerfile
```

-	Layers:
	-	`sha256:30f66ad81193a1f04bab7aa17317de32ec0a1925ba9bea18bbc07809062d9510`  
		Last Modified: Thu, 05 Nov 2026 08:39:37 GMT  
		Size: 3.3 MB (3298686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ff4a3fd7b196bba5e74555999bcb75e70642ae168da250831903e0d910dde0a`  
		Last Modified: Thu, 05 Nov 2026 08:39:37 GMT  
		Size: 10.6 KB (10593 bytes)  
		MIME: application/vnd.in-toto+json
