## `elixir:otp-28-slim`

```console
$ docker pull elixir@sha256:44d324e2c5ae9981a8c03c3df5546de2213b1f818addbd3ac99a6ac80dd25ac9
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
$ docker pull elixir@sha256:bfd695a6ed6881f27841ab5f1be73711fcb50401c85389f5c3bde6145bf6cb7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.9 MB (136889813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a8a2ee2a24cc1b53bdaeabc1497c3968e144e1504ab3a2376cee1e31e369676`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 22:18:30 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:18:30 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Wed, 19 Aug 2026 22:18:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:18:30 GMT
CMD ["erl"]
# Thu, 20 Aug 2026 18:28:22 GMT
ENV ELIXIR_VERSION=v1.20.3 LANG=C.UTF-8
# Thu, 20 Aug 2026 18:28:22 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="ff22a894b130631443db1a193b4e8cb4762f697128566e43da848fd16c3777bd" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:28:22 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b59a843f99c4b17430904e6ca492b0ff7d87e59a1bd324113d66adc678c6b5`  
		Last Modified: Wed, 19 Aug 2026 22:18:44 GMT  
		Size: 79.0 MB (78976713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bef36daf8ce2dfd55e49c048cd119a86228bbf3ebb3802aa948e1166a3a5ed2`  
		Last Modified: Thu, 20 Aug 2026 18:28:31 GMT  
		Size: 8.6 MB (8600786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:08de7cd6f806da814f1bd8565a290c716823e2f9129ad7ebdf2986067424b7cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa730f07100a65332e622dc062df8ee787a0dd7715608b26ca7bb9b49217a16`

```dockerfile
```

-	Layers:
	-	`sha256:a8f1d5de1af5f5b9f1c5f0e67979eebbe062c06ac08a764da7063d059d1e12ca`  
		Last Modified: Thu, 20 Aug 2026 18:28:31 GMT  
		Size: 3.3 MB (3290862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:335cf29c00361e3fce5a7261cddfa8270a4ded58f5397b21c563c4cd5f18b69a`  
		Last Modified: Thu, 20 Aug 2026 18:28:31 GMT  
		Size: 9.7 KB (9744 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:4a38bddf5c3f3033737c8df0718c92fbeae860389433bd224e1a4ee3f64e5485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123404110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97cc1c5cec3a268853433efbe46cfd6e507077f8acb2fba9b8d15d95013a463`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 22:18:41 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:18:41 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Wed, 19 Aug 2026 22:18:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:18:41 GMT
CMD ["erl"]
# Thu, 20 Aug 2026 18:26:37 GMT
ENV ELIXIR_VERSION=v1.20.3 LANG=C.UTF-8
# Thu, 20 Aug 2026 18:26:37 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="ff22a894b130631443db1a193b4e8cb4762f697128566e43da848fd16c3777bd" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:26:37 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ce00596802fbbb6f672716803836be915a7fa1e431e304e27380b560f4b25c8e`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 45.7 MB (45743375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045361ab97da400613197da234fd80dca40bd1e75f349a277aa9cd397a0e5a03`  
		Last Modified: Wed, 19 Aug 2026 22:18:55 GMT  
		Size: 69.1 MB (69060529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374946d59b10fbe6e6b16b92da8716c2c02bbc8a9a4dce0594a4b9ba839246d8`  
		Last Modified: Thu, 20 Aug 2026 18:26:45 GMT  
		Size: 8.6 MB (8600206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:e07431ebdd3d2356ce90c8fa0ae07c5e2b50eb6ca964f528ef4b0ae8346d4eb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3302088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807a1b43b9d31b655ec591995122e58369fdb984bb0191f88f078146a36bd73f`

```dockerfile
```

-	Layers:
	-	`sha256:1996a2bf07ab1824acb40aee0c79f80e3820aa68a911303e8f5506ce936d3601`  
		Last Modified: Thu, 20 Aug 2026 18:26:45 GMT  
		Size: 3.3 MB (3292270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a443f2a103179fc05787357d86d6bb5daf7daf55e87e0f3d58831d8133191270`  
		Last Modified: Thu, 20 Aug 2026 18:26:45 GMT  
		Size: 9.8 KB (9818 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:0da1e838007555062c7e2e686e371d28fdadce051fc15f45b8c859df239c2ba7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135796364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3742cfa38c034f135e015a1293ffad8746334e24cb02a3ccb7563c893a84083`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 22:18:26 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:18:26 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Wed, 19 Aug 2026 22:18:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:18:26 GMT
CMD ["erl"]
# Thu, 20 Aug 2026 18:27:11 GMT
ENV ELIXIR_VERSION=v1.20.3 LANG=C.UTF-8
# Thu, 20 Aug 2026 18:27:11 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="ff22a894b130631443db1a193b4e8cb4762f697128566e43da848fd16c3777bd" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:27:11 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2397c1c259f876180ec2e48ce5cd192bf52cce2610f55c2ab4190b059790db`  
		Last Modified: Wed, 19 Aug 2026 22:18:41 GMT  
		Size: 77.5 MB (77521767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1ca4c06f016d76466b679cf5136289d27dfef55cc897bc8f49c2072778388a`  
		Last Modified: Thu, 20 Aug 2026 18:27:20 GMT  
		Size: 8.6 MB (8600751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:5a08c4bc74ec93bb3a895982bc76066caf349dfd5d98f97d02ae6ca974efd175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3301571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70444c18b1982d2367d034876fcfe55fe76c031e524d2d17635e5870562f34c`

```dockerfile
```

-	Layers:
	-	`sha256:f1c0c3451f28f411687af054d44decca2af20fc5357501b0283afa87974c5ff2`  
		Last Modified: Thu, 20 Aug 2026 18:27:20 GMT  
		Size: 3.3 MB (3291736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f64ff1012403d7ca580577f2c06dc2f7e8d14784cbb83447c1a023b762c72709`  
		Last Modified: Thu, 20 Aug 2026 18:27:20 GMT  
		Size: 9.8 KB (9835 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-28-slim` - linux; 386

```console
$ docker pull elixir@sha256:727f22c55b7534a4721451fe4b3cebc3839a57cf6584765a6fb4413fc58ba3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128916786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b9135cf97053eb02342fd6239a0e053ef96c301990e99a48957c89868492ace`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 22:18:52 GMT
ENV OTP_VERSION=28.5.0.5 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:18:52 GMT
LABEL org.opencontainers.image.version=28.5.0.5
# Wed, 19 Aug 2026 22:18:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5231ba18f31f8041c2d6514cc8842e46954d3b39a53f1617f03f2abe6fea59c7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:18:52 GMT
CMD ["erl"]
# Thu, 20 Aug 2026 18:26:20 GMT
ENV ELIXIR_VERSION=v1.20.3 LANG=C.UTF-8
# Thu, 20 Aug 2026 18:26:20 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="ff22a894b130631443db1a193b4e8cb4762f697128566e43da848fd16c3777bd" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:26:20 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:943c8cbeaed911cd68b1f4c252e550826dc87d0236c3f5fc50695309338c6598`  
		Last Modified: Wed, 19 Aug 2026 22:19:06 GMT  
		Size: 69.5 MB (69485275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225900d4a34e66404294951c62cda372057d2135e7615a658850a4c7a525628c`  
		Last Modified: Thu, 20 Aug 2026 18:26:29 GMT  
		Size: 8.6 MB (8600343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-28-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:208816e7b1097166a13eb8e882478bd6194319927db799a800d33bac349ac51e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3297761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a66c9fa4c98c5a8db789ad9fee4b049b986a89f6d13904fb744b2b9443f301b`

```dockerfile
```

-	Layers:
	-	`sha256:02505f5f35350fae9fb3b0280c60dc8668be03550cbed18fecac311d6009557b`  
		Last Modified: Thu, 20 Aug 2026 18:26:29 GMT  
		Size: 3.3 MB (3288042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e061de8c119ee06c52c9793a300420efbfa8b69fe97663295014ef993007638d`  
		Last Modified: Thu, 20 Aug 2026 18:26:29 GMT  
		Size: 9.7 KB (9719 bytes)  
		MIME: application/vnd.in-toto+json
