## `elixir:otp-27-slim`

```console
$ docker pull elixir@sha256:e8fe2fb77282168cffc4d73b1fe512d8fbd08cc2a2fb18e6018d7e786095f9f2
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

### `elixir:otp-27-slim` - linux; amd64

```console
$ docker pull elixir@sha256:9817efe53ee5a93aa410fbf1f5a2ce91aa0c66af72d6f734e87783f57e12a9b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133204606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f2eafbe0b2170c16b94714f4f5e8a93d7c226bd8feb70d6b00317ebcf6e5da`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 19 Aug 2026 22:19:21 GMT
ENV OTP_VERSION=27.3.4.16 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:19:21 GMT
LABEL org.opencontainers.image.version=27.3.4.16
# Wed, 19 Aug 2026 22:19:21 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="b945362f125ecdba4281723595f08716808bafd9137ad153f12e1db917ce8517" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:19:21 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:11:42 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:11:42 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 23:11:42 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35cada33fbb2a72b9ee9f2b413cb17d14795905dea7785e473bf8f7e3ea68155`  
		Last Modified: Wed, 19 Aug 2026 22:19:37 GMT  
		Size: 76.1 MB (76106852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a36c35237f0da36c7dd1a5e49f0d2427f29269e3814207d86e99b7cebb9e7f8`  
		Last Modified: Wed, 19 Aug 2026 23:11:51 GMT  
		Size: 8.6 MB (8600663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:a873aa1ed8f4683570c8039563c84d56e09c83f3116006c630a96a5b7ab6da70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11e2c3e1d9407878e0f05da78b8f81357fb943a12fff92024c4078b26c6f710`

```dockerfile
```

-	Layers:
	-	`sha256:16c229ff0cd099d28e3fddc87946b5cd0477e0c4561fd5f5bfd42a0e3e1abc38`  
		Last Modified: Wed, 19 Aug 2026 23:11:51 GMT  
		Size: 3.8 MB (3831920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a69c671f0405e2bdd2ae4df0e465b2a47fc18ae46a3a7fcfcb1d900fcf42c28`  
		Last Modified: Wed, 19 Aug 2026 23:11:51 GMT  
		Size: 9.7 KB (9747 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:96a81806869f4fa0f4d037691cc156d48665093deb1fcd959f46f56570a9f706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118016613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1fbe03574e9d77b8cd734823c03e595e69611a0e5107a3c502f3c3456120dd2`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 19 Aug 2026 22:20:12 GMT
ENV OTP_VERSION=27.3.4.16 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:20:12 GMT
LABEL org.opencontainers.image.version=27.3.4.16
# Wed, 19 Aug 2026 22:20:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="b945362f125ecdba4281723595f08716808bafd9137ad153f12e1db917ce8517" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:20:12 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:14:19 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:14:19 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 23:14:19 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae0e997a035621450dcae13f71681217fb51360dcde80871f7e872525c75785b`  
		Last Modified: Wed, 19 Aug 2026 22:20:26 GMT  
		Size: 65.2 MB (65213764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3a09e085b07852959c9eba5847a4d51082710a60a14a414d62325859ce8f99`  
		Last Modified: Wed, 19 Aug 2026 23:14:28 GMT  
		Size: 8.6 MB (8599977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:bfb4097e875e2bbb20c8c059e84e90211288c698dcf0363b3b8cd63fa6284136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3843964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5eabedcfdeb0fb3adc66cdcaa4716c13f76b45354911ce9e6b81115fca9edf`

```dockerfile
```

-	Layers:
	-	`sha256:6184ddab3e3929b28e5c552e7232abf4b567b2cb5112968d21e6006c8bd7b946`  
		Last Modified: Wed, 19 Aug 2026 23:14:28 GMT  
		Size: 3.8 MB (3834145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54fd7bd069809f12d99ed22a336b492604eb1e003f3e03f294fca90b77c2161d`  
		Last Modified: Wed, 19 Aug 2026 23:14:27 GMT  
		Size: 9.8 KB (9819 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:1385e667d340264a55981d353ca9d134b0ab4c3b3ddb173a5ec400374351a99e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.8 MB (130836002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab7600d96fd0fbd121af9cb5d12eb56ded576ef99adb9b55b8119e11b43466c7`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 19 Aug 2026 22:20:04 GMT
ENV OTP_VERSION=27.3.4.16 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:20:04 GMT
LABEL org.opencontainers.image.version=27.3.4.16
# Wed, 19 Aug 2026 22:20:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="b945362f125ecdba4281723595f08716808bafd9137ad153f12e1db917ce8517" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:20:04 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:11:33 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:11:33 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 23:11:33 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cfd59cd8ec4e80940799a2d6768d0a6a216756a372eb8175c0937150a9853e6`  
		Last Modified: Wed, 19 Aug 2026 22:20:19 GMT  
		Size: 73.9 MB (73852128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e2e6e0d65414461aebc534875bf5d31b9e8a01c174d40a5f6e00be4590d319`  
		Last Modified: Wed, 19 Aug 2026 23:11:42 GMT  
		Size: 8.6 MB (8600494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:c4baa90d3a4d5a2669e395b4244d8e2d53b26473412bd80c56d2c3da00000a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3842008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565089b96ab6c4946bcbd94719badbb37bbc3b9804a9e0f6ad45a9e03d05f385`

```dockerfile
```

-	Layers:
	-	`sha256:d8202be60ee65509704589c811761768c7b91f2d791f341840d292f486054b46`  
		Last Modified: Wed, 19 Aug 2026 23:11:42 GMT  
		Size: 3.8 MB (3832169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d29bc3bb76f0084b8f459e45827f0e287e9f0eff4281f7043c17534a29851ae`  
		Last Modified: Wed, 19 Aug 2026 23:11:42 GMT  
		Size: 9.8 KB (9839 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; 386

```console
$ docker pull elixir@sha256:46765f08370446d162b07d3ab7512bcdfa3b31cfa8e8002cfae9346ee9b655ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.4 MB (124354322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7f26ebc393eb5cba87ba7e5cbbc7be6a882838009abe38283add12ac7517b0`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 19 Aug 2026 22:18:41 GMT
ENV OTP_VERSION=27.3.4.16 REBAR3_VERSION=3.27.0
# Wed, 19 Aug 2026 22:18:41 GMT
LABEL org.opencontainers.image.version=27.3.4.16
# Wed, 19 Aug 2026 22:18:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="b945362f125ecdba4281723595f08716808bafd9137ad153f12e1db917ce8517" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:18:41 GMT
CMD ["erl"]
# Wed, 19 Aug 2026 23:12:07 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 19 Aug 2026 23:12:07 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 23:12:07 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acaa536a719c4e16a0f17e9f79bc7727cce59f3a6697b51c14cd26ca877f3f11`  
		Last Modified: Wed, 19 Aug 2026 22:18:55 GMT  
		Size: 66.3 MB (66268993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1d3e3d18e11585cb66f1481eba2156a84d22cbcaeb802f6124130c125438fd`  
		Last Modified: Wed, 19 Aug 2026 23:12:16 GMT  
		Size: 8.6 MB (8600208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:b9f634c92b5de243c831bc454cbb7a3ec16f2bbd46239e297855517edec32f1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b0c899f5d31c80f70989445acd56499430292c1a107ff903534d21bab5ac6e`

```dockerfile
```

-	Layers:
	-	`sha256:e2b615cf139fce531026b149a295e3ff8dc9200ad1cfd531b1504f6aa4095470`  
		Last Modified: Wed, 19 Aug 2026 23:12:16 GMT  
		Size: 3.8 MB (3829086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfa52efd103de3b10f79d1195070a4fb76ea1875e3699da364e8fe78e606bc5b`  
		Last Modified: Wed, 19 Aug 2026 23:12:16 GMT  
		Size: 9.7 KB (9720 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:8025b6cb6587e693693c26813ef92e37912adee716da52611754b6eec2cc6dba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128272805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20930defae863dc9e2b19b9f1768e58635e4ef384f21329da9a2dc39b619e819`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:00:58 GMT
ENV OTP_VERSION=27.3.4.15 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 01:00:58 GMT
LABEL org.opencontainers.image.version=27.3.4.15
# Wed, 05 Aug 2026 01:00:58 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="7643aa61a305ac95fd2dec082ec28a102c61258fc8971458af1e476519c56d31" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:00:58 GMT
CMD ["erl"]
# Wed, 05 Aug 2026 08:06:01 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Wed, 05 Aug 2026 08:06:01 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 08:06:01 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4634c02e9bb1594f753e1ecc0abfaf9f6e23f7e904a9f34c9045fef9383cbd7`  
		Last Modified: Wed, 05 Aug 2026 01:01:28 GMT  
		Size: 67.3 MB (67331118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5aadd4a8c6da09b5023f3ac5ae9ec9b40d8bd7cf6f0ba7a9a2b4cfcc929e9d`  
		Last Modified: Wed, 05 Aug 2026 08:06:18 GMT  
		Size: 8.6 MB (8600210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:f288424eb2515ed556717ad38b6602b5c5cff50870f6befda77663d68e423bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8acd3291dc262406b733d0a6149e96fc7daffc62026462b7848d5dd388936e1`

```dockerfile
```

-	Layers:
	-	`sha256:ce433b82c2a8bf47983500ab74244bf853cbfff630cacfe24a9e40d8e70dcc2b`  
		Last Modified: Wed, 05 Aug 2026 08:06:18 GMT  
		Size: 3.8 MB (3836364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5143262e8645638229353bb84c69627b72a899b7f970674f6f516d31db083b7c`  
		Last Modified: Wed, 05 Aug 2026 08:06:18 GMT  
		Size: 9.8 KB (9785 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; s390x

```console
$ docker pull elixir@sha256:c4a67de0f88ef390797ff181e831742ab6facad48aeada43a13069d89dcb2fec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121761177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8f13c22bbd39d0cd3fb47e001ac132cb287bac9a752345cee9a3d50a5fae55`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 28 Jul 2026 21:38:34 GMT
ENV OTP_VERSION=27.3.4.15 REBAR3_VERSION=3.27.0
# Tue, 28 Jul 2026 21:38:34 GMT
LABEL org.opencontainers.image.version=27.3.4.15
# Tue, 28 Jul 2026 21:38:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="7643aa61a305ac95fd2dec082ec28a102c61258fc8971458af1e476519c56d31" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:38:34 GMT
CMD ["erl"]
# Tue, 28 Jul 2026 22:24:24 GMT
ENV ELIXIR_VERSION=v1.20.2 LANG=C.UTF-8
# Tue, 28 Jul 2026 22:24:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="1a25bbf9a9016651fc332eecc02bb9681d0b8e722c2e256e73ddb88fbce6e6b0" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 22:24:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105955f607bdfbcfc8197ad48ec520d67955cbb5f79e6571afc6c067b414c314`  
		Last Modified: Tue, 28 Jul 2026 21:41:42 GMT  
		Size: 66.0 MB (66002737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a4944914674dd79e5fe522fa953613eaa111656b6c112bda847794628db4d`  
		Last Modified: Tue, 28 Jul 2026 22:25:36 GMT  
		Size: 8.6 MB (8601161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:865f533cfb2038ae7470435d5e0c83c9a36bc36b2c16cd3d418516416e4e4eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d668d22b40d753a0651103020f364f8ac46a00ba4359751c6fa044fe7410c49b`

```dockerfile
```

-	Layers:
	-	`sha256:15c432b55f78166486c7f558f5aa171841489dc0d7498ca38db89759b729f7a4`  
		Last Modified: Tue, 28 Jul 2026 22:25:35 GMT  
		Size: 3.8 MB (3828748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51ea525144670251a57712a11580c1dd79e0de5543fb159a62f65450715661de`  
		Last Modified: Tue, 28 Jul 2026 22:25:31 GMT  
		Size: 9.7 KB (9747 bytes)  
		MIME: application/vnd.in-toto+json
