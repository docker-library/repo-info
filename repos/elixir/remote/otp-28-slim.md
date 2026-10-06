## `elixir:otp-28-slim`

```console
$ docker pull elixir@sha256:4ffd088237bfee2f65083b12f242256a25aa42b0fd2cee2cae966adbae8b5a6c
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

### `elixir:otp-28-slim` - linux; amd64

```console
$ docker pull elixir@sha256:be835bb3a11a7a95134efdac572a9b6484110f05056606ff2de858c944d87ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (137040427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4478c882367924d6b8c5753bce524cdf7aa803a7914e31e8ad9b9ce55fe46f9b`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:43:50 GMT
ENV OTP_VERSION=28.5.0.7 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 01:43:50 GMT
LABEL org.opencontainers.image.version=28.5.0.7
# Tue, 06 Oct 2026 01:43:50 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ddf17db6d3e9b7a7cfac0d72238ddc8ea040fedc5e3dfad82fc90675319d6c93" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:43:50 GMT
CMD ["erl"]
# Tue, 06 Oct 2026 02:49:51 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 06 Oct 2026 02:49:51 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:49:51 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ef638f17e97196ecee34ca9914cf3cf810458b4ce336a58bd963f3eb602f3b`  
		Last Modified: Tue, 06 Oct 2026 01:44:05 GMT  
		Size: 79.0 MB (79040896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47271842f2d7a15391460bc9691bbcc97534dd04db6a5ab8dc5bab1f6cd732fb`  
		Last Modified: Tue, 06 Oct 2026 02:49:59 GMT  
		Size: 8.6 MB (8606331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:61f658145922178daf7e69b181690ca807ff04d67a2001a24a56e590fcd87a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35007858d1c84d1eda9a5a902e9582a0779b0500c4dc6970389f14a5315f5145`

```dockerfile
```

-	Layers:
	-	`sha256:bdf759101f83f2709b276c442ae4285c9e7cbb292787dbbc9feac36975a40a5e`  
		Last Modified: Tue, 06 Oct 2026 02:49:59 GMT  
		Size: 3.3 MB (3300819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb4b3af745cadeae65b307e3d1108943708ae97b72f45fb3a9aafe34ae16bbff`  
		Last Modified: Tue, 06 Oct 2026 02:49:59 GMT  
		Size: 9.7 KB (9746 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:e344b325fc4289978baa23dee63cfc4520c8866a998d3ba0adaf3af8fe27fe2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123543207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c5491312a12a29dc7f35c6ed070bec0d33e80eca754cdf8319b8856341f23a`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:28:37 GMT
ENV OTP_VERSION=28.5.0.7 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 02:28:37 GMT
LABEL org.opencontainers.image.version=28.5.0.7
# Tue, 06 Oct 2026 02:28:37 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ddf17db6d3e9b7a7cfac0d72238ddc8ea040fedc5e3dfad82fc90675319d6c93" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:28:37 GMT
CMD ["erl"]
# Tue, 06 Oct 2026 03:42:41 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 06 Oct 2026 03:42:41 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:42:41 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f9e7a151240295250a16c9b96a2d10acd6bb1817004d9f60613dcfa0e6e0e8`  
		Last Modified: Tue, 06 Oct 2026 02:28:50 GMT  
		Size: 69.1 MB (69124038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80cad0ab090d9b7b8c5c2fd169f7c0eb46d9bafcf1f7370123d5799c21d06a1e`  
		Last Modified: Tue, 06 Oct 2026 03:42:49 GMT  
		Size: 8.6 MB (8605905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:af9c787935a2dcc7e534fbe72d2265969bcfd4606097f394ae57988c6172b0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3312045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12cedfd3165ffa8863d7200697b24e6edd2cae9364c2a25e9b117db53ca9db51`

```dockerfile
```

-	Layers:
	-	`sha256:1fdd4aa64eb9dc0d53588e2ab48adda92ff1bbce580443f2efeeedeb2de255ef`  
		Last Modified: Tue, 06 Oct 2026 03:42:49 GMT  
		Size: 3.3 MB (3302227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9ec02d1a0a0abce09754ea1786767862be0070762b516a4068e19cf5156f69e`  
		Last Modified: Tue, 06 Oct 2026 03:42:49 GMT  
		Size: 9.8 KB (9818 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:1ea4e2435de7444bc1fbaab15406c0c0d902e79dc8d2821af0066bcea1cf7a12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135948326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc48f0b335760ebab72ec95be8b015f2a49da12c06400ae29d5c80b252cb401`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:47:00 GMT
ENV OTP_VERSION=28.5.0.7 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 01:47:00 GMT
LABEL org.opencontainers.image.version=28.5.0.7
# Tue, 06 Oct 2026 01:47:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ddf17db6d3e9b7a7cfac0d72238ddc8ea040fedc5e3dfad82fc90675319d6c93" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:00 GMT
CMD ["erl"]
# Tue, 06 Oct 2026 02:42:50 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 06 Oct 2026 02:42:50 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:42:50 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b85207282c5ff19d725d6cc6310373fdb4ba4ceeec3b88a069a5fa8cd2aa1a`  
		Last Modified: Tue, 06 Oct 2026 01:47:15 GMT  
		Size: 77.6 MB (77580920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d28ee44112f03bb6e37528c5a31c95c2f9368248bd86e4932199b7d241efa81f`  
		Last Modified: Tue, 06 Oct 2026 02:42:59 GMT  
		Size: 8.6 MB (8606301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:ab93c2a63c0e805f46ad1bdcdeac94c98f46e66ca1f4ecaffa3ba49cadfdb8fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451d371f3caa7e584867fcb9cedd15f3a4b2153c0b12ace374c762c9c546c61d`

```dockerfile
```

-	Layers:
	-	`sha256:74661d3cac75ecf90107ce8ea0211e9c93f2f2266d6d72a2acb76c33199c3dd5`  
		Last Modified: Tue, 06 Oct 2026 02:42:59 GMT  
		Size: 3.3 MB (3301693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e34fdbd9a197ba3c3643df7fadc31745db8deed10d2d0d86196b3af6efe6c7a`  
		Last Modified: Tue, 06 Oct 2026 02:42:59 GMT  
		Size: 9.8 KB (9838 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28-slim` - linux; 386

```console
$ docker pull elixir@sha256:556f59ddbfc782fb1b3dcd5bad09a1b4bcc480de2c256c1e33567623cc4aad86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129042810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa29a417ecb8e9a2ce740998fa88db64de4015276bfcc1b669efab5a8b52d34d`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:48:04 GMT
ENV OTP_VERSION=28.5.0.7 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 01:48:04 GMT
LABEL org.opencontainers.image.version=28.5.0.7
# Tue, 06 Oct 2026 01:48:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ddf17db6d3e9b7a7cfac0d72238ddc8ea040fedc5e3dfad82fc90675319d6c93" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:48:04 GMT
CMD ["erl"]
# Tue, 06 Oct 2026 02:47:11 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 06 Oct 2026 02:47:11 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:47:11 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aeb3ebc24852a65311563d41c9864cd7f6cb2fc5325fd0f1dd9d9b3b3c9a62c`  
		Last Modified: Tue, 06 Oct 2026 01:48:17 GMT  
		Size: 69.5 MB (69530747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168aa84a481d6f19c36cd76dd049629295128ea208390d64e7fd8da1f9436baf`  
		Last Modified: Tue, 06 Oct 2026 02:47:19 GMT  
		Size: 8.6 MB (8605967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:966b7ec844b9ae07e4168bdcfa52331953cf4dbfe1408d72906408d078a9be25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3307719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3048731595a6d0c2af73cd450a620392b6d7753830a1e234b5ed418ba15b3c00`

```dockerfile
```

-	Layers:
	-	`sha256:03337d41ced4f2d21d9ef0a689d03cbe2099f5672ba54a10612f160ff8b11c06`  
		Last Modified: Tue, 06 Oct 2026 02:47:19 GMT  
		Size: 3.3 MB (3298000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e82c0ec4f85d96bf52cca413914df6527d176ef0ef5370a83b8a186f66c2d15b`  
		Last Modified: Tue, 06 Oct 2026 02:47:18 GMT  
		Size: 9.7 KB (9719 bytes)  
		MIME: application/vnd.in-toto+json
