## `elixir:otp-27-slim`

```console
$ docker pull elixir@sha256:d98780ef39701470d8c349091a655131bf18fa89e27b4a515c66e09589480fcf
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

### `elixir:otp-27-slim` - linux; amd64

```console
$ docker pull elixir@sha256:a5da2446a4f6438f2c63b08d66a834e9f9391f04a937c186a3afdde53beff8bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133308435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1b4d5900b2ad28b4a02be6646690252ce0affe61e401d401e096628edd0c62`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 19:12:36 GMT
ENV OTP_VERSION=27.3.4.18 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 19:12:36 GMT
LABEL org.opencontainers.image.version=27.3.4.18
# Tue, 22 Sep 2026 19:12:36 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="920d00076d94f4850bd642d79da3229c8e5eea7ebc914996ee6dfd2154aeacf7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:12:36 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 19:49:36 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 19:49:36 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:49:36 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4a64ede840f13d35cb6e477962af3400be1c3d36892bc3917222e41eee1e87`  
		Last Modified: Tue, 22 Sep 2026 19:12:50 GMT  
		Size: 76.2 MB (76190880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1bf46078bf4fb60475469180c54aa7724b1c2b7922c241602e9f439a56e526`  
		Last Modified: Tue, 22 Sep 2026 19:49:45 GMT  
		Size: 8.6 MB (8614115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:eaa7d8ab2de6a80f448919fe0c2e1391d507286872a1e3173f206af04d21c813
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9734a4c83609cdebb6dec81b014004e27f31c22109e8f874d4ccbb2fef553457`

```dockerfile
```

-	Layers:
	-	`sha256:7a34ea38b4aaa3b47569deeabfdc74740c39f2ab2bc67e25d300e830b80cbbd5`  
		Last Modified: Tue, 22 Sep 2026 19:49:45 GMT  
		Size: 3.8 MB (3831968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a914e87bb8a394aa9702a2402aa4df21567b3200a4446921d7147bf60ecc9ab5`  
		Last Modified: Tue, 22 Sep 2026 19:49:44 GMT  
		Size: 9.7 KB (9747 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:6d45450fb6b4706744af1821cf81e29a467ea39c0f907952955ba9f1aacf4b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118104797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c024919777ce60d4e6ea5e7ab1fe405d6ec55db6f69ba0056d6751a3aa7ceab`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 18:53:42 GMT
ENV OTP_VERSION=27.3.4.18 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 18:53:42 GMT
LABEL org.opencontainers.image.version=27.3.4.18
# Tue, 22 Sep 2026 18:53:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="920d00076d94f4850bd642d79da3229c8e5eea7ebc914996ee6dfd2154aeacf7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:53:42 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 19:11:50 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 19:11:50 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:11:50 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2dbbb740748386aa41bd6bbfa1a7cff623f689c6f5256866a5c87ebb2c3b212`  
		Last Modified: Tue, 22 Sep 2026 18:53:55 GMT  
		Size: 65.3 MB (65289159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3418aec6d1f0a36f191911f34182e017a1631a728e1640a20a64dcf39c1088c`  
		Last Modified: Tue, 22 Sep 2026 19:11:58 GMT  
		Size: 8.6 MB (8613429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:1afca6a116a3782d04ad2af7baee48fdc87b475aa72e0777183851260606306c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2d5e344b366efd8ab71e81e962aa599bdd9be077ea5bfe76ed9ba66343f16f`

```dockerfile
```

-	Layers:
	-	`sha256:bd38159305a8e8e57d510f68e8149052730f9613bb32adca70f751d72a1d5fc6`  
		Last Modified: Tue, 22 Sep 2026 19:11:58 GMT  
		Size: 3.8 MB (3834193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63cfd1f269a513d2393a6b45ce1aaa4863ae586ff7ab5665b2db85cf532a3eb4`  
		Last Modified: Tue, 22 Sep 2026 19:11:58 GMT  
		Size: 9.8 KB (9819 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:2ffa633c217882ec7192320a2cd62398edf9c210faaec6948810c02af229ba20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.9 MB (130923412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb96f04702c1755118677891fbb7d0db18c1fa82c48f9a54f3e9e3064737af2`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 19:53:51 GMT
ENV OTP_VERSION=27.3.4.18 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 19:53:51 GMT
LABEL org.opencontainers.image.version=27.3.4.18
# Tue, 22 Sep 2026 19:53:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="920d00076d94f4850bd642d79da3229c8e5eea7ebc914996ee6dfd2154aeacf7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:53:51 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 20:00:46 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 20:00:46 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 20:00:46 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c97cd5e8388458c84863a56b724c37e70e589816921ca5c27255a189e299fda`  
		Last Modified: Tue, 22 Sep 2026 19:54:07 GMT  
		Size: 73.9 MB (73919567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976cfb0c13fd776536b61ea02281fb1793fe884568ad4377496dbbaefbf931b4`  
		Last Modified: Tue, 22 Sep 2026 20:00:56 GMT  
		Size: 8.6 MB (8613935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:a19e41e00cded938f8778c4e0d848b1f9d28daed568c638eaea2f325bb064e45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3842056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23707342087ff844add29fc01b5a7d7e56d27d4a96c2b298236665ad0d3abf8a`

```dockerfile
```

-	Layers:
	-	`sha256:b64bccad393883cec7cacd586c309f91ceb02d96c5f066ed046e3e4cbe23eac6`  
		Last Modified: Tue, 22 Sep 2026 20:00:56 GMT  
		Size: 3.8 MB (3832217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5bf2c888a27bdf01f97f6fe884e12ecdbf79bac94673344f0d48c3ffa986871`  
		Last Modified: Tue, 22 Sep 2026 20:00:55 GMT  
		Size: 9.8 KB (9839 bytes)  
		MIME: application/vnd.in-toto+json

### `elixir:otp-27-slim` - linux; 386

```console
$ docker pull elixir@sha256:d72ae8c540ea0c7033dab030c7906e556230a6050ff769bedb750a2a2f8fc32a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.5 MB (124452316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483fee583f00ee9e3079a51271cdb680aa5143bd5822496b8a1ba2dfe20d1f84`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 18:53:34 GMT
ENV OTP_VERSION=27.3.4.18 REBAR3_VERSION=3.27.0
# Tue, 22 Sep 2026 18:53:34 GMT
LABEL org.opencontainers.image.version=27.3.4.18
# Tue, 22 Sep 2026 18:53:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="920d00076d94f4850bd642d79da3229c8e5eea7ebc914996ee6dfd2154aeacf7" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:53:34 GMT
CMD ["erl"]
# Tue, 22 Sep 2026 19:16:04 GMT
ENV ELIXIR_VERSION=v1.20.4 LANG=C.UTF-8
# Tue, 22 Sep 2026 19:16:04 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="2f87be1702583ecbeee82c0ad4d6353de96463cfa0fa6e7557e05f68d90da869" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& find /usr/local/src/elixir/ -type f -not -regex "/usr/local/src/elixir/lib/[^\/]*/lib.*" -exec rm -rf {} + 	&& find /usr/local/src/elixir/ -type d -depth -empty -delete 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:16:04 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedef0bd8aab366aa49c0b6f146e603998463c07ab055023937fd5df486b9eea`  
		Last Modified: Tue, 22 Sep 2026 18:53:48 GMT  
		Size: 66.3 MB (66347261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25686b687fde0769b2a8a361f1465192679303c03a13e1caba30e404872b4359`  
		Last Modified: Tue, 22 Sep 2026 19:16:14 GMT  
		Size: 8.6 MB (8613651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elixir:otp-27-slim` - unknown; unknown

```console
$ docker pull elixir@sha256:54c34a19c530603207b5bede77e7676a1a03cd086f0a1675bbe85f4f0fa3ca9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:354df55c1e24b7c689bc5c050f249357e10669c922294d0af7302c531f13f825`

```dockerfile
```

-	Layers:
	-	`sha256:b4d12bbafbda9bd8a6cb5a6fd0f927f618e9d17660624dd3198e943f32e0aa33`  
		Last Modified: Tue, 22 Sep 2026 19:16:14 GMT  
		Size: 3.8 MB (3829134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e865289fb0c458294eb4cd8d5ebbd3aab9c5c1b8ad37d32b2b0d2fd3f27b9af`  
		Last Modified: Tue, 22 Sep 2026 19:16:13 GMT  
		Size: 9.7 KB (9720 bytes)  
		MIME: application/vnd.in-toto+json
