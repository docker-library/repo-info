## `erlang:26-slim`

```console
$ docker pull erlang@sha256:0dcb80b08ba80849731b9936f262d1c8e55936d540f14082a77c0388a84877b0
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

### `erlang:26-slim` - linux; amd64

```console
$ docker pull erlang@sha256:495506ad0267e8bf5d7eaa2ddad3b1a266aec93979bbd58513532ba134d7511e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118969854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf80bb6c5735d96faa9a667faacb049994f93ef314dedfb5ae3e0accb453ba7`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:55:20 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Tue, 25 Aug 2026 00:55:20 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Tue, 25 Aug 2026 00:55:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:55:20 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da5035d0a0718948539c382b6faf9dcb48e7f5f6d341b57e43245dd84e14dc2f`  
		Last Modified: Tue, 25 Aug 2026 00:55:33 GMT  
		Size: 70.5 MB (70472492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:2231e00d280130766aca680c775553010774a792c8ee9ae564830a03abc15e71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3839652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8efce677633a43b8cf9bb5a36e57ec6418bb6d639a557377838ba82af5a571`

```dockerfile
```

-	Layers:
	-	`sha256:6f4fadf72b93490b379c2be9d7df16ebdfebd9a8142589cf158437198ad72e66`  
		Last Modified: Tue, 25 Aug 2026 00:55:32 GMT  
		Size: 3.8 MB (3826090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:771eb18ebad37cb1a0b0ee1e5f1bcd2dfcdac1c504cb6b6b079db7f86405f4b5`  
		Last Modified: Tue, 25 Aug 2026 00:55:32 GMT  
		Size: 13.6 KB (13562 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:b06841189e99054243358b371eddc3943dd3a7825c4473602a1aa0ad338fc91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104388929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e434053d8138b2242fe62ba148e9af4a6ac06d322a59488e41414d4082d3b9c`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:37:42 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Tue, 25 Aug 2026 01:37:42 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Tue, 25 Aug 2026 01:37:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:37:42 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0202bcb3d9cfb3477f0a18392e221b2e54036bd32a1b9a00d59cd0729f8af8c`  
		Last Modified: Tue, 25 Aug 2026 01:37:54 GMT  
		Size: 60.2 MB (60185805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:4996c954ab9c7d8b118dc071c2d9665f3449e4a1dd46cd87dabc740f181fda24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9903b04190ac283840ca76ab675c1fd48c8c1928423ae3e5e21db7659c57887`

```dockerfile
```

-	Layers:
	-	`sha256:fae6ab165d3acfa246980473f797d94f2c10f68dad9b67beadf7ac1540ea4e6b`  
		Last Modified: Tue, 25 Aug 2026 01:37:53 GMT  
		Size: 3.8 MB (3828323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccf007cacccf06965a9081ca006e4374677e1a1462a24c70b94e2cfa43f52723`  
		Last Modified: Tue, 25 Aug 2026 01:37:53 GMT  
		Size: 13.6 KB (13642 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:b5c0cfb3c4a205e5e9c47b02be87e57854efc6fc9a91ad50a5a5246d35bbef5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116494462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:001cf0a1d289da0ec3dd6352e6fe4e3b823b39abca5165ad3f82662f556955b7`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:57:11 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Tue, 25 Aug 2026 00:57:11 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Tue, 25 Aug 2026 00:57:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:11 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5a22e4a9a92b887e559ea66796f1b7f539a148761d60612c7740c6d21c7065`  
		Last Modified: Tue, 25 Aug 2026 00:57:26 GMT  
		Size: 68.1 MB (68110813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:3d301bdbc5d74325dddbececaf9864e830a7115115b8792328ef3bfc0b8cf17c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b172674580df1a2899121241cf11740b8aa8d0d6a852c6056a12a28a4119bfc3`

```dockerfile
```

-	Layers:
	-	`sha256:0291603f2692701c569f878ecf98d6567c660d4743f18b702c08f215b6c42716`  
		Last Modified: Tue, 25 Aug 2026 00:57:25 GMT  
		Size: 3.8 MB (3826351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b0749d871df8d7ff9718aab01755d8fde0996b809022b31d4148df613ce9736`  
		Last Modified: Tue, 25 Aug 2026 00:57:24 GMT  
		Size: 13.7 KB (13666 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:26-slim` - linux; 386

```console
$ docker pull erlang@sha256:56dc83bcfe212cd2d1bfbef7786db6af3aad02d9b0c7d4c5db306a073c07ec38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110700825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e9083a7ddaa06ad99fbe1c0cf56c604edd73a07579d15a4e6a1318c885eed9a`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:40 GMT
ENV OTP_VERSION=26.2.5.21 REBAR3_VERSION=3.26.0
# Tue, 25 Aug 2026 00:54:40 GMT
LABEL org.opencontainers.image.version=26.2.5.21
# Tue, 25 Aug 2026 00:54:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="30e44f5978e5486c5471c367e6676a78f64f246aa22ee7eabc02e64e3c12b85b" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl3 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3ce11add764c7f93fa99c66c58b1a0df48a31eb594ebe45de2d83c7bbea18e`  
		Last Modified: Tue, 25 Aug 2026 00:54:51 GMT  
		Size: 61.2 MB (61215429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:26-slim` - unknown; unknown

```console
$ docker pull erlang@sha256:b2cbd3a6adf22f8e1986660a99657bece029ea5b226ed174a61294a786650623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2672fd9ac93b9c42ca18b470bec48d32bb2e0886df6bd812fcd41e12b9eae13d`

```dockerfile
```

-	Layers:
	-	`sha256:94ff216850ef5f64a576c2af952ed7803d44189d45e830f7695c856f6b10c74b`  
		Last Modified: Tue, 25 Aug 2026 00:54:50 GMT  
		Size: 3.8 MB (3823251 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d8255b88f647e0a9f355e241fa76794fe4907cd25fface9efd2f255c17a577d`  
		Last Modified: Tue, 25 Aug 2026 00:54:49 GMT  
		Size: 13.5 KB (13530 bytes)  
		MIME: application/vnd.in-toto+json
