## `elixir:slim`

```console
$ docker pull elixir@sha256:5c36d080a8ee9ea6321937bf0eb1ede6eae8106d70c87d91e68e58fd61af01a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
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

### `elixir:slim` - linux; amd64

```console
$ docker pull elixir@sha256:bd64377b7dfa4fe39ff086e046c0fdbe4ec90c05fe6e40a61986cb341f55bb65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.2 MB (138217222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1054aada0f94c0bcd75df148b32b26af7209cc1e7f406536e32c473347d0bf`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 22:17:38 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:17:38 GMT
LABEL org.opencontainers.image.version=29.0.5
# Wed, 19 Aug 2026 22:17:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:17:38 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:11:18 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:11:18 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 23:11:18 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861106d62537de831600a59b8dd828e76faac048898b0619a169a6e60e45c0a1`  
		Last Modified: Wed, 19 Aug 2026 22:17:52 GMT  
		Size: 80.3 MB (80304557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:201c21c1e8b439b8ed65f7f84d6bf208a27746812c4b3ccdc2feb1aebee02a05`  
		Last Modified: Wed, 19 Aug 2026 23:11:26 GMT  
		Size: 8.6 MB (8600351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:slim` - unknown; unknown

```console
$ docker pull elixir@sha256:ddf0d5cbd1de9144de76cab081765cd14b9738aceda2a877200f6d84f265b9a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3302196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bf18c9555ab540a336b5c9e673d30ecc26b53e2b38f8385911db0a4b69de7e9`

```dockerfile
```

-	Layers:
	-	`sha256:87633248a68f9cff35a222f8f653f64c6dd52c4dab7eddb4a98bda9ac76d9868`  
		Last Modified: Wed, 19 Aug 2026 23:11:26 GMT  
		Size: 3.3 MB (3291560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:409fe339a533ae1d0851b29deab79d64d5048ce35e33c472d6ff9b202f1f30c2`  
		Last Modified: Wed, 19 Aug 2026 23:11:26 GMT  
		Size: 10.6 KB (10636 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:d478e2ccb4dd75189c5eb68c4216ee1504e455099ca930443658d8d94fa3efdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.4 MB (124404508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:626e55d822db1781de467961f81efeafe36928548bac68eecc1935aa65ed7590`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 22:17:52 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:17:52 GMT
LABEL org.opencontainers.image.version=29.0.5
# Wed, 19 Aug 2026 22:17:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:17:52 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:14:12 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:14:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 23:14:12 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ce00596802fbbb6f672716803836be915a7fa1e431e304e27380b560f4b25c8e`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 45.7 MB (45743375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c82d7bc6917b0216bccbab3a97d796dcf1023e89ef929370b1729d5f9e704c`  
		Last Modified: Wed, 19 Aug 2026 22:18:06 GMT  
		Size: 70.1 MB (70061334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2ba4120f3e7d8a3bbb16796ae626961f77b665f00c4f88a20e4923939cb2af`  
		Last Modified: Wed, 19 Aug 2026 23:14:21 GMT  
		Size: 8.6 MB (8599799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:slim` - unknown; unknown

```console
$ docker pull elixir@sha256:f88c4c2fa043bf7c7b38072f58c5b6f7f6b4bb25b65e2c9e2ac34625c48b9d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3303724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4843c9797ce1e3888672d9ffc8a666dd17df9a9c8be5ca6e572e78703186c47d`

```dockerfile
```

-	Layers:
	-	`sha256:f585bc16cb302007dbe7a5fa2beab74cdf0e0d360a6b7ec1ac8583f6a3ca4c44`  
		Last Modified: Wed, 19 Aug 2026 23:14:21 GMT  
		Size: 3.3 MB (3292992 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef6e5ea5f7fe2cda2ecb498fda0de3a0b7a106fe8e2b8cb01dfc2869ad352570`  
		Last Modified: Wed, 19 Aug 2026 23:14:21 GMT  
		Size: 10.7 KB (10732 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:4c0e46519ae1d8e6886a3e830391193a6fa18e2faaa51128d348df2a8d6eaa0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137066972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f20ebe32ad28786359be1b47dce5492dbdfb4f4d126d355d6eaa7c1e89ac7b`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 22:17:38 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:17:38 GMT
LABEL org.opencontainers.image.version=29.0.5
# Wed, 19 Aug 2026 22:17:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:17:38 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:11:15 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:11:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 23:11:15 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef6ad0a89f7dcc4b7f88c8c3c19083081dfa6fbec23a1e77e77af064e0d5a66`  
		Last Modified: Wed, 19 Aug 2026 22:17:54 GMT  
		Size: 78.8 MB (78792771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ccbb2b9ff6f00cb75c14e7e9fe5b36ba3e3a5fbcffacd41a4929ba1dab25d09`  
		Last Modified: Wed, 19 Aug 2026 23:11:25 GMT  
		Size: 8.6 MB (8600355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:slim` - unknown; unknown

```console
$ docker pull elixir@sha256:e1055e2116a127b535ad6d4c239c5de6066959d44f3990c2623de4c136a60262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3303234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8793d681c7ce993d7b2321fee214a9d7f2adfc6d3ce57e5e9c4e21ce7634c363`

```dockerfile
```

-	Layers:
	-	`sha256:2e641505b1827146aa0eb36b904d282897aca5bbb73ba8aaac17723ae17b96c3`  
		Last Modified: Wed, 19 Aug 2026 23:11:24 GMT  
		Size: 3.3 MB (3292470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc08c6a3f8e05a9a3b24a4649901d040c559a4edcad9ac891c45b08bb84bddc0`  
		Last Modified: Wed, 19 Aug 2026 23:11:24 GMT  
		Size: 10.8 KB (10764 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:slim` - linux; 386

```console
$ docker pull elixir@sha256:040073de190a0fa5563360be7dd0a0ea4e0652fca57247a2c8af5efd1dc179e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129886797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8cf17af3f485e1114434e15802c366a170e9665bad13ce1e34e39401460c357`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 22:17:49 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:17:49 GMT
LABEL org.opencontainers.image.version=29.0.5
# Wed, 19 Aug 2026 22:17:49 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:17:49 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:11:50 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:11:50 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 23:11:50 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a719b663cbb7c6d4a00cb43eaa66f5eb11e8ca5eb5c5ad396f1892e716386d2a`  
		Last Modified: Wed, 19 Aug 2026 22:18:04 GMT  
		Size: 70.5 MB (70455660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57ad28ec97c20ea7b46189649bc40b65e883d6d9f98a11225b694472212e711`  
		Last Modified: Wed, 19 Aug 2026 23:11:58 GMT  
		Size: 8.6 MB (8599969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:slim` - unknown; unknown

```console
$ docker pull elixir@sha256:497407086f80914eaaa359f0b0adc018815b711515e853ffa6ca5e9a615bf6a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3299319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b8e1cf09a73a626dee1538bbc679deceb53cb7e0d89455f230bb8e0e5867ed`

```dockerfile
```

-	Layers:
	-	`sha256:16f96317bcfc755d40689efda7941fdb24e12dd21f1ce4700f93e3604d510cc8`  
		Last Modified: Wed, 19 Aug 2026 23:11:58 GMT  
		Size: 3.3 MB (3288725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41bc6945f538c30810ace862a2cf19466495d2c086465625c2f1001f906d5af3`  
		Last Modified: Wed, 19 Aug 2026 23:11:58 GMT  
		Size: 10.6 KB (10594 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:12bfe5d05f9f67cce7632226ef0c0f7e91c353e1173963ccf397e81804aa08ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133166817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9dd54ac9d997a79f53692f9bae8b094430f0338b791a69524681f7d9ca1196f`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:38:14 GMT
ENV OTP_VERSION=29.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 05:38:14 GMT
LABEL org.opencontainers.image.version=29.0.4
# Wed, 05 Aug 2026 05:38:14 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="67426425f0eed0dbd6c8cd3d500de4c47bbf1bbe337be0e2c13fc8f8f3e4997a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:38:14 GMT
CMD ["erl"]
# Wed, 05 Aug 2026 10:45:31 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 05 Aug 2026 10:45:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 10:45:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c74a0d8fdd8b5e918d554a3c97a233db159ad9e88b86286b2bda448bde5e061`  
		Last Modified: Wed, 05 Aug 2026 05:38:40 GMT  
		Size: 71.4 MB (71432772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5edb822136201cf27a9d11039e32e492178bfb2fd4b69fdf237c4ffcc0c9b45b`  
		Last Modified: Wed, 05 Aug 2026 10:45:51 GMT  
		Size: 8.6 MB (8600440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:slim` - unknown; unknown

```console
$ docker pull elixir@sha256:6224d89920ca67e1baec1b2617bc9b468c1be5794378a248ee584dae97e56080
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3305849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22b40604f4b4d45ca8a3704f2936bf14768952681e74db6afc9064a2ef9e1626`

```dockerfile
```

-	Layers:
	-	`sha256:25a4e15b32223340b82158e5260de864b10f9f19ef0e63292822ab1eff315b12`  
		Last Modified: Wed, 05 Aug 2026 10:45:51 GMT  
		Size: 3.3 MB (3295157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91a54fc24a0345468e716c5302a538c21d6a91f643a38df13c670628844b9cb3`  
		Last Modified: Wed, 05 Aug 2026 10:45:51 GMT  
		Size: 10.7 KB (10692 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:slim` - linux; s390x

```console
$ docker pull elixir@sha256:be16b6ff8f7c3e8d87ba8734972a5f6848ee411fafa4d76bedf3b4f2519d2158
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129301212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4ceea69dcb41ef529a68834a2eebf1665bbf8c9b114cce95737c0556fe9eae`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 22:18:08 GMT
ENV OTP_VERSION=29.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:18:08 GMT
LABEL org.opencontainers.image.version=29.0.5
# Wed, 19 Aug 2026 22:18:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="86f6f40d4638852b0383235b02a70d8450184e441e83a06a108bf8e5bf1b2e04" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:18:08 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:10:58 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:10:58 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 23:10:58 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ebe8f2a7c855de58768ed3b115cbe7ce6b78ef73760e7d0a8c6540f6746ed4`  
		Last Modified: Wed, 19 Aug 2026 22:18:32 GMT  
		Size: 71.3 MB (71319645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5f9550467d2de97ff2ef4081269fa644cfde1b1320e0878028bd9bfd698462`  
		Last Modified: Wed, 19 Aug 2026 23:11:11 GMT  
		Size: 8.6 MB (8600141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:slim` - unknown; unknown

```console
$ docker pull elixir@sha256:a1b18d2c5d4f3bc0e723293e0bb2bf8ed16e97bf0f40544927a62385c8fe54b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3303637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b5084e837bbe6668d525346dd1ce0b8ff2f61e765c6081516808c4f3a0d406`

```dockerfile
```

-	Layers:
	-	`sha256:6e410296f7536ea7a276a6eefe6b9a9243d569f5ae3d57b6d47410ba25c63673`  
		Last Modified: Wed, 19 Aug 2026 23:11:11 GMT  
		Size: 3.3 MB (3293001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5671620c333956f533b6bffbe6755e547e119df813f86c8c30d1dd781ad5fdf1`  
		Last Modified: Wed, 19 Aug 2026 23:11:11 GMT  
		Size: 10.6 KB (10636 bytes)  
		MIME: application/vnd.in-toto+json
