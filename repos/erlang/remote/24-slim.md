## `erlang:24-slim`

```console
$ docker pull erlang@sha256:3f63c953e6b8b13d0d85227c6525674d26b38a4270b04d2dda33feba2a2eb71c
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

### `erlang:24-slim` - linux; amd64

```console
$ docker pull erlang@sha256:8f1cb458668c5c889324419bca4cb0d0e3ae432895de0090f2168eea8b824257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116193534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb611780be7fae29f4117b2446068f692726e5de5d2de78e32c23b03214d5355`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:40 GMT
ENV OTP_VERSION=24.3.4.17 REBAR3_VERSION=3.23.0
# Sat, 19 Sep 2026 00:48:40 GMT
LABEL org.opencontainers.image.version=24.3.4.17
# Sat, 19 Sep 2026 00:48:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="35f88a3af4d4885c5c17bcb8611da2d19f0626faa277392cd39c445254c015a2" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="00646b692762ffd340560e8f16486dbda840e1546749ee5a7f58feeb77e7b516" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:40 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520523260c59d276e15bd4bc9ed1eb5a331f8d0577d550bef9ccb1c861036c8c`  
		Last Modified: Sat, 19 Sep 2026 00:48:52 GMT  
		Size: 67.7 MB (67690094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:24-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:ee28e878a98d73dabbe68b027af9bc264c1cc405d0fbce5d3d32b05438cdaa92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3839678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19f265f696bcdc2602ec079be4853f07b0ddbaf3cff31a24d94c44c9977820f`

```dockerfile
```

-	Layers:
	-	`sha256:0cf8beb6463dce58e33b9da096cd8d5a51d308c268d18ee3aac4d2710da98469`  
		Last Modified: Sat, 19 Sep 2026 00:48:51 GMT  
		Size: 3.8 MB (3826117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e25c19b7cf543505159bf2f79a3cd0fe4231948f91d33694e26a430bc7e149a`  
		Last Modified: Sat, 19 Sep 2026 00:48:50 GMT  
		Size: 13.6 KB (13561 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:24-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:f5a7f6a88bbb735f8c38a14d2fabb0081a04a11e7e50065647b0451cc822b702
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103486436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:283372df7cf3f68c900c7979c2c79047047da2e2e1fc23dbf3309f31fdce2f26`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:34:11 GMT
ENV OTP_VERSION=24.3.4.17 REBAR3_VERSION=3.23.0
# Sat, 19 Sep 2026 01:34:11 GMT
LABEL org.opencontainers.image.version=24.3.4.17
# Sat, 19 Sep 2026 01:34:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="35f88a3af4d4885c5c17bcb8611da2d19f0626faa277392cd39c445254c015a2" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="00646b692762ffd340560e8f16486dbda840e1546749ee5a7f58feeb77e7b516" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:34:11 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16f6ac74bdc584f33cf4341c8164812bcf4f662ab91c32dbff503798fd600f6`  
		Last Modified: Sat, 19 Sep 2026 01:34:24 GMT  
		Size: 59.3 MB (59284227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:24-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:313cbed3042f16426b82625c9f5ddb144b42cc4972f309da1bf5c43b4d476763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678e8d60f0091ac250fd76fd1bc757799c21bf2ee57430ba6fbe54cf0206416d`

```dockerfile
```

-	Layers:
	-	`sha256:a12452873828358b3de5d93e2cc6210f6abbc34bd168d10a9eba00fd91f26d22`  
		Last Modified: Sat, 19 Sep 2026 01:34:23 GMT  
		Size: 3.8 MB (3828350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f8d7f3f74966e91bd2c1002e8b58209b19372ea8b94a700cfe70ae3b96aeddd`  
		Last Modified: Sat, 19 Sep 2026 01:34:22 GMT  
		Size: 13.6 KB (13642 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:24-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:1f634f6985534308c8b53d48664fa8a47e5ba0998598820f62872d74e625535a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108851041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33e3221bdfaf252b1facd84f93656cee4b5168b161169c2e02e7db114e41cff`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:51:38 GMT
ENV OTP_VERSION=24.3.4.17 REBAR3_VERSION=3.23.0
# Sat, 19 Sep 2026 00:51:38 GMT
LABEL org.opencontainers.image.version=24.3.4.17
# Sat, 19 Sep 2026 00:51:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="35f88a3af4d4885c5c17bcb8611da2d19f0626faa277392cd39c445254c015a2" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="00646b692762ffd340560e8f16486dbda840e1546749ee5a7f58feeb77e7b516" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:38 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb0742413b172ea3d82b02ae3898fc510a986b864ba5d78d9323cec2550cb0e`  
		Last Modified: Sat, 19 Sep 2026 00:51:52 GMT  
		Size: 60.5 MB (60461131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:24-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:f54a929dd0a914c55d0985b0f2df3002934f4981c3625197580d6ab9773be554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4051d08d25b592c1b04d66509c30e8065665ddaba78d9e2677360317292513ab`

```dockerfile
```

-	Layers:
	-	`sha256:d146241aeb5ffa48c9cee6a097471f64bd751278d6db5e5dd9e726fece8eca3b`  
		Last Modified: Sat, 19 Sep 2026 00:51:50 GMT  
		Size: 3.8 MB (3826378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51957d8a7df526860ded1f56ce76b5c328861c7a3c53f2543a5ba8add1c69740`  
		Last Modified: Sat, 19 Sep 2026 00:51:50 GMT  
		Size: 13.7 KB (13666 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:24-slim` - linux; 386

```console
$ docker pull erlang@sha256:e665d97428afaa17404bc09de395685059bce48be1599ace15d5f9a4c400e102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.9 MB (109861069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2020b02eeed33787dcf905b6e56f2d51615e27ca2a030af52725c1e77a6d1910`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:53:48 GMT
ENV OTP_VERSION=24.3.4.17 REBAR3_VERSION=3.23.0
# Sat, 19 Sep 2026 00:53:48 GMT
LABEL org.opencontainers.image.version=24.3.4.17
# Sat, 19 Sep 2026 00:53:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="35f88a3af4d4885c5c17bcb8611da2d19f0626faa277392cd39c445254c015a2" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="00646b692762ffd340560e8f16486dbda840e1546749ee5a7f58feeb77e7b516" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:53:48 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04467c3dae9148463988b8140475c35ce643f186560e9d85762bb8162b81045`  
		Last Modified: Sat, 19 Sep 2026 00:54:00 GMT  
		Size: 60.4 MB (60369665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:24-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:832be02a9863cd6f314959e4bf034ed17c7f67aa9bc51a65c0de35354cd7fbc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:677dc72a8ea0b8a1864bf0e2a01faeca02b182148429a6637278b9cd3d3d0b21`

```dockerfile
```

-	Layers:
	-	`sha256:233b9ddcccaea7ee455aac7e8024cbc21cefd0a02bca1ec5a6679cfbfa3bdac0`  
		Last Modified: Sat, 19 Sep 2026 00:53:59 GMT  
		Size: 3.8 MB (3823278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8d397b159947e139d33dba7aa56007c939134fd8e8a910c60a128ffca66455f`  
		Last Modified: Sat, 19 Sep 2026 00:53:58 GMT  
		Size: 13.5 KB (13530 bytes)  
		MIME: application/vnd.in-toto+json
