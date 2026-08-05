## `erlang:slim`

```console
$ docker pull erlang@sha256:c7d970b1fc07704a3ecab438b4b51c3a8c25efd580fe8f2ed5e57ba177bbe6c9
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
$ docker pull erlang@sha256:e37ce434acc4366049be5276a91dda3d9a30ee5f4664b9b4a42c395515dfbe04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129620855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fc2949f6d255a9f22507ef94b3970ee13ddd64bd33d20ca1548ee204f49cdc`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:13 GMT
ENV OTP_VERSION=29.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 00:47:13 GMT
LABEL org.opencontainers.image.version=29.0.4
# Wed, 05 Aug 2026 00:47:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="67426425f0eed0dbd6c8cd3d500de4c47bbf1bbe337be0e2c13fc8f8f3e4997a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25706158e7000bcb0766b42923510cd3e7047e391b5c4bdd2d6d453b3d5a43a3`  
		Last Modified: Wed, 05 Aug 2026 00:47:26 GMT  
		Size: 80.3 MB (80308541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:971740e30e757ece63b32febd9bfda2b7f7340bf40192e6a5926866016d38d4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3297847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:404ea9af96b2ce56128e898e14ac706a76a4fd8ce9d0ffc6b4563f49fdb5d68d`

```dockerfile
```

-	Layers:
	-	`sha256:17331e7195eb54ef447bfb21baeaf8690cb94049cc16d94221b8cae3bddf7937`  
		Last Modified: Wed, 05 Aug 2026 00:47:24 GMT  
		Size: 3.3 MB (3283918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f671dcfeb85e111dd0d63c249145f1e7fae1385a7931101c7de619614fcd0e1`  
		Last Modified: Wed, 05 Aug 2026 00:47:24 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; arm variant v5

```console
$ docker pull erlang@sha256:42914b37e05af1db9b34c5a3074f0c428accb8827bfbcf9f3e3423621d65c981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (117974740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d691d7623d36edfec00ab26ede0dd2f8bcff98b2504a70af9b21987c734313b6`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:42:39 GMT
ENV OTP_VERSION=29.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 00:42:39 GMT
LABEL org.opencontainers.image.version=29.0.4
# Wed, 05 Aug 2026 00:42:39 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="67426425f0eed0dbd6c8cd3d500de4c47bbf1bbe337be0e2c13fc8f8f3e4997a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:42:39 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:31cdd84f3313aed453f665b91a900091c434a8f09c15bb822a4e06103d09ecb4`  
		Last Modified: Tue, 04 Aug 2026 23:51:31 GMT  
		Size: 47.5 MB (47489632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad03a6a20e5f2391a200551671ec4013f179c87b7ed9e294724358b7170ce35e`  
		Last Modified: Wed, 05 Aug 2026 00:42:53 GMT  
		Size: 70.5 MB (70485108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:1e53d388c48e484bd56ce0570fe26a687d0ff8126ed9ebaf9ef9ff828d175a94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3300909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9b92b1bac989897f47d1ed68ade139c55223390eaad46dcad064fe1e24f0ec`

```dockerfile
```

-	Layers:
	-	`sha256:deb4819fb212456c429de31df53799cda1de84d7fb2a3ab8261d83b10ab3995b`  
		Last Modified: Wed, 05 Aug 2026 00:42:51 GMT  
		Size: 3.3 MB (3286893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2513aa80a24bc694a2ee884ee6c4ed332622f1cdc7beadaaf3ca0cc136cf8615`  
		Last Modified: Wed, 05 Aug 2026 00:42:51 GMT  
		Size: 14.0 KB (14016 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:a095c9ed484269ae03500f2e1ec35bacd30f9ffc0455cfff9ad1f56fd4a5e6a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115804863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5bd6ed67275132527f618bda450b34077106a4f46b0501ffb35c8609d91a92`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 28 Jul 2026 20:54:33 GMT
ENV OTP_VERSION=29.0.4 REBAR3_VERSION=3.27.0
# Tue, 28 Jul 2026 20:54:33 GMT
LABEL org.opencontainers.image.version=29.0.4
# Tue, 28 Jul 2026 20:54:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="67426425f0eed0dbd6c8cd3d500de4c47bbf1bbe337be0e2c13fc8f8f3e4997a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:54:33 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1d8dcf695fa507a9d4cb0ef3ecaeb24a772f22a09a5795746304d8601933b1dc`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 45.7 MB (45743729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd691b0b18317d1e369d7eb88fa1d784bcff713f4d1133f45a8e1ce4b52bb18`  
		Last Modified: Tue, 28 Jul 2026 20:54:48 GMT  
		Size: 70.1 MB (70061134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:5a7e1c8c9b26dbddf4695752ade154e0b4cf0d8043ea7cbf9d185fc36d779b88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3299358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c398f87f4ce990458340b1009eddfabed9509fa1de02783e6afba133d0c8df2`

```dockerfile
```

-	Layers:
	-	`sha256:1bd8b443ad59b5d64acbff5c3b9baced1b8dc74683ca766d5b6ac38077889d3d`  
		Last Modified: Tue, 28 Jul 2026 20:54:45 GMT  
		Size: 3.3 MB (3285342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9ace74e4e4e3e815bd914fc2db88109682922a8f83aafe96fb671ff246ac967`  
		Last Modified: Tue, 28 Jul 2026 20:54:45 GMT  
		Size: 14.0 KB (14016 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:e7e745c917c0511cb5670a3186356a1e8b6e35d26d97ce688025baa80bb05299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128468330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7c4a93dfe0508a6ec0bfaae58eaf93981c37f1ce3e9b209441dddeb59a2718`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:49:51 GMT
ENV OTP_VERSION=29.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 00:49:51 GMT
LABEL org.opencontainers.image.version=29.0.4
# Wed, 05 Aug 2026 00:49:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="67426425f0eed0dbd6c8cd3d500de4c47bbf1bbe337be0e2c13fc8f8f3e4997a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:51 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c1008e6337903ee957bc2b3db7c0c3c62cdf23200a3687b7ff71e294715574d`  
		Last Modified: Wed, 05 Aug 2026 00:50:06 GMT  
		Size: 78.8 MB (78794484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:6cdcd688d423b56474dbdf52038a0a563956340ccffa9e3fc6cc06cefe872d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3298861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4689b2c0168fbc0d5defdd993e82df09c2d4a811b65dd4482f696000269a98`

```dockerfile
```

-	Layers:
	-	`sha256:5db9502e5f99534e2dc568b407771e53b1a42106272986353bcf81440ce6bf4c`  
		Last Modified: Wed, 05 Aug 2026 00:50:04 GMT  
		Size: 3.3 MB (3284816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6621a9fa5a9cbc041069dc90449fe0b141841a1443d822ad095dc16a0bacd0eb`  
		Last Modified: Wed, 05 Aug 2026 00:50:04 GMT  
		Size: 14.0 KB (14045 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; 386

```console
$ docker pull erlang@sha256:3fc3b39c47bfaf07dc1d13de1f422577103187957053e1c137ec799a27f3c30b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121276704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6777fdef10c721d2939801edbbe35a92d7a89a21e120f467e04f8ebdf2f59d11`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:48:49 GMT
ENV OTP_VERSION=29.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 00:48:49 GMT
LABEL org.opencontainers.image.version=29.0.4
# Wed, 05 Aug 2026 00:48:49 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="67426425f0eed0dbd6c8cd3d500de4c47bbf1bbe337be0e2c13fc8f8f3e4997a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9ad36f359bd42a4889a7111bb6d142f82dd91e973a53c93c2d23d867d0c530`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 70.4 MB (70445536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:e5db8a9051be404a1e3bf3e420570aaafa50f94b32084a811aba1f6328baa611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3294980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e931be29f544f3e843be145317c8d43578f1fc0988dd22872125fc52ea3e9725`

```dockerfile
```

-	Layers:
	-	`sha256:ffbdd98828b745d2903770d7f6ecf35e3feb8a5745c4d7fd0364704d87922623`  
		Last Modified: Wed, 05 Aug 2026 00:49:00 GMT  
		Size: 3.3 MB (3281088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:141e010930bdfd51766326f05b6eaafbed0169304d2522faabba087526ed95ed`  
		Last Modified: Wed, 05 Aug 2026 00:49:00 GMT  
		Size: 13.9 KB (13892 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:ff7723a198d00baa9999db9d664ae358de6026e5d6b477dfddec30ff93fe56ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124567064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ee4f47ee74f44ff821de3c523b4b0708e10445a2085d2bddc21ce53efec1c7`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 28 Jul 2026 20:56:01 GMT
ENV OTP_VERSION=29.0.4 REBAR3_VERSION=3.27.0
# Tue, 28 Jul 2026 20:56:01 GMT
LABEL org.opencontainers.image.version=29.0.4
# Tue, 28 Jul 2026 20:56:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="67426425f0eed0dbd6c8cd3d500de4c47bbf1bbe337be0e2c13fc8f8f3e4997a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:56:01 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f863e0f5fb6f84b10330f8c674cfd949e54e8fdf5a26aebdd634ead3691dcec2`  
		Last Modified: Tue, 28 Jul 2026 20:56:31 GMT  
		Size: 71.4 MB (71433053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:d15139e8528dcd3b7142d5a3b6013b5422db31c72e65ddc89fe2715e5f2a3951
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3301488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7278c3fdc0fb6ebdf577edd8c9a0bc91b51a78887dc689cd1144eaa2bbfdda`

```dockerfile
```

-	Layers:
	-	`sha256:bf0e700ae602d3e56ffe7d225f54dba74f67d7540bb6c830f0eda39ce254231c`  
		Last Modified: Tue, 28 Jul 2026 20:56:29 GMT  
		Size: 3.3 MB (3287509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55a786c4f4c5a5d49c44441bcd7efd4d51e9134e32b6a05cf3c991f612505339`  
		Last Modified: Tue, 28 Jul 2026 20:56:29 GMT  
		Size: 14.0 KB (13979 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:slim` - linux; s390x

```console
$ docker pull erlang@sha256:046d7a8441d436d2d9c145f9ff74fcf2be8d9ceed814df5c21ff08aa389e6d1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120694077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4002bcccfc146b536356103330b07fcb8350733b4dc288cb8325fa05cd18daef`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:10:35 GMT
ENV OTP_VERSION=29.0.4 REBAR3_VERSION=3.27.0
# Wed, 05 Aug 2026 01:10:35 GMT
LABEL org.opencontainers.image.version=29.0.4
# Wed, 05 Aug 2026 01:10:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="67426425f0eed0dbd6c8cd3d500de4c47bbf1bbe337be0e2c13fc8f8f3e4997a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc2 		libssl3t64 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:10:35 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b580a444f6ee61f746e9130bdc9c6e572f8257dd76a4bcc1002508980f1cee66`  
		Last Modified: Wed, 05 Aug 2026 01:10:55 GMT  
		Size: 71.3 MB (71312651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:slim` - unknown; unknown

```console
$ docker pull erlang@sha256:11833b8a2838e311eaafcd4d6779874f1f4f1c1fd2ad2f7be8915a1df7d310fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3299288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540f72c46a2e94d063e912ede101c04f241fdc7488d3e164f3abeef9ce570e89`

```dockerfile
```

-	Layers:
	-	`sha256:4996be825782ff37905d6f7347814d6c13bfbf1c1f339e51cdd1ffaff06cb121`  
		Last Modified: Wed, 05 Aug 2026 01:10:54 GMT  
		Size: 3.3 MB (3285359 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efa4c2ee8d6c17616975dd7669219e6da92d0f64e14202ca8b3fa9c665c5c908`  
		Last Modified: Wed, 05 Aug 2026 01:10:54 GMT  
		Size: 13.9 KB (13929 bytes)  
		MIME: application/vnd.in-toto+json
