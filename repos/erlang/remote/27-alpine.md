## `erlang:27-alpine`

```console
$ docker pull erlang@sha256:46f60426229902ef66853f6f9293c7efd1cf02dabd0b2257b906c4f63350262e
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

### `erlang:27-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:950ed44d9a4c1226fdfe639c2eaf2b77913040e6adf8d1f17bef27b20d4f6153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53608912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c88695221325d51a0df3291d0f4efe0d22b52ab465db512002e8f038f0e993`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:59:44 GMT
ENV OTP_VERSION=27.3.4.13 REBAR3_VERSION=3.26.0
# Mon, 22 Jun 2026 19:59:44 GMT
LABEL org.opencontainers.image.version=27.3.4.13
# Mon, 22 Jun 2026 19:59:44 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="38308102d1f7e44339911ddc5e3a94a6b4bbb0ef8a5fc392e2e4b280daf0fc9e" 	&& REBAR3_DOWNLOAD_SHA256="a151dc4a07805490e9f217a099e597ac9774814875f55da2c66545c333fdff64" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Mon, 22 Jun 2026 19:59:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af406eb2139a1a50f7ba3b532a92c75eaffa3df127144588a6355822ab442050`  
		Last Modified: Mon, 22 Jun 2026 19:59:53 GMT  
		Size: 49.8 MB (49821317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:fe0df01e5cdaa234889d12bdbfdfa4c124dd71db1f60cf7e8cfa437abe2a8fc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 KB (276287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87399f4fd67d388ba79d5d67ee4ad8914c6378c9dc2ad484b8cc94668122fe68`

```dockerfile
```

-	Layers:
	-	`sha256:85bf8de1f381654b749d481ac263f529490d1469ad167f7ce064a26fccb84548`  
		Last Modified: Mon, 22 Jun 2026 19:59:52 GMT  
		Size: 261.2 KB (261207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39541f669f02e571020bd1d1fd24265b9ed37de0416e2cc20eaa9751941be725`  
		Last Modified: Mon, 22 Jun 2026 19:59:52 GMT  
		Size: 15.1 KB (15080 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-alpine` - linux; arm variant v7

```console
$ docker pull erlang@sha256:f5875da2af00ebf913a9615faa03027ba401d04400603a27b35cbbb98f403d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51185456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdaeefd069076710010a6e2361bfb15749eeee85fcc449daece19267898da7f`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:34:12 GMT
ENV OTP_VERSION=27.3.4.19 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 23:34:12 GMT
LABEL org.opencontainers.image.version=27.3.4.19
# Wed, 21 Oct 2026 23:34:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="866307e64e245e86bee15b3807030a998e59873d7480d6fae1e40b432a3d12b7" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Wed, 21 Oct 2026 23:34:12 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ed7c412c762535b5161a0cbdb42fb056b747c9420729775603dbb3d3e0cd9d`  
		Last Modified: Wed, 21 Oct 2026 23:34:21 GMT  
		Size: 47.9 MB (47918796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:4a6a06e8699a54818a8ca0654adcc5f7df13da93492400da899ca627f856c579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 KB (269491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b012cce6d98df29b21fdd599c65eb0eb478b4977d02fba8970f6f58538ae6d`

```dockerfile
```

-	Layers:
	-	`sha256:ce85a843407a64c413ef56e6085caaa3894ba7cc42f3d8dcd6f5e93fff47152e`  
		Last Modified: Wed, 21 Oct 2026 23:34:20 GMT  
		Size: 254.3 KB (254305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:291edb933d3b5743923d257c2f05c483eb0b05e18167aa25c5306706f5023e82`  
		Last Modified: Wed, 21 Oct 2026 23:34:20 GMT  
		Size: 15.2 KB (15186 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:c655c7526c6e23d5b86bb3bb4a8fc8bdbeb55c83915050251ed5186808ad9a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54408147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228773ce9dae4faec56c2aaf621d8a0210b4d5fb8fec841f2852357ae96fa456`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:22:24 GMT
ENV OTP_VERSION=27.3.4.19 REBAR3_VERSION=3.27.0
# Wed, 21 Oct 2026 23:22:24 GMT
LABEL org.opencontainers.image.version=27.3.4.19
# Wed, 21 Oct 2026 23:22:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="866307e64e245e86bee15b3807030a998e59873d7480d6fae1e40b432a3d12b7" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Wed, 21 Oct 2026 23:22:24 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d8d5752138208dc7753624b1a9c9cf106326d677aa222f81c9dbf5c5e5eab0`  
		Last Modified: Wed, 21 Oct 2026 23:22:33 GMT  
		Size: 50.2 MB (50217659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:67786b6a0aa23f693aa40244aef74d95652d2ba8b2620b5c3b1efe0fcb7ad3de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 KB (274515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801e377e29813b7cdfd828821b7e60c243fad67ed07fbd0f7eaaf101e9f18498`

```dockerfile
```

-	Layers:
	-	`sha256:70f6448a5559cde4262bd09a69016690f9c3ef86baedf79e37b49552712df10e`  
		Last Modified: Wed, 21 Oct 2026 23:22:31 GMT  
		Size: 259.3 KB (259305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffadd9e492b3425dbfcda374473e0e841c02ffcb4fcca8c64febb4160c602d0a`  
		Last Modified: Wed, 21 Oct 2026 23:22:31 GMT  
		Size: 15.2 KB (15210 bytes)  
		MIME: application/vnd.in-toto+json

### `erlang:27-alpine` - linux; 386

```console
$ docker pull erlang@sha256:fe4ffa6fabf109887db140bb56414d8346e04c05f4a53eec9051afa5fd697f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52474937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051efffff753024d01d4aa387c4fe5ce473b0a2baf9645bed2ef5608e95f3b44`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:32:46 GMT
ENV OTP_VERSION=27.3.4.19 REBAR3_VERSION=3.27.0
# Thu, 05 Nov 2026 18:32:46 GMT
LABEL org.opencontainers.image.version=27.3.4.19
# Thu, 05 Nov 2026 18:32:46 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/releases/download/OTP-${OTP_VERSION}/otp_src_${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="866307e64e245e86bee15b3807030a998e59873d7480d6fae1e40b432a3d12b7" 	&& REBAR3_DOWNLOAD_SHA256="985cae6e957334cfa549190b9f5efb9185c184a18fc181c87b8dde096ba79f38" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& { find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true; } 	&& { find /usr/local -name src | xargs -r find | xargs rmdir -vp || true; } 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps 		$runDeps 		lksctp-tools 		ca-certificates 	&& apk del .fetch-deps .build-deps # buildkit
# Thu, 05 Nov 2026 18:32:46 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6608c3e0ec6c0ec3af7f3c2e75010d9999c5987132df68e076f08a9209d495`  
		Last Modified: Thu, 05 Nov 2026 18:32:54 GMT  
		Size: 48.8 MB (48794576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `erlang:27-alpine` - unknown; unknown

```console
$ docker pull erlang@sha256:f6298ef29aec3410f238c6187a1df8dae71cfa532b85f319f5845244262eeed0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 KB (269230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae84af875ad825a4415fb033836440cf635f70c5625fdc6fad76bf224020641`

```dockerfile
```

-	Layers:
	-	`sha256:82306ea42075a1aaaff0a5d009daa312482378d944253da938f1fadc3f3d7b7b`  
		Last Modified: Thu, 05 Nov 2026 18:32:53 GMT  
		Size: 254.2 KB (254157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0032e413c249ece07c23764167d928a99006c298e92a1db4b066831ce3b51723`  
		Last Modified: Thu, 05 Nov 2026 18:32:53 GMT  
		Size: 15.1 KB (15073 bytes)  
		MIME: application/vnd.in-toto+json
