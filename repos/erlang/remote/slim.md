## `erlang:slim`

```console
$ docker pull erlang@sha256:d6cd61f5946cc8a39da42a1e90adeef1301b92c86ede6c5a8cf9594d03e0b8b1
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
$ docker pull erlang@sha256:39ec764d26e8b0a5e994a860e1c58dbea88d7c2c9639b6a0d464f5c25cde8e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129841550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb3c2f79cf4b9a233dbf5901b60865df8ed5c33b36878043f2c8d22eb5ae2934`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:43:40 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 01:43:40 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 06 Oct 2026 01:43:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:43:40 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ebb384e726d0f8280f08948b0cb5761c1ee36d3032417d014269adb885d75a`  
		Last Modified: Tue, 06 Oct 2026 01:43:54 GMT  
		Size: 80.4 MB (80448350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:29dab55586f2c839400a6b4bc06631c983df525d9941844470f0448705737142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3307777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037b24b29c89387f6fac720aed78e9e3c0600f5d5e1c33ec456d29111aec317e`

```dockerfile
```

-	Layers:
	-	`sha256:84a12a604018b186bbb6ae4faa02c08680f3931812e21c22282e7cbc75e44ffa`  
		Last Modified: Tue, 06 Oct 2026 01:43:51 GMT  
		Size: 3.3 MB (3293848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2eeb22233764ef617e55e0c8ea05965c2c89876ccd6f4862700d2c54fb9edf8f`  
		Last Modified: Tue, 06 Oct 2026 01:43:51 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:a0ea92b82b17bcdf2d40eabb326b8203c5221d9728e852fafcf229a8ba02aaa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118171239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4962b8dd7ef1b3c4c1a596f075bbdeb797eee1a488a4ec06713f884c1cd7f08e`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:50:25 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 01:50:25 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 06 Oct 2026 01:50:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:50:25 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2613b9f9cbe1793f19a07be0819263568ab684ead60cadb1613eb4f2868871cc`  
		Last Modified: Tue, 06 Oct 2026 00:12:49 GMT  
		Size: 47.6 MB (47559414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9c8a41b837b9c96cb739293adc9e11d259d74df58fa9c5c106611d793cb332e`  
		Last Modified: Tue, 06 Oct 2026 01:50:38 GMT  
		Size: 70.6 MB (70611825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:c173f74767860274763f70120a6d0a1751c014407a227810c795360ffcd523e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3310840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:028e48448419a9dccdab2a4a705d1e434b5a0286357dab0e5d42951ac7ecebae`

```dockerfile
```

-	Layers:
	-	`sha256:d2f632ff54f11fd19e4b5585cf427748dac47ffc2e45c594f0a2d9de8220d72c`  
		Last Modified: Tue, 06 Oct 2026 01:50:36 GMT  
		Size: 3.3 MB (3296823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1910f70cf1ab74a1b89c3a8fd6749e18bf40fab48835024045a26cb11b33aa7`  
		Last Modified: Tue, 06 Oct 2026 01:50:36 GMT  
		Size: 14.0 KB (14017 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:871520ee2ec276cfabb6062f43c71d59f68f224d8dce07982163b4dd0dbdd587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116006166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ac73d39d0d96513427e2c8fb100e19677e398671fece55eb076f4d184f1c2f`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:28:12 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 02:28:12 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 06 Oct 2026 02:28:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:28:12 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce5a0fbbbf8ec109ae44ac6d92a5cfbc8d54aee9b67504e9dfcbbf60bd41d83`  
		Last Modified: Tue, 06 Oct 2026 02:28:26 GMT  
		Size: 70.2 MB (70192902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:2dff2b17d06f6f4b0bc6bedf6976b33d2edccb6d9ac043786b3934e124ecd22e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3309288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a373aac454c73cb26d480d816da28fffa48cadf76007ee92205a681f55961480`

```dockerfile
```

-	Layers:
	-	`sha256:42424b5da4ba893638a841707923fdbc236f2c20394dbbc5607c6f447ae0982f`  
		Last Modified: Tue, 06 Oct 2026 02:28:24 GMT  
		Size: 3.3 MB (3295272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ad7440ae42a310b3440ee253b1d2456f93a388a4f9cac27afc2468dfbff9ba1`  
		Last Modified: Tue, 06 Oct 2026 02:28:24 GMT  
		Size: 14.0 KB (14016 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:b1cf24dfb134119fdd3273f78b772afd9749f4f3e18b172a92029ba33494f857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128657463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:617c164b05425b2544014e74ec6bf5ee8bb9d8d631bb2de2aa9fd4fc1b005941`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:46:53 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 01:46:53 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 06 Oct 2026 01:46:53 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:46:53 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a82c397e1ba34a2dfc43745f3bd49bc6459de6fb9c14c11de5ad96b0cc2316a`  
		Last Modified: Tue, 06 Oct 2026 01:47:08 GMT  
		Size: 78.9 MB (78896358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:67d16c2ce3dd510a972edb1d537192a89c7bc261360f7d6878cefe9e5f013799
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3308791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb8826059055278ccdfeffcea6c4f10b733cd3bf967755f736f2eefeacfbde9`

```dockerfile
```

-	Layers:
	-	`sha256:044c52ae14d427e226ae136c0e36e6515bc5c9b3233b81b3e1e8488187a3a527`  
		Last Modified: Tue, 06 Oct 2026 01:47:06 GMT  
		Size: 3.3 MB (3294746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6f5a193894f27008dc90166c135cd06b3b79bf4ebac6fc5f9835ae5f8a47c9d`  
		Last Modified: Tue, 06 Oct 2026 01:47:06 GMT  
		Size: 14.0 KB (14045 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; 386

```console
$ docker pull erlang@sha256:c5cb2d792d0bed21c37da00eab4db96476dedbed0091e5d1e437cb82614e444a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121486387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62ffba8be595238905eabefac3d402f062a3aee5a9fa0beedf8921e022c6df8b`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:47:51 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 01:47:51 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 06 Oct 2026 01:47:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:47:51 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01010e006c18d1bbe1789a31613d3c5336a1cb4d9a0003513caae200ec6f4d16`  
		Last Modified: Tue, 06 Oct 2026 01:48:04 GMT  
		Size: 70.6 MB (70580291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:0e7a6c21420cc0703ad6877cace39558492e5175303164755a0361ce41d83a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3304911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6226871e29f6b82bb7ff2c519885b79ffb0fe1d001f3ab0572232f2d7fc44bfe`

```dockerfile
```

-	Layers:
	-	`sha256:6fd2e91e819546474fd51483c6001c3483b973692f206bc71e53baf25453d19f`  
		Last Modified: Tue, 06 Oct 2026 01:48:02 GMT  
		Size: 3.3 MB (3291019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4a5a1a1fa3b64ed61948a22d99d1c1d28e0e65330029da0090d396bc6f05b12`  
		Last Modified: Tue, 06 Oct 2026 01:48:01 GMT  
		Size: 13.9 KB (13892 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:1ecb73b7fc6c8ec5fa23564489d7a761aaaa25604ca90f51be51198b2c9bf62b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124769137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bc6d7b7f03d338972666a900cbafe688578aaa8ccb64048bba078ccd0b4fec4`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:45:22 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 04:45:22 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 06 Oct 2026 04:45:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:45:22 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84708a2acaf8a9ca99aed3a8b1abeb1a13b731795ebc1984851c0039ef57dd3b`  
		Last Modified: Tue, 06 Oct 2026 04:45:54 GMT  
		Size: 71.6 MB (71562013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:b054317646cf7bb30276822021a6f47c2e914bf576e3bb855371b1401ed71d6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3311415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41d234de4c14ce6269895f22b69ca65d666b44f3d59be2b51ce4a091fb1f8299`

```dockerfile
```

-	Layers:
	-	`sha256:d6d64c61516c50b784ae937c9d037dda8803b32a98a0643bb031f9e025e20864`  
		Last Modified: Tue, 06 Oct 2026 04:45:52 GMT  
		Size: 3.3 MB (3297437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea0146a7d021462e47a415e6585ba8b84c646fa6eb6a63af621aa21bfb606169`  
		Last Modified: Tue, 06 Oct 2026 04:45:52 GMT  
		Size: 14.0 KB (13978 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; s390x

```console
$ docker pull erlang@sha256:2d985795af864480207286a5736c77c12af6224456ebbfe068e3ccc06adb44f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120908094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:248870aa395e1cd64cb5834b4ea4d72cf8c74260ef7c247d7da6079bfda483fe`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:59:59 GMT
ENV OTP_VERSION=29.1.1 REBAR3_VERSION=3.27.0
# Tue, 06 Oct 2026 01:59:59 GMT
LABEL org.opencontainers.image.version=29.1.1
# Tue, 06 Oct 2026 01:59:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="054e0143e39c780e091107fc9b345792a9c1a55f6bac1eca1c1101510fc06bf6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:59:59 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446e4e12d8d8859c4b9da52d185b8ef44eb60c9289c52e30c3f621ea31b55bf9`  
		Last Modified: Tue, 06 Oct 2026 02:00:16 GMT  
		Size: 71.5 MB (71451094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:4fb54461a7239557c0698cd8173cc8028550779e273627cf65bd813d47b3e7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3309218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314e3a3bf0be5d6f3cf0ed1926e3c375542feeb84bfab9fffe1040832e862921`

```dockerfile
```

-	Layers:
	-	`sha256:d55b5b517d5037344aef3901d6887af121653a6257f051f62a2462b7c1e1d0d8`  
		Last Modified: Tue, 06 Oct 2026 02:00:15 GMT  
		Size: 3.3 MB (3295289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c731a3b044b1b07b8b231f86d62e3d7772cab6aa0c28b87363fe3e2d2957064`  
		Last Modified: Tue, 06 Oct 2026 02:00:16 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json
