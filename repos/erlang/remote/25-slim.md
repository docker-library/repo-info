## `erlang:25-slim`

```console
$ docker pull erlang@sha256:7a3244fb3a6a5d2179fb8115546f46b31478d084641473cf6fa9bb2c389dfba6
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

### `erlang:25-slim` - linux; amd64

```console
$ docker pull erlang@sha256:2019e53fdcc7866b51f206593d4cf7c352e00076911ab6873ae3a9a5c81635f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116863085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0dbf8e80481ba8ff8eb7b224ec1d4c704f4c6d4024bb34ca69760ebe0cda93`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:50:14 GMT
ENV OTP_VERSION=25.3.2.21 REBAR3_VERSION=3.24.0
# Wed, 21 Oct 2026 00:50:14 GMT
LABEL org.opencontainers.image.version=25.3.2.21
# Wed, 21 Oct 2026 00:50:14 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="6761432927a9be4f5c13c4019acd6fa3d2f4363198f790947328023aece1986f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="391b0eaa2825bb427fef1e55a0d166493059175f57a33b00346b84a20398216c" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:14 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a2ab83c950811bc0e5faeb4013fe3524455be91f4de4ca6711ad4b5555eee9`  
		Last Modified: Wed, 21 Oct 2026 00:50:28 GMT  
		Size: 68.3 MB (68341001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:25-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:a5463d267384feffd971c236e72cbf3ee8f4886f27081a5f570a6f106b625d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3839694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d3003c9718e4a0602eebef452456ef2a96239d3966bc538669745f29d8150a`

```dockerfile
```

-	Layers:
	-	`sha256:ae98804d8e2eea2477b0ca9bcaeebde9e55b3e14e48a698a40131c1eeaf7f1a4`  
		Last Modified: Wed, 21 Oct 2026 00:50:27 GMT  
		Size: 3.8 MB (3826132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13cd69c49a485e3bd788c2b34a9984d74337a5714743147110e23d8c454a39ba`  
		Last Modified: Wed, 21 Oct 2026 00:50:26 GMT  
		Size: 13.6 KB (13562 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:25-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:8dbea8f3958ebcdc3b72d41206c47fff300e1ebb4d7483947d8c09d853ef8784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105631837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd410dc00eeb4e8d54e283d04c8b533ce26d9de2c4074bb79c0636e1e0f8761c`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:30:26 GMT
ENV OTP_VERSION=25.3.2.21 REBAR3_VERSION=3.24.0
# Tue, 06 Oct 2026 02:30:26 GMT
LABEL org.opencontainers.image.version=25.3.2.21
# Tue, 06 Oct 2026 02:30:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="6761432927a9be4f5c13c4019acd6fa3d2f4363198f790947328023aece1986f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="391b0eaa2825bb427fef1e55a0d166493059175f57a33b00346b84a20398216c" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:30:26 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c114b6f899842d259706f2011776ec712ed2467d515caa9f0eb8ceca6c1811`  
		Last Modified: Tue, 06 Oct 2026 02:30:40 GMT  
		Size: 61.4 MB (61417925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:25-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:001ff7c65a62a9826a03724b79def518d66f7f4e0dd01333603c627be2607c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3842006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d66429de7dd5d7466e9f5e9311cbab118c5ff37bc2235e084d7b3231082f52e`

```dockerfile
```

-	Layers:
	-	`sha256:c54dc2f637ec18bd13a117383df987f9a47a6e8206a4ebcade4393d1ccdb12e6`  
		Last Modified: Tue, 06 Oct 2026 02:30:38 GMT  
		Size: 3.8 MB (3828365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a24eabe7923c05f031406ac1489b4a4d904cfaacc8f368f354955f6d23ee6cae`  
		Last Modified: Tue, 06 Oct 2026 02:30:38 GMT  
		Size: 13.6 KB (13641 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:25-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:f8dc268b2ef7bcfa13c05c883f482581e3685e9a9e3e05b55814d6813531087c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114843746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec06a2cb416dc1088bf23621d3275d11b5f3bb53217ff55fdb6f989a4f5f04d`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:53:20 GMT
ENV OTP_VERSION=25.3.2.21 REBAR3_VERSION=3.24.0
# Wed, 21 Oct 2026 00:53:20 GMT
LABEL org.opencontainers.image.version=25.3.2.21
# Wed, 21 Oct 2026 00:53:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="6761432927a9be4f5c13c4019acd6fa3d2f4363198f790947328023aece1986f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="391b0eaa2825bb427fef1e55a0d166493059175f57a33b00346b84a20398216c" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:53:20 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60e59318a0c4d47130379975778124f010f2e4824613d605ea693a29c7b27f4`  
		Last Modified: Wed, 21 Oct 2026 00:53:35 GMT  
		Size: 66.4 MB (66440635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:25-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:f07f95f1165c8162cd46927aa962576e9b95cb3c93afad386ac17c166648599a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ea01a123a54f3c87d08f255e2e686d86b731516190883038dd61624ea826f46`

```dockerfile
```

-	Layers:
	-	`sha256:eef138e0eeb8882b08f5095502fa9095a82d3e87c338175c46378db3d88411e2`  
		Last Modified: Wed, 21 Oct 2026 00:53:33 GMT  
		Size: 3.8 MB (3826393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4710aaf53080bfe5fec6b3943fbb90c63b564e914eaf6d165fb2962c71c21f2`  
		Last Modified: Wed, 21 Oct 2026 00:53:33 GMT  
		Size: 13.7 KB (13666 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:25-slim` - linux; 386

```console
$ docker pull erlang@sha256:cf0598db1ab8a9720f28e9880e0d81bcdc7439647beca4389f99bd6612542f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112254719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f04e4c222c934beb0cb37451c5ef1abba28cff6b67ae476f9a5c7529f471ac4`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:50:15 GMT
ENV OTP_VERSION=25.3.2.21 REBAR3_VERSION=3.24.0
# Tue, 06 Oct 2026 01:50:15 GMT
LABEL org.opencontainers.image.version=25.3.2.21
# Tue, 06 Oct 2026 01:50:15 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="6761432927a9be4f5c13c4019acd6fa3d2f4363198f790947328023aece1986f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="391b0eaa2825bb427fef1e55a0d166493059175f57a33b00346b84a20398216c" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:50:15 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:70e4ecc0352ac50b173cb5a25f4b7f4f26ea4742d8b6e94d48a7b74d771b75b1`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 49.5 MB (49505330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6237dfac8bef306e78149b57cab6bc5d3e231317f385eb609582b3492fa290f8`  
		Last Modified: Tue, 06 Oct 2026 01:50:28 GMT  
		Size: 62.7 MB (62749389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:25-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:473637562a3ad996ae3849a1c33a00eba852b2f01308fb1469804907a1fefb10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:849eb8b956864d7247598eaa8881574d5f06cb1c7e621e8aa424eadbdd3a1927`

```dockerfile
```

-	Layers:
	-	`sha256:35a1c5835aa501505a79e1073865f4ce451a45fd3923109877e0d2213a1a8bae`  
		Last Modified: Tue, 06 Oct 2026 01:50:26 GMT  
		Size: 3.8 MB (3823293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6f24244fd606ca6d00d637e4578c00103169527d689218c7cdd34c550aab713`  
		Last Modified: Tue, 06 Oct 2026 01:50:26 GMT  
		Size: 13.5 KB (13529 bytes)  
		MIME: application/vnd.in-toto+json
